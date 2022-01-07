
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_ioptr {int flags; size_t capacity; size_t size; } ;
struct bhnd_nvram_io {int dummy; } ;


 int BHND_NVRAM_IOPTR_RDWR ;
 int ENODEV ;
 int ENXIO ;

__attribute__((used)) static int
bhnd_nvram_ioptr_setsize(struct bhnd_nvram_io *io, size_t size)
{
 struct bhnd_nvram_ioptr *ioptr = (struct bhnd_nvram_ioptr *)io;


 if (!(ioptr->flags & BHND_NVRAM_IOPTR_RDWR))
  return (ENODEV);


 if (size > ioptr->capacity)
  return (ENXIO);

 ioptr->size = size;
 return (0);
}
