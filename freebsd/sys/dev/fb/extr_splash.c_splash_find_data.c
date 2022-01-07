
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t data_size; void* data; int * data_type; } ;
typedef TYPE_1__ splash_decoder_t ;
typedef int * caddr_t ;


 int ENOENT ;
 scalar_t__ bootverbose ;
 void* preload_fetch_addr (int *) ;
 size_t preload_fetch_size (int *) ;
 int * preload_search_by_type (int *) ;
 int printf (char*,void*,size_t) ;

__attribute__((used)) static int
splash_find_data(splash_decoder_t *decoder)
{
 caddr_t image_module;
 void *ptr;
 size_t sz;

 if (decoder->data_type == ((void*)0))
  return (0);

 image_module = preload_search_by_type(decoder->data_type);
 if (image_module == ((void*)0))
  return (ENOENT);

 ptr = preload_fetch_addr(image_module);
 sz = preload_fetch_size(image_module);
 if (ptr == ((void*)0) || sz == 0)
  return (ENOENT);

 if (bootverbose)
  printf("splash: image@%p, size:%zu\n", ptr, sz);

 decoder->data = ptr;
 decoder->data_size = sz;
 return (0);
}
