; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_spq* }
%struct.ecore_spq = type { i32, i32, i32, %struct.ecore_spq_entry* }
%struct.ecore_spq_entry = type { i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate `struct ecore_spq'\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_SINGLE = common dso_local global i32 0, align 4
@ECORE_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate spq chain\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_spq_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_spq_entry*, align 8
  %5 = alloca %struct.ecore_spq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %8 = load i8*, i8** @OSAL_NULL, align 8
  %9 = bitcast i8* %8 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %9, %struct.ecore_spq_entry** %4, align 8
  %10 = load i8*, i8** @OSAL_NULL, align 8
  %11 = bitcast i8* %10 to %struct.ecore_spq*
  store %struct.ecore_spq* %11, %struct.ecore_spq** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ecore_spq* @OSAL_ZALLOC(i32 %14, i32 %15, i32 24)
  store %struct.ecore_spq* %16, %struct.ecore_spq** %5, align 8
  %17 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %18 = icmp ne %struct.ecore_spq* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %20, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ECORE_CHAIN_USE_TO_PRODUCE, align 4
  %28 = load i32, i32* @ECORE_CHAIN_MODE_SINGLE, align 4
  %29 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %30 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %30, i32 0, i32 0
  %32 = load i8*, i8** @OSAL_NULL, align 8
  %33 = call i64 @ecore_chain_alloc(i32 %26, i32 %27, i32 %28, i32 %29, i32 0, i32 4, i32* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %37 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %36, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %64

38:                                               ; preds = %23
  %39 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %40 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %39, i32 0, i32 0
  %41 = call i32 @ecore_chain_get_capacity(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %43 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call %struct.ecore_spq_entry* @OSAL_DMA_ALLOC_COHERENT(i32 %44, i32* %6, i32 %48)
  store %struct.ecore_spq_entry* %49, %struct.ecore_spq_entry** %4, align 8
  %50 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %51 = icmp ne %struct.ecore_spq_entry* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %64

53:                                               ; preds = %38
  %54 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %55 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %56 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %55, i32 0, i32 3
  store %struct.ecore_spq_entry* %54, %struct.ecore_spq_entry** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 1
  store %struct.ecore_spq* %60, %struct.ecore_spq** %62, align 8
  %63 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %63, i32* %2, align 4
  br label %77

64:                                               ; preds = %52, %35
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %69 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %68, i32 0, i32 0
  %70 = call i32 @ecore_chain_free(i32 %67, i32* %69)
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %72 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ecore_spq*, %struct.ecore_spq** %5, align 8
  %75 = call i32 @OSAL_FREE(i32 %73, %struct.ecore_spq* %74)
  %76 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %64, %53, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ecore_spq* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i64 @ecore_chain_alloc(i32, i32, i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @ecore_chain_get_capacity(i32*) #1

declare dso_local %struct.ecore_spq_entry* @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @ecore_chain_free(i32, i32*) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_spq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
