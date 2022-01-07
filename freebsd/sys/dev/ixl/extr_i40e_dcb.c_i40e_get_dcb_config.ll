; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_get_dcb_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_get_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.i40e_aqc_get_cee_dcb_cfg_resp = type { i32 }
%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_DCBX_MODE_CEE = common dso_local global i8* null, align 8
@I40E_AQ_RC_ENOENT = common dso_local global i64 0, align 8
@I40E_AQ_LLDP_MIB_LOCAL = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_MIB_REMOTE = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_get_dcb_config(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_aqc_get_cee_dcb_cfg_resp, align 4
  %6 = alloca %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  %7 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I40E_MAC_XL710, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 33
  br i1 %25, label %32, label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = call i32 @i40e_get_ieee_dcb_config(%struct.i40e_hw* %33)
  store i32 %34, i32* %2, align 4
  br label %140

35:                                               ; preds = %26, %1
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @I40E_MAC_XL710, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %35
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 33
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %56 = call i32 @i40e_aq_get_cee_dcb_config(%struct.i40e_hw* %55, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %6, i32 4, i32* null)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @I40E_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i8*, i8** @I40E_DCBX_MODE_CEE, align 8
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LE16_TO_CPU(i32 %66)
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %69 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %72 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %71, i32 0, i32 3
  %73 = call i32 @i40e_cee_to_dcb_v1_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %6, %struct.TYPE_7__* %72)
  br label %74

74:                                               ; preds = %60, %54
  br label %98

75:                                               ; preds = %48, %42, %35
  %76 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %77 = bitcast %struct.i40e_aqc_get_cee_dcb_cfg_resp* %5 to %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*
  %78 = call i32 @i40e_aq_get_cee_dcb_config(%struct.i40e_hw* %76, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %77, i32 4, i32* null)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @I40E_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load i8*, i8** @I40E_DCBX_MODE_CEE, align 8
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %85 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, %struct.i40e_aqc_get_cee_dcb_cfg_resp* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @LE32_TO_CPU(i32 %88)
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %91 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = bitcast %struct.i40e_aqc_get_cee_dcb_cfg_resp* %5 to %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %95 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %94, i32 0, i32 3
  %96 = call i32 @i40e_cee_to_dcb_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %93, %struct.TYPE_7__* %95)
  br label %97

97:                                               ; preds = %82, %75
  br label %98

98:                                               ; preds = %97, %74
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %100 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @I40E_AQ_RC_ENOENT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %107 = call i32 @i40e_get_ieee_dcb_config(%struct.i40e_hw* %106)
  store i32 %107, i32* %2, align 4
  br label %140

108:                                              ; preds = %98
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @I40E_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %138

113:                                              ; preds = %108
  %114 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %115 = load i32, i32* @I40E_AQ_LLDP_MIB_LOCAL, align 4
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 2
  %118 = call i32 @i40e_aq_get_dcb_config(%struct.i40e_hw* %114, i32 %115, i32 0, i32* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %138

122:                                              ; preds = %113
  %123 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %124 = load i32, i32* @I40E_AQ_LLDP_MIB_REMOTE, align 4
  %125 = load i32, i32* @I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE, align 4
  %126 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %127 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %126, i32 0, i32 1
  %128 = call i32 @i40e_aq_get_dcb_config(%struct.i40e_hw* %123, i32 %124, i32 %125, i32* %127)
  store i32 %128, i32* %4, align 4
  %129 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %130 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @I40E_AQ_RC_ENOENT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %122
  br label %138

138:                                              ; preds = %137, %121, %112
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %105, %32
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @i40e_get_ieee_dcb_config(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_aq_get_cee_dcb_config(%struct.i40e_hw*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, i32, i32*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

declare dso_local i32 @i40e_cee_to_dcb_v1_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.TYPE_7__*) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

declare dso_local i32 @i40e_cee_to_dcb_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.TYPE_7__*) #1

declare dso_local i32 @i40e_aq_get_dcb_config(%struct.i40e_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
