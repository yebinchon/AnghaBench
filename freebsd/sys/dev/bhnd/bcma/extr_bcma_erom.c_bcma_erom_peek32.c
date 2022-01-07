
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcma_erom {int offset; int eio; } ;


 int BCMA_EROM_TABLE_SIZE ;
 int EINVAL ;
 int EROM_LOG (struct bcma_erom*,char*) ;
 int bhnd_erom_io_read (int ,int,int) ;

__attribute__((used)) static int
bcma_erom_peek32(struct bcma_erom *erom, uint32_t *entry)
{
 if (erom->offset >= (BCMA_EROM_TABLE_SIZE - sizeof(uint32_t))) {
  EROM_LOG(erom, "BCMA EROM table missing terminating EOF\n");
  return (EINVAL);
 }

 *entry = bhnd_erom_io_read(erom->eio, erom->offset, 4);
 return (0);
}
