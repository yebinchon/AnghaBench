
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CLOSED ;
 scalar_t__ CLOSING ;
 size_t NBDFRAMES ;
 scalar_t__ OPENED ;
 scalar_t__ OPENING ;
 size_t doorpos ;
 scalar_t__ doorstate ;
 int * film ;
 int set_win_tiles (int,int,int,int,int ) ;

void door()
{
  if(doorstate == OPENING) {
    doorpos++;

    set_win_tiles(2, 2, 12, 6, film[doorpos]);
    if(doorpos == NBDFRAMES)
      doorstate = OPENED;
  } else if(doorstate == CLOSING) {
    doorpos--;

    set_win_tiles(2, 2, 12, 6, film[doorpos]);
    if(doorpos == 0)
      doorstate = CLOSED;
  }
}
