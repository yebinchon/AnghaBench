; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cid_map_alloc_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cid_map_alloc_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_cid_acquired_map = type { i8*, i8*, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@MAP_WORD_SIZE = common dso_local global i32 0, align 4
@BITS_PER_MAP_WORD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_MSG_CXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Type %08x start: %08x count %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i8*, i8*, i8*, %struct.ecore_cid_acquired_map*)* @ecore_cid_map_alloc_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_cid_map_alloc_single(%struct.ecore_hwfn* %0, i8* %1, i8* %2, i8* %3, %struct.ecore_cid_acquired_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ecore_cid_acquired_map*, align 8
  %12 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.ecore_cid_acquired_map* %4, %struct.ecore_cid_acquired_map** %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %16, i32* %6, align 4
  br label %58

17:                                               ; preds = %5
  %18 = load i32, i32* @MAP_WORD_SIZE, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* @BITS_PER_MAP_WORD, align 4
  %21 = call i32 @DIV_ROUND_UP(i8* %19, i32 %20)
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %12, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @OSAL_ZALLOC(i32 %27, i32 %28, i8* %29)
  %31 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %32 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %34 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OSAL_NULL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %39, i32* %6, align 4
  br label %58

40:                                               ; preds = %17
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %43 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %46 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %48 = load i32, i32* @ECORE_MSG_CXT, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %51 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %54 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %47, i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %52, i8* %55)
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %40, %38, %15
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @DIV_ROUND_UP(i8*, i32) #1

declare dso_local i32 @OSAL_ZALLOC(i32, i32, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
