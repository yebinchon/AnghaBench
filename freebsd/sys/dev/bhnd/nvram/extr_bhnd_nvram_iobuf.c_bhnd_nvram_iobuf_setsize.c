
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iobuf {size_t capacity; size_t size; } ;
struct bhnd_nvram_io {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
bhnd_nvram_iobuf_setsize(struct bhnd_nvram_io *io, size_t size)
{
 struct bhnd_nvram_iobuf *iobuf = (struct bhnd_nvram_iobuf *)io;


 if (size > iobuf->capacity)
  return (ENXIO);

 iobuf->size = size;
 return (0);
}
