
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_kctx {int affinity; } ;



void
nm_os_kctx_worker_setaff(struct nm_kctx *nmk, int affinity)
{
 nmk->affinity = affinity;
}
