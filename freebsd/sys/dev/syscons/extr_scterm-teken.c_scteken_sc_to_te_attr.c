
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char ta_fgcolor; unsigned char ta_bgcolor; scalar_t__ ta_format; } ;
typedef TYPE_1__ teken_attr_t ;


 unsigned char* sc_to_te_color ;

__attribute__((used)) static void
scteken_sc_to_te_attr(unsigned char color, teken_attr_t *a)
{
 a->ta_format = 0;
 a->ta_fgcolor = sc_to_te_color[color & 7] | (color & 8);
 a->ta_bgcolor = sc_to_te_color[(color >> 4) & 7] | ((color >> 4) & 8);
}
