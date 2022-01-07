
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sbi_ret {scalar_t__ error; scalar_t__ value; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_8__ {int value; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int value; } ;


 int KASSERT (int,char*) ;
 int SBI_CLEAR_IPI ;
 int SBI_CONSOLE_GETCHAR ;
 int SBI_CONSOLE_PUTCHAR ;
 int SBI_REMOTE_FENCE_I ;
 int SBI_REMOTE_SFENCE_VMA ;
 int SBI_REMOTE_SFENCE_VMA_ASID ;
 int SBI_SEND_IPI ;
 int SBI_SET_TIMER ;
 int SBI_SHUTDOWN ;
 int marchid ;
 int mimpid ;
 int mvendorid ;
 TYPE_5__ sbi_get_impl_id () ;
 TYPE_4__ sbi_get_impl_version () ;
 TYPE_3__ sbi_get_marchid () ;
 TYPE_2__ sbi_get_mimpid () ;
 TYPE_1__ sbi_get_mvendorid () ;
 struct sbi_ret sbi_get_spec_version () ;
 int sbi_impl_id ;
 int sbi_impl_version ;
 scalar_t__ sbi_probe_extension (int ) ;
 scalar_t__ sbi_spec_version ;

void
sbi_init(void)
{
 struct sbi_ret sret;





 sret = sbi_get_spec_version();
 if (sret.error != 0) {

  sbi_spec_version = 0;
  return;
 }


 sbi_spec_version = sret.value;
 sbi_impl_id = sbi_get_impl_id().value;
 sbi_impl_version = sbi_get_impl_version().value;


 mvendorid = sbi_get_mvendorid().value;
 marchid = sbi_get_marchid().value;
 mimpid = sbi_get_mimpid().value;





 KASSERT(sbi_probe_extension(SBI_SET_TIMER) != 0,
     ("SBI doesn't implement sbi_set_timer()"));
 KASSERT(sbi_probe_extension(SBI_CONSOLE_PUTCHAR) != 0,
     ("SBI doesn't implement sbi_console_putchar()"));
 KASSERT(sbi_probe_extension(SBI_CONSOLE_GETCHAR) != 0,
     ("SBI doesn't implement sbi_console_getchar()"));
 KASSERT(sbi_probe_extension(SBI_CLEAR_IPI) != 0,
     ("SBI doesn't implement sbi_clear_ipi()"));
 KASSERT(sbi_probe_extension(SBI_SEND_IPI) != 0,
     ("SBI doesn't implement sbi_send_ipi()"));
 KASSERT(sbi_probe_extension(SBI_REMOTE_FENCE_I) != 0,
     ("SBI doesn't implement sbi_remote_fence_i()"));
 KASSERT(sbi_probe_extension(SBI_REMOTE_SFENCE_VMA) != 0,
     ("SBI doesn't implement sbi_remote_sfence_vma()"));
 KASSERT(sbi_probe_extension(SBI_REMOTE_SFENCE_VMA_ASID) != 0,
     ("SBI doesn't implement sbi_remote_sfence_vma_asid()"));
 KASSERT(sbi_probe_extension(SBI_SHUTDOWN) != 0,
     ("SBI doesn't implement sbi_shutdown()"));
}
