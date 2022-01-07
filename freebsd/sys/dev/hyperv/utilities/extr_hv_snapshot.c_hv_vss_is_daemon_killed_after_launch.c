
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ proc_task; } ;
struct TYPE_5__ {TYPE_1__ daemon_sc; int register_done; } ;
typedef TYPE_2__ hv_vss_sc ;



__attribute__((used)) static bool
hv_vss_is_daemon_killed_after_launch(hv_vss_sc *sc)
{
 return (!sc->register_done && sc->daemon_sc.proc_task);
}
