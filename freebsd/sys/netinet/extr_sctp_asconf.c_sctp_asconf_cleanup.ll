; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_asconf_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_asconf_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sctp_nets = type { i32 }

@SCTP_TIMER_TYPE_ASCONF = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_ASCONF = common dso_local global i64 0, align 8
@SCTP_LOC_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_asconf_cleanup(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %5 = load i32, i32* @SCTP_TIMER_TYPE_ASCONF, align 4
  %6 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %10 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %11 = load i64, i64* @SCTP_FROM_SCTP_ASCONF, align 8
  %12 = load i64, i64* @SCTP_LOC_2, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @sctp_timer_stop(i32 %5, i32 %8, %struct.sctp_tcb* %9, %struct.sctp_nets* %10, i64 %13)
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %23 = call i32 @sctp_toss_old_asconf(%struct.sctp_tcb* %22)
  ret void
}

declare dso_local i32 @sctp_timer_stop(i32, i32, %struct.sctp_tcb*, %struct.sctp_nets*, i64) #1

declare dso_local i32 @sctp_toss_old_asconf(%struct.sctp_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
