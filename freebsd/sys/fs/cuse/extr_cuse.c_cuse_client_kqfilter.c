
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int kn_filter; int * kn_fop; struct cuse_client* kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct cuse_server {TYPE_1__ selinfo; } ;
struct cuse_client {int cflags; struct cuse_server* server; } ;
struct cdev {int dummy; } ;


 int CUSE_CLI_KNOTE_HAS_READ ;
 int CUSE_CLI_KNOTE_HAS_WRITE ;
 int EINVAL ;


 int cuse_client_get (struct cuse_client**) ;
 int cuse_client_kqfilter_poll (struct cdev*,struct cuse_client*) ;
 int cuse_client_kqfilter_read_ops ;
 int cuse_client_kqfilter_write_ops ;
 int cuse_lock () ;
 int cuse_unlock () ;
 int knlist_add (int *,struct knote*,int) ;

__attribute__((used)) static int
cuse_client_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct cuse_client *pcc;
 struct cuse_server *pcs;
 int error;

 error = cuse_client_get(&pcc);
 if (error != 0)
  return (error);

 cuse_lock();
 pcs = pcc->server;
 switch (kn->kn_filter) {
 case 129:
  pcc->cflags |= CUSE_CLI_KNOTE_HAS_READ;
  kn->kn_hook = pcc;
  kn->kn_fop = &cuse_client_kqfilter_read_ops;
  knlist_add(&pcs->selinfo.si_note, kn, 1);
  break;
 case 128:
  pcc->cflags |= CUSE_CLI_KNOTE_HAS_WRITE;
  kn->kn_hook = pcc;
  kn->kn_fop = &cuse_client_kqfilter_write_ops;
  knlist_add(&pcs->selinfo.si_note, kn, 1);
  break;
 default:
  error = EINVAL;
  break;
 }
 cuse_unlock();

 if (error == 0)
  cuse_client_kqfilter_poll(dev, pcc);
 return (error);
}
