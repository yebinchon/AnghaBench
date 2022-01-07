
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timehands {struct timehands* th_next; } ;


 int TUNABLE_INT_FETCH (char*,int*) ;
 int nitems (struct timehands*) ;
 struct timehands* ths ;
 int timehands_count ;

__attribute__((used)) static void
inittimehands(void *dummy)
{
 struct timehands *thp;
 int i;

 TUNABLE_INT_FETCH("kern.timecounter.timehands_count",
     &timehands_count);
 if (timehands_count < 1)
  timehands_count = 1;
 if (timehands_count > nitems(ths))
  timehands_count = nitems(ths);
 for (i = 1, thp = &ths[0]; i < timehands_count; thp = &ths[i++])
  thp->th_next = &ths[i];
 thp->th_next = &ths[0];
}
