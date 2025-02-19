
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct bcma_erom {int dummy; } ;
typedef int bhnd_erom_t ;


 int BCMA_EROM_ENTRY_IS (scalar_t__,int ) ;



 int BCMA_EROM_GET_ATTR (scalar_t__,int ) ;
 int BCMA_EROM_REGION_SIZE_OTHER ;
 scalar_t__ BCMA_EROM_TABLE_EOF ;
 int CORE ;
 int COREA_CLASS ;
 int COREA_DESIGNER ;
 int COREA_ID ;
 int COREB_NUM_DP ;
 int COREB_NUM_MP ;
 int COREB_NUM_WMP ;
 int COREB_REV ;
 int EINVAL ;
 int ENOENT ;
 int ENTRY_ISVALID ;
 int ENTRY_TYPE ;
 int EROM_LOG (struct bcma_erom*,char*,...) ;
 int MPORT_ID ;
 int MPORT_NUM ;
 int REGION_64BIT ;
 int REGION_BASE ;
 int REGION_PORT ;
 int REGION_SIZE ;
 int REGION_TYPE ;
 int RSIZE_64BIT ;
 int RSIZE_VAL ;
 int bcma_erom_entry_type_name (scalar_t__) ;
 int bcma_erom_read32 (struct bcma_erom*,scalar_t__*) ;
 int bcma_erom_reset (struct bcma_erom*) ;

__attribute__((used)) static int
bcma_erom_dump(bhnd_erom_t *erom)
{
 struct bcma_erom *sc;
 uint32_t entry;
 int error;

 sc = (struct bcma_erom *)erom;

 bcma_erom_reset(sc);

 while (!(error = bcma_erom_read32(sc, &entry))) {

  if (entry == BCMA_EROM_TABLE_EOF) {
   EROM_LOG(sc, "EOF\n");
   return (0);
  }


  if (!BCMA_EROM_GET_ATTR(entry, ENTRY_ISVALID)) {
   EROM_LOG(sc, "invalid EROM entry %#x\n", entry);
   return (EINVAL);
  }

  switch (BCMA_EROM_GET_ATTR(entry, ENTRY_TYPE)) {
  case 130: {

   EROM_LOG(sc, "coreA (0x%x)\n", entry);
   EROM_LOG(sc, "\tdesigner:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREA_DESIGNER));
   EROM_LOG(sc, "\tid:\t\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREA_ID));
   EROM_LOG(sc, "\tclass:\t\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREA_CLASS));


   if ((error = bcma_erom_read32(sc, &entry))) {
    EROM_LOG(sc, "error reading CoreDescB: %d\n",
        error);
    return (error);
   }

   if (!BCMA_EROM_ENTRY_IS(entry, CORE)) {
    EROM_LOG(sc, "invalid core descriptor; found "
        "unexpected entry %#x (type=%s)\n",
        entry, bcma_erom_entry_type_name(entry));
    return (EINVAL);
   }

   EROM_LOG(sc, "coreB (0x%x)\n", entry);
   EROM_LOG(sc, "\trev:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREB_REV));
   EROM_LOG(sc, "\tnummp:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREB_NUM_MP));
   EROM_LOG(sc, "\tnumdp:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREB_NUM_DP));
   EROM_LOG(sc, "\tnumwmp:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREB_NUM_WMP));
   EROM_LOG(sc, "\tnumwsp:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, COREB_NUM_WMP));

   break;
  }
  case 129:
   EROM_LOG(sc, "\tmport 0x%x\n", entry);
   EROM_LOG(sc, "\t\tport:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, MPORT_NUM));
   EROM_LOG(sc, "\t\tid:\t\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, MPORT_ID));
   break;

  case 128: {
   bool addr64;
   uint8_t size_type;

   addr64 = (BCMA_EROM_GET_ATTR(entry, REGION_64BIT) != 0);
   size_type = BCMA_EROM_GET_ATTR(entry, REGION_SIZE);

   EROM_LOG(sc, "\tregion 0x%x:\n", entry);
   EROM_LOG(sc, "\t\t%s:\t0x%x\n",
       addr64 ? "baselo" : "base",
       BCMA_EROM_GET_ATTR(entry, REGION_BASE));
   EROM_LOG(sc, "\t\tport:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, REGION_PORT));
   EROM_LOG(sc, "\t\ttype:\t0x%x\n",
       BCMA_EROM_GET_ATTR(entry, REGION_TYPE));
   EROM_LOG(sc, "\t\tsztype:\t0x%hhx\n", size_type);


   if (addr64) {
    if ((error = bcma_erom_read32(sc, &entry))) {
     EROM_LOG(sc, "error reading region "
         "base address high bits %d\n",
         error);
     return (error);
    }

    EROM_LOG(sc, "\t\tbasehi:\t0x%x\n", entry);
   }


   if (size_type == BCMA_EROM_REGION_SIZE_OTHER) {
    bool size64;

    if ((error = bcma_erom_read32(sc, &entry))) {
     EROM_LOG(sc, "error reading region "
         "size descriptor %d\n",
         error);
     return (error);
    }

    if (BCMA_EROM_GET_ATTR(entry, RSIZE_64BIT))
     size64 = 1;
    else
     size64 = 0;

    EROM_LOG(sc, "\t\t%s:\t0x%x\n",
        size64 ? "sizelo" : "size",
        BCMA_EROM_GET_ATTR(entry, RSIZE_VAL));

    if (size64) {
     error = bcma_erom_read32(sc, &entry);
     if (error) {
      EROM_LOG(sc, "error reading "
          "region size high bits: "
          "%d\n", error);
      return (error);
     }

     EROM_LOG(sc, "\t\tsizehi:\t0x%x\n",
         entry);
    }
   }
   break;
  }

  default:
   EROM_LOG(sc, "unknown EROM entry 0x%x (type=%s)\n",
       entry, bcma_erom_entry_type_name(entry));
   return (EINVAL);
  }
 }

 if (error == ENOENT)
  EROM_LOG(sc, "BCMA EROM table missing terminating EOF\n");
 else if (error)
  EROM_LOG(sc, "EROM read failed: %d\n", error);

 return (error);
}
