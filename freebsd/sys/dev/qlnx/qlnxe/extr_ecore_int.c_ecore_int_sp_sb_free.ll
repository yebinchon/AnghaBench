; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sp_sb_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sp_sb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_sb_sp_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ecore_hwfn = type { %struct.ecore_sb_sp_info*, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_sb_sp_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_int_sp_sb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_int_sp_sb_free(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_sb_sp_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %4, i32 0, i32 0
  %6 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %5, align 8
  store %struct.ecore_sb_sp_info* %6, %struct.ecore_sb_sp_info** %3, align 8
  %7 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %3, align 8
  %8 = icmp ne %struct.ecore_sb_sp_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %3, align 8
  %12 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %29 = call i32 @SB_ALIGNED_SIZE(%struct.ecore_hwfn* %28)
  %30 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %19, i64 %23, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %16, %10
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %3, align 8
  %36 = call i32 @OSAL_FREE(i32 %34, %struct.ecore_sb_sp_info* %35)
  %37 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** @OSAL_NULL, align 8
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 0
  store %struct.ecore_sb_sp_info* %37, %struct.ecore_sb_sp_info** %39, align 8
  br label %40

40:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i64, i32, i32) #1

declare dso_local i32 @SB_ALIGNED_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_sb_sp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
