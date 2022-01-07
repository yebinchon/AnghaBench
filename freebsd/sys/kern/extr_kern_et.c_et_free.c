
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {scalar_t__ et_active; } ;


 int ENXIO ;

int
et_free(struct eventtimer *et)
{

 if (!et->et_active)
  return (ENXIO);

 et->et_active = 0;
 return (0);
}
