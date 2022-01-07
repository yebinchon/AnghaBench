
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mb_uc_fb ;

void
mb_to_uc_fb(const char* inbuf, size_t inbufsize,
    void (*write_replacement)(const unsigned int *buf, size_t buflen,
       void* callback_arg), void* callback_arg, void* data)
{
 unsigned int c = 0x3F;

 mb_uc_fb = 1;
 write_replacement((const unsigned int *)&c, 1, ((void*)0));
}
