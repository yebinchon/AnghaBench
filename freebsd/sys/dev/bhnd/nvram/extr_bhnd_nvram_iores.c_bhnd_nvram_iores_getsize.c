
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iores {size_t size; } ;
struct bhnd_nvram_io {int dummy; } ;



__attribute__((used)) static size_t
bhnd_nvram_iores_getsize(struct bhnd_nvram_io *io)
{
 struct bhnd_nvram_iores *iores = (struct bhnd_nvram_iores *)io;
 return (iores->size);
}
