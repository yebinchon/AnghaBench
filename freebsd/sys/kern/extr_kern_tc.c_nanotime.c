
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct bintime {int dummy; } ;


 int bintime (struct bintime*) ;
 int bintime2timespec (struct bintime*,struct timespec*) ;

void
nanotime(struct timespec *tsp)
{
 struct bintime bt;

 bintime(&bt);
 bintime2timespec(&bt, tsp);
}
