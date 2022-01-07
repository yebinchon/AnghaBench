; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sb_attn_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sb_attn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_sb_attn_info*, %struct.ecore_dev* }
%struct.ecore_sb_attn_info = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate `struct ecore_sb_attn_info'\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to allocate status block (attentions)\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_int_sb_attn_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_int_sb_attn_alloc(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_dev*, align 8
  %7 = alloca %struct.ecore_sb_attn_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 1
  %12 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  store %struct.ecore_dev* %12, %struct.ecore_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ecore_sb_attn_info* @OSAL_ALLOC(%struct.ecore_dev* %13, i32 %14, i32 4)
  store %struct.ecore_sb_attn_info* %15, %struct.ecore_sb_attn_info** %7, align 8
  %16 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %7, align 8
  %17 = icmp ne %struct.ecore_sb_attn_info* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %20 = call i32 @DP_NOTICE(%struct.ecore_dev* %19, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = call i32 @SB_ATTN_ALIGNED_SIZE(%struct.ecore_hwfn* %24)
  %26 = call i8* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev* %23, i32* %8, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %31 = call i32 @DP_NOTICE(%struct.ecore_dev* %30, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %33 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %7, align 8
  %34 = call i32 @OSAL_FREE(%struct.ecore_dev* %32, %struct.ecore_sb_attn_info* %33)
  %35 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %22
  %37 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %7, align 8
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 0
  store %struct.ecore_sb_attn_info* %37, %struct.ecore_sb_attn_info** %39, align 8
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %41 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ecore_int_sb_attn_init(%struct.ecore_hwfn* %40, %struct.ecore_ptt* %41, i8* %42, i32 %43)
  %45 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %36, %29, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ecore_sb_attn_info* @OSAL_ALLOC(%struct.ecore_dev*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*) #1

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev*, i32*, i32) #1

declare dso_local i32 @SB_ATTN_ALIGNED_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_FREE(%struct.ecore_dev*, %struct.ecore_sb_attn_info*) #1

declare dso_local i32 @ecore_int_sb_attn_init(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
