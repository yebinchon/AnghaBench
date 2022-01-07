
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UBYTE ;
struct TYPE_2__ {size_t w; size_t h; size_t data_idx; scalar_t__ y; scalar_t__ x; } ;


 int * data_buffer ;
 TYPE_1__* icons ;
 int switch_data (scalar_t__,scalar_t__,int ,int *) ;

void reset_icon(UBYTE icon)
{
  UBYTE x, y;

  for(x = 0; x < icons[icon].w; x++)
    for(y = 0; y < icons[icon].h; y++)
      switch_data(icons[icon].x + x,
    icons[icon].y + y,
    data_buffer[icons[icon].data_idx+(x<<1)+y],
    ((void*)0));
}
