; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sp_sb_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sp_sb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_sb_sp_info*, i32 }
%struct.ecore_sb_sp_info = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate `struct ecore_sb_info'\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to allocate status block\0A\00", align 1
@ECORE_SP_SB_ID = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_int_sp_sb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_int_sp_sb_alloc(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_sb_sp_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ecore_sb_sp_info* @OSAL_ALLOC(i32 %11, i32 %12, i32 8)
  store %struct.ecore_sb_sp_info* %13, %struct.ecore_sb_sp_info** %6, align 8
  %14 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %15 = icmp ne %struct.ecore_sb_sp_info* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %17, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = call i32 @SB_ALIGNED_SIZE(%struct.ecore_hwfn* %24)
  %26 = call i8* @OSAL_DMA_ALLOC_COHERENT(i32 %23, i32* %7, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %31 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %30, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %36 = call i32 @OSAL_FREE(i32 %34, %struct.ecore_sb_sp_info* %35)
  %37 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %55

38:                                               ; preds = %20
  %39 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %41 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %40, i32 0, i32 0
  store %struct.ecore_sb_sp_info* %39, %struct.ecore_sb_sp_info** %41, align 8
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %44 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %44, i32 0, i32 1
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ECORE_SP_SB_ID, align 4
  %49 = call i32 @ecore_int_sb_init(%struct.ecore_hwfn* %42, %struct.ecore_ptt* %43, i32* %45, i8* %46, i32 %47, i32 %48)
  %50 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %51 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OSAL_MEMSET(i32 %52, i32 0, i32 4)
  %54 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %38, %29, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ecore_sb_sp_info* @OSAL_ALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @SB_ALIGNED_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_sb_sp_info*) #1

declare dso_local i32 @ecore_int_sb_init(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i8*, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
