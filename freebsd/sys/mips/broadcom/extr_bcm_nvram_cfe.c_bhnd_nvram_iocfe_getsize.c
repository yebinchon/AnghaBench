
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
struct bcm_nvram_iocfe {size_t size; } ;



__attribute__((used)) static size_t
bhnd_nvram_iocfe_getsize(struct bhnd_nvram_io *io)
{
 struct bcm_nvram_iocfe *iocfe = (struct bcm_nvram_iocfe *)io;
 return (iocfe->size);
}
