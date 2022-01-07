
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int dummy; } ;


 int PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 int impl ;
 int tick_stop (int ) ;
 int tickincrement ;

__attribute__((used)) static int
tick_et_stop(struct eventtimer *et)
{

 PCPU_SET(tickincrement, 0);
 tick_stop(PCPU_GET(impl));
 return (0);
}
