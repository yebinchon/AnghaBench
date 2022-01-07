; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dn_sch_inst = type { i32 }
%struct.rr_si = type { %struct.rr_queue* }
%struct.rr_queue = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.dn_sch_inst*)* @rr_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @rr_dequeue(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.dn_sch_inst*, align 8
  %4 = alloca %struct.rr_si*, align 8
  %5 = alloca %struct.rr_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %3, align 8
  %8 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %9 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %8, i64 1
  %10 = bitcast %struct.dn_sch_inst* %9 to %struct.rr_si*
  store %struct.rr_si* %10, %struct.rr_si** %4, align 8
  br label %11

11:                                               ; preds = %56, %24, %1
  %12 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %13 = getelementptr inbounds %struct.rr_si, %struct.rr_si* %12, i32 0, i32 0
  %14 = load %struct.rr_queue*, %struct.rr_queue** %13, align 8
  store %struct.rr_queue* %14, %struct.rr_queue** %5, align 8
  %15 = icmp ne %struct.rr_queue* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %11
  %17 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %18 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %7, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %26 = call i32 @rr_remove_head(%struct.rr_si* %25)
  br label %11

27:                                               ; preds = %16
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %34 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %39 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %42 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %46 = call i32 @next_pointer(%struct.rr_si* %45)
  br label %56

47:                                               ; preds = %27
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %50 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %54 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %53, i32 0, i32 0
  %55 = call %struct.mbuf* @dn_dequeue(%struct.TYPE_6__* %54)
  store %struct.mbuf* %55, %struct.mbuf** %2, align 8
  br label %58

56:                                               ; preds = %37
  br label %11

57:                                               ; preds = %11
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %58

58:                                               ; preds = %57, %47
  %59 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %59
}

declare dso_local i32 @rr_remove_head(%struct.rr_si*) #1

declare dso_local i32 @next_pointer(%struct.rr_si*) #1

declare dso_local %struct.mbuf* @dn_dequeue(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
