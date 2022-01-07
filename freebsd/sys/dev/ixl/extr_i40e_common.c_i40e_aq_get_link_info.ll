; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_link_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.i40e_link_status, %struct.i40e_link_status }
%struct.i40e_link_status = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_aqc_get_link_status = type { i32, i32, i32, i32, i64, %struct.i40e_link_status*, i32, i32, i32, i64, i64 }

@i40e_aqc_opc_get_link_status = common dso_local global i32 0, align 4
@I40E_AQ_LSE_ENABLE = common dso_local global i32 0, align 4
@I40E_AQ_LSE_DISABLE = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_NONDMA_TO_NONDMA = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_KR_ENA = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_RS_ENA = common dso_local global i32 0, align 4
@I40E_AQ_LOOPBACK_MASK = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_PACING_MASK = common dso_local global i32 0, align 4
@I40E_AQ_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@I40E_AQ_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@I40E_FC_FULL = common dso_local global i32 0, align 4
@I40E_FC_TX_PAUSE = common dso_local global i32 0, align 4
@I40E_FC_RX_PAUSE = common dso_local global i32 0, align 4
@I40E_FC_NONE = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_CRC_ENA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@I40E_AQ_LSE_IS_ENABLED = common dso_local global i32 0, align 4
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_PHY_TYPE_10GBASE_SFPP_CU = common dso_local global i32 0, align 4
@I40E_FW_API_VERSION_MAJOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_link_info(%struct.i40e_hw* %0, i32 %1, %struct.i40e_link_status* %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_link_status*, align 8
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  %9 = alloca %struct.i40e_aq_desc, align 4
  %10 = alloca %struct.i40e_aqc_get_link_status*, align 8
  %11 = alloca %struct.i40e_link_status*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.i40e_link_status, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i40e_link_status* %2, %struct.i40e_link_status** %7, align 8
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %17 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.i40e_aqc_get_link_status*
  store %struct.i40e_aqc_get_link_status* %19, %struct.i40e_aqc_get_link_status** %10, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  store %struct.i40e_link_status* %22, %struct.i40e_link_status** %11, align 8
  %23 = load i32, i32* @i40e_aqc_opc_get_link_status, align 4
  %24 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %9, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @I40E_AQ_LSE_ENABLE, align 4
  store i32 %28, i32* %15, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @I40E_AQ_LSE_DISABLE, align 4
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @CPU_TO_LE16(i32 %32)
  %34 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %35 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %38 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %36, %struct.i40e_aq_desc* %9, i32* null, i32 0, %struct.i40e_asq_cmd_details* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @I40E_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %272

43:                                               ; preds = %31
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %48 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %49 = call i32 @i40e_memcpy(%struct.i40e_link_status* %46, %struct.i40e_link_status* %47, i32 56, i32 %48)
  %50 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %51 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %55 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %57 = call i32 @i40e_get_media_type(%struct.i40e_hw* %56)
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %59 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %62 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %66 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %68 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %71 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 8
  %72 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %73 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %76 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %78 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @I40E_AQ_CONFIG_FEC_KR_ENA, align 4
  %81 = load i32, i32* @I40E_AQ_CONFIG_FEC_RS_ENA, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %85 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %87 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %90 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %92 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @I40E_AQ_LOOPBACK_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %97 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %99 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @LE16_TO_CPU(i32 %100)
  %102 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %103 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %105 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @I40E_AQ_CONFIG_PACING_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %110 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %112 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @I40E_AQ_LINK_PAUSE_TX, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %121 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @I40E_AQ_LINK_PAUSE_RX, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %43
  %134 = load i32, i32* @I40E_FC_FULL, align 4
  %135 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %136 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %161

138:                                              ; preds = %43
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* @I40E_FC_TX_PAUSE, align 4
  %143 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %144 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  br label %160

146:                                              ; preds = %138
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* @I40E_FC_RX_PAUSE, align 4
  %151 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %152 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  br label %159

154:                                              ; preds = %146
  %155 = load i32, i32* @I40E_FC_NONE, align 4
  %156 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %157 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  br label %159

159:                                              ; preds = %154, %149
  br label %160

160:                                              ; preds = %159, %141
  br label %161

161:                                              ; preds = %160, %133
  %162 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %163 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @I40E_AQ_CONFIG_CRC_ENA, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i8*, i8** @TRUE, align 8
  %170 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %171 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %170, i32 0, i32 7
  store i8* %169, i8** %171, align 8
  br label %176

172:                                              ; preds = %161
  %173 = load i8*, i8** @FALSE, align 8
  %174 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %175 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %174, i32 0, i32 7
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %172, %168
  %177 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %178 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @I40E_AQ_LSE_IS_ENABLED, align 4
  %181 = call i32 @CPU_TO_LE16(i32 %180)
  %182 = and i32 %179, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %176
  %185 = load i8*, i8** @TRUE, align 8
  %186 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %187 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %186, i32 0, i32 6
  store i8* %185, i8** %187, align 8
  br label %192

188:                                              ; preds = %176
  %189 = load i8*, i8** @FALSE, align 8
  %190 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %191 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %190, i32 0, i32 6
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %188, %184
  %193 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %194 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @I40E_MAC_XL710, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %192
  %200 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %201 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %217, label %205

205:                                              ; preds = %199
  %206 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %207 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 4
  br i1 %210, label %211, label %226

211:                                              ; preds = %205
  %212 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %213 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %215, 40
  br i1 %216, label %217, label %226

217:                                              ; preds = %211, %199
  %218 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %219 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 14
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32, i32* @I40E_PHY_TYPE_10GBASE_SFPP_CU, align 4
  %224 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %225 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %222, %217, %211, %205, %192
  %227 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %228 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @I40E_FW_API_VERSION_MAJOR, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %259

233:                                              ; preds = %226
  %234 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %235 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp sge i32 %237, 7
  br i1 %238, label %239, label %259

239:                                              ; preds = %233
  %240 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %241 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %240, i32 0, i32 5
  %242 = load %struct.i40e_link_status*, %struct.i40e_link_status** %241, align 8
  %243 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %244 = call i32 @i40e_memcpy(%struct.i40e_link_status* %16, %struct.i40e_link_status* %242, i32 56, i32 %243)
  %245 = call i32 @LE32_TO_CPU(%struct.i40e_link_status* byval(%struct.i40e_link_status) align 8 %16)
  %246 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %247 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 8
  %249 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %250 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = shl i32 %252, 32
  %254 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %255 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %253
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %239, %233, %226
  %260 = load %struct.i40e_link_status*, %struct.i40e_link_status** %7, align 8
  %261 = icmp ne %struct.i40e_link_status* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = load %struct.i40e_link_status*, %struct.i40e_link_status** %7, align 8
  %264 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %265 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %266 = call i32 @i40e_memcpy(%struct.i40e_link_status* %263, %struct.i40e_link_status* %264, i32 56, i32 %265)
  br label %267

267:                                              ; preds = %262, %259
  %268 = load i8*, i8** @FALSE, align 8
  %269 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %270 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  store i8* %268, i8** %271, align 8
  br label %272

272:                                              ; preds = %267, %42
  %273 = load i32, i32* %12, align 4
  ret i32 %273
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @i40e_memcpy(%struct.i40e_link_status*, %struct.i40e_link_status*, i32, i32) #1

declare dso_local i32 @i40e_get_media_type(%struct.i40e_hw*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

declare dso_local i32 @LE32_TO_CPU(%struct.i40e_link_status* byval(%struct.i40e_link_status) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
