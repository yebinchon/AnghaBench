
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abs_timeout {int cur; int clockid; } ;


 int curthread ;
 int kern_clock_gettime (int ,int ,int *) ;

__attribute__((used)) static inline void
abs_timeout_update(struct abs_timeout *timo)
{

 kern_clock_gettime(curthread, timo->clockid, &timo->cur);
}
