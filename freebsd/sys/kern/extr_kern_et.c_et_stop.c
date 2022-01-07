
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int (* et_stop ) (struct eventtimer*) ;int et_active; } ;


 int ENXIO ;
 int stub1 (struct eventtimer*) ;

int
et_stop(struct eventtimer *et)
{

 if (!et->et_active)
  return (ENXIO);
 if (et->et_stop)
  return (et->et_stop(et));
 return (0);
}
