
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WNOHANG ;
 int children ;
 scalar_t__ wait3 (int*,int ,int *) ;

void
reaper(int sig)
{
 int st;

 while (wait3(&st, WNOHANG, ((void*)0)) > 0)
  children--;
}
