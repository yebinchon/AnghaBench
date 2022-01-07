
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSADRAIN ;
 int defterm ;
 scalar_t__ gotdefterm ;
 int tcsetattr (int ,int ,int *) ;

void
unraw(void)
{
 if (gotdefterm)
  tcsetattr(0, TCSADRAIN, &defterm);
}
