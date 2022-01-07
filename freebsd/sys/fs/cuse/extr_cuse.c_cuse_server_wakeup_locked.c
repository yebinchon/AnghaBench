
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct cuse_server {TYPE_1__ selinfo; } ;


 int KNOTE_LOCKED (int *,int ) ;
 int selwakeup (TYPE_1__*) ;

__attribute__((used)) static void
cuse_server_wakeup_locked(struct cuse_server *pcs)
{
 selwakeup(&pcs->selinfo);
 KNOTE_LOCKED(&pcs->selinfo.si_note, 0);
}
