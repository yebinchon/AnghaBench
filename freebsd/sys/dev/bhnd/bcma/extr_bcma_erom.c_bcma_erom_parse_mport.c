
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcma_erom_mport {void* port_num; void* port_vid; } ;
struct bcma_erom {int dummy; } ;


 int BCMA_EROM_ENTRY_IS (int ,int ) ;
 void* BCMA_EROM_GET_ATTR (int ,int ) ;
 int EINVAL ;
 int MPORT ;
 int MPORT_ID ;
 int MPORT_NUM ;
 int bcma_erom_read32 (struct bcma_erom*,int *) ;

__attribute__((used)) static int
bcma_erom_parse_mport(struct bcma_erom *erom, struct bcma_erom_mport *mport)
{
 uint32_t entry;
 int error;


 if ((error = bcma_erom_read32(erom, &entry)))
  return (error);

 if (!BCMA_EROM_ENTRY_IS(entry, MPORT))
  return (EINVAL);

 mport->port_vid = BCMA_EROM_GET_ATTR(entry, MPORT_ID);
 mport->port_num = BCMA_EROM_GET_ATTR(entry, MPORT_NUM);

 return (0);
}
