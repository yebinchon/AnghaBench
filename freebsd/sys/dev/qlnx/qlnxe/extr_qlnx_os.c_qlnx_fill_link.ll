; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_fill_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_fill_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64 }
%struct.qlnx_link_output = type { i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.ecore_mcp_link_params = type { i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32 }
%struct.ecore_mcp_link_state = type { i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ecore_ptt_acquire failed\0A\00", align 1
@QLNX_LINK_CAP_FIBRE = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_Autoneg = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_Asym_Pause = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_Pause = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_1000baseT_Half = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_1000baseT_Full = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_10000baseKR_Full = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_25000baseKR_Full = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_LINK_SPEED_40G = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_40000baseLR4_Full = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_50000baseKR2_Full = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_100000baseKR4_Full = common dso_local global i32 0, align 4
@QLNX_LINK_DUPLEX = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_SPEED_1G_HD = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_SPEED_1G_FD = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_SPEED_10G = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_SPEED_25G = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_SPEED_40G = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_SPEED_50G = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_SPEED_100G = common dso_local global i32 0, align 4
@ECORE_LINK_PARTNER_ASYMMETRIC_PAUSE = common dso_local global i64 0, align 8
@ECORE_LINK_PARTNER_BOTH_PAUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnx_fill_link(i32* %0, %struct.ecore_hwfn* %1, %struct.qlnx_link_output* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.qlnx_link_output*, align 8
  %7 = alloca %struct.ecore_mcp_link_params, align 8
  %8 = alloca %struct.ecore_mcp_link_state, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_ptt*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ecore_hwfn* %1, %struct.ecore_hwfn** %5, align 8
  store %struct.qlnx_link_output* %2, %struct.qlnx_link_output** %6, align 8
  store %struct.ecore_ptt* null, %struct.ecore_ptt** %10, align 8
  %11 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %12 = call i32 @memset(%struct.qlnx_link_output* %11, i32 0, i32 104)
  %13 = bitcast %struct.ecore_mcp_link_params* %7 to %struct.qlnx_link_output*
  %14 = call i32 @memset(%struct.qlnx_link_output* %13, i32 0, i32 104)
  %15 = bitcast %struct.ecore_mcp_link_state* %8 to %struct.qlnx_link_output*
  %16 = call i32 @memset(%struct.qlnx_link_output* %15, i32 0, i32 104)
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @qlnx_vf_device(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %25)
  store %struct.ecore_ptt* %26, %struct.ecore_ptt** %10, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %28 = icmp eq %struct.ecore_ptt* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @QL_DPRINT1(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %344

32:                                               ; preds = %24
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %35 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %36 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %35, i32 0, i32 11
  %37 = call i32 @ecore_mcp_get_media_type(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, i32* %36)
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %39 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %40 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %38, %struct.ecore_ptt* %39)
  %41 = bitcast %struct.ecore_mcp_link_params* %7 to %struct.qlnx_link_output*
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %43 = call i32 @ecore_mcp_get_link_params(%struct.ecore_hwfn* %42)
  %44 = call i32 @memcpy(%struct.qlnx_link_output* %41, i32 %43, i32 104)
  %45 = bitcast %struct.ecore_mcp_link_state* %8 to %struct.qlnx_link_output*
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = call i32 @ecore_mcp_get_link_state(%struct.ecore_hwfn* %46)
  %48 = call i32 @memcpy(%struct.qlnx_link_output* %45, i32 %47, i32 104)
  br label %62

49:                                               ; preds = %3
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %52 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %51, i32 0, i32 11
  %53 = call i32 @ecore_mcp_get_media_type(%struct.ecore_hwfn* %50, %struct.ecore_ptt* null, i32* %52)
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %55 = call i32 @ecore_vf_read_bulletin(%struct.ecore_hwfn* %54, i32* %9)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %57 = bitcast %struct.ecore_mcp_link_params* %7 to %struct.qlnx_link_output*
  %58 = call i32 @ecore_vf_get_link_params(%struct.ecore_hwfn* %56, %struct.qlnx_link_output* %57)
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %60 = bitcast %struct.ecore_mcp_link_state* %8 to %struct.qlnx_link_output*
  %61 = call i32 @ecore_vf_get_link_state(%struct.ecore_hwfn* %59, %struct.qlnx_link_output* %60)
  br label %62

62:                                               ; preds = %49, %32
  %63 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %68 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %70 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 8
  %72 = bitcast %struct.TYPE_4__* %70 to i8*
  %73 = bitcast %struct.TYPE_4__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  br label %74

74:                                               ; preds = %66, %62
  %75 = load i32, i32* @QLNX_LINK_CAP_FIBRE, align 4
  %76 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %77 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* @QLNX_LINK_CAP_Autoneg, align 4
  %84 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %85 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 10
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98, %88
  %104 = load i32, i32* @QLNX_LINK_CAP_Asym_Pause, align 4
  %105 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %106 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %98, %93
  %110 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 10
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 10
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119, %114, %109
  %125 = load i32, i32* @QLNX_LINK_CAP_Pause, align 4
  %126 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %127 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119
  %131 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i32, i32* @QLNX_LINK_CAP_1000baseT_Half, align 4
  %139 = load i32, i32* @QLNX_LINK_CAP_1000baseT_Full, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %142 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %130
  %146 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load i32, i32* @QLNX_LINK_CAP_10000baseKR_Full, align 4
  %154 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %155 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %152, %145
  %159 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i32, i32* @QLNX_LINK_CAP_25000baseKR_Full, align 4
  %167 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %168 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %158
  %172 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @NVM_CFG1_PORT_DRV_LINK_SPEED_40G, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load i32, i32* @QLNX_LINK_CAP_40000baseLR4_Full, align 4
  %180 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %181 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %171
  %185 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load i32, i32* @QLNX_LINK_CAP_50000baseKR2_Full, align 4
  %193 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %194 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %184
  %198 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %197
  %205 = load i32, i32* @QLNX_LINK_CAP_100000baseKR4_Full, align 4
  %206 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %207 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %197
  %211 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %212 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %215 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %7, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %220 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %219, i32 0, i32 9
  store i64 %218, i64* %220, align 8
  %221 = load i32, i32* @QLNX_LINK_DUPLEX, align 4
  %222 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %223 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 8
  %224 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @ECORE_LINK_PARTNER_SPEED_1G_HD, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %210
  %230 = load i32, i32* @QLNX_LINK_CAP_1000baseT_Half, align 4
  %231 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %232 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %210
  %236 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @ECORE_LINK_PARTNER_SPEED_1G_FD, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = load i32, i32* @QLNX_LINK_CAP_1000baseT_Full, align 4
  %243 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %244 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %235
  %248 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ECORE_LINK_PARTNER_SPEED_10G, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %247
  %254 = load i32, i32* @QLNX_LINK_CAP_10000baseKR_Full, align 4
  %255 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %256 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %253, %247
  %260 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @ECORE_LINK_PARTNER_SPEED_25G, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load i32, i32* @QLNX_LINK_CAP_25000baseKR_Full, align 4
  %267 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %268 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %265, %259
  %272 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @ECORE_LINK_PARTNER_SPEED_40G, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %271
  %278 = load i32, i32* @QLNX_LINK_CAP_40000baseLR4_Full, align 4
  %279 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %280 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %277, %271
  %284 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ECORE_LINK_PARTNER_SPEED_50G, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %283
  %290 = load i32, i32* @QLNX_LINK_CAP_50000baseKR2_Full, align 4
  %291 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %292 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %289, %283
  %296 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @ECORE_LINK_PARTNER_SPEED_100G, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %295
  %302 = load i32, i32* @QLNX_LINK_CAP_100000baseKR4_Full, align 4
  %303 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %304 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %301, %295
  %308 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %307
  %312 = load i32, i32* @QLNX_LINK_CAP_Autoneg, align 4
  %313 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %314 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 8
  br label %317

317:                                              ; preds = %311, %307
  %318 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %317
  %322 = load i32, i32* @QLNX_LINK_CAP_Pause, align 4
  %323 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %324 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 8
  br label %327

327:                                              ; preds = %321, %317
  %328 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @ECORE_LINK_PARTNER_ASYMMETRIC_PAUSE, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %337, label %332

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %8, i32 0, i32 5
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @ECORE_LINK_PARTNER_BOTH_PAUSE, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %343

337:                                              ; preds = %332, %327
  %338 = load i32, i32* @QLNX_LINK_CAP_Asym_Pause, align 4
  %339 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %6, align 8
  %340 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 8
  br label %343

343:                                              ; preds = %337, %332
  br label %344

344:                                              ; preds = %343, %29
  ret void
}

declare dso_local i32 @memset(%struct.qlnx_link_output*, i32, i32) #1

declare dso_local i64 @qlnx_vf_device(i32*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @QL_DPRINT1(i32*, i8*) #1

declare dso_local i32 @ecore_mcp_get_media_type(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @memcpy(%struct.qlnx_link_output*, i32, i32) #1

declare dso_local i32 @ecore_mcp_get_link_params(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_get_link_state(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_vf_read_bulletin(%struct.ecore_hwfn*, i32*) #1

declare dso_local i32 @ecore_vf_get_link_params(%struct.ecore_hwfn*, %struct.qlnx_link_output*) #1

declare dso_local i32 @ecore_vf_get_link_state(%struct.ecore_hwfn*, %struct.qlnx_link_output*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
