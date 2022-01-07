
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIO_VFONT_DEFAULT ;
 int err (int,char*) ;
 int ioctl (int ,int ) ;
 int revert () ;

__attribute__((used)) static void
load_default_vt4font(void)
{
 if (ioctl(0, PIO_VFONT_DEFAULT) == -1) {
  revert();
  err(1, "loading default vt font");
 }
}
