
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct trapframe {int tf_err; } ;


 scalar_t__ isa_nmi (int ) ;
 scalar_t__ kdb_on_nmi ;
 int kdb_trap (int,int ,struct trapframe*) ;
 int panic (char*) ;
 scalar_t__ panic_on_nmi ;
 int printf (char*,int) ;

void
nmi_call_kdb(u_int cpu, u_int type, struct trapframe *frame)
{
 bool claimed = 0;
}
