; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_shutdown_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_shutdown_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_nets = type { i32 }

@SCTP_TIMER_TYPE_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_shutdown_timer(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1, %struct.sctp_nets* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_inpcb*, align 8
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %5, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %7, align 8
  %9 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %10 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %11 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %12 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %13 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @sctp_threshold_management(%struct.sctp_inpcb* %9, %struct.sctp_tcb* %10, %struct.sctp_nets* %11, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %21 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %22 = call i32 @sctp_backoff_on_timeout(%struct.sctp_tcb* %20, %struct.sctp_nets* %21, i32 1, i32 0, i32 0)
  %23 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %24 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %25 = call %struct.sctp_nets* @sctp_find_alternate_net(%struct.sctp_tcb* %23, %struct.sctp_nets* %24, i32 0)
  store %struct.sctp_nets* %25, %struct.sctp_nets** %8, align 8
  %26 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %27 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %28 = call i32 @sctp_send_shutdown(%struct.sctp_tcb* %26, %struct.sctp_nets* %27)
  %29 = load i32, i32* @SCTP_TIMER_TYPE_SHUTDOWN, align 4
  %30 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %31 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %32 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %33 = call i32 @sctp_timer_start(i32 %29, %struct.sctp_inpcb* %30, %struct.sctp_tcb* %31, %struct.sctp_nets* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @sctp_threshold_management(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*, i32) #1

declare dso_local i32 @sctp_backoff_on_timeout(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32) #1

declare dso_local %struct.sctp_nets* @sctp_find_alternate_net(%struct.sctp_tcb*, %struct.sctp_nets*, i32) #1

declare dso_local i32 @sctp_send_shutdown(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_timer_start(i32, %struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
