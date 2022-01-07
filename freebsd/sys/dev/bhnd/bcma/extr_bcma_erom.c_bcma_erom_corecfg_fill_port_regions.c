
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct bcma_sport_list {int dummy; } ;
struct bcma_sport {int m_rid; int sp_num_maps; struct bcma_sport_list sp_maps; int m_size; int m_base; scalar_t__ m_region_num; } ;
struct bcma_map {int m_rid; int sp_num_maps; struct bcma_sport_list sp_maps; int m_size; int m_base; scalar_t__ m_region_num; } ;
struct bcma_erom_sport_region {scalar_t__ region_type; int size; int base_addr; int region_port; } ;
struct bcma_erom {int dummy; } ;
struct TYPE_2__ {int core_idx; } ;
struct bcma_corecfg {TYPE_1__ core_info; } ;
typedef int bus_size_t ;
typedef int bhnd_port_type ;
typedef scalar_t__ bcma_rmid_t ;
typedef int bcma_pid_t ;


 scalar_t__ BCMA_RMID_MAX ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EROM_LOG (struct bcma_erom*,char*,int ,int ,int ,scalar_t__) ;
 int M_BHND ;
 int M_NOWAIT ;
 int STAILQ_INSERT_TAIL (struct bcma_sport_list*,struct bcma_sport*,int ) ;
 struct bcma_sport* bcma_alloc_sport (int ,int ) ;
 struct bcma_sport_list* bcma_corecfg_get_port_list (struct bcma_corecfg*,int ) ;
 int bcma_erom_parse_sport_region (struct bcma_erom*,struct bcma_erom_sport_region*) ;
 int bcma_erom_region_to_port_type (struct bcma_erom*,scalar_t__,int *) ;
 int bcma_erom_seek (struct bcma_erom*,int ) ;
 int bcma_erom_tell (struct bcma_erom*) ;
 int bcma_free_sport (struct bcma_sport*) ;
 int bhnd_port_type_name (int ) ;
 int m_link ;
 struct bcma_sport* malloc (int,int ,int ) ;
 int sp_link ;

__attribute__((used)) static int
bcma_erom_corecfg_fill_port_regions(struct bcma_erom *erom,
    struct bcma_corecfg *corecfg, bcma_pid_t port_num,
    uint8_t region_type)
{
 struct bcma_sport *sport;
 struct bcma_sport_list *sports;
 bus_size_t entry_offset;
 int error;
 bhnd_port_type port_type;

 error = 0;


 error = bcma_erom_region_to_port_type(erom, region_type, &port_type);
 if (error)
  return (error);


 sports = bcma_corecfg_get_port_list(corecfg, port_type);


 sport = bcma_alloc_sport(port_num, port_type);
 if (sport == ((void*)0))
  return (ENOMEM);


 for (bcma_rmid_t region_num = 0;; region_num++) {
  struct bcma_map *map;
  struct bcma_erom_sport_region spr;



  if (region_num == BCMA_RMID_MAX) {
   EROM_LOG(erom, "core%u %s%u: region count reached "
       "upper limit of %u\n",
       corecfg->core_info.core_idx,
       bhnd_port_type_name(port_type),
       port_num, BCMA_RMID_MAX);

   error = EINVAL;
   goto cleanup;
  }


  entry_offset = bcma_erom_tell(erom);
  error = bcma_erom_parse_sport_region(erom, &spr);
  if (error && error != ENOENT) {
   EROM_LOG(erom, "core%u %s%u.%u: invalid slave port "
       "address region\n",
       corecfg->core_info.core_idx,
       bhnd_port_type_name(port_type),
       port_num, region_num);
   goto cleanup;
  }


  if (error == ENOENT) {

   error = 0;
   break;
  }



  if (spr.region_port != port_num ||
      spr.region_type != region_type)
  {

   bcma_erom_seek(erom, entry_offset);

   error = 0;
   goto cleanup;
  }




  map = malloc(sizeof(struct bcma_map), M_BHND, M_NOWAIT);
  if (map == ((void*)0)) {
   error = ENOMEM;
   goto cleanup;
  }

  map->m_region_num = region_num;
  map->m_base = spr.base_addr;
  map->m_size = spr.size;
  map->m_rid = -1;


  STAILQ_INSERT_TAIL(&sport->sp_maps, map, m_link);
  sport->sp_num_maps++;
 }

cleanup:


 if (error == 0) {
  STAILQ_INSERT_TAIL(sports, sport, sp_link);
 } else if (sport != ((void*)0)) {
  bcma_free_sport(sport);
 }

 return error;
}
