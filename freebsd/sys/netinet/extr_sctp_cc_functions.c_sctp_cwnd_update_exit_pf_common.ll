; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_exit_pf_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_exit_pf_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_nets = type { i32, i32 }

@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@ack = common dso_local global i32 0, align 4
@SCTP_DEBUG_INDATA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Destination %p moved from PF to reachable with cwnd %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_cwnd_update_exit_pf_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cwnd_update_exit_pf_common(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %6 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %7 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @sctp, align 4
  %15 = load i32, i32* @cwnd, align 4
  %16 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %17 = load i32, i32* @ack, align 4
  %18 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %19 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %35 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SDT_PROBE5(i32 %14, i32 %15, %struct.sctp_nets* %16, i32 %17, i32 %21, i32 %31, %struct.sctp_nets* %32, i32 %33, i32 %36)
  %38 = load i32, i32* @SCTP_DEBUG_INDATA1, align 4
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %40 = bitcast %struct.sctp_nets* %39 to i8*
  %41 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %42 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SCTPDBG(i32 %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %43)
  ret void
}

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, %struct.sctp_nets*, i32, i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
