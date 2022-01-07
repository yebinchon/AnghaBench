; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_intr_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_intr_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i64, i64, i32, i32, i32, i64*, i32, i64*, i32, i32, i32, %struct.TYPE_12__*, %union.ccb*, i64, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64 }

@AHCI_P_IS = common dso_local global i32 0, align 4
@AHCI_P_SACT = common dso_local global i32 0, align 4
@AHCI_P_CI = common dso_local global i32 0, align 4
@AHCI_P_IX_SDB = common dso_local global i32 0, align 4
@AHCI_CAP_SSNTF = common dso_local global i32 0, align 4
@AHCI_P_SNTF = common dso_local global i32 0, align 4
@AHCI_P_IX_PC = common dso_local global i32 0, align 4
@AHCI_P_IX_PRC = common dso_local global i32 0, align 4
@AHCI_P_IX_OF = common dso_local global i32 0, align 4
@AHCI_P_IX_IF = common dso_local global i32 0, align 4
@AHCI_P_IX_HBD = common dso_local global i32 0, align 4
@AHCI_P_IX_HBF = common dso_local global i32 0, align 4
@AHCI_P_IX_TFE = common dso_local global i32 0, align 4
@AHCI_P_SERR = common dso_local global i32 0, align 4
@AHCI_P_IX_CPD = common dso_local global i32 0, align 4
@AHCI_Q_NOCCS = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_CCS_MASK = common dso_local global i32 0, align 4
@AHCI_P_CMD_CCS_SHIFT = common dso_local global i32 0, align 4
@AHCI_P_FBS = common dso_local global i32 0, align 4
@AHCI_P_FBS_SDE = common dso_local global i32 0, align 4
@AHCI_P_FBS_DWE = common dso_local global i32 0, align 4
@AHCI_P_FBS_DWE_SHIFT = common dso_local global i32 0, align 4
@AHCI_ERR_NONE = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@AHCI_ERR_TFE = common dso_local global i32 0, align 4
@AHCI_ERR_INNOCENT = common dso_local global i32 0, align 4
@AHCI_ERR_NCQ = common dso_local global i32 0, align 4
@AHCI_ERR_SATA = common dso_local global i32 0, align 4
@AHCI_ERR_INVALID = common dso_local global i32 0, align 4
@AHCI_P_FBS_EN = common dso_local global i32 0, align 4
@AHCI_P_FBS_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*, i32)* @ahci_ch_intr_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_ch_intr_main(%struct.ahci_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %union.ccb*, align 8
  store %struct.ahci_channel* %0, %struct.ahci_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AHCI_P_IS, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ATA_OUTL(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %31 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AHCI_P_SACT, align 4
  %34 = call i32 @ATA_INL(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AHCI_P_CI, align 4
  %49 = call i32 @ATA_INL(i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %36
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @AHCI_P_IX_SDB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %139

57:                                               ; preds = %52
  %58 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %59 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %58, i32 0, i32 16
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %64 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %63, i32 0, i32 15
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %139

70:                                               ; preds = %62, %57
  %71 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AHCI_CAP_SSNTF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %79 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AHCI_P_SNTF, align 4
  %82 = call i32 @ATA_INL(i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %138

83:                                               ; preds = %70
  %84 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %85 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %84, i32 0, i32 13
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %83
  %89 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %90 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %89, i32 0, i32 14
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 88
  store i32* %93, i32** %15, align 8
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %115, %88
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 16
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 128
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 127
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 1, %108
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %103, %97
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 256
  store i32* %114, i32** %15, align 8
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %94

118:                                              ; preds = %94
  br label %137

119:                                              ; preds = %83
  %120 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %121 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %120, i32 0, i32 14
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 88
  store i32* %124, i32** %16, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 128
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %119
  %131 = load i32*, i32** %16, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 15
  %135 = shl i32 1, %134
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %130, %119
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %77
  br label %139

139:                                              ; preds = %138, %62, %52
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @AHCI_P_IX_PC, align 4
  %142 = load i32, i32* @AHCI_P_IX_PRC, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @AHCI_P_IX_OF, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @AHCI_P_IX_IF, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @AHCI_P_IX_HBD, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @AHCI_P_IX_HBF, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @AHCI_P_IX_TFE, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %140, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %139
  %157 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %158 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @AHCI_P_SERR, align 4
  %161 = call i32 @ATA_INL(i32 %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %156
  %165 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %166 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @AHCI_P_SERR, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @ATA_OUTL(i32 %167, i32 %168, i32 %169)
  %171 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @ahci_phy_check_events(%struct.ahci_channel* %171, i32 %172)
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %164, %156
  br label %175

175:                                              ; preds = %174, %139
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @AHCI_P_IX_CPD, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %185 = call i32 @ahci_cpd_check_events(%struct.ahci_channel* %184)
  br label %186

186:                                              ; preds = %183, %180, %175
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @AHCI_P_IX_OF, align 4
  %189 = load i32, i32* @AHCI_P_IX_IF, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @AHCI_P_IX_HBD, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @AHCI_P_IX_HBF, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @AHCI_P_IX_TFE, align 4
  %196 = or i32 %194, %195
  %197 = and i32 %187, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %290

199:                                              ; preds = %186
  %200 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %201 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @AHCI_Q_NOCCS, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %199
  %207 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %208 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i64 @powerof2(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @ffs(i32 %216)
  %218 = sub nsw i32 %217, 1
  br label %220

219:                                              ; preds = %206
  br label %220

220:                                              ; preds = %219, %215
  %221 = phi i32 [ %218, %215 ], [ -1, %219 ]
  store i32 %221, i32* %12, align 4
  br label %232

222:                                              ; preds = %199
  %223 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %224 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @AHCI_P_CMD, align 4
  %227 = call i32 @ATA_INL(i32 %225, i32 %226)
  %228 = load i32, i32* @AHCI_P_CMD_CCS_MASK, align 4
  %229 = and i32 %227, %228
  %230 = load i32, i32* @AHCI_P_CMD_CCS_SHIFT, align 4
  %231 = ashr i32 %229, %230
  store i32 %231, i32* %12, align 4
  br label %232

232:                                              ; preds = %222, %220
  store i32 -1, i32* %13, align 4
  %233 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %234 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %233, i32 0, i32 13
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %284

237:                                              ; preds = %232
  %238 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %239 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @AHCI_P_FBS, align 4
  %242 = call i32 @ATA_INL(i32 %240, i32 %241)
  store i32 %242, i32* %17, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* @AHCI_P_FBS_SDE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %237
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* @AHCI_P_FBS_DWE, align 4
  %250 = and i32 %248, %249
  %251 = load i32, i32* @AHCI_P_FBS_DWE_SHIFT, align 4
  %252 = ashr i32 %250, %251
  store i32 %252, i32* %13, align 4
  br label %283

253:                                              ; preds = %237
  store i32 0, i32* %11, align 4
  br label %254

254:                                              ; preds = %279, %253
  %255 = load i32, i32* %11, align 4
  %256 = icmp slt i32 %255, 16
  br i1 %256, label %257, label %282

257:                                              ; preds = %254
  %258 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %259 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %258, i32 0, i32 5
  %260 = load i64*, i64** %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %257
  br label %279

267:                                              ; preds = %257
  %268 = load i32, i32* %13, align 4
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = load i32, i32* %11, align 4
  store i32 %271, i32* %13, align 4
  br label %278

272:                                              ; preds = %267
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %11, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  store i32 -2, i32* %13, align 4
  br label %282

277:                                              ; preds = %272
  br label %278

278:                                              ; preds = %277, %270
  br label %279

279:                                              ; preds = %278, %266
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %254

282:                                              ; preds = %276, %254
  br label %283

283:                                              ; preds = %282, %247
  br label %284

284:                                              ; preds = %283, %232
  %285 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %286 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = and i32 %287, %288
  store i32 %289, i32* %9, align 4
  br label %291

290:                                              ; preds = %186
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %13, align 4
  br label %291

291:                                              ; preds = %290, %284
  %292 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %293 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = xor i32 %295, -1
  %297 = and i32 %294, %296
  store i32 %297, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %298

298:                                              ; preds = %320, %291
  %299 = load i32, i32* %11, align 4
  %300 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %301 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = icmp slt i32 %299, %302
  br i1 %303, label %304, label %323

304:                                              ; preds = %298
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* %11, align 4
  %307 = ashr i32 %305, %306
  %308 = and i32 %307, 1
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %304
  %311 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %312 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %311, i32 0, i32 11
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %312, align 8
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i64 %315
  %317 = load i32, i32* @AHCI_ERR_NONE, align 4
  %318 = call i32 @ahci_end_transaction(%struct.TYPE_12__* %316, i32 %317)
  br label %319

319:                                              ; preds = %310, %304
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %11, align 4
  br label %298

323:                                              ; preds = %298
  %324 = load i32, i32* %9, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %499

326:                                              ; preds = %323
  %327 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %328 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %327, i32 0, i32 12
  %329 = load %union.ccb*, %union.ccb** %328, align 8
  %330 = icmp ne %union.ccb* %329, null
  br i1 %330, label %331, label %366

331:                                              ; preds = %326
  %332 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %333 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %332, i32 0, i32 12
  %334 = load %union.ccb*, %union.ccb** %333, align 8
  store %union.ccb* %334, %union.ccb** %18, align 8
  %335 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %336 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %335, i32 0, i32 12
  store %union.ccb* null, %union.ccb** %336, align 8
  %337 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %338 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %339 = or i32 %337, %338
  %340 = load %union.ccb*, %union.ccb** %18, align 8
  %341 = bitcast %union.ccb* %340 to %struct.TYPE_9__*
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  store i32 %339, i32* %342, align 4
  %343 = load %union.ccb*, %union.ccb** %18, align 8
  %344 = bitcast %union.ccb* %343 to %struct.TYPE_9__*
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %362, label %350

350:                                              ; preds = %331
  %351 = load %union.ccb*, %union.ccb** %18, align 8
  %352 = bitcast %union.ccb* %351 to %struct.TYPE_9__*
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @xpt_freeze_devq(i32 %354, i32 1)
  %356 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %357 = load %union.ccb*, %union.ccb** %18, align 8
  %358 = bitcast %union.ccb* %357 to %struct.TYPE_9__*
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %356
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %350, %331
  %363 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %364 = load %union.ccb*, %union.ccb** %18, align 8
  %365 = call i32 @ahci_done(%struct.ahci_channel* %363, %union.ccb* %364)
  br label %366

366:                                              ; preds = %362, %326
  store i32 0, i32* %11, align 4
  br label %367

367:                                              ; preds = %476, %366
  %368 = load i32, i32* %11, align 4
  %369 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %370 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %369, i32 0, i32 6
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %368, %371
  br i1 %372, label %373, label %479

373:                                              ; preds = %367
  %374 = load i32, i32* %9, align 4
  %375 = load i32, i32* %11, align 4
  %376 = ashr i32 %374, %375
  %377 = and i32 %376, 1
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %373
  br label %476

380:                                              ; preds = %373
  %381 = load i32, i32* %13, align 4
  %382 = icmp sge i32 %381, 0
  br i1 %382, label %383, label %398

383:                                              ; preds = %380
  %384 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %385 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %384, i32 0, i32 11
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %385, align 8
  %387 = load i32, i32* %11, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* %13, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %383
  br label %476

398:                                              ; preds = %383, %380
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* @AHCI_P_IX_TFE, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %442

403:                                              ; preds = %398
  %404 = load i32, i32* %13, align 4
  %405 = icmp ne i32 %404, -2
  br i1 %405, label %406, label %437

406:                                              ; preds = %403
  %407 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %408 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %407, i32 0, i32 7
  %409 = load i64*, i64** %408, align 8
  %410 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %411 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %410, i32 0, i32 11
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %411, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i64, i64* %409, i64 %421
  %423 = load i64, i64* %422, align 8
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %406
  %426 = load i32, i32* %11, align 4
  %427 = load i32, i32* %12, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %431

429:                                              ; preds = %425
  %430 = load i32, i32* @AHCI_ERR_TFE, align 4
  store i32 %430, i32* %10, align 4
  br label %433

431:                                              ; preds = %425
  %432 = load i32, i32* @AHCI_ERR_INNOCENT, align 4
  store i32 %432, i32* %10, align 4
  br label %433

433:                                              ; preds = %431, %429
  br label %436

434:                                              ; preds = %406
  %435 = load i32, i32* @AHCI_ERR_NCQ, align 4
  store i32 %435, i32* %10, align 4
  br label %436

436:                                              ; preds = %434, %433
  br label %441

437:                                              ; preds = %403
  %438 = load i32, i32* @AHCI_ERR_TFE, align 4
  store i32 %438, i32* %10, align 4
  %439 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %440 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %439, i32 0, i32 8
  store i32 1, i32* %440, align 8
  br label %441

441:                                              ; preds = %437, %436
  br label %467

442:                                              ; preds = %398
  %443 = load i32, i32* %4, align 4
  %444 = load i32, i32* @AHCI_P_IX_IF, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %464

447:                                              ; preds = %442
  %448 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %449 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %452, label %461

452:                                              ; preds = %447
  %453 = load i32, i32* %11, align 4
  %454 = load i32, i32* %12, align 4
  %455 = icmp ne i32 %453, %454
  br i1 %455, label %456, label %461

456:                                              ; preds = %452
  %457 = load i32, i32* %13, align 4
  %458 = icmp ne i32 %457, -2
  br i1 %458, label %459, label %461

459:                                              ; preds = %456
  %460 = load i32, i32* @AHCI_ERR_INNOCENT, align 4
  store i32 %460, i32* %10, align 4
  br label %463

461:                                              ; preds = %456, %452, %447
  %462 = load i32, i32* @AHCI_ERR_SATA, align 4
  store i32 %462, i32* %10, align 4
  br label %463

463:                                              ; preds = %461, %459
  br label %466

464:                                              ; preds = %442
  %465 = load i32, i32* @AHCI_ERR_INVALID, align 4
  store i32 %465, i32* %10, align 4
  br label %466

466:                                              ; preds = %464, %463
  br label %467

467:                                              ; preds = %466, %441
  %468 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %469 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %468, i32 0, i32 11
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** %469, align 8
  %471 = load i32, i32* %11, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i64 %472
  %474 = load i32, i32* %10, align 4
  %475 = call i32 @ahci_end_transaction(%struct.TYPE_12__* %473, i32 %474)
  br label %476

476:                                              ; preds = %467, %397, %379
  %477 = load i32, i32* %11, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %11, align 4
  br label %367

479:                                              ; preds = %367
  %480 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %481 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 8
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %498

484:                                              ; preds = %479
  %485 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %486 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %485, i32 0, i32 10
  %487 = load i32, i32* %486, align 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %498, label %489

489:                                              ; preds = %484
  %490 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %491 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %490, i32 0, i32 9
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @AHCI_P_FBS, align 4
  %494 = load i32, i32* @AHCI_P_FBS_EN, align 4
  %495 = load i32, i32* @AHCI_P_FBS_DEC, align 4
  %496 = or i32 %494, %495
  %497 = call i32 @ATA_OUTL(i32 %492, i32 %493, i32 %496)
  br label %498

498:                                              ; preds = %489, %484, %479
  br label %499

499:                                              ; preds = %498, %323
  %500 = load i32, i32* %7, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %499
  %503 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %504 = load i32, i32* %7, align 4
  %505 = call i32 @ahci_notify_events(%struct.ahci_channel* %503, i32 %504)
  br label %506

506:                                              ; preds = %502, %499
  ret void
}

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ahci_phy_check_events(%struct.ahci_channel*, i32) #1

declare dso_local i32 @ahci_cpd_check_events(%struct.ahci_channel*) #1

declare dso_local i64 @powerof2(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ahci_end_transaction(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_notify_events(%struct.ahci_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
