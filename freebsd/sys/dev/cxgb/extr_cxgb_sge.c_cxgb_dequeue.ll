; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.sge_qset = type { i32 }
%struct.coalesce_info = type { i32, i32 }

@coalesce_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"trying to coalesce %d packets in to one WR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.sge_qset*)* @cxgb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @cxgb_dequeue(%struct.sge_qset* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.coalesce_info, align 4
  store %struct.sge_qset* %0, %struct.sge_qset** %3, align 8
  %8 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %9 = call i64 @check_pkt_coalesce(%struct.sge_qset* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %13 = call %struct.mbuf* @TXQ_RING_DEQUEUE(%struct.sge_qset* %12)
  store %struct.mbuf* %13, %struct.mbuf** %2, align 8
  br label %48

14:                                               ; preds = %1
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  %15 = getelementptr inbounds %struct.coalesce_info, %struct.coalesce_info* %7, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.coalesce_info, %struct.coalesce_info* %7, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %35, %14
  %18 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %19 = load i32, i32* @coalesce_check, align 4
  %20 = call %struct.mbuf* @TXQ_RING_DEQUEUE_COND(%struct.sge_qset* %18, i32 %19, %struct.coalesce_info* %7)
  store %struct.mbuf* %20, %struct.mbuf** %4, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = icmp eq %struct.mbuf* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %24, %struct.mbuf** %5, align 8
  store %struct.mbuf* %24, %struct.mbuf** %6, align 8
  br label %34

25:                                               ; preds = %17
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = icmp ne %struct.mbuf* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  store %struct.mbuf* %29, %struct.mbuf** %31, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %32, %struct.mbuf** %6, align 8
  br label %33

33:                                               ; preds = %28, %25
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = icmp ne %struct.mbuf* %36, null
  br i1 %37, label %17, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.coalesce_info, %struct.coalesce_info* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 7
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.coalesce_info, %struct.coalesce_info* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %47, %struct.mbuf** %2, align 8
  br label %48

48:                                               ; preds = %46, %11
  %49 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %49
}

declare dso_local i64 @check_pkt_coalesce(%struct.sge_qset*) #1

declare dso_local %struct.mbuf* @TXQ_RING_DEQUEUE(%struct.sge_qset*) #1

declare dso_local %struct.mbuf* @TXQ_RING_DEQUEUE_COND(%struct.sge_qset*, i32, %struct.coalesce_info*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
