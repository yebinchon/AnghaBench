
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int printf (char*,long,int ) ;

__attribute__((used)) static void
ktrtimeval(struct timeval *tv)
{

 printf("{%ld, %ld}", (long)tv->tv_sec, tv->tv_usec);
}
