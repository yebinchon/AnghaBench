
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int signal (int ,void (*) (int)) ;
 int timedout ;

void
timeout(int signo)
{
 signal(SIGALRM, timeout);
 timedout = 1;
}
