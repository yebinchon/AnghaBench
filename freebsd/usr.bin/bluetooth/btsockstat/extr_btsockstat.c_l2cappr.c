
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int this ;
struct TYPE_6__ {int sb_ccc; } ;
struct TYPE_5__ {int sb_ccc; } ;
struct socket {int so_options; TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
typedef int so ;
typedef int remote ;
typedef int pcb ;
struct TYPE_7__ {int state; int cid; int dst; int psm; int src; scalar_t__ so; } ;
typedef TYPE_3__ ng_btsocket_l2cap_pcb_t ;
typedef int * ng_btsocket_l2cap_pcb_p ;
typedef int local ;
typedef int kvm_t ;


 int * LIST_NEXT (TYPE_3__*,int *) ;
 int SO_ACCEPTCONN ;
 int bdaddrpr (int *,char*,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ kread (int *,scalar_t__,char*,int) ;
 char* state2str (int ) ;
 int stdout ;

__attribute__((used)) static void
l2cappr(kvm_t *kvmd, u_long addr)
{
 static char const * const states[] = {
                                 "CLOSED",
                                    "CON",
                                     "CONFIG",
                               "OPEN",
                                       "DISCON"
 };

 ng_btsocket_l2cap_pcb_p this = ((void*)0), next = ((void*)0);
 ng_btsocket_l2cap_pcb_t pcb;
 struct socket so;
 int first = 1;
 char local[24], remote[24];

 if (addr == 0)
  return;

        if (kread(kvmd, addr, (char *) &this, sizeof(this)) < 0)
  return;

 for ( ; this != ((void*)0); this = next) {
  if (kread(kvmd, (u_long) this, (char *) &pcb, sizeof(pcb)) < 0)
   return;
  if (kread(kvmd, (u_long) pcb.so, (char *) &so, sizeof(so)) < 0)
   return;

  next = LIST_NEXT(&pcb, next);

  if (first) {
   first = 0;
   fprintf(stdout,
"Active L2CAP sockets\n" "%-8.8s %-6.6s %-6.6s %-23.23s %-17.17s %-5.5s %s\n",

    "PCB",
    "Recv-Q",
    "Send-Q",
    "Local address/PSM",
    "Foreign address",
    "CID",
    "State");
  }

  fprintf(stdout,
"%-8lx %6d %6d %-17.17s/%-5d %-17.17s %-5d %s\n",
   (unsigned long) this,
   so.so_rcv.sb_ccc,
   so.so_snd.sb_ccc,
   bdaddrpr(&pcb.src, local, sizeof(local)),
   pcb.psm,
   bdaddrpr(&pcb.dst, remote, sizeof(remote)),
   pcb.cid,
   (so.so_options & SO_ACCEPTCONN)?
    "LISTEN" : state2str(pcb.state));
 }
}
