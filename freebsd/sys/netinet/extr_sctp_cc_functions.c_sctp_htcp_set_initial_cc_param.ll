; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_htcp_set_initial_cc_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_htcp_set_initial_cc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_nets = type { i32, i32, i32 }

@SCTP_INITIAL_CWND = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_INITIALIZATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_htcp_set_initial_cc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_htcp_set_initial_cc_param(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %5 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %6 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 4
  %9 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 2, %11
  %13 = load i32, i32* @SCTP_INITIAL_CWND, align 4
  %14 = call i32 @max(i32 %12, i32 %13)
  %15 = call i32 @min(i32 %8, i32 %14)
  %16 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %19 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 0
  %26 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %27 = call i32 @sctp_enforce_cwnd_limit(%struct.TYPE_2__* %25, %struct.sctp_nets* %26)
  %28 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %29 = call i32 @htcp_init(%struct.sctp_nets* %28)
  %30 = load i32, i32* @sctp_logging_level, align 4
  %31 = call i32 @SCTP_BASE_SYSCTL(i32 %30)
  %32 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %33 = load i32, i32* @SCTP_CWND_LOGGING_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %40 = load i32, i32* @SCTP_CWND_INITIALIZATION, align 4
  %41 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %38, %struct.sctp_nets* %39, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sctp_enforce_cwnd_limit(%struct.TYPE_2__*, %struct.sctp_nets*) #1

declare dso_local i32 @htcp_init(%struct.sctp_nets*) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
