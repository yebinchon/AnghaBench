; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_gft_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_gft_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"gft_config: must accept at least on of - ipv4 or ipv6'\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"gft_config: must accept at least on of - udp or tcp\0A\00", align 1
@MAX_GFT_PROFILE_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"gft_config: unsupported gft_profile_type\0A\00", align 1
@T_ETH_PACKET_MATCH_RFS_EVENTID = common dso_local global i32 0, align 4
@PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT = common dso_local global i32 0, align 4
@PARSER_ETH_CONN_CM_HDR = common dso_local global i32 0, align 4
@PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_CM_HDR_GFT = common dso_local global i64 0, align 8
@PRS_REG_LOAD_L2_FILTER = common dso_local global i64 0, align 8
@PRS_REG_SEARCH_TENANT_ID = common dso_local global i64 0, align 8
@GFT_CAM_LINE_MAPPED_VALID = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_PF_ID_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_PF_ID_MASK_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_PF_ID = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE = common dso_local global i32 0, align 4
@GFT_PROFILE_TCP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_PROFILE_UDP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_IP_VERSION_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_IP_VERSION = common dso_local global i32 0, align 4
@GFT_PROFILE_IPV4 = common dso_local global i32 0, align 4
@GFT_PROFILE_IPV6 = common dso_local global i32 0, align 4
@PRS_REG_GFT_CAM = common dso_local global i64 0, align 8
@CAM_LINE_SIZE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_TUNNEL_DST_PORT = common dso_local global i32 0, align 4
@GFT_RAM_LINE_TUNNEL_OVER_IP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_4_TUPLE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_DST_IP = common dso_local global i32 0, align 4
@GFT_RAM_LINE_SRC_IP = common dso_local global i32 0, align 4
@GFT_RAM_LINE_OVER_IP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_RAM_LINE_ETHERTYPE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_SRC_PORT = common dso_local global i32 0, align 4
@GFT_RAM_LINE_DST_PORT = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_L4_DST_PORT = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_IP_DST_ADDR = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_IP_SRC_ADDR = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_TUNNEL_TYPE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_TUNNEL_ETHERTYPE = common dso_local global i32 0, align 4
@PRS_REG_GFT_PROFILE_MASK_RAM = common dso_local global i64 0, align 8
@RAM_LINE_SIZE = common dso_local global i32 0, align 4
@REG_SIZE = common dso_local global i64 0, align 8
@PRS_GFT_CAM_LINES_NO_MATCH = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_GFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_gft_config(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %28 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %27, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23, %8
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %37 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %36, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @MAX_GFT_PROFILE_TYPE, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %44 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %43, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* @T_ETH_PACKET_MATCH_RFS_EVENTID, align 4
  %47 = load i32, i32* @PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* @PARSER_ETH_CONN_CM_HDR, align 4
  %50 = load i32, i32* @PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %55 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %56 = load i64, i64* @PRS_REG_CM_HDR_GFT, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @ecore_wr(%struct.ecore_hwfn* %54, %struct.ecore_ptt* %55, i64 %56, i32 %57)
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %60 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %61 = load i64, i64* @PRS_REG_LOAD_L2_FILTER, align 8
  %62 = call i32 @ecore_wr(%struct.ecore_hwfn* %59, %struct.ecore_ptt* %60, i64 %61, i32 0)
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %64 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %65 = load i64, i64* @PRS_REG_SEARCH_TENANT_ID, align 8
  %66 = call i32 @ecore_wr(%struct.ecore_hwfn* %63, %struct.ecore_ptt* %64, i64 %65, i32 0)
  store i32 0, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @GFT_CAM_LINE_MAPPED_VALID, align 4
  %69 = call i32 @SET_FIELD(i32 %67, i32 %68, i32 1)
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @GFT_CAM_LINE_MAPPED_PF_ID_MASK, align 4
  %72 = load i32, i32* @GFT_CAM_LINE_MAPPED_PF_ID_MASK_MASK, align 4
  %73 = call i32 @SET_FIELD(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @GFT_CAM_LINE_MAPPED_PF_ID, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @SET_FIELD(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %45
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %80, %45
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK, align 4
  %86 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK_MASK, align 4
  %87 = call i32 @SET_FIELD(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE, align 4
  %93 = load i32, i32* @GFT_PROFILE_TCP_PROTOCOL, align 4
  %94 = call i32 @SET_FIELD(i32 %91, i32 %92, i32 %93)
  br label %100

95:                                               ; preds = %83
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE, align 4
  %98 = load i32, i32* @GFT_PROFILE_UDP_PROTOCOL, align 4
  %99 = call i32 @SET_FIELD(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* @GFT_CAM_LINE_MAPPED_IP_VERSION_MASK, align 4
  %110 = call i32 @SET_FIELD(i32 %108, i32 %109, i32 1)
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @GFT_CAM_LINE_MAPPED_IP_VERSION, align 4
  %116 = load i32, i32* @GFT_PROFILE_IPV4, align 4
  %117 = call i32 @SET_FIELD(i32 %114, i32 %115, i32 %116)
  br label %123

118:                                              ; preds = %107
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @GFT_CAM_LINE_MAPPED_IP_VERSION, align 4
  %121 = load i32, i32* @GFT_PROFILE_IPV6, align 4
  %122 = call i32 @SET_FIELD(i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %126 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %127 = load i64, i64* @PRS_REG_GFT_CAM, align 8
  %128 = load i32, i32* @CAM_LINE_SIZE, align 4
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @ecore_wr(%struct.ecore_hwfn* %125, %struct.ecore_ptt* %126, i64 %132, i32 %133)
  %135 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %136 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %137 = load i64, i64* @PRS_REG_GFT_CAM, align 8
  %138 = load i32, i32* @CAM_LINE_SIZE, align 4
  %139 = load i32, i32* %11, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %137, %141
  %143 = call i32 @ecore_rd(%struct.ecore_hwfn* %135, %struct.ecore_ptt* %136, i64 %142)
  store i32 %143, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* @GFT_RAM_LINE_TUNNEL_DST_PORT, align 4
  %146 = call i32 @SET_FIELD(i32 %144, i32 %145, i32 1)
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* @GFT_RAM_LINE_TUNNEL_OVER_IP_PROTOCOL, align 4
  %149 = call i32 @SET_FIELD(i32 %147, i32 %148, i32 1)
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* @GFT_PROFILE_TYPE_4_TUPLE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %124
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* @GFT_RAM_LINE_DST_IP, align 4
  %156 = call i32 @SET_FIELD(i32 %154, i32 %155, i32 1)
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* @GFT_RAM_LINE_SRC_IP, align 4
  %159 = call i32 @SET_FIELD(i32 %157, i32 %158, i32 1)
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* @GFT_RAM_LINE_OVER_IP_PROTOCOL, align 4
  %162 = call i32 @SET_FIELD(i32 %160, i32 %161, i32 1)
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %165 = call i32 @SET_FIELD(i32 %163, i32 %164, i32 1)
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* @GFT_RAM_LINE_SRC_PORT, align 4
  %168 = call i32 @SET_FIELD(i32 %166, i32 %167, i32 1)
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* @GFT_RAM_LINE_DST_PORT, align 4
  %171 = call i32 @SET_FIELD(i32 %169, i32 %170, i32 1)
  br label %220

172:                                              ; preds = %124
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* @GFT_PROFILE_TYPE_L4_DST_PORT, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* @GFT_RAM_LINE_OVER_IP_PROTOCOL, align 4
  %179 = call i32 @SET_FIELD(i32 %177, i32 %178, i32 1)
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %182 = call i32 @SET_FIELD(i32 %180, i32 %181, i32 1)
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* @GFT_RAM_LINE_DST_PORT, align 4
  %185 = call i32 @SET_FIELD(i32 %183, i32 %184, i32 1)
  br label %219

186:                                              ; preds = %172
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* @GFT_PROFILE_TYPE_IP_DST_ADDR, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* @GFT_RAM_LINE_DST_IP, align 4
  %193 = call i32 @SET_FIELD(i32 %191, i32 %192, i32 1)
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %196 = call i32 @SET_FIELD(i32 %194, i32 %195, i32 1)
  br label %218

197:                                              ; preds = %186
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* @GFT_PROFILE_TYPE_IP_SRC_ADDR, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* @GFT_RAM_LINE_SRC_IP, align 4
  %204 = call i32 @SET_FIELD(i32 %202, i32 %203, i32 1)
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %207 = call i32 @SET_FIELD(i32 %205, i32 %206, i32 1)
  br label %217

208:                                              ; preds = %197
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @GFT_PROFILE_TYPE_TUNNEL_TYPE, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* @GFT_RAM_LINE_TUNNEL_ETHERTYPE, align 4
  %215 = call i32 @SET_FIELD(i32 %213, i32 %214, i32 1)
  br label %216

216:                                              ; preds = %212, %208
  br label %217

217:                                              ; preds = %216, %201
  br label %218

218:                                              ; preds = %217, %190
  br label %219

219:                                              ; preds = %218, %176
  br label %220

220:                                              ; preds = %219, %153
  %221 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %222 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %223 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %224 = load i32, i32* @RAM_LINE_SIZE, align 4
  %225 = load i32, i32* %11, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %223, %227
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @ecore_wr(%struct.ecore_hwfn* %221, %struct.ecore_ptt* %222, i64 %228, i32 %229)
  %231 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %232 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %233 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %234 = load i32, i32* @RAM_LINE_SIZE, align 4
  %235 = load i32, i32* %11, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %233, %237
  %239 = load i64, i64* @REG_SIZE, align 8
  %240 = add nsw i64 %238, %239
  %241 = load i32, i32* %20, align 4
  %242 = call i32 @ecore_wr(%struct.ecore_hwfn* %231, %struct.ecore_ptt* %232, i64 %240, i32 %241)
  %243 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %244 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %245 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %246 = load i32, i32* @RAM_LINE_SIZE, align 4
  %247 = load i32, i32* @PRS_GFT_CAM_LINES_NO_MATCH, align 4
  %248 = mul nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %245, %249
  %251 = call i32 @ecore_wr(%struct.ecore_hwfn* %243, %struct.ecore_ptt* %244, i64 %250, i32 -1)
  %252 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %253 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %254 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %255 = load i32, i32* @RAM_LINE_SIZE, align 4
  %256 = load i32, i32* @PRS_GFT_CAM_LINES_NO_MATCH, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %254, %258
  %260 = load i64, i64* @REG_SIZE, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @ecore_wr(%struct.ecore_hwfn* %252, %struct.ecore_ptt* %253, i64 %261, i32 1023)
  %263 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %264 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %265 = load i64, i64* @PRS_REG_SEARCH_GFT, align 8
  %266 = call i32 @ecore_wr(%struct.ecore_hwfn* %263, %struct.ecore_ptt* %264, i64 %265, i32 1)
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
