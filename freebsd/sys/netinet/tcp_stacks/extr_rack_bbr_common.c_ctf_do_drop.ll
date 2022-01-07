; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_do_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcpcb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctf_do_drop(%struct.mbuf* %0, %struct.tcpcb* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %4, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %6 = icmp ne %struct.tcpcb* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @INP_WUNLOCK(i32 %10)
  br label %12

12:                                               ; preds = %7, %2
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = icmp ne %struct.mbuf* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %17 = call i32 @m_freem(%struct.mbuf* %16)
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @INP_WUNLOCK(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
