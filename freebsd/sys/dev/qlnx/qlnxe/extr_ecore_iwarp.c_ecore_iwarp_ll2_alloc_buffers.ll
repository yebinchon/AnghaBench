; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_ll2_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_ll2_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_iwarp_ll2_buff = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate LL2 buffer desc\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate LL2 buffers\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i32, i32)* @ecore_iwarp_ll2_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_ll2_alloc_buffers(%struct.ecore_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_iwarp_ll2_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %62, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ecore_iwarp_ll2_buff* @OSAL_ZALLOC(i32 %19, i32 %20, i32 12)
  store %struct.ecore_iwarp_ll2_buff* %21, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %22 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %23 = icmp ne %struct.ecore_iwarp_ll2_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = call i32 @DP_INFO(%struct.ecore_hwfn* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %65

27:                                               ; preds = %16
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %32 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %31, i32 0, i32 2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @OSAL_DMA_ALLOC_COHERENT(i32 %30, i32* %32, i32 %33)
  %35 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %38 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %27
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %43 = call i32 @DP_INFO(%struct.ecore_hwfn* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %48 = call i32 @OSAL_FREE(i32 %46, %struct.ecore_iwarp_ll2_buff* %47)
  %49 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %49, i32* %10, align 4
  br label %65

50:                                               ; preds = %27
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %53 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %55 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ecore_iwarp_ll2_post_rx(%struct.ecore_hwfn* %54, %struct.ecore_iwarp_ll2_buff* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %65

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %12

65:                                               ; preds = %60, %41, %24, %12
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local %struct.ecore_iwarp_ll2_buff* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_iwarp_ll2_buff*) #1

declare dso_local i32 @ecore_iwarp_ll2_post_rx(%struct.ecore_hwfn*, %struct.ecore_iwarp_ll2_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
