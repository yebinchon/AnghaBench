; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_set_rss_lut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_set_rss_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_get_set_rss_lut = type { i32, i32 }

@i40e_aqc_opc_set_rss_lut = common dso_local global i32 0, align 4
@i40e_aqc_opc_get_rss_lut = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_FLAG_RD = common dso_local global i64 0, align 8
@I40E_AQC_SET_RSS_LUT_VSI_ID_SHIFT = common dso_local global i32 0, align 4
@I40E_AQC_SET_RSS_LUT_VSI_ID_MASK = common dso_local global i32 0, align 4
@I40E_AQC_SET_RSS_LUT_VSI_VALID = common dso_local global i64 0, align 8
@I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF = common dso_local global i32 0, align 4
@I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32, i32, i32*, i32, i32)* @i40e_aq_get_set_rss_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_aq_get_set_rss_lut(%struct.i40e_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40e_aq_desc, align 4
  %15 = alloca %struct.i40e_aqc_get_set_rss_lut*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.i40e_aqc_get_set_rss_lut*
  store %struct.i40e_aqc_get_set_rss_lut* %18, %struct.i40e_aqc_get_set_rss_lut** %15, align 8
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @i40e_aqc_opc_set_rss_lut, align 4
  %23 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %14, i32 %22)
  br label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @i40e_aqc_opc_get_rss_lut, align 4
  %26 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %14, i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @CPU_TO_LE16(i32 %29)
  %31 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i64, i64* @I40E_AQ_FLAG_RD, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @CPU_TO_LE16(i32 %35)
  %37 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @I40E_AQC_SET_RSS_LUT_VSI_ID_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @I40E_AQC_SET_RSS_LUT_VSI_ID_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @CPU_TO_LE16(i32 %44)
  %46 = load %struct.i40e_aqc_get_set_rss_lut*, %struct.i40e_aqc_get_set_rss_lut** %15, align 8
  %47 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_lut, %struct.i40e_aqc_get_set_rss_lut* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* @I40E_AQC_SET_RSS_LUT_VSI_VALID, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @CPU_TO_LE16(i32 %49)
  %51 = load %struct.i40e_aqc_get_set_rss_lut*, %struct.i40e_aqc_get_set_rss_lut** %15, align 8
  %52 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_lut, %struct.i40e_aqc_get_set_rss_lut* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %27
  %58 = load i32, i32* @I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF, align 4
  %59 = load i32, i32* @I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @CPU_TO_LE16(i32 %62)
  %64 = load %struct.i40e_aqc_get_set_rss_lut*, %struct.i40e_aqc_get_set_rss_lut** %15, align 8
  %65 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_lut, %struct.i40e_aqc_get_set_rss_lut* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %79

68:                                               ; preds = %27
  %69 = load i32, i32* @I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI, align 4
  %70 = load i32, i32* @I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* @I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @CPU_TO_LE16(i32 %73)
  %75 = load %struct.i40e_aqc_get_set_rss_lut*, %struct.i40e_aqc_get_set_rss_lut** %15, align 8
  %76 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_lut, %struct.i40e_aqc_get_set_rss_lut* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %68, %57
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %80, %struct.i40e_aq_desc* %14, i32* %81, i32 %82, i32* null)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  ret i32 %84
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
