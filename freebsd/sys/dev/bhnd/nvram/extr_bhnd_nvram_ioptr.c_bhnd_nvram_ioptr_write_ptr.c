
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_ioptr {int flags; } ;
struct bhnd_nvram_io {int dummy; } ;


 int BHND_NVRAM_IOPTR_RDWR ;
 int ENODEV ;
 int bhnd_nvram_ioptr_ptr (struct bhnd_nvram_ioptr*,size_t,void**,size_t,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_ioptr_write_ptr(struct bhnd_nvram_io *io, size_t offset,
      void **ptr, size_t nbytes, size_t *navail)
{
 struct bhnd_nvram_ioptr *ioptr;

 ioptr = (struct bhnd_nvram_ioptr *) io;


 if (!(ioptr->flags & BHND_NVRAM_IOPTR_RDWR))
  return (ENODEV);


 return (bhnd_nvram_ioptr_ptr(ioptr, offset, ptr, nbytes, navail));
}
