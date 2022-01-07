
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;

__attribute__((used)) static int
ms_to_ticks(int ms)
{
 if (hz > 1000)
  return ms*(hz/1000);

 return ms/(1000/hz);
}
