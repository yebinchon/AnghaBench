
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct trapframe {int dummy; } ;


 int PCPU_GET (int ) ;
 int cpuid ;
 int nmi_call_kdb (int ,int ,struct trapframe*) ;
 int nmi_call_kdb_smp (int ,struct trapframe*) ;
 scalar_t__ nmi_is_broadcast ;

void
nmi_handle_intr(u_int type, struct trapframe *frame)
{







 nmi_call_kdb(PCPU_GET(cpuid), type, frame);
}
