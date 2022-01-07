
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bcma_erom_core {void* num_swrap; void* num_mwrap; void* num_dport; void* num_mport; void* rev; void* device; void* vendor; } ;
struct bcma_erom {int dummy; } ;


 int BCMA_EROM_ENTRY_IS (scalar_t__,int ) ;
 void* BCMA_EROM_GET_ATTR (scalar_t__,int ) ;
 scalar_t__ BCMA_EROM_TABLE_EOF ;
 int CORE ;
 int COREA_DESIGNER ;
 int COREA_ID ;
 int COREB_NUM_DP ;
 int COREB_NUM_MP ;
 int COREB_NUM_WMP ;
 int COREB_NUM_WSP ;
 int COREB_REV ;
 int EINVAL ;
 int ENOENT ;
 int EROM_LOG (struct bcma_erom*,char*,scalar_t__,int ) ;
 int bcma_erom_entry_type_name (scalar_t__) ;
 int bcma_erom_read32 (struct bcma_erom*,scalar_t__*) ;

__attribute__((used)) static int
bcma_erom_parse_core(struct bcma_erom *erom, struct bcma_erom_core *core)
{
 uint32_t entry;
 int error;


 if ((error = bcma_erom_read32(erom, &entry)))
  return (error);


 if (entry == BCMA_EROM_TABLE_EOF)
  return (ENOENT);

 if (!BCMA_EROM_ENTRY_IS(entry, CORE)) {
  EROM_LOG(erom, "Unexpected EROM entry 0x%x (type=%s)\n",
                   entry, bcma_erom_entry_type_name(entry));

  return (EINVAL);
 }

 core->vendor = BCMA_EROM_GET_ATTR(entry, COREA_DESIGNER);
 core->device = BCMA_EROM_GET_ATTR(entry, COREA_ID);


 if ((error = bcma_erom_read32(erom, &entry)))
  return (error);

 if (!BCMA_EROM_ENTRY_IS(entry, CORE)) {
  return (EINVAL);
 }

 core->rev = BCMA_EROM_GET_ATTR(entry, COREB_REV);
 core->num_mport = BCMA_EROM_GET_ATTR(entry, COREB_NUM_MP);
 core->num_dport = BCMA_EROM_GET_ATTR(entry, COREB_NUM_DP);
 core->num_mwrap = BCMA_EROM_GET_ATTR(entry, COREB_NUM_WMP);
 core->num_swrap = BCMA_EROM_GET_ATTR(entry, COREB_NUM_WSP);

 return (0);
}
