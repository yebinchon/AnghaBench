; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_bmap_test_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_bmap_test_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_bmap = type { i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s bitmap: id %d too high. max is %d\0A\00", align 1
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s bitmap: tested id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_bmap_test_id(%struct.ecore_hwfn* %0, %struct.ecore_bmap* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_bmap*, align 8
  %7 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_bmap* %1, %struct.ecore_bmap** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ecore_bmap*, %struct.ecore_bmap** %6, align 8
  %10 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = load %struct.ecore_bmap*, %struct.ecore_bmap** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.ecore_bmap*, %struct.ecore_bmap** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %14, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18, i64 %21)
  store i32 -1, i32* %4, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %26 = load %struct.ecore_bmap*, %struct.ecore_bmap** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %24, i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.ecore_bmap*, %struct.ecore_bmap** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @OSAL_TEST_BIT(i64 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64) #1

declare dso_local i32 @OSAL_TEST_BIT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
