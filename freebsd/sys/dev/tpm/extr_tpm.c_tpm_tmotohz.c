
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int tvtohz (struct timeval*) ;

int
tpm_tmotohz(int tmo)
{
 struct timeval tv;

 tv.tv_sec = tmo / 1000;
 tv.tv_usec = 1000 * (tmo % 1000);

 return tvtohz(&tv);
}
