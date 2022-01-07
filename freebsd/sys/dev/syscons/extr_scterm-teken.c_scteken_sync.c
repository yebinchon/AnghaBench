
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ts; } ;
typedef TYPE_1__ scr_stat ;


 int scteken_sync_internal (TYPE_1__*,int ) ;

__attribute__((used)) static void
scteken_sync(scr_stat *scp)
{
 scteken_sync_internal(scp, scp->ts);
}
