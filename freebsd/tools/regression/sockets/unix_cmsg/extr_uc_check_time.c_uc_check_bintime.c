
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct bintime {int dummy; } ;


 int bintime2timespec (struct bintime const*,struct timespec*) ;
 int uc_check_timespec_real (struct timespec*) ;

int
uc_check_bintime(const struct bintime *mt)
{
 struct timespec bt;

 bintime2timespec(mt, &bt);
 return (uc_check_timespec_real(&bt));
}
