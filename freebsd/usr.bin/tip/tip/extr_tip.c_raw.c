
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSADRAIN ;
 int tcsetattr (int ,int ,int *) ;
 int term ;

void
raw(void)
{
 tcsetattr(0, TCSADRAIN, &term);
}
