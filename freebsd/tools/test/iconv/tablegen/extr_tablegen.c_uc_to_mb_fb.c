
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UC_TO_MB_FLAG ;
 int fb_flags ;

void
uc_to_mb_fb(unsigned int code,
    void (*write_replacement)(const char *buf, size_t buflen,
       void* callback_arg), void* callback_arg, void* data)
{

 fb_flags |= UC_TO_MB_FLAG;
}
