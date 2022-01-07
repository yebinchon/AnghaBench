; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_htcp_cwnd_update_after_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_htcp_cwnd_update_after_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_htcp_cwnd_update_after_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_htcp_cwnd_update_after_timeout(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %6 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %7 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @htcp_reset(i32* %11)
  %13 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %14 = call i32 @htcp_recalc_ssthresh(%struct.sctp_nets* %13)
  %15 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @sctp_logging_level, align 4
  %25 = call i32 @SCTP_BASE_SYSCTL(i32 %24)
  %26 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %31 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %32 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @SCTP_CWND_LOG_FROM_RTX, align 4
  %38 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %30, %struct.sctp_nets* %31, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @htcp_reset(i32*) #1

declare dso_local i32 @htcp_recalc_ssthresh(%struct.sctp_nets*) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
