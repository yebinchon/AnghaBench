
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* index; } ;
typedef TYPE_1__ BMP_INFO ;


 int bmp_SetPix (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void
bmp_DecodeRLE8(BMP_INFO *info, int line)
{
    int count;
    int x,y;

    x = 0;
    y = line;


    for(;;) {




 if (*info->index) {
     for (count = 0; count < *info->index; count++, x++)
  bmp_SetPix(info, x, y, *(info->index+1));
     info->index += 2;




 } else {
     switch(*(info->index+1)) {
     case 0:
  info->index += 2;
  return;
     case 1:
  info->index = ((void*)0);
  return;
     case 2:
  x += *(info->index + 2);
  y += *(info->index + 3);
  info->index += 4;
  break;
     default:
  for (count = 0; count < *(info->index + 1); count++, x++)
      bmp_SetPix(info, x, y, *(info->index + 2 + count));

  info->index += 2 + count + (count & 1);
  break;
     }
 }
    }
}
