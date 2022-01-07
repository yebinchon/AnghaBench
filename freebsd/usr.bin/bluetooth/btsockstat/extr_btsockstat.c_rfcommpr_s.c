
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int this ;
struct socket {scalar_t__ so_pcb; } ;
typedef int so ;
typedef int s ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {int state; int dlcs; TYPE_1__ outq; int mtu; int flags; scalar_t__ l2so; } ;
typedef TYPE_2__ ng_btsocket_rfcomm_session_t ;
typedef int * ng_btsocket_rfcomm_session_p ;
typedef int kvm_t ;


 scalar_t__ LIST_EMPTY (int *) ;
 int * LIST_NEXT (TYPE_2__*,int *) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ kread (int *,scalar_t__,char*,int) ;
 int state2str (int ) ;
 int stdout ;

__attribute__((used)) static void
rfcommpr_s(kvm_t *kvmd, u_long addr)
{
 static char const * const states[] = {
                                                "CLOSED",
                                                "LISTEN",
                                                "CONNECTING",
                                                "CONNECTED",
                                                "OPEN",
                                                "DISCONNECTING"
 };

 ng_btsocket_rfcomm_session_p this = ((void*)0), next = ((void*)0);
 ng_btsocket_rfcomm_session_t s;
 struct socket so;
 int first = 1;

 if (addr == 0)
  return;

        if (kread(kvmd, addr, (char *) &this, sizeof(this)) < 0)
  return;

 for ( ; this != ((void*)0); this = next) {
  if (kread(kvmd, (u_long) this, (char *) &s, sizeof(s)) < 0)
   return;
  if (kread(kvmd, (u_long) s.l2so, (char *) &so, sizeof(so)) < 0)
   return;

  next = LIST_NEXT(&s, next);

  if (first) {
   first = 0;
   fprintf(stdout,
"Active RFCOMM sessions\n" "%-8.8s %-8.8s %-4.4s %-5.5s %-5.5s %-4.4s %s\n",

    "L2PCB",
    "PCB",
    "Flags",
    "MTU",
    "Out-Q",
    "DLCs",
    "State");
  }

  fprintf(stdout,
"%-8lx %-8lx %-4x %-5d %-5d %-4s %s\n",
   (unsigned long) so.so_pcb,
   (unsigned long) this,
   s.flags,
   s.mtu,
   s.outq.len,
   LIST_EMPTY(&s.dlcs)? "No" : "Yes",
   state2str(s.state));
 }
}
