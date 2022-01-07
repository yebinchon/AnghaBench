
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICONV_CONVERTER_CLOSE (void*) ;

int
iconv_close(void *handle)
{
 return ICONV_CONVERTER_CLOSE(handle);
}
