; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_consq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_consq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_consq* }
%struct.ecore_consq = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate `struct ecore_consq'\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@ECORE_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@ECORE_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate consq chain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_consq_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_consq*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ecore_consq* @OSAL_ZALLOC(i32 %7, i32 %8, i32 4)
  store %struct.ecore_consq* %9, %struct.ecore_consq** %4, align 8
  %10 = load %struct.ecore_consq*, %struct.ecore_consq** %4, align 8
  %11 = icmp ne %struct.ecore_consq* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %13, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ECORE_CHAIN_USE_TO_PRODUCE, align 4
  %21 = load i32, i32* @ECORE_CHAIN_MODE_PBL, align 4
  %22 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %23 = load i32, i32* @ECORE_CHAIN_PAGE_SIZE, align 4
  %24 = sdiv i32 %23, 128
  %25 = load %struct.ecore_consq*, %struct.ecore_consq** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_consq, %struct.ecore_consq* %25, i32 0, i32 0
  %27 = load i32, i32* @OSAL_NULL, align 4
  %28 = call i64 @ecore_chain_alloc(i32 %19, i32 %20, i32 %21, i32 %22, i32 %24, i32 128, i32* %26, i32 %27)
  %29 = load i64, i64* @ECORE_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %33 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %32, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %40

34:                                               ; preds = %16
  %35 = load %struct.ecore_consq*, %struct.ecore_consq** %4, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 1
  store %struct.ecore_consq* %35, %struct.ecore_consq** %37, align 8
  %38 = load i64, i64* @ECORE_SUCCESS, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %31
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ecore_consq*, %struct.ecore_consq** %4, align 8
  %45 = call i32 @OSAL_FREE(i32 %43, %struct.ecore_consq* %44)
  %46 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %34, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ecore_consq* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i64 @ecore_chain_alloc(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_consq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
