; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_process_unrecog_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_process_unrecog_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_nets = type { i32 }

@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Peer does not support chunk type %d (0x%x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, i32, %struct.sctp_nets*)* @sctp_process_unrecog_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_process_unrecog_chunk(%struct.sctp_tcb* %0, i32 %1, %struct.sctp_nets* %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sctp_nets* %2, %struct.sctp_nets** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %16 [
    i32 130, label %8
    i32 131, label %8
    i32 128, label %12
    i32 129, label %12
  ]

8:                                                ; preds = %3, %3
  %9 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %10 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %11 = call i32 @sctp_asconf_cleanup(%struct.sctp_tcb* %9, %struct.sctp_nets* %10)
  br label %21

12:                                               ; preds = %3, %3
  %13 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @SCTPDBG(i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %12, %8
  ret void
}

declare dso_local i32 @sctp_asconf_cleanup(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
