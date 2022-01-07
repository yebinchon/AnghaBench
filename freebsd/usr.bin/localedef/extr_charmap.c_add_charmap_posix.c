
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ch; scalar_t__ name; } ;


 int add_charmap_char (scalar_t__,int ) ;
 TYPE_1__* portable_chars ;

void
add_charmap_posix(void)
{
 int i;

 for (i = 0; portable_chars[i].name; i++) {
  add_charmap_char(portable_chars[i].name, portable_chars[i].ch);
 }
}
