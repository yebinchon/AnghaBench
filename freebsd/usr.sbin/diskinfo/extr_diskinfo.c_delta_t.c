
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (TYPE_1__*,int *) ;
 TYPE_2__ tv1 ;
 TYPE_1__ tv2 ;

__attribute__((used)) static double
delta_t(void)
{
 double dt;

 gettimeofday(&tv2, ((void*)0));
 dt = (tv2.tv_usec - tv1.tv_usec) / 1e6;
 dt += (tv2.tv_sec - tv1.tv_sec);

 return (dt);
}
