
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intbuf ;
 int longjmp (int ,int) ;
 int quit ;
 int raw () ;

__attribute__((used)) static void
intcopy(int signo)
{
 raw();
 quit = 1;
 longjmp(intbuf, 1);
}
