
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int WC_TO_MB_FLAG ;
 int fb_flags ;

void
wc_to_mb_fb(wchar_t wc,
    void (*write_replacement)(const char *buf, size_t buflen,
       void* callback_arg), void* callback_arg, void* data)
{

 fb_flags |= WC_TO_MB_FLAG;
}
