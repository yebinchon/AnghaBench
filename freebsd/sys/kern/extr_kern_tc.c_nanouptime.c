
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct bintime {int dummy; } ;


 int bintime2timespec (struct bintime*,struct timespec*) ;
 int binuptime (struct bintime*) ;

void
nanouptime(struct timespec *tsp)
{
 struct bintime bt;

 binuptime(&bt);
 bintime2timespec(&bt, tsp);
}
