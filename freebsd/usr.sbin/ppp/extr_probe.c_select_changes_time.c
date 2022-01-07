
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int select (int ,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
select_changes_time(void)
{
  struct timeval t;

  t.tv_sec = 0;
  t.tv_usec = 100000;
  select(0, ((void*)0), ((void*)0), ((void*)0), &t);
  return t.tv_usec != 100000;
}
