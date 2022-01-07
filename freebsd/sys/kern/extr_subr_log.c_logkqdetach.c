
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knote {int dummy; } ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {TYPE_1__ sc_selp; } ;


 int knlist_remove (int *,struct knote*,int) ;
 TYPE_2__ logsoftc ;
 int msgbuf_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
logkqdetach(struct knote *kn)
{

 mtx_lock(&msgbuf_lock);
 knlist_remove(&logsoftc.sc_selp.si_note, kn, 1);
 mtx_unlock(&msgbuf_lock);
}
