; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_process_unrecog_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_process_unrecog_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Huh, the peer does not support success? or error cause?\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Turning off ASCONF to this strange peer\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Peer does not support param type %d (0x%x)??\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, i32)* @sctp_process_unrecog_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_process_unrecog_param(%struct.sctp_tcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %27 [
    i32 131, label %6
    i32 128, label %10
    i32 132, label %11
    i32 135, label %15
    i32 134, label %15
    i32 130, label %15
    i32 129, label %19
    i32 133, label %19
  ]

6:                                                ; preds = %2
  %7 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  br label %32

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  br label %32

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %32

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %21 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %23 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %19, %15, %11, %10, %6
  ret void
}

declare dso_local i32 @SCTPDBG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
