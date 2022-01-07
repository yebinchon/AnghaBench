
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct bintime {int dummy; } ;


 int bintime2timeval (struct bintime*,struct timeval*) ;
 int getboottimebin (struct bintime*) ;

void
getboottime(struct timeval *boottime)
{
 struct bintime boottimebin;

 getboottimebin(&boottimebin);
 bintime2timeval(&boottimebin, boottime);
}
