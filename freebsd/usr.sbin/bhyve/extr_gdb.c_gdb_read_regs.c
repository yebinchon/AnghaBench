
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int append_unsigned_native (int ,int ) ;
 int ctx ;
 int cur_vcpu ;
 int errno ;
 int finish_packet () ;
 int * gdb_regset ;
 int * gdb_regsize ;
 int nitems (int *) ;
 int send_error (int ) ;
 int start_packet () ;
 int vm_get_register_set (int ,int ,int,int *,int *) ;

__attribute__((used)) static void
gdb_read_regs(void)
{
 uint64_t regvals[nitems(gdb_regset)];
 int i;

 if (vm_get_register_set(ctx, cur_vcpu, nitems(gdb_regset),
     gdb_regset, regvals) == -1) {
  send_error(errno);
  return;
 }
 start_packet();
 for (i = 0; i < nitems(regvals); i++)
  append_unsigned_native(regvals[i], gdb_regsize[i]);
 finish_packet();
}
