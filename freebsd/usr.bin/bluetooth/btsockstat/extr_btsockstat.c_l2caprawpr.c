
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
struct socket {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
typedef int so ;
typedef int pcb ;
struct TYPE_7__ {int src; scalar_t__ so; } ;
typedef TYPE_3__ ng_btsocket_l2cap_raw_pcb_t ;
typedef int * ng_btsocket_l2cap_raw_pcb_p ;
typedef int kvm_t ;


 int * LIST_NEXT (TYPE_3__*,int *) ;
 int bdaddrpr (int *,int *,int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ kread (int *,scalar_t__,char*,int) ;
 int stdout ;

__attribute__((used)) static void
l2caprawpr(kvm_t *kvmd, u_long addr)
{
 ng_btsocket_l2cap_raw_pcb_p this = ((void*)0), next = ((void*)0);
 ng_btsocket_l2cap_raw_pcb_t pcb;
 struct socket so;
 int first = 1;

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
"Active raw L2CAP sockets\n" "%-8.8s %-8.8s %-6.6s %-6.6s %-17.17s\n",

    "Socket",
    "PCB",
    "Recv-Q",
    "Send-Q",
    "Local address");
  }

  fprintf(stdout,
"%-8lx %-8lx %6d %6d %-17.17s\n",
   (unsigned long) pcb.so,
   (unsigned long) this,
   so.so_rcv.sb_ccc,
   so.so_snd.sb_ccc,
   bdaddrpr(&pcb.src, ((void*)0), 0));
 }
}
