
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int longjmp (int ,int) ;
 int timeout ;
 int timeoutbuf ;

__attribute__((used)) static void
sigALRM(int signo)
{
 timeout = 1;
 longjmp(timeoutbuf, 1);
}
