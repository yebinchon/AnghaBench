; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_get_rxq_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_get_rxq_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_queue_cid = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cau_sb_entry = type { i32 }

@CAU_REG_SB_VAR_MEMORY = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dmae_grc2host failed %d\0A\00", align 1
@CAU_SB_ENTRY_TIMER_RES0 = common dso_local global i32 0, align 4
@BAR0_MAP_REG_USDM_RAM = common dso_local global i32 0, align 4
@COALESCING_TIMESET_VALID = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@COALESCING_TIMESET_TIMESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_get_rxq_coalesce(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_queue_cid* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_queue_cid*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cau_sb_entry, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.ecore_queue_cid* %2, %struct.ecore_queue_cid** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %18 = load i64, i64* @CAU_REG_SB_VAR_MEMORY, align 8
  %19 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %20 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %18, %23
  %25 = ptrtoint %struct.cau_sb_entry* %13 to i64
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @OSAL_NULL, align 4
  %28 = call i32 @ecore_dmae_grc2host(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, i64 %24, i32 %26, i32 2, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @ECORE_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @DP_ERR(%struct.ecore_hwfn* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %5, align 4
  br label %70

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES0, align 4
  %41 = call i32 @GET_FIELD(i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @BAR0_MAP_REG_USDM_RAM, align 4
  %43 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %44 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @USTORM_ETH_QUEUE_ZONE_OFFSET(i32 %46)
  %48 = add nsw i32 %42, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @ecore_rd(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @COALESCING_TIMESET_VALID, align 4
  %55 = call i32 @GET_FIELD(i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %37
  %59 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %59, i32* %5, align 4
  br label %70

60:                                               ; preds = %37
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @COALESCING_TIMESET_TIMESET, align 4
  %63 = call i32 @GET_FIELD(i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %14, align 4
  %66 = shl i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = load i64*, i64** %9, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %60, %58, %32
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ecore_dmae_grc2host(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @USTORM_ETH_QUEUE_ZONE_OFFSET(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
