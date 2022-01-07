; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_pq_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_pq_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@PQ_FLAGS_VFS = common dso_local global i32 0, align 4
@PQ_FLAGS_RLS = common dso_local global i32 0, align 4
@PQ_FLAGS_MCOS = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_ACK = common dso_local global i32 0, align 4
@PQ_FLAGS_OOO = common dso_local global i32 0, align 4
@PQ_FLAGS_LLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown personality %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_get_pq_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_get_pq_flags(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %5 = load i32, i32* @PQ_FLAGS_LB, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_ECORE_SRIOV(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @PQ_FLAGS_VFS, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = call i64 @IS_ECORE_DCQCN(%struct.ecore_hwfn* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @PQ_FLAGS_RLS, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %62 [
    i32 132, label %28
    i32 129, label %32
    i32 128, label %36
    i32 130, label %44
    i32 131, label %52
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %23
  %33 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %69

36:                                               ; preds = %23
  %37 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %38 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %69

44:                                               ; preds = %23
  %45 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %46 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PQ_FLAGS_LLT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %69

52:                                               ; preds = %23
  %53 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %54 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %69

62:                                               ; preds = %23
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %65 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DP_ERR(%struct.ecore_hwfn* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 0, i32* %2, align 4
  br label %71

69:                                               ; preds = %52, %44, %36, %32, %28
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @IS_ECORE_SRIOV(i32) #1

declare dso_local i64 @IS_ECORE_DCQCN(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
