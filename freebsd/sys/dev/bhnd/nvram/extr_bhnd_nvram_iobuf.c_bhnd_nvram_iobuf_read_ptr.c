
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iobuf {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;


 int bhnd_nvram_iobuf_ptr (struct bhnd_nvram_iobuf*,size_t,void**,size_t,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_iobuf_read_ptr(struct bhnd_nvram_io *io, size_t offset,
    const void **ptr, size_t nbytes, size_t *navail)
{
 struct bhnd_nvram_iobuf *iobuf;
 void *ioptr;
 int error;

 iobuf = (struct bhnd_nvram_iobuf *) io;


 error = bhnd_nvram_iobuf_ptr(iobuf, offset, &ioptr, nbytes, navail);
 if (error)
  return (error);

 *ptr = ioptr;

 return (0);
}
