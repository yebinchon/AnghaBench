
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bhnd_nvram_iobuf {size_t size; scalar_t__ buf; } ;


 int ENXIO ;

__attribute__((used)) static int
bhnd_nvram_iobuf_ptr(struct bhnd_nvram_iobuf *iobuf, size_t offset, void **ptr,
    size_t nbytes, size_t *navail)
{
 size_t avail;


 if (offset > iobuf->size)
  return (ENXIO);

 avail = iobuf->size - offset;
 if (avail < nbytes)
  return (ENXIO);



 *ptr = ((uint8_t *)iobuf->buf) + offset;
 if (navail != ((void*)0))
  *navail = avail;

 return (0);
}
