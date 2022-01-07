
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct nm_selinfo {TYPE_1__ si; int kqueue_users; int mtxname; } ;
struct netmap_priv_d {struct nm_selinfo** np_si; struct netmap_adapter* np_na; } ;
struct netmap_adapter {int dummy; } ;
struct knote {int kn_filter; struct netmap_priv_d* kn_hook; int * kn_fop; } ;
struct cdev {int dummy; } ;


 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 size_t NR_RX ;
 size_t NR_TX ;
 int devfs_get_cdevpriv (void**) ;
 int knlist_add (int *,struct knote*,int ) ;
 int netmap_rfiltops ;
 int netmap_wfiltops ;
 int nm_prerr (char*,...) ;
 int nm_prinf (char*,int ,int ) ;

__attribute__((used)) static int
netmap_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct netmap_priv_d *priv;
 int error;
 struct netmap_adapter *na;
 struct nm_selinfo *si;
 int ev = kn->kn_filter;

 if (ev != EVFILT_READ && ev != EVFILT_WRITE) {
  nm_prerr("bad filter request %d", ev);
  return 1;
 }
 error = devfs_get_cdevpriv((void**)&priv);
 if (error) {
  nm_prerr("device not yet setup");
  return 1;
 }
 na = priv->np_na;
 if (na == ((void*)0)) {
  nm_prerr("no netmap adapter for this file descriptor");
  return 1;
 }

 si = priv->np_si[(ev == EVFILT_WRITE) ? NR_TX : NR_RX];
 kn->kn_fop = (ev == EVFILT_WRITE) ?
  &netmap_wfiltops : &netmap_rfiltops;
 kn->kn_hook = priv;
 NMG_LOCK();
 si->kqueue_users++;
 nm_prinf("kqueue users for %s: %d", si->mtxname, si->kqueue_users);
 NMG_UNLOCK();
 knlist_add(&si->si.si_note, kn, 0);

 return 0;
}
