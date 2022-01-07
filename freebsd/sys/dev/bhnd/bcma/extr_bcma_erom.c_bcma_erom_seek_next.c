
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct bcma_erom {int dummy; } ;





 int BCMA_EROM_GET_ATTR (scalar_t__,int ) ;
 scalar_t__ BCMA_EROM_TABLE_EOF ;
 int EINVAL ;
 int ENOENT ;
 int ENTRY_ISVALID ;
 int ENTRY_TYPE ;
 int bcma_erom_peek32 (struct bcma_erom*,scalar_t__*) ;
 int bcma_erom_skip_core (struct bcma_erom*) ;
 int bcma_erom_skip_mport (struct bcma_erom*) ;
 int bcma_erom_skip_sport_region (struct bcma_erom*) ;

__attribute__((used)) static int
bcma_erom_seek_next(struct bcma_erom *erom, uint8_t etype)
{
 uint32_t entry;
 int error;


 while (!(error = bcma_erom_peek32(erom, &entry))) {

  if (entry == BCMA_EROM_TABLE_EOF)
   return (ENOENT);


  if (!BCMA_EROM_GET_ATTR(entry, ENTRY_ISVALID))
   return (EINVAL);


  if (BCMA_EROM_GET_ATTR(entry, ENTRY_TYPE) == etype)
   return (0);


  switch (BCMA_EROM_GET_ATTR(entry, ENTRY_TYPE)) {
  case 130:
   if ((error = bcma_erom_skip_core(erom)))
    return (error);

   break;

  case 129:
   if ((error = bcma_erom_skip_mport(erom)))
    return (error);

   break;

  case 128:
   if ((error = bcma_erom_skip_sport_region(erom)))
    return (error);
   break;

  default:

   return (EINVAL);
  }
 }

 return (error);
}
