
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int tvtohz (struct timeval*) ;

__attribute__((used)) static __inline int qla_ms_to_hz(int ms)
{
 int qla_hz;

 struct timeval t;

 t.tv_sec = ms / 1000;
 t.tv_usec = (ms % 1000) * 1000;

 qla_hz = tvtohz(&t);

 if (qla_hz < 0)
  qla_hz = 0x7fffffff;
 if (!qla_hz)
  qla_hz = 1;

 return (qla_hz);
}
