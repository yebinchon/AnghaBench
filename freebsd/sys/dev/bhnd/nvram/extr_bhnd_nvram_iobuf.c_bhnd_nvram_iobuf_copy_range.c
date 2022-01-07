
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iobuf {int io; int buf; } ;
struct bhnd_nvram_io {int dummy; } ;


 size_t SIZE_MAX ;
 int bhnd_nvram_io_free (int *) ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,size_t,int ,size_t) ;
 struct bhnd_nvram_io* bhnd_nvram_iobuf_empty (size_t,size_t) ;

struct bhnd_nvram_io *
bhnd_nvram_iobuf_copy_range(struct bhnd_nvram_io *src, size_t offset,
    size_t size)
{
 struct bhnd_nvram_io *io;
 struct bhnd_nvram_iobuf *iobuf;
 int error;


 if (SIZE_MAX - size < offset)
  return (((void*)0));


 if ((io = bhnd_nvram_iobuf_empty(size, size)) == ((void*)0))
  return (((void*)0));


 iobuf = (struct bhnd_nvram_iobuf *)io;
 if ((error = bhnd_nvram_io_read(src, offset, iobuf->buf, size))) {
  bhnd_nvram_io_free(&iobuf->io);
  return (((void*)0));
 }

 return (io);
}
