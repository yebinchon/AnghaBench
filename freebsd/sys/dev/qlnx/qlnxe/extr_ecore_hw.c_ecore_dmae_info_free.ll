; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_info_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i32, i32, i32 }

@OSAL_NULL = common dso_local global i64 0, align 8
@DMAE_MAX_RW_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_dmae_info_free(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 7
  %7 = call i32 @OSAL_SPIN_LOCK(i32* %6)
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  %14 = call i32 @OSAL_SPIN_UNLOCK(i32* %13)
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OSAL_NULL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %28, i64 %32, i32 %33, i32 4)
  %35 = load i64, i64* @OSAL_NULL, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %21, %1
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %41 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OSAL_NULL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %55 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %53, i64 %57, i32 %58, i32 4)
  %60 = load i64, i64* @OSAL_NULL, align 8
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %46, %39
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @OSAL_NULL, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %73 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %3, align 4
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %77 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %80 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @DMAE_MAX_RW_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %78, i64 %82, i32 %83, i32 %87)
  %89 = load i64, i64* @OSAL_NULL, align 8
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %91 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %71, %64
  ret void
}

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
