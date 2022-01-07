
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int map ;


 int GIO_SCRNMAP ;
 int err (int,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ hex ;
 int ioctl (int ,int ,unsigned char**) ;
 int revert () ;
 int stdout ;

__attribute__((used)) static void
print_scrnmap(void)
{
 unsigned char map[256];
 size_t i;

 if (ioctl(0, GIO_SCRNMAP, &map) == -1) {
  revert();
  err(1, "getting screenmap");
 }
 for (i=0; i<sizeof(map); i++) {
  if (i != 0 && i % 16 == 0)
   fprintf(stdout, "\n");

  if (hex != 0)
   fprintf(stdout, " %02x", map[i]);
  else
   fprintf(stdout, " %03d", map[i]);
 }
 fprintf(stdout, "\n");

}
