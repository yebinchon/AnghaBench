
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EscMap; } ;
struct async {TYPE_1__ cfg; } ;


 int async_Setup (struct async*) ;
 int memset (int ,char,int) ;

void
async_Init(struct async *async)
{
  async_Setup(async);
  memset(async->cfg.EscMap, '\0', sizeof async->cfg.EscMap);
}
