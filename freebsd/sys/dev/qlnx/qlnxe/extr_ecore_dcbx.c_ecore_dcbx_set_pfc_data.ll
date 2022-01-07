; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_pfc_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_pfc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_dcbx_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64, i64, i64 }

@DCBX_PFC_ERROR_MASK = common dso_local global i32 0, align 4
@DCBX_PFC_WILLING_MASK = common dso_local global i32 0, align 4
@DCBX_PFC_ENABLED_MASK = common dso_local global i32 0, align 4
@DCBX_PFC_CAPS_MASK = common dso_local global i32 0, align 4
@DCBX_PFC_CAPS_OFFSET = common dso_local global i32 0, align 4
@ECORE_MAX_PFC_PRIORITIES = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_MASK = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_OFFSET = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pfc = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i32*, %struct.ecore_dcbx_params*)* @ecore_dcbx_set_pfc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_set_pfc_data(%struct.ecore_hwfn* %0, i32* %1, %struct.ecore_dcbx_params* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ecore_dcbx_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ecore_dcbx_params* %2, %struct.ecore_dcbx_params** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @DCBX_PFC_ERROR_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @DCBX_PFC_WILLING_MASK, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @DCBX_PFC_WILLING_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @DCBX_PFC_ENABLED_MASK, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %47

41:                                               ; preds = %30
  %42 = load i32, i32* @DCBX_PFC_ENABLED_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* @DCBX_PFC_CAPS_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @DCBX_PFC_CAPS_OFFSET, align 4
  %59 = shl i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %83, %47
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ECORE_MAX_PFC_PRIORITIES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 1, %78
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %77, %67
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %63

86:                                               ; preds = %63
  %87 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_OFFSET, align 4
  %94 = shl i32 %92, %93
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %99 = load i32, i32* @ECORE_MSG_DCB, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %98, i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %101)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
