
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct bhnd_core_info {scalar_t__ vendor; scalar_t__ device; } ;
struct bcma_erom_core {int dummy; } ;
struct bcma_erom {int dummy; } ;
typedef int bus_size_t ;
typedef int bhnd_erom_t ;


 int BCMA_EROM_ENTRY_TYPE_CORE ;
 int ENOENT ;
 int ENOMEM ;
 int M_BHND ;
 int M_NOWAIT ;
 int bcma_erom_parse_core (struct bcma_erom*,struct bcma_erom_core*) ;
 int bcma_erom_reset (struct bcma_erom*) ;
 int bcma_erom_seek (struct bcma_erom*,int ) ;
 int bcma_erom_seek_next (struct bcma_erom*,int ) ;
 int bcma_erom_tell (struct bcma_erom*) ;
 int bcma_erom_to_core_info (struct bcma_erom_core*,scalar_t__,int,struct bhnd_core_info*) ;
 int free (struct bhnd_core_info*,int ) ;
 struct bhnd_core_info* mallocarray (scalar_t__,int,int ,int ) ;

__attribute__((used)) static int
bcma_erom_get_core_table(bhnd_erom_t *erom, struct bhnd_core_info **cores,
    u_int *num_cores)
{
 struct bcma_erom *sc;
 struct bhnd_core_info *buffer;
 bus_size_t initial_offset;
 u_int count;
 int error;

 sc = (struct bcma_erom *)erom;

 buffer = ((void*)0);
 initial_offset = bcma_erom_tell(sc);


 bcma_erom_reset(sc);
 for (count = 0, error = 0; !error; count++) {
  struct bcma_erom_core core;


  error = bcma_erom_seek_next(sc, BCMA_EROM_ENTRY_TYPE_CORE);
  if (error == ENOENT)
   break;
  else if (error)
   goto cleanup;


  if ((error = bcma_erom_parse_core(sc, &core)))
   goto cleanup;
 }


 buffer = mallocarray(count, sizeof(struct bhnd_core_info), M_BHND,
     M_NOWAIT);
 if (buffer == ((void*)0)) {
  error = ENOMEM;
  goto cleanup;
 }


 bcma_erom_reset(sc);
 for (u_int i = 0; i < count; i++) {
  struct bcma_erom_core core;
  int unit;


  error = bcma_erom_seek_next(sc, BCMA_EROM_ENTRY_TYPE_CORE);
  if (error)
   goto cleanup;

  error = bcma_erom_parse_core(sc, &core);
  if (error)
   goto cleanup;


  unit = 0;
  for (u_int j = 0; j < i; j++) {
   if (buffer[i].vendor == buffer[j].vendor &&
       buffer[i].device == buffer[j].device)
    unit++;
  }


  bcma_erom_to_core_info(&core, i, unit, &buffer[i]);
 }

cleanup:
 if (!error) {
  *cores = buffer;
  *num_cores = count;
 } else {
  if (buffer != ((void*)0))
   free(buffer, M_BHND);
 }


 bcma_erom_seek(sc, initial_offset);
 return (error);
}
