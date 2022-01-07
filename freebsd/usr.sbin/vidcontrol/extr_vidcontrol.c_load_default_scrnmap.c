
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scrmap_t ;


 int PIO_SCRNMAP ;
 int err (int,char*) ;
 int ioctl (int ,int ,int *) ;
 int revert () ;

__attribute__((used)) static void
load_default_scrnmap(void)
{
 scrmap_t scrnmap;
 int i;

 for (i=0; i<256; i++)
  *((char*)&scrnmap + i) = i;

 if (ioctl(0, PIO_SCRNMAP, &scrnmap) == -1) {
  revert();
  err(1, "loading default screenmap");
 }
}
