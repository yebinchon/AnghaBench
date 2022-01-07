
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct bintime {int dummy; } ;


 int bintime (struct bintime*) ;
 int bintime2timeval (struct bintime*,struct timeval*) ;

void
microtime(struct timeval *tvp)
{
 struct bintime bt;

 bintime(&bt);
 bintime2timeval(&bt, tvp);
}
