
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int fbd_register (struct fb_info*) ;

__attribute__((used)) static void
register_fb_wrap(void *arg, void *ptr)
{

 fbd_register((struct fb_info *)ptr);
}
