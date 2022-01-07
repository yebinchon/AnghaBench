
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dialtimeout ;
 int longjmp (int ,int) ;
 int printf (char*) ;
 int timeoutbuf ;

__attribute__((used)) static void
sigALRM(int signo)
{
 printf("\07timeout waiting for reply\n\r");
 dialtimeout = 1;
 longjmp(timeoutbuf, 1);
}
