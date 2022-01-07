; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_send_entry = type { i32 }

@V_pf_sendqueue = common dso_local global i32 0, align 4
@pfse_next = common dso_local global i32 0, align 4
@V_pf_swi_cookie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_send_entry*)* @pf_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_send(%struct.pf_send_entry* %0) #0 {
  %2 = alloca %struct.pf_send_entry*, align 8
  store %struct.pf_send_entry* %0, %struct.pf_send_entry** %2, align 8
  %3 = call i32 (...) @PF_SENDQ_LOCK()
  %4 = load %struct.pf_send_entry*, %struct.pf_send_entry** %2, align 8
  %5 = load i32, i32* @pfse_next, align 4
  %6 = call i32 @STAILQ_INSERT_TAIL(i32* @V_pf_sendqueue, %struct.pf_send_entry* %4, i32 %5)
  %7 = call i32 (...) @PF_SENDQ_UNLOCK()
  %8 = load i32, i32* @V_pf_swi_cookie, align 4
  %9 = call i32 @swi_sched(i32 %8, i32 0)
  ret void
}

declare dso_local i32 @PF_SENDQ_LOCK(...) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pf_send_entry*, i32) #1

declare dso_local i32 @PF_SENDQ_UNLOCK(...) #1

declare dso_local i32 @swi_sched(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
