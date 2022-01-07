
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UWORD ;
typedef size_t UBYTE ;
struct TYPE_2__ {size_t w; size_t h; size_t x; int data_idx; scalar_t__ y; } ;


 int * data ;
 TYPE_1__* icons ;
 int * selected_data ;
 int switch_data (size_t,scalar_t__,int ,int *) ;

void change_icon(UBYTE icon, UBYTE selected)
{
  UBYTE x, y;

  for(x = 0; x < icons[icon].w; x++)
    for(y = 0; y < icons[icon].h; y++)
      switch_data(icons[icon].x + x,
    icons[icon].y + y,
    (selected ?
     selected_data[icons[icon].data_idx+((UWORD)x<<1)+y] :
     data[icons[icon].data_idx+((UWORD)x<<1)+y]),
    ((void*)0));
}
