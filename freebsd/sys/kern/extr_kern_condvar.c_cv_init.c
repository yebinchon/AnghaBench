
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cv {char const* cv_description; scalar_t__ cv_waiters; } ;



void
cv_init(struct cv *cvp, const char *desc)
{

 cvp->cv_description = desc;
 cvp->cv_waiters = 0;
}
