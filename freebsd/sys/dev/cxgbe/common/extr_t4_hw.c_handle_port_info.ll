; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_handle_port_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_handle_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, i32, i32, %struct.link_config }
%struct.link_config = type { i32, i32, i64, i8, i8, i32, i8*, i32, i8* }
%struct.fw_port_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@FW_PORT_ACTION_GET_PORT_INFO = common dso_local global i32 0, align 4
@F_FW_PORT_CMD_MDIOCAP = common dso_local global i32 0, align 4
@F_FW_PORT_CMD_LSTATUS = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO32 = common dso_local global i32 0, align 4
@F_FW_PORT_CMD_MDIOCAP32 = common dso_local global i32 0, align 4
@F_FW_PORT_CMD_LSTATUS32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad port_info action 0x%x\0A\00", align 1
@FW_PORT_CAP32_FC_RX = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i8 0, align 1
@FW_PORT_CAP32_FC_TX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i8 0, align 1
@FEC_NONE = common dso_local global i8 0, align 1
@FW_PORT_CAP32_FEC_RS = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i8 0, align 1
@FW_PORT_CAP32_FEC_BASER_RS = common dso_local global i32 0, align 4
@FEC_BASER_RS = common dso_local global i8 0, align 1
@FW_PORT_MOD_TYPE_NONE = common dso_local global i32 0, align 4
@M_FW_PORT_CAP32_FEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*, %struct.fw_port_cmd*, i32, i32*, i32*)* @handle_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_port_info(%struct.port_info* %0, %struct.fw_port_cmd* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.fw_port_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.link_config, align 8
  %12 = alloca %struct.link_config*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %6, align 8
  store %struct.fw_port_cmd* %1, %struct.fw_port_cmd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.port_info*, %struct.port_info** %6, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 4
  store %struct.link_config* %20, %struct.link_config** %12, align 8
  %21 = load %struct.port_info*, %struct.port_info** %6, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %17, align 4
  %24 = load %struct.port_info*, %struct.port_info** %6, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = load %struct.link_config*, %struct.link_config** %12, align 8
  %28 = bitcast %struct.link_config* %11 to i8*
  %29 = bitcast %struct.link_config* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 48, i1 false)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %102

33:                                               ; preds = %5
  %34 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @be32_to_cpu(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @G_FW_PORT_CMD_PTYPE(i32 %41)
  %43 = load %struct.port_info*, %struct.port_info** %6, align 8
  %44 = getelementptr inbounds %struct.port_info, %struct.port_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @G_FW_PORT_CMD_MODTYPE(i32 %45)
  %47 = load %struct.port_info*, %struct.port_info** %6, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @F_FW_PORT_CMD_MDIOCAP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @G_FW_PORT_CMD_MDIOADDR(i32 %54)
  br label %57

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ -1, %56 ]
  %59 = load %struct.port_info*, %struct.port_info** %6, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be16_to_cpu(i32 %65)
  %67 = call i8* @fwcaps16_to_caps32(i32 %66)
  %68 = load %struct.link_config*, %struct.link_config** %12, align 8
  %69 = getelementptr inbounds %struct.link_config, %struct.link_config* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be16_to_cpu(i32 %74)
  %76 = call i8* @fwcaps16_to_caps32(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.link_config*, %struct.link_config** %12, align 8
  %79 = getelementptr inbounds %struct.link_config, %struct.link_config* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be16_to_cpu(i32 %84)
  %86 = call i8* @fwcaps16_to_caps32(i32 %85)
  %87 = load %struct.link_config*, %struct.link_config** %12, align 8
  %88 = getelementptr inbounds %struct.link_config, %struct.link_config* %87, i32 0, i32 8
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @F_FW_PORT_CMD_LSTATUS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = load %struct.link_config*, %struct.link_config** %12, align 8
  %95 = getelementptr inbounds %struct.link_config, %struct.link_config* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @G_FW_PORT_CMD_LINKDNRC(i32 %96)
  %98 = load %struct.link_config*, %struct.link_config** %12, align 8
  %99 = getelementptr inbounds %struct.link_config, %struct.link_config* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @lstatus_to_fwcap(i32 %100)
  store i32 %101, i32* %16, align 4
  br label %184

102:                                              ; preds = %5
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO32, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %177

106:                                              ; preds = %102
  %107 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @be32_to_cpu(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @G_FW_PORT_CMD_PORTTYPE32(i32 %114)
  %116 = load %struct.port_info*, %struct.port_info** %6, align 8
  %117 = getelementptr inbounds %struct.port_info, %struct.port_info* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @G_FW_PORT_CMD_MODTYPE32(i32 %118)
  %120 = load %struct.port_info*, %struct.port_info** %6, align 8
  %121 = getelementptr inbounds %struct.port_info, %struct.port_info* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @F_FW_PORT_CMD_MDIOCAP32, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %106
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @G_FW_PORT_CMD_MDIOADDR32(i32 %127)
  br label %130

129:                                              ; preds = %106
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi i32 [ %128, %126 ], [ -1, %129 ]
  %132 = load %struct.port_info*, %struct.port_info** %6, align 8
  %133 = getelementptr inbounds %struct.port_info, %struct.port_info* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @be32_to_cpu(i32 %138)
  %140 = load %struct.link_config*, %struct.link_config** %12, align 8
  %141 = getelementptr inbounds %struct.link_config, %struct.link_config* %140, i32 0, i32 6
  store i8* %139, i8** %141, align 8
  %142 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @be32_to_cpu(i32 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.link_config*, %struct.link_config** %12, align 8
  %150 = getelementptr inbounds %struct.link_config, %struct.link_config* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %152 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @be32_to_cpu(i32 %155)
  %157 = load %struct.link_config*, %struct.link_config** %12, align 8
  %158 = getelementptr inbounds %struct.link_config, %struct.link_config* %157, i32 0, i32 8
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @F_FW_PORT_CMD_LSTATUS32, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = load %struct.link_config*, %struct.link_config** %12, align 8
  %165 = getelementptr inbounds %struct.link_config, %struct.link_config* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @G_FW_PORT_CMD_LINKDNRC32(i32 %166)
  %168 = load %struct.link_config*, %struct.link_config** %12, align 8
  %169 = getelementptr inbounds %struct.link_config, %struct.link_config* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 8
  %170 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %171 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @be32_to_cpu(i32 %174)
  %176 = ptrtoint i8* %175 to i32
  store i32 %176, i32* %16, align 4
  br label %183

177:                                              ; preds = %102
  %178 = load %struct.port_info*, %struct.port_info** %6, align 8
  %179 = getelementptr inbounds %struct.port_info, %struct.port_info* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @CH_ERR(i32 %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %331

183:                                              ; preds = %130
  br label %184

184:                                              ; preds = %183, %57
  %185 = load i32, i32* %16, align 4
  %186 = call i64 @fwcap_to_speed(i32 %185)
  %187 = load %struct.link_config*, %struct.link_config** %12, align 8
  %188 = getelementptr inbounds %struct.link_config, %struct.link_config* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  store i8 0, i8* %13, align 1
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @FW_PORT_CAP32_FC_RX, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %184
  %194 = load i8, i8* @PAUSE_RX, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* %13, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %197, %195
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %13, align 1
  br label %200

200:                                              ; preds = %193, %184
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* @FW_PORT_CAP32_FC_TX, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load i8, i8* @PAUSE_TX, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* %13, align 1
  %209 = zext i8 %208 to i32
  %210 = or i32 %209, %207
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %13, align 1
  br label %212

212:                                              ; preds = %205, %200
  %213 = load i8, i8* %13, align 1
  %214 = load %struct.link_config*, %struct.link_config** %12, align 8
  %215 = getelementptr inbounds %struct.link_config, %struct.link_config* %214, i32 0, i32 3
  store i8 %213, i8* %215, align 8
  %216 = load i8, i8* @FEC_NONE, align 1
  store i8 %216, i8* %14, align 1
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* @FW_PORT_CAP32_FEC_RS, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %212
  %222 = load i8, i8* @FEC_RS, align 1
  %223 = zext i8 %222 to i32
  %224 = load i8, i8* %14, align 1
  %225 = zext i8 %224 to i32
  %226 = or i32 %225, %223
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %14, align 1
  br label %228

228:                                              ; preds = %221, %212
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* @FW_PORT_CAP32_FEC_BASER_RS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load i8, i8* @FEC_BASER_RS, align 1
  %235 = zext i8 %234 to i32
  %236 = load i8, i8* %14, align 1
  %237 = zext i8 %236 to i32
  %238 = or i32 %237, %235
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %14, align 1
  br label %240

240:                                              ; preds = %233, %228
  %241 = load i8, i8* %14, align 1
  %242 = load %struct.link_config*, %struct.link_config** %12, align 8
  %243 = getelementptr inbounds %struct.link_config, %struct.link_config* %242, i32 0, i32 4
  store i8 %241, i8* %243, align 1
  %244 = load i32*, i32** %9, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32*, i32** %9, align 8
  store i32 0, i32* %247, align 4
  br label %248

248:                                              ; preds = %246, %240
  %249 = load i32*, i32** %10, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32*, i32** %10, align 8
  store i32 0, i32* %252, align 4
  br label %253

253:                                              ; preds = %251, %248
  %254 = load i32, i32* %17, align 4
  %255 = load %struct.port_info*, %struct.port_info** %6, align 8
  %256 = getelementptr inbounds %struct.port_info, %struct.port_info* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %254, %257
  br i1 %258, label %272, label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %18, align 4
  %261 = load %struct.port_info*, %struct.port_info** %6, align 8
  %262 = getelementptr inbounds %struct.port_info, %struct.port_info* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %260, %263
  br i1 %264, label %272, label %265

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 6
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.link_config*, %struct.link_config** %12, align 8
  %269 = getelementptr inbounds %struct.link_config, %struct.link_config* %268, i32 0, i32 6
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %267, %270
  br i1 %271, label %272, label %293

272:                                              ; preds = %265, %259, %253
  %273 = load %struct.port_info*, %struct.port_info** %6, align 8
  %274 = getelementptr inbounds %struct.port_info, %struct.port_info* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @FW_PORT_MOD_TYPE_NONE, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %272
  %279 = load %struct.link_config*, %struct.link_config** %12, align 8
  %280 = getelementptr inbounds %struct.link_config, %struct.link_config* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @M_FW_PORT_CAP32_FEC, align 4
  %283 = call i32 @V_FW_PORT_CAP32_FEC(i32 %282)
  %284 = and i32 %281, %283
  %285 = load %struct.link_config*, %struct.link_config** %12, align 8
  %286 = getelementptr inbounds %struct.link_config, %struct.link_config* %285, i32 0, i32 5
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %278, %272
  %288 = load i32*, i32** %9, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32*, i32** %9, align 8
  store i32 1, i32* %291, align 4
  br label %292

292:                                              ; preds = %290, %287
  br label %293

293:                                              ; preds = %292, %265
  %294 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.link_config*, %struct.link_config** %12, align 8
  %297 = getelementptr inbounds %struct.link_config, %struct.link_config* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %295, %298
  br i1 %299, label %325, label %300

300:                                              ; preds = %293
  %301 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.link_config*, %struct.link_config** %12, align 8
  %304 = getelementptr inbounds %struct.link_config, %struct.link_config* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %302, %305
  br i1 %306, label %325, label %307

307:                                              ; preds = %300
  %308 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 4
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = load %struct.link_config*, %struct.link_config** %12, align 8
  %312 = getelementptr inbounds %struct.link_config, %struct.link_config* %311, i32 0, i32 4
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = icmp ne i32 %310, %314
  br i1 %315, label %325, label %316

316:                                              ; preds = %307
  %317 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 3
  %318 = load i8, i8* %317, align 8
  %319 = zext i8 %318 to i32
  %320 = load %struct.link_config*, %struct.link_config** %12, align 8
  %321 = getelementptr inbounds %struct.link_config, %struct.link_config* %320, i32 0, i32 3
  %322 = load i8, i8* %321, align 8
  %323 = zext i8 %322 to i32
  %324 = icmp ne i32 %319, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %316, %307, %300, %293
  %326 = load i32*, i32** %10, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = load i32*, i32** %10, align 8
  store i32 1, i32* %329, align 4
  br label %330

330:                                              ; preds = %328, %325
  br label %331

331:                                              ; preds = %177, %330, %316
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @be32_to_cpu(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_PTYPE(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_MODTYPE(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_MDIOADDR(i32) #2

declare dso_local i8* @fwcaps16_to_caps32(i32) #2

declare dso_local i32 @be16_to_cpu(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_LINKDNRC(i32) #2

declare dso_local i32 @lstatus_to_fwcap(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_PORTTYPE32(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_MODTYPE32(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_MDIOADDR32(i32) #2

declare dso_local i32 @G_FW_PORT_CMD_LINKDNRC32(i32) #2

declare dso_local i32 @CH_ERR(i32, i8*, i32) #2

declare dso_local i64 @fwcap_to_speed(i32) #2

declare dso_local i32 @V_FW_PORT_CAP32_FEC(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
