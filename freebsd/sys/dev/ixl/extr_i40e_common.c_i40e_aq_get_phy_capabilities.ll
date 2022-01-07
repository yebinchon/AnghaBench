; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_phy_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_phy_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.i40e_aq_get_phy_abilities_resp = type { i64, i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@I40E_MAX_PHY_TIMEOUT = common dso_local global i64 0, align 8
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_get_phy_abilities = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LARGE_BUF = common dso_local global i64 0, align 8
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8
@I40E_AQ_PHY_REPORT_QUALIFIED_MODULES = common dso_local global i32 0, align 4
@I40E_AQ_PHY_REPORT_INITIAL_VALUES = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_AQ_RC_EIO = common dso_local global i64 0, align 8
@I40E_ERR_UNKNOWN_PHY = common dso_local global i32 0, align 4
@I40E_AQ_RC_EAGAIN = common dso_local global i64 0, align 8
@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@I40E_AQ_RC_OK = common dso_local global i64 0, align 8
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_FW_API_VERSION_MAJOR = common dso_local global i64 0, align 8
@I40E_MINOR_VER_GET_LINK_INFO_XL710 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %0, i32 %1, i32 %2, %struct.i40e_aq_get_phy_abilities_resp* %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_aq_get_phy_abilities_resp*, align 8
  %11 = alloca %struct.i40e_asq_cmd_details*, align 8
  %12 = alloca %struct.i40e_aq_desc, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.i40e_aq_get_phy_abilities_resp* %3, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %11, align 8
  %17 = load i64, i64* @I40E_MAX_PHY_TIMEOUT, align 8
  store i64 %17, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 16, i64* %16, align 8
  %18 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %19 = icmp ne %struct.i40e_aq_get_phy_abilities_resp* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %21, i32* %6, align 4
  br label %163

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %106, %22
  %24 = load i32, i32* @i40e_aqc_opc_get_phy_abilities, align 4
  %25 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %12, i32 %24)
  %26 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %27 = call i32 @CPU_TO_LE16(i64 %26)
  %28 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* @I40E_AQ_LARGE_BUF, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %36 = call i32 @CPU_TO_LE16(i64 %35)
  %37 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* @I40E_AQ_PHY_REPORT_QUALIFIED_MODULES, align 4
  %45 = call i32 @CPU_TO_LE32(i32 %44)
  %46 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @I40E_AQ_PHY_REPORT_INITIAL_VALUES, align 4
  %56 = call i32 @CPU_TO_LE32(i32 %55)
  %57 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %64 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %11, align 8
  %67 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %63, %struct.i40e_aq_desc* %12, %struct.i40e_aq_get_phy_abilities_resp* %64, i64 %65, %struct.i40e_asq_cmd_details* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @I40E_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %108

72:                                               ; preds = %62
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %74 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @I40E_AQ_RC_EIO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @I40E_ERR_UNKNOWN_PHY, align 4
  store i32 %80, i32* %13, align 4
  br label %108

81:                                               ; preds = %72
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %83 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @I40E_AQ_RC_EAGAIN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = call i32 @i40e_msec_delay(i32 1)
  %90 = load i64, i64* %15, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %15, align 8
  %92 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %97 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @I40E_AQ_RC_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp slt i64 %103, %104
  br label %106

106:                                              ; preds = %102, %95
  %107 = phi i1 [ false, %95 ], [ %105, %102 ]
  br i1 %107, label %23, label %108

108:                                              ; preds = %106, %79, %71
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @I40E_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %6, align 4
  br label %163

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %161

117:                                              ; preds = %114
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %119 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @I40E_MAC_XL710, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %117
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %126 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @I40E_FW_API_VERSION_MAJOR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %133 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @I40E_MINOR_VER_GET_LINK_INFO_XL710, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i32 @i40e_aq_get_link_info(%struct.i40e_hw* %139, i32 %140, i32* null, i32* null)
  store i32 %141, i32* %13, align 4
  br label %160

142:                                              ; preds = %131, %124, %117
  %143 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %144 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @LE32_TO_CPU(i32 %145)
  %147 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %148 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %151 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = shl i32 %153, 32
  %155 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %156 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %154
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %142, %138
  br label %161

161:                                              ; preds = %160, %114
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %161, %112, %20
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i64) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, %struct.i40e_aq_get_phy_abilities_resp*, i64, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @i40e_aq_get_link_info(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
