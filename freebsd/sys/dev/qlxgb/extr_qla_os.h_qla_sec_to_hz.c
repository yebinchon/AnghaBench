
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int tvtohz (struct timeval*) ;

__attribute__((used)) static __inline int qla_sec_to_hz(int sec)
{
 struct timeval t;

 t.tv_sec = sec;
 t.tv_usec = 0;

 return (tvtohz(&t));
}
