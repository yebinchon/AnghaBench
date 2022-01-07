; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { %struct.icl_conn* }
%struct.icl_conn = type { i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [35 x i8] c"icl_pdu_queue on closed connection\00", align 1
@ip_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @icl_pdu_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_pdu_queue(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.icl_conn*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %4 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %5 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %4, i32 0, i32 0
  %6 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  store %struct.icl_conn* %6, %struct.icl_conn** %3, align 8
  %7 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %8 = call i32 @ICL_CONN_LOCK_ASSERT(%struct.icl_conn* %7)
  %9 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %10 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %15 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13, %1
  %19 = call i32 @ICL_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %21 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %22 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %20, %struct.icl_pdu* %21)
  br label %43

23:                                               ; preds = %13
  %24 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %25 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %24, i32 0, i32 1
  %26 = call i32 @STAILQ_EMPTY(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %30 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %29, i32 0, i32 1
  %31 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %32 = load i32, i32* @ip_next, align 4
  %33 = call i32 @STAILQ_INSERT_TAIL(i32* %30, %struct.icl_pdu* %31, i32 %32)
  br label %43

34:                                               ; preds = %23
  %35 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %36 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %35, i32 0, i32 1
  %37 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %38 = load i32, i32* @ip_next, align 4
  %39 = call i32 @STAILQ_INSERT_TAIL(i32* %36, %struct.icl_pdu* %37, i32 %38)
  %40 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %41 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %40, i32 0, i32 0
  %42 = call i32 @cv_signal(i32* %41)
  br label %43

43:                                               ; preds = %34, %28, %18
  ret void
}

declare dso_local i32 @ICL_CONN_LOCK_ASSERT(%struct.icl_conn*) #1

declare dso_local i32 @ICL_DEBUG(i8*) #1

declare dso_local i32 @icl_soft_conn_pdu_free(%struct.icl_conn*, %struct.icl_pdu*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.icl_pdu*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
