
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int off_t ;



__attribute__((used)) static uintmax_t
mmcsd_pretty_size(off_t size, char *unit)
{
 uintmax_t bytes;
 int i;
 bytes = size;
 unit[0] = unit[1] = '\0';
 for (i = 0; i <= 2 && bytes >= 1000; i++) {
  bytes = (bytes + 1000 / 2 - 1) / 1000;
  switch (i) {
  case 0:
   unit[0] = 'k';
   break;
  case 1:
   unit[0] = 'M';
   break;
  case 2:
   unit[0] = 'G';
   break;
  default:
   break;
  }
 }
 return (bytes);
}
