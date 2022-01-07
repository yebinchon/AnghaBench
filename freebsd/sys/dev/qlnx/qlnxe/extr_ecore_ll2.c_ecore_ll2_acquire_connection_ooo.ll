; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_acquire_connection_ooo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_acquire_connection_ooo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ooo_buffer = type { i32, i8*, i32 }
%struct.ecore_hwfn = type { i32, i32 }
%struct.ecore_ll2_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_ooo_buffer* null, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@ETH_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate ooo descriptor\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate ooo buffer\0A\00", align 1
@ECORE_MSG_LL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Allocated [%04x] LL2 OOO buffers [each of size 0x%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ll2_info*, i32)* @ecore_ll2_acquire_connection_ooo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_ll2_acquire_connection_ooo(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ll2_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_ooo_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** @OSAL_NULL, align 8
  store %struct.ecore_ooo_buffer* %14, %struct.ecore_ooo_buffer** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ECORE_LL2_TYPE_OOO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %126

24:                                               ; preds = %3
  %25 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %126

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %24
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 14
  %48 = add nsw i32 %47, 4
  %49 = add nsw i32 %48, 8
  %50 = load i32, i32* @ETH_CACHE_LINE_SIZE, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ETH_CACHE_LINE_SIZE, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* @ETH_CACHE_LINE_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  store i32 %59, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %112, %45
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %63 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %60
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %69 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.ecore_ooo_buffer* @OSAL_ZALLOC(i32 %70, i32 %71, i32 24)
  store %struct.ecore_ooo_buffer* %72, %struct.ecore_ooo_buffer** %8, align 8
  %73 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %8, align 8
  %74 = icmp ne %struct.ecore_ooo_buffer* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %77 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %76, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %78, i32* %12, align 4
  br label %124

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %8, align 8
  %82 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %84 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %8, align 8
  %87 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %86, i32 0, i32 2
  %88 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %8, align 8
  %89 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @OSAL_DMA_ALLOC_COHERENT(i32 %85, i32* %87, i32 %90)
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %79
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %96 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %95, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %98 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %8, align 8
  %101 = call i32 @OSAL_FREE(i32 %99, %struct.ecore_ooo_buffer* %100)
  %102 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %102, i32* %12, align 4
  br label %124

103:                                              ; preds = %79
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %8, align 8
  %106 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %108 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %8, align 8
  %111 = call i32 @ecore_ooo_put_free_buffer(i32 %109, %struct.ecore_ooo_buffer* %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %60

115:                                              ; preds = %60
  %116 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %117 = load i32, i32* @ECORE_MSG_LL2, align 4
  %118 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %119 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %116, i32 %117, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %94, %75
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %37, %22
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.ecore_ooo_buffer* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_ooo_buffer*) #1

declare dso_local i32 @ecore_ooo_put_free_buffer(i32, %struct.ecore_ooo_buffer*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
