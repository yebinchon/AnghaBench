
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int stderr ;
 int stdout ;

void tcb_prflush(void)
{
    fflush(stdout);
    fflush(stderr);
}
