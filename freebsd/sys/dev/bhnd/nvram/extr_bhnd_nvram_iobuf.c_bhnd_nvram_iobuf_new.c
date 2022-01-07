
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iobuf {int size; int buf; } ;
struct bhnd_nvram_io {int dummy; } ;


 struct bhnd_nvram_io* bhnd_nvram_iobuf_empty (size_t,size_t) ;
 int memcpy (int ,void const*,int ) ;

struct bhnd_nvram_io *
bhnd_nvram_iobuf_new(const void *buffer, size_t size)
{
 struct bhnd_nvram_io *io;
 struct bhnd_nvram_iobuf *iobuf;


 if ((io = bhnd_nvram_iobuf_empty(size, size)) == ((void*)0))
  return (((void*)0));


 iobuf = (struct bhnd_nvram_iobuf *)io;
 memcpy(iobuf->buf, buffer, iobuf->size);

 return (io);
}
