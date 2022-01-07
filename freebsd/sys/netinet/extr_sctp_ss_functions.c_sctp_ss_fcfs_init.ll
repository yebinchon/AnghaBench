; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fcfs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fcfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_association = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_stream_queue_pending = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_association*, i32)* @sctp_ss_fcfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ss_fcfs_init(%struct.sctp_tcb* %0, %struct.sctp_association* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_stream_queue_pending*, align 8
  %11 = alloca i64, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %16 = call i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @TAILQ_INIT(i32* %21)
  br label %23

23:                                               ; preds = %77, %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %27
  %35 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %36 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = call %struct.sctp_stream_queue_pending* @TAILQ_FIRST(i32* %41)
  store %struct.sctp_stream_queue_pending* %42, %struct.sctp_stream_queue_pending** %10, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %52, %34
  %44 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %10, align 8
  %45 = icmp ne %struct.sctp_stream_queue_pending* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %10, align 8
  %54 = load i32, i32* @next, align 4
  %55 = call %struct.sctp_stream_queue_pending* @TAILQ_NEXT(%struct.sctp_stream_queue_pending* %53, i32 %54)
  store %struct.sctp_stream_queue_pending* %55, %struct.sctp_stream_queue_pending** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %43

58:                                               ; preds = %50
  %59 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %10, align 8
  %60 = icmp ne %struct.sctp_stream_queue_pending* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %63 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %64 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %63, i32 0, i32 0
  %65 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %66 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %10, align 8
  %72 = call i32 @sctp_ss_fcfs_add(%struct.sctp_tcb* %62, %struct.TYPE_7__* %64, %struct.TYPE_8__* %70, %struct.sctp_stream_queue_pending* %71, i32 1)
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %61, %58
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %27

77:                                               ; preds = %27
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %23

80:                                               ; preds = %23
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %85 = call i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb* %84)
  br label %86

86:                                               ; preds = %83, %80
  ret void
}

declare dso_local i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.sctp_stream_queue_pending* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.sctp_stream_queue_pending* @TAILQ_NEXT(%struct.sctp_stream_queue_pending*, i32) #1

declare dso_local i32 @sctp_ss_fcfs_add(%struct.sctp_tcb*, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.sctp_stream_queue_pending*, i32) #1

declare dso_local i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
