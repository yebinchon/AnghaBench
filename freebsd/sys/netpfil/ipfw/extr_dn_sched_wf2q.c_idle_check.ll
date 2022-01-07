; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_idle_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_idle_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf2qp_si = type { i32, i32, i32, %struct.dn_heap }
%struct.dn_heap = type { i64 }
%struct.dn_queue = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.wf2qp_queue = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.dn_queue*, i32 }

@ONE_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf2qp_si*, i32, i32)* @idle_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idle_check(%struct.wf2qp_si* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wf2qp_si*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_heap*, align 8
  %8 = alloca %struct.dn_queue*, align 8
  %9 = alloca %struct.wf2qp_queue*, align 8
  store %struct.wf2qp_si* %0, %struct.wf2qp_si** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %11 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %10, i32 0, i32 3
  store %struct.dn_heap* %11, %struct.dn_heap** %7, align 8
  br label %12

12:                                               ; preds = %79, %3
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %18 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %26 = call %struct.TYPE_6__* @HEAP_TOP(%struct.dn_heap* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %30 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @DN_KEY_LT(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %24, %21
  %35 = phi i1 [ true, %21 ], [ %33, %24 ]
  br label %36

36:                                               ; preds = %34, %16, %12
  %37 = phi i1 [ false, %16 ], [ false, %12 ], [ %35, %34 ]
  br i1 %37, label %38, label %80

38:                                               ; preds = %36
  %39 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %40 = call %struct.TYPE_6__* @HEAP_TOP(%struct.dn_heap* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.dn_queue*, %struct.dn_queue** %41, align 8
  store %struct.dn_queue* %42, %struct.dn_queue** %8, align 8
  %43 = load %struct.dn_queue*, %struct.dn_queue** %8, align 8
  %44 = bitcast %struct.dn_queue* %43 to %struct.wf2qp_queue*
  store %struct.wf2qp_queue* %44, %struct.wf2qp_queue** %9, align 8
  %45 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %46 = call i32 @heap_extract(%struct.dn_heap* %45, i32* null)
  %47 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %48 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %52 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.dn_queue*, %struct.dn_queue** %8, align 8
  %54 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %62 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %68 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %38
  %72 = load i32, i32* @ONE_FP, align 4
  %73 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %74 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %72, %75
  %77 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %78 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %38
  br label %12

80:                                               ; preds = %36
  ret void
}

declare dso_local i64 @DN_KEY_LT(i32, i32) #1

declare dso_local %struct.TYPE_6__* @HEAP_TOP(%struct.dn_heap*) #1

declare dso_local i32 @heap_extract(%struct.dn_heap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
