
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tcsendbreak (int ,int ) ;

void break_sequence(void)
{
    tcsendbreak (0, 0);
}
