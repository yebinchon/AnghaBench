; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_init_shared_cpl_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_init_shared_cpl_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPL_SET_TCB_RPL = common dso_local global i32 0, align 4
@set_tcb_rpl_handler = common dso_local global i32 0, align 4
@CPL_L2T_WRITE_RPL = common dso_local global i32 0, align 4
@l2t_write_rpl_handler = common dso_local global i32 0, align 4
@CPL_ACT_OPEN_RPL = common dso_local global i32 0, align 4
@act_open_rpl_handler = common dso_local global i32 0, align 4
@CPL_ABORT_RPL_RSS = common dso_local global i32 0, align 4
@abort_rpl_rss_handler = common dso_local global i32 0, align 4
@CPL_FW4_ACK = common dso_local global i32 0, align 4
@fw4_ack_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @t4_init_shared_cpl_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_init_shared_cpl_handlers() #0 {
  %1 = load i32, i32* @CPL_SET_TCB_RPL, align 4
  %2 = load i32, i32* @set_tcb_rpl_handler, align 4
  %3 = call i32 @t4_register_cpl_handler(i32 %1, i32 %2)
  %4 = load i32, i32* @CPL_L2T_WRITE_RPL, align 4
  %5 = load i32, i32* @l2t_write_rpl_handler, align 4
  %6 = call i32 @t4_register_cpl_handler(i32 %4, i32 %5)
  %7 = load i32, i32* @CPL_ACT_OPEN_RPL, align 4
  %8 = load i32, i32* @act_open_rpl_handler, align 4
  %9 = call i32 @t4_register_cpl_handler(i32 %7, i32 %8)
  %10 = load i32, i32* @CPL_ABORT_RPL_RSS, align 4
  %11 = load i32, i32* @abort_rpl_rss_handler, align 4
  %12 = call i32 @t4_register_cpl_handler(i32 %10, i32 %11)
  %13 = load i32, i32* @CPL_FW4_ACK, align 4
  %14 = load i32, i32* @fw4_ack_handler, align 4
  %15 = call i32 @t4_register_cpl_handler(i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @t4_register_cpl_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
