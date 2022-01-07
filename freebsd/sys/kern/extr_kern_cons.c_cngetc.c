
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cn_mute ;
 int cncheckc () ;
 int cpu_spinwait () ;

int
cngetc(void)
{
 int c;

 if (cn_mute)
  return (-1);
 while ((c = cncheckc()) == -1)
  cpu_spinwait();
 if (c == '\r')
  c = '\n';
 return (c);
}
