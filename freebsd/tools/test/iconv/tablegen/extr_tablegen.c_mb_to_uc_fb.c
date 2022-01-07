
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_TO_UC_FLAG ;
 int fb_flags ;

void
mb_to_uc_fb(const char* inbuf, size_t inbufsize,
    void (*write_replacement)(const unsigned int *buf, size_t buflen,
       void* callback_arg), void* callback_arg, void* data)
{

 fb_flags |= MB_TO_UC_FLAG;
}
