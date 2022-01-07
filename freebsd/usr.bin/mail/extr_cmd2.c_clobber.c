
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int clob1 (int) ;

int
clobber(char **argv)
{
 int times;

 if (argv[0] == 0)
  times = 1;
 else
  times = (atoi(argv[0]) + 511) / 512;
 clob1(times);
 return (0);
}
