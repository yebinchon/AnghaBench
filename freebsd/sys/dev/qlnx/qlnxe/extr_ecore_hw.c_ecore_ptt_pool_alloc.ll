; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_ptt_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_ptt_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_ptt_pool*, i32, i32 }
%struct.ecore_ptt_pool = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@PXP_EXTERNAL_BAR_PF_WINDOW_NUM = common dso_local global i32 0, align 4
@ECORE_BAR_INVALID_OFFSET = common dso_local global i32 0, align 4
@RESERVED_PTT_MAX = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_ptt_pool_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt_pool*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ecore_ptt_pool* @OSAL_ALLOC(i32 %8, i32 %9, i32 16)
  store %struct.ecore_ptt_pool* %10, %struct.ecore_ptt_pool** %4, align 8
  %11 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %12 = icmp ne %struct.ecore_ptt_pool* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %86

15:                                               ; preds = %1
  %16 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %16, i32 0, i32 1
  %18 = call i32 @OSAL_LIST_INIT(i32* %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %75, %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PXP_EXTERNAL_BAR_PF_WINDOW_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %24, i32* %31, align 8
  %32 = load i32, i32* @ECORE_BAR_INVALID_OFFSET, align 4
  %33 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %32, i32* %40, align 8
  %41 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %42 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %51 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %54 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 %52, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @RESERVED_PTT_MAX, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %23
  %64 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %65 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %72 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %71, i32 0, i32 1
  %73 = call i32 @OSAL_LIST_PUSH_HEAD(i32* %70, i32* %72)
  br label %74

74:                                               ; preds = %63, %23
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %19

78:                                               ; preds = %19
  %79 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %81 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %80, i32 0, i32 0
  store %struct.ecore_ptt_pool* %79, %struct.ecore_ptt_pool** %81, align 8
  %82 = load %struct.ecore_ptt_pool*, %struct.ecore_ptt_pool** %4, align 8
  %83 = getelementptr inbounds %struct.ecore_ptt_pool, %struct.ecore_ptt_pool* %82, i32 0, i32 0
  %84 = call i32 @OSAL_SPIN_LOCK_INIT(i32* %83)
  %85 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.ecore_ptt_pool* @OSAL_ALLOC(i32, i32, i32) #1

declare dso_local i32 @OSAL_LIST_INIT(i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_HEAD(i32*, i32*) #1

declare dso_local i32 @OSAL_SPIN_LOCK_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
