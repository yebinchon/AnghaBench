
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int sleep (int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
vawrite(char *cp, int delay)
{
 for (; *cp; sleep(delay), cp++)
  write(FD, cp, 1);
}
