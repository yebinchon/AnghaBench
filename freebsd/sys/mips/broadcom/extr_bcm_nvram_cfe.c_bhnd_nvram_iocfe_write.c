
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int
bhnd_nvram_iocfe_write(struct bhnd_nvram_io *io, size_t offset, void *buffer,
    size_t nbytes)
{

 return (ENODEV);
}
