
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct dumperinfo {size_t maxiosize; TYPE_1__* kdcomp; } ;
struct TYPE_2__ {int kdc_stream; void* kdc_buf; } ;


 int EINVAL ;
 int _dump_append (struct dumperinfo*,void*,int ,size_t) ;
 int compressor_write (int ,void*,size_t) ;
 int memmove (void*,void*,size_t) ;

int
dump_append(struct dumperinfo *di, void *virtual, vm_offset_t physical,
    size_t length)
{
 void *buf;

 if (di->kdcomp != ((void*)0)) {

  if (length > di->maxiosize)
   return (EINVAL);
  buf = di->kdcomp->kdc_buf;
  memmove(buf, virtual, length);
  return (compressor_write(di->kdcomp->kdc_stream, buf, length));
 }
 return (_dump_append(di, virtual, physical, length));
}
