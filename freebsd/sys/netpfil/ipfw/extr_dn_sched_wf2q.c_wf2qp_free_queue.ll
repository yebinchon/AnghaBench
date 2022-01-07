; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_wf2qp_free_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_wf2qp_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_queue = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.wf2qp_queue = type { i64, i64 }
%struct.wf2qp_si = type { i32, i32, i32, i32, i32, i32 }

@ONE_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_queue*)* @wf2qp_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf2qp_free_queue(%struct.dn_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_queue*, align 8
  %4 = alloca %struct.wf2qp_queue*, align 8
  %5 = alloca %struct.wf2qp_si*, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %3, align 8
  %6 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %7 = bitcast %struct.dn_queue* %6 to %struct.wf2qp_queue*
  store %struct.wf2qp_queue* %7, %struct.wf2qp_queue** %4, align 8
  %8 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %9 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = inttoptr i64 %11 to %struct.wf2qp_si*
  store %struct.wf2qp_si* %12, %struct.wf2qp_si** %5, align 8
  %13 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %4, align 8
  %14 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %4, align 8
  %17 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = icmp sge i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

22:                                               ; preds = %1
  %23 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %24 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %32 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %38 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %22
  %42 = load i32, i32* @ONE_FP, align 4
  %43 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %44 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  %47 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %48 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %22
  %50 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %51 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %57 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %56, i32 0, i32 5
  %58 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %59 = call i32 @heap_extract(i32* %57, %struct.dn_queue* %58)
  br label %80

60:                                               ; preds = %49
  %61 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %62 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %4, align 8
  %65 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @DN_KEY_LT(i32 %63, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %71 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %70, i32 0, i32 3
  %72 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %73 = call i32 @heap_extract(i32* %71, %struct.dn_queue* %72)
  br label %79

74:                                               ; preds = %60
  %75 = load %struct.wf2qp_si*, %struct.wf2qp_si** %5, align 8
  %76 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %75, i32 0, i32 2
  %77 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %78 = call i32 @heap_extract(i32* %76, %struct.dn_queue* %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %55
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @heap_extract(i32*, %struct.dn_queue*) #1

declare dso_local i64 @DN_KEY_LT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
