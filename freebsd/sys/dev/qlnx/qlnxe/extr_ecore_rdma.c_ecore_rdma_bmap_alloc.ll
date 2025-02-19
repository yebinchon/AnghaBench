; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_bmap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_bmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_bmap = type { i32, i32, i32 }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"max_count = %08x\0A\00", align 1
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"ecore bmap alloc failed: cannot allocate memory (bitmap). rc = %d\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@QEDR_MAX_BMAP_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ECORE_SUCCESS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %0, %struct.ecore_bmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_bmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_bmap* %1, %struct.ecore_bmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %12 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %11, i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ecore_bmap*, %struct.ecore_bmap** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @OSAL_NULL, align 4
  %22 = load %struct.ecore_bmap*, %struct.ecore_bmap** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %24, i32* %5, align 4
  br label %59

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DIV_ROUND_UP(i32 %26, i32 64)
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @OSAL_ZALLOC(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ecore_bmap*, %struct.ecore_bmap** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ecore_bmap*, %struct.ecore_bmap** %7, align 8
  %40 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %25
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = load i32, i32* @ECORE_NOMEM, align 4
  %46 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %44, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %47, i32* %5, align 4
  br label %59

48:                                               ; preds = %25
  %49 = load %struct.ecore_bmap*, %struct.ecore_bmap** %7, align 8
  %50 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QEDR_MAX_BMAP_NAME, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @OSAL_SNPRINTF(i32 %51, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %56 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %57 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %55, i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %48, %43, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_SNPRINTF(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
