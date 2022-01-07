
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UWORD ;
typedef size_t UBYTE ;
struct TYPE_2__ {size_t w; size_t h; size_t data_idx; size_t x; size_t y; } ;


 int * data ;
 int * data_buffer ;
 TYPE_1__* icons ;
 int * selected_data ;
 int switch_data (size_t,size_t,int ,int ) ;

void set_icon(UBYTE icon, UBYTE selected)
{
    UBYTE x, y;

    for(x = 0; x < icons[icon].w; x++)
 for(y = 0; y < icons[icon].h; y++) {
     UWORD index = icons[icon].data_idx+((UWORD)x<<1)+y;
     switch_data(icons[icon].x + x,
   icons[icon].y + y,
   selected ? selected_data[index] : data[index],
   data_buffer[index]);
 }
}
