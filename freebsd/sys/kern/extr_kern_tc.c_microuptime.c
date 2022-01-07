
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct bintime {int dummy; } ;


 int bintime2timeval (struct bintime*,struct timeval*) ;
 int binuptime (struct bintime*) ;

void
microuptime(struct timeval *tvp)
{
 struct bintime bt;

 binuptime(&bt);
 bintime2timeval(&bt, tvp);
}
