
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int announce () ;
 int newfileinfo (int ) ;
 scalar_t__ setfile (char*) ;

int
file(char **argv)
{

 if (argv[0] == ((void*)0)) {
  newfileinfo(0);
  return (0);
 }
 if (setfile(*argv) < 0)
  return (1);
 announce();
 return (0);
}
