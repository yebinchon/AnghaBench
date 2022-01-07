; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_link_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_link_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.port_info = type { i64, i32, %struct.link_config, %struct.cmac, %struct.cphy }
%struct.link_config = type { i32, i32, i32, i32, i32, i64 }
%struct.cmac = type { i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.cphy = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* }

@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_PARTIAL = common dso_local global i32 0, align 4
@LF_NO = common dso_local global i8* null, align 8
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@LF_YES = common dso_local global i64 0, align 8
@T3_REV_C = common dso_local global i64 0, align 8
@LF_MAYBE = common dso_local global i64 0, align 8
@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@A_XGM_XAUI_ACT_CTRL = common dso_local global i64 0, align 8
@F_TXACTENABLE = common dso_local global i32 0, align 4
@F_RXEN = common dso_local global i32 0, align 4
@A_XGM_TXFIFO_CFG = common dso_local global i64 0, align 8
@F_ENDROPPKT = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@A_XGM_STAT_CTRL = common dso_local global i64 0, align 8
@F_CLRSTATS = common dso_local global i32 0, align 4
@A_XGM_INT_ENABLE = common dso_local global i64 0, align 8
@F_XGM_INT = common dso_local global i32 0, align 4
@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8
@F_TXEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_link_changed(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.cphy*, align 8
  %13 = alloca %struct.cmac*, align 8
  %14 = alloca %struct.link_config*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.port_info* @adap2pinfo(%struct.TYPE_17__* %15, i32 %16)
  store %struct.port_info* %17, %struct.port_info** %11, align 8
  %18 = load %struct.port_info*, %struct.port_info** %11, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 4
  store %struct.cphy* %19, %struct.cphy** %12, align 8
  %20 = load %struct.port_info*, %struct.port_info** %11, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 3
  store %struct.cmac* %21, %struct.cmac** %13, align 8
  %22 = load %struct.port_info*, %struct.port_info** %11, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 2
  store %struct.link_config* %23, %struct.link_config** %14, align 8
  %24 = load %struct.link_config*, %struct.link_config** %14, align 8
  %25 = getelementptr inbounds %struct.link_config, %struct.link_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.link_config*, %struct.link_config** %14, align 8
  %28 = getelementptr inbounds %struct.link_config, %struct.link_config* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.link_config*, %struct.link_config** %14, align 8
  %31 = getelementptr inbounds %struct.link_config, %struct.link_config* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.link_config*, %struct.link_config** %14, align 8
  %34 = getelementptr inbounds %struct.link_config, %struct.link_config* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %36 = load %struct.cphy*, %struct.cphy** %12, align 8
  %37 = getelementptr inbounds %struct.cphy, %struct.cphy* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32 (%struct.cphy*, i32*, i32*, i32*, i32*)*, i32 (%struct.cphy*, i32*, i32*, i32*, i32*)** %39, align 8
  %41 = load %struct.cphy*, %struct.cphy** %12, align 8
  %42 = call i32 %40(%struct.cphy* %41, i32* %10, i32* %6, i32* %7, i32* %8)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @PHY_LINK_UP, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PHY_LINK_PARTIAL, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load %struct.cphy*, %struct.cphy** %12, align 8
  %52 = getelementptr inbounds %struct.cphy, %struct.cphy* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %70

53:                                               ; preds = %2
  %54 = load %struct.cphy*, %struct.cphy** %12, align 8
  %55 = getelementptr inbounds %struct.cphy, %struct.cphy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.cphy*, %struct.cphy** %12, align 8
  %61 = getelementptr inbounds %struct.cphy, %struct.cphy* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*, i32)** %63, align 8
  %65 = load %struct.cphy*, %struct.cphy** %12, align 8
  %66 = call i32 %64(%struct.cphy* %65, i32 0)
  %67 = load %struct.cphy*, %struct.cphy** %12, align 8
  %68 = getelementptr inbounds %struct.cphy, %struct.cphy* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %59, %53
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8*, i8** @LF_NO, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.port_info*, %struct.port_info** %11, align 8
  %77 = getelementptr inbounds %struct.port_info, %struct.port_info* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.link_config*, %struct.link_config** %14, align 8
  %80 = getelementptr inbounds %struct.link_config, %struct.link_config* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PAUSE_AUTONEG, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.link_config*, %struct.link_config** %14, align 8
  %87 = getelementptr inbounds %struct.link_config, %struct.link_config* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %99

91:                                               ; preds = %78
  %92 = load %struct.link_config*, %struct.link_config** %14, align 8
  %93 = getelementptr inbounds %struct.link_config, %struct.link_config* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PAUSE_RX, align 4
  %96 = load i32, i32* @PAUSE_TX, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %91, %85
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %102
  %106 = load %struct.link_config*, %struct.link_config** %14, align 8
  %107 = getelementptr inbounds %struct.link_config, %struct.link_config* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AUTONEG_ENABLE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %105
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.link_config*, %struct.link_config** %14, align 8
  %114 = getelementptr inbounds %struct.link_config, %struct.link_config* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.link_config*, %struct.link_config** %14, align 8
  %120 = getelementptr inbounds %struct.link_config, %struct.link_config* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.link_config*, %struct.link_config** %14, align 8
  %126 = getelementptr inbounds %struct.link_config, %struct.link_config* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123, %117, %111
  %130 = load %struct.cmac*, %struct.cmac** %13, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @t3_mac_set_speed_duplex_fc(%struct.cmac* %130, i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %129, %123, %105, %102, %99
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sle i32 %139, 2
  br i1 %140, label %141, label %221

141:                                              ; preds = %135
  %142 = load %struct.port_info*, %struct.port_info** %11, align 8
  %143 = getelementptr inbounds %struct.port_info, %struct.port_info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %146, %141
  %150 = load %struct.link_config*, %struct.link_config** %14, align 8
  %151 = getelementptr inbounds %struct.link_config, %struct.link_config* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %221, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %221

157:                                              ; preds = %154, %146
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @t3_detect_link_fault(%struct.TYPE_17__* %158, i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %197

163:                                              ; preds = %157
  %164 = load %struct.port_info*, %struct.port_info** %11, align 8
  %165 = getelementptr inbounds %struct.port_info, %struct.port_info* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @LF_YES, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %163
  %170 = load %struct.cmac*, %struct.cmac** %13, align 8
  %171 = getelementptr inbounds %struct.cmac, %struct.cmac* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = load i64, i64* @LF_YES, align 8
  %176 = load %struct.port_info*, %struct.port_info** %11, align 8
  %177 = getelementptr inbounds %struct.port_info, %struct.port_info* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %169, %163
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %180 = call i64 @uses_xaui(%struct.TYPE_17__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @T3_REV_C, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load %struct.cmac*, %struct.cmac** %13, align 8
  %191 = call i32 @t3c_pcs_force_los(%struct.cmac* %190)
  br label %195

192:                                              ; preds = %182
  %193 = load %struct.cmac*, %struct.cmac** %13, align 8
  %194 = call i32 @t3b_pcs_reset(%struct.cmac* %193)
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %178
  store i32 0, i32* %5, align 4
  br label %220

197:                                              ; preds = %157
  %198 = load %struct.port_info*, %struct.port_info** %11, align 8
  %199 = getelementptr inbounds %struct.port_info, %struct.port_info* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @LF_MAYBE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.link_config*, %struct.link_config** %14, align 8
  %208 = getelementptr inbounds %struct.link_config, %struct.link_config* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @t3_clear_faults(%struct.TYPE_17__* %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %206, %203, %197
  %216 = load i8*, i8** @LF_NO, align 8
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.port_info*, %struct.port_info** %11, align 8
  %219 = getelementptr inbounds %struct.port_info, %struct.port_info* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %215, %196
  br label %221

221:                                              ; preds = %220, %154, %149, %135
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.link_config*, %struct.link_config** %14, align 8
  %224 = getelementptr inbounds %struct.link_config, %struct.link_config* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %222, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %221
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.link_config*, %struct.link_config** %14, align 8
  %230 = getelementptr inbounds %struct.link_config, %struct.link_config* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %228, %231
  br i1 %232, label %233, label %246

233:                                              ; preds = %227
  %234 = load i32, i32* %7, align 4
  %235 = load %struct.link_config*, %struct.link_config** %14, align 8
  %236 = getelementptr inbounds %struct.link_config, %struct.link_config* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %234, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %233
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.link_config*, %struct.link_config** %14, align 8
  %242 = getelementptr inbounds %struct.link_config, %struct.link_config* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %422

246:                                              ; preds = %239, %233, %227, %221
  %247 = load i32, i32* %5, align 4
  %248 = trunc i32 %247 to i8
  %249 = zext i8 %248 to i32
  %250 = load %struct.link_config*, %struct.link_config** %14, align 8
  %251 = getelementptr inbounds %struct.link_config, %struct.link_config* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %246
  %255 = load i32, i32* @SPEED_INVALID, align 4
  br label %258

256:                                              ; preds = %246
  %257 = load i32, i32* %6, align 4
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %260 = load %struct.link_config*, %struct.link_config** %14, align 8
  %261 = getelementptr inbounds %struct.link_config, %struct.link_config* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %7, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i32, i32* @DUPLEX_INVALID, align 4
  br label %268

266:                                              ; preds = %258
  %267 = load i32, i32* %7, align 4
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi i32 [ %265, %264 ], [ %267, %266 ]
  %270 = load %struct.link_config*, %struct.link_config** %14, align 8
  %271 = getelementptr inbounds %struct.link_config, %struct.link_config* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load %struct.link_config*, %struct.link_config** %14, align 8
  %274 = getelementptr inbounds %struct.link_config, %struct.link_config* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %5, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %336

277:                                              ; preds = %268
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp sgt i64 %281, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %277
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %285 = call i64 @uses_xaui(%struct.TYPE_17__* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %311

287:                                              ; preds = %283
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @T3_REV_C, align 8
  %293 = icmp sge i64 %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %287
  %295 = load %struct.cmac*, %struct.cmac** %13, align 8
  %296 = call i32 @t3c_pcs_force_los(%struct.cmac* %295)
  br label %300

297:                                              ; preds = %287
  %298 = load %struct.cmac*, %struct.cmac** %13, align 8
  %299 = call i32 @t3b_pcs_reset(%struct.cmac* %298)
  br label %300

300:                                              ; preds = %297, %294
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %302 = load i64, i64* @A_XGM_XAUI_ACT_CTRL, align 8
  %303 = load %struct.cmac*, %struct.cmac** %13, align 8
  %304 = getelementptr inbounds %struct.cmac, %struct.cmac* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %302, %305
  %307 = load i32, i32* @F_TXACTENABLE, align 4
  %308 = load i32, i32* @F_RXEN, align 4
  %309 = or i32 %307, %308
  %310 = call i32 @t3_write_reg(%struct.TYPE_17__* %301, i64 %306, i32 %309)
  br label %311

311:                                              ; preds = %300, %283, %277
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %313 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %314 = load %struct.cmac*, %struct.cmac** %13, align 8
  %315 = getelementptr inbounds %struct.cmac, %struct.cmac* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %313, %316
  %318 = load i32, i32* @F_ENDROPPKT, align 4
  %319 = call i32 @t3_set_reg_field(%struct.TYPE_17__* %312, i64 %317, i32 %318, i32 0)
  %320 = load %struct.cmac*, %struct.cmac** %13, align 8
  %321 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %322 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %323 = or i32 %321, %322
  %324 = call i32 @t3_mac_enable(%struct.cmac* %320, i32 %323)
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %326 = load i64, i64* @A_XGM_STAT_CTRL, align 8
  %327 = load %struct.cmac*, %struct.cmac** %13, align 8
  %328 = getelementptr inbounds %struct.cmac, %struct.cmac* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = add nsw i64 %326, %329
  %331 = load i32, i32* @F_CLRSTATS, align 4
  %332 = call i32 @t3_set_reg_field(%struct.TYPE_17__* %325, i64 %330, i32 %331, i32 1)
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %334 = load i32, i32* %4, align 4
  %335 = call i32 @t3_clear_faults(%struct.TYPE_17__* %333, i32 %334)
  br label %409

336:                                              ; preds = %268
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp sgt i64 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %336
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %344 = call i64 @uses_xaui(%struct.TYPE_17__* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %342
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %348 = load i64, i64* @A_XGM_XAUI_ACT_CTRL, align 8
  %349 = load %struct.cmac*, %struct.cmac** %13, align 8
  %350 = getelementptr inbounds %struct.cmac, %struct.cmac* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %348, %351
  %353 = call i32 @t3_write_reg(%struct.TYPE_17__* %347, i64 %352, i32 0)
  br label %354

354:                                              ; preds = %346, %342, %336
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %356 = load %struct.port_info*, %struct.port_info** %11, align 8
  %357 = getelementptr inbounds %struct.port_info, %struct.port_info* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @t3_xgm_intr_disable(%struct.TYPE_17__* %355, i32 %358)
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = icmp sle i32 %363, 2
  br i1 %364, label %365, label %408

365:                                              ; preds = %354
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %367 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %368 = load %struct.cmac*, %struct.cmac** %13, align 8
  %369 = getelementptr inbounds %struct.cmac, %struct.cmac* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %367, %370
  %372 = load i32, i32* @F_XGM_INT, align 4
  %373 = call i32 @t3_set_reg_field(%struct.TYPE_17__* %366, i64 %371, i32 %372, i32 0)
  %374 = load %struct.cmac*, %struct.cmac** %13, align 8
  %375 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %376 = call i32 @t3_mac_disable(%struct.cmac* %374, i32 %375)
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %378 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %379 = load %struct.cmac*, %struct.cmac** %13, align 8
  %380 = getelementptr inbounds %struct.cmac, %struct.cmac* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %378, %381
  %383 = load i32, i32* @F_ENDROPPKT, align 4
  %384 = call i32 @t3_set_reg_field(%struct.TYPE_17__* %377, i64 %382, i32 0, i32 %383)
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %386 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %387 = load %struct.cmac*, %struct.cmac** %13, align 8
  %388 = getelementptr inbounds %struct.cmac, %struct.cmac* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %386, %389
  %391 = call i32 @t3_write_reg(%struct.TYPE_17__* %385, i64 %390, i32 0)
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %393 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %394 = load %struct.cmac*, %struct.cmac** %13, align 8
  %395 = getelementptr inbounds %struct.cmac, %struct.cmac* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %393, %396
  %398 = load i32, i32* @F_TXEN, align 4
  %399 = call i32 @t3_write_reg(%struct.TYPE_17__* %392, i64 %397, i32 %398)
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %401 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %402 = load %struct.cmac*, %struct.cmac** %13, align 8
  %403 = getelementptr inbounds %struct.cmac, %struct.cmac* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = add nsw i64 %401, %404
  %406 = load i32, i32* @F_RXEN, align 4
  %407 = call i32 @t3_write_reg(%struct.TYPE_17__* %400, i64 %405, i32 %406)
  br label %408

408:                                              ; preds = %365, %354
  br label %409

409:                                              ; preds = %408, %311
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %411 = load i32, i32* %4, align 4
  %412 = load i32, i32* %5, align 4
  %413 = load i32, i32* %6, align 4
  %414 = load i32, i32* %7, align 4
  %415 = load i32, i32* %8, align 4
  %416 = load %struct.cmac*, %struct.cmac** %13, align 8
  %417 = getelementptr inbounds %struct.cmac, %struct.cmac* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = call i32 @t3_os_link_changed(%struct.TYPE_17__* %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i64 %418)
  %420 = load %struct.cmac*, %struct.cmac** %13, align 8
  %421 = getelementptr inbounds %struct.cmac, %struct.cmac* %420, i32 0, i32 0
  store i64 0, i64* %421, align 8
  br label %422

422:                                              ; preds = %409, %245
  ret void
}

declare dso_local %struct.port_info* @adap2pinfo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @t3_mac_set_speed_duplex_fc(%struct.cmac*, i32, i32, i32) #1

declare dso_local i32 @t3_detect_link_fault(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @uses_xaui(%struct.TYPE_17__*) #1

declare dso_local i32 @t3c_pcs_force_los(%struct.cmac*) #1

declare dso_local i32 @t3b_pcs_reset(%struct.cmac*) #1

declare dso_local i32 @t3_clear_faults(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_17__*, i64, i32, i32) #1

declare dso_local i32 @t3_mac_enable(%struct.cmac*, i32) #1

declare dso_local i32 @t3_xgm_intr_disable(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @t3_mac_disable(%struct.cmac*, i32) #1

declare dso_local i32 @t3_os_link_changed(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
