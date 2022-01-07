; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_info_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmae_cmd = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.dmae_cmd*, %struct.dmae_cmd*, %struct.dmae_cmd*, i32 }

@OSAL_NULL = common dso_local global %struct.dmae_cmd* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate `p_completion_word'\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate `struct dmae_cmd'\0A\00", align 1
@DMAE_MAX_RW_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to allocate `intermediate_buffer'\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dmae_info_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dmae_cmd**, align 8
  %6 = alloca %struct.dmae_cmd**, align 8
  %7 = alloca %struct.dmae_cmd**, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  store i32* %10, i32** %4, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  store %struct.dmae_cmd** %13, %struct.dmae_cmd*** %5, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  store %struct.dmae_cmd** %16, %struct.dmae_cmd*** %6, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store %struct.dmae_cmd** %19, %struct.dmae_cmd*** %7, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.dmae_cmd* @OSAL_DMA_ALLOC_COHERENT(i32 %22, i32* %23, i32 4)
  %25 = load %struct.dmae_cmd**, %struct.dmae_cmd*** %7, align 8
  store %struct.dmae_cmd* %24, %struct.dmae_cmd** %25, align 8
  %26 = load %struct.dmae_cmd**, %struct.dmae_cmd*** %7, align 8
  %27 = load %struct.dmae_cmd*, %struct.dmae_cmd** %26, align 8
  %28 = load %struct.dmae_cmd*, %struct.dmae_cmd** @OSAL_NULL, align 8
  %29 = icmp eq %struct.dmae_cmd* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %31, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %82

33:                                               ; preds = %1
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32* %36, i32** %4, align 8
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call %struct.dmae_cmd* @OSAL_DMA_ALLOC_COHERENT(i32 %39, i32* %40, i32 4)
  %42 = load %struct.dmae_cmd**, %struct.dmae_cmd*** %5, align 8
  store %struct.dmae_cmd* %41, %struct.dmae_cmd** %42, align 8
  %43 = load %struct.dmae_cmd**, %struct.dmae_cmd*** %5, align 8
  %44 = load %struct.dmae_cmd*, %struct.dmae_cmd** %43, align 8
  %45 = load %struct.dmae_cmd*, %struct.dmae_cmd** @OSAL_NULL, align 8
  %46 = icmp eq %struct.dmae_cmd* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %49 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %48, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %82

50:                                               ; preds = %33
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32* %53, i32** %4, align 8
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %55 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @DMAE_MAX_RW_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call %struct.dmae_cmd* @OSAL_DMA_ALLOC_COHERENT(i32 %56, i32* %57, i32 %61)
  %63 = load %struct.dmae_cmd**, %struct.dmae_cmd*** %6, align 8
  store %struct.dmae_cmd* %62, %struct.dmae_cmd** %63, align 8
  %64 = load %struct.dmae_cmd**, %struct.dmae_cmd*** %6, align 8
  %65 = load %struct.dmae_cmd*, %struct.dmae_cmd** %64, align 8
  %66 = load %struct.dmae_cmd*, %struct.dmae_cmd** @OSAL_NULL, align 8
  %67 = icmp eq %struct.dmae_cmd* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %70 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %69, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %82

71:                                               ; preds = %50
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %73 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %76 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %79 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %81, i32* %2, align 4
  br label %86

82:                                               ; preds = %68, %47, %30
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %84 = call i32 @ecore_dmae_info_free(%struct.ecore_hwfn* %83)
  %85 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %71
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.dmae_cmd* @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_dmae_info_free(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
