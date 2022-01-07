
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jmpbuf ;
 int longjmp (int ,int) ;

__attribute__((used)) static void
signal_handler(int signo)
{

 longjmp(jmpbuf, signo);
}
