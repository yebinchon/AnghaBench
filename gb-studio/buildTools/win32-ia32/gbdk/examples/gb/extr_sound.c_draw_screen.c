
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_2__ {scalar_t__ name; } ;


 int FIRST_X ;
 scalar_t__ FIRST_Y ;
 scalar_t__ TITLE_Y ;
 int UNSIGNED ;
 int VAL_X ;
 int cls () ;
 int current_value (int,int) ;
 int gotoxy (int ,scalar_t__) ;
 TYPE_1__* params ;
 int print (scalar_t__) ;
 int println (int ,int,int ) ;

UBYTE draw_screen(UBYTE mode)
{
  UBYTE i;

  cls();
  gotoxy(FIRST_X, TITLE_Y);
  print(params[0].name);

  for(i = 0; params[i+1].name; i++) {
    gotoxy(FIRST_X, FIRST_Y+i);
    print(params[i+1].name);
    gotoxy(VAL_X, FIRST_Y+i);
    println(current_value(mode, i), 10, UNSIGNED);
  }
  return i-1;
}
