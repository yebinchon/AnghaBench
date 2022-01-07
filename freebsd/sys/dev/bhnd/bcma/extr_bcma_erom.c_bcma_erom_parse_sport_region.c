
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct bcma_erom_sport_region {int base_addr; int size; void* region_port; void* region_type; } ;
struct bcma_erom {int dummy; } ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;


 int BCMA_EROM_ENTRY_IS (scalar_t__,int ) ;
 void* BCMA_EROM_GET_ATTR (scalar_t__,int ) ;
 int BCMA_EROM_REGION_SIZE_BASE ;
 int BCMA_EROM_REGION_SIZE_OTHER ;
 int BHND_ADDR_MAX ;
 int EINVAL ;
 int ENOENT ;
 int EROM_LOG (struct bcma_erom*,char*,int ,void*,unsigned long long,unsigned long long) ;
 int REGION ;
 int REGION_64BIT ;
 int REGION_BASE ;
 int REGION_PORT ;
 int REGION_SIZE ;
 int REGION_TYPE ;
 int RSIZE_64BIT ;
 int RSIZE_VAL ;
 int bcma_erom_entry_type_name (void*) ;
 scalar_t__ bcma_erom_peek32 (struct bcma_erom*,scalar_t__*) ;
 int bcma_erom_read32 (struct bcma_erom*,scalar_t__*) ;
 int bcma_erom_skip32 (struct bcma_erom*) ;

__attribute__((used)) static int
bcma_erom_parse_sport_region(struct bcma_erom *erom,
    struct bcma_erom_sport_region *region)
{
 uint32_t entry;
 uint8_t size_type;
 int error;


 if (bcma_erom_peek32(erom, &entry))
  return (EINVAL);


 if (!BCMA_EROM_ENTRY_IS(entry, REGION)) {
  return (ENOENT);
 } else {
  bcma_erom_skip32(erom);
 }

 region->base_addr = BCMA_EROM_GET_ATTR(entry, REGION_BASE);
 region->region_type = BCMA_EROM_GET_ATTR(entry, REGION_TYPE);
 region->region_port = BCMA_EROM_GET_ATTR(entry, REGION_PORT);
 size_type = BCMA_EROM_GET_ATTR(entry, REGION_SIZE);


 if (BCMA_EROM_GET_ATTR(entry, REGION_64BIT)) {
  if ((error = bcma_erom_read32(erom, &entry)))
   return (error);

  region->base_addr |= ((bhnd_addr_t) entry << 32);
 }




 if (size_type == BCMA_EROM_REGION_SIZE_OTHER) {
  if ((error = bcma_erom_read32(erom, &entry)))
   return (error);

  region->size = BCMA_EROM_GET_ATTR(entry, RSIZE_VAL);

  if (BCMA_EROM_GET_ATTR(entry, RSIZE_64BIT)) {
   if ((error = bcma_erom_read32(erom, &entry)))
    return (error);
   region->size |= ((bhnd_size_t) entry << 32);
  }
 } else {
  region->size = BCMA_EROM_REGION_SIZE_BASE << size_type;
 }


 if (region->size != 0 &&
     BHND_ADDR_MAX - (region->size - 1) < region->base_addr)
 {
  EROM_LOG(erom, "%s%u: invalid address map %llx:%llx\n",
      bcma_erom_entry_type_name(region->region_type),
      region->region_port,
      (unsigned long long) region->base_addr,
      (unsigned long long) region->size);

  return (EINVAL);
 }

 return (0);
}
