
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knote {struct cuse_client* kn_hook; } ;
struct cuse_client {TYPE_2__* server; } ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {TYPE_1__ selinfo; } ;


 int cuse_lock () ;
 int cuse_unlock () ;
 int knlist_remove (int *,struct knote*,int) ;

__attribute__((used)) static void
cuse_client_kqfilter_write_detach(struct knote *kn)
{
 struct cuse_client *pcc;

 cuse_lock();
 pcc = kn->kn_hook;
 knlist_remove(&pcc->server->selinfo.si_note, kn, 1);
 cuse_unlock();
}
