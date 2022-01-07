
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_ioptr {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;


 int bhnd_nvram_ioptr_ptr (struct bhnd_nvram_ioptr*,size_t,void**,size_t,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_ioptr_read_ptr(struct bhnd_nvram_io *io, size_t offset,
     const void **ptr, size_t nbytes, size_t *navail)
{
 struct bhnd_nvram_ioptr *ioptr;
 void *writep;
 int error;

 ioptr = (struct bhnd_nvram_ioptr *) io;


 error = bhnd_nvram_ioptr_ptr(ioptr, offset, &writep, nbytes, navail);
 if (error)
  return (error);

 *ptr = writep;

 return (0);
}
