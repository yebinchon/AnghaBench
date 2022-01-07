
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_kring {int tx; int si; struct netmap_adapter* notify_na; } ;
struct netmap_adapter {scalar_t__* si_users; int * si; } ;
typedef enum txrx { ____Placeholder_txrx } txrx ;


 int NM_IRQ_COMPLETED ;
 int nm_os_selwakeup (int *) ;

__attribute__((used)) static int
netmap_notify(struct netmap_kring *kring, int flags)
{
 struct netmap_adapter *na = kring->notify_na;
 enum txrx t = kring->tx;

 nm_os_selwakeup(&kring->si);




 if (na->si_users[t] > 0)
  nm_os_selwakeup(&na->si[t]);

 return NM_IRQ_COMPLETED;
}
