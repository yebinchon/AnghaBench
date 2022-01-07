
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;

void
sigsys_handler(int signo)
{

 errx(1, "System V Semaphore support is not present in the kernel");
}
