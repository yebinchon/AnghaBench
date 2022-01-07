; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_nat_missing_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_nat_missing_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sctp_nets = type { i32 }

@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"sctp_handle_nat_missing_state: Peer does not support AUTH, cannot send an asconf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_handle_nat_missing_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_handle_nat_missing_state(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %5, align 8
  %6 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %7 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %13 = call i32 @SCTPDBG(i32 %12, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %16 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %17 = call i32 @sctp_asconf_send_nat_state_update(%struct.sctp_tcb* %15, %struct.sctp_nets* %16)
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @SCTPDBG(i32, i8*) #1

declare dso_local i32 @sctp_asconf_send_nat_state_update(%struct.sctp_tcb*, %struct.sctp_nets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
