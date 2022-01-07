; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_vfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_vfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64 }
%struct.ecore_ptt = type { i32 }

@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.TYPE_2__* null, align 8
@DBG_PSTORM_ID = common dso_local global i64 0, align 8
@PLATFORM_ASIC = common dso_local global i64 0, align 8
@NUM_VFC_RAM_TYPES = common dso_local global i64 0, align 8
@s_vfc_ram_defs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_grc_dump_vfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_vfc(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %9, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %78, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @MAX_DBG_STORMS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %15
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = load i64, i64* %10, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn* %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_storm_defs, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @DBG_PSTORM_ID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %38 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PLATFORM_ASIC, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %25, %19
  br label %78

43:                                               ; preds = %36, %32
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %45 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @ecore_grc_dump_vfc_cam(%struct.ecore_hwfn* %44, %struct.ecore_ptt* %45, i32* %49, i32 %50, i64 %51)
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  store i64 0, i64* %11, align 8
  br label %55

55:                                               ; preds = %74, %43
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @NUM_VFC_RAM_TYPES, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %61 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i32*, i32** @s_vfc_ram_defs, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32 @ecore_grc_dump_vfc_ram(%struct.ecore_hwfn* %60, %struct.ecore_ptt* %61, i32* %65, i32 %66, i64 %67, i32* %70)
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %59
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %55

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77, %42
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %15

81:                                               ; preds = %15
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

declare dso_local i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_grc_dump_vfc_cam(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i64) #1

declare dso_local i32 @ecore_grc_dump_vfc_ram(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
