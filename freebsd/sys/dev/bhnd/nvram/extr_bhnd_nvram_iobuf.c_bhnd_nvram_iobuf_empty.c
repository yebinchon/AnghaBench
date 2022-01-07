
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int * iops; } ;
struct bhnd_nvram_iobuf {size_t size; size_t capacity; struct bhnd_nvram_io io; int * buf; int data; } ;


 int SIZE_MAX ;
 int bhnd_nv_free (struct bhnd_nvram_iobuf*) ;
 void* bhnd_nv_malloc (size_t) ;
 int bhnd_nvram_iobuf_ops ;

struct bhnd_nvram_io *
bhnd_nvram_iobuf_empty(size_t size, size_t capacity)
{
 struct bhnd_nvram_iobuf *iobuf;
 size_t iosz;
 bool inline_alloc;


 if (size > capacity)
  return (((void*)0));


 if (SIZE_MAX - sizeof(*iobuf) < capacity) {
  inline_alloc = 0;
  iosz = sizeof(*iobuf);
 } else {
  inline_alloc = 1;
  iosz = sizeof(*iobuf) + capacity;
 }


 iobuf = bhnd_nv_malloc(iosz);
 if (iobuf == ((void*)0))
  return (((void*)0));

 iobuf->io.iops = &bhnd_nvram_iobuf_ops;
 iobuf->buf = ((void*)0);
 iobuf->size = size;
 iobuf->capacity = capacity;



 if (inline_alloc)
  iobuf->buf = &iobuf->data;
 else
  iobuf->buf = bhnd_nv_malloc(iobuf->capacity);


 if (iobuf->buf == ((void*)0)) {
  bhnd_nv_free(iobuf);
  return (((void*)0));
 }

 return (&iobuf->io);
}
