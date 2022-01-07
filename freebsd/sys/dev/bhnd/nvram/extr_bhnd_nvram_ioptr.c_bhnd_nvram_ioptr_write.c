
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;


 int bhnd_nvram_io_write_ptr (struct bhnd_nvram_io*,size_t,void**,size_t,int *) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static int
bhnd_nvram_ioptr_write(struct bhnd_nvram_io *io, size_t offset,
         void *buffer, size_t nbytes)
{
 void *ptr;
 int error;


 if ((error = bhnd_nvram_io_write_ptr(io, offset, &ptr, nbytes, ((void*)0))))
  return (error);


 memcpy(ptr, buffer, nbytes);
 return (0);
}
