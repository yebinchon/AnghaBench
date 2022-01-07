
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm (int ) ;
 int jmpbuf ;
 int longjmp (int ,int) ;

__attribute__((used)) static void
alarmtr(int signo)
{
 alarm(0);
 longjmp(jmpbuf, 1);
}
