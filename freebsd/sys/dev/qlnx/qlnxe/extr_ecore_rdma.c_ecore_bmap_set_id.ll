; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_bmap_set_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_bmap_set_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_bmap = type { i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s bitmap: cannot set id %d max is %d\0A\00", align 1
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s bitmap: set id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_bmap_set_id(%struct.ecore_hwfn* %0, %struct.ecore_bmap* %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_bmap*, align 8
  %6 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_bmap* %1, %struct.ecore_bmap** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %9 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %13, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17, i64 %20)
  br label %35

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OSAL_SET_BIT(i64 %23, i32 %26)
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %29 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %30 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @OSAL_SET_BIT(i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
