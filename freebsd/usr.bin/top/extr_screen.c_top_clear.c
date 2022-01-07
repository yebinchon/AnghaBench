
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_screen ;
 int putcap (int ) ;
 scalar_t__ smart_terminal ;

void
top_clear(void)
{
    if (smart_terminal)
    {
 putcap(clear_screen);
    }
}
