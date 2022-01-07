; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fcfs_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fcfs_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sctp_association = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_stream_queue_pending = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@ss_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_association*, i32, i32)* @sctp_ss_fcfs_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ss_fcfs_clear(%struct.sctp_tcb* %0, %struct.sctp_association* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_stream_queue_pending*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %17 = call i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb* %16)
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %27, %18
  %20 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @TAILQ_EMPTY(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %46

27:                                               ; preds = %19
  %28 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call %struct.sctp_stream_queue_pending* @TAILQ_FIRST(i32* %31)
  store %struct.sctp_stream_queue_pending* %32, %struct.sctp_stream_queue_pending** %9, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %34 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %9, align 8
  %38 = load i32, i32* @ss_next, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %36, %struct.sctp_stream_queue_pending* %37, i32 %38)
  %40 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %9, align 8
  %41 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %9, align 8
  %44 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %51 = call i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %4
  ret void
}

declare dso_local i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.sctp_stream_queue_pending* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_stream_queue_pending*, i32) #1

declare dso_local i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
