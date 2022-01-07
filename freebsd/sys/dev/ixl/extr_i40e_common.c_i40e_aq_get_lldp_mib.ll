; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_lldp_mib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_lldp_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_lldp_get_mib = type { i32, i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_lldp_get_mib = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LLDP_MIB_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_BRIDGE_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_lldp_mib(%struct.i40e_hw* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6, %struct.i40e_asq_cmd_details* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.i40e_asq_cmd_details*, align 8
  %18 = alloca %struct.i40e_aq_desc, align 4
  %19 = alloca %struct.i40e_aqc_lldp_get_mib*, align 8
  %20 = alloca %struct.i40e_aqc_lldp_get_mib*, align 8
  %21 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.i40e_asq_cmd_details* %7, %struct.i40e_asq_cmd_details** %17, align 8
  %22 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.i40e_aqc_lldp_get_mib*
  store %struct.i40e_aqc_lldp_get_mib* %24, %struct.i40e_aqc_lldp_get_mib** %19, align 8
  %25 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.i40e_aqc_lldp_get_mib*
  store %struct.i40e_aqc_lldp_get_mib* %27, %struct.i40e_aqc_lldp_get_mib** %20, align 8
  %28 = load i32, i32* %14, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %8
  %34 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %34, i32* %9, align 4
  br label %106

35:                                               ; preds = %30
  %36 = load i32, i32* @i40e_aqc_opc_lldp_get_mib, align 4
  %37 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %18, i32 %36)
  %38 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @CPU_TO_LE16(i32 %39)
  %41 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @I40E_AQ_LLDP_MIB_TYPE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.i40e_aqc_lldp_get_mib*, %struct.i40e_aqc_lldp_get_mib** %19, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_lldp_get_mib, %struct.i40e_aqc_lldp_get_mib* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @I40E_AQ_LLDP_BRIDGE_TYPE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.i40e_aqc_lldp_get_mib*, %struct.i40e_aqc_lldp_get_mib** %19, align 8
  %55 = getelementptr inbounds %struct.i40e_aqc_lldp_get_mib, %struct.i40e_aqc_lldp_get_mib* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @CPU_TO_LE16(i32 %58)
  %60 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @CPU_TO_LE16(i32 %62)
  %64 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %35
  %71 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @CPU_TO_LE16(i32 %72)
  %74 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %35
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %17, align 8
  %82 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %78, %struct.i40e_aq_desc* %18, i8* %79, i32 %80, %struct.i40e_asq_cmd_details* %81)
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %77
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.i40e_aqc_lldp_get_mib*, %struct.i40e_aqc_lldp_get_mib** %20, align 8
  %90 = getelementptr inbounds %struct.i40e_aqc_lldp_get_mib, %struct.i40e_aqc_lldp_get_mib* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @LE16_TO_CPU(i32 %91)
  %93 = load i32*, i32** %15, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32*, i32** %16, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.i40e_aqc_lldp_get_mib*, %struct.i40e_aqc_lldp_get_mib** %20, align 8
  %99 = getelementptr inbounds %struct.i40e_aqc_lldp_get_mib, %struct.i40e_aqc_lldp_get_mib* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @LE16_TO_CPU(i32 %100)
  %102 = load i32*, i32** %16, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %94
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i32, i32* %21, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %33
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i8*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
