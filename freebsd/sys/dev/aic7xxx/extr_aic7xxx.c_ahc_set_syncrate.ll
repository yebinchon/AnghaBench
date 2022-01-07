; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_set_syncrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_set_syncrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32, i32, i32, i32 }
%struct.ahc_syncrate = type { i64, i32, i8* }
%struct.ahc_initiator_tinfo = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.ahc_tmode_tstate = type { i32 }

@AHC_TRANS_ACTIVE = common dso_local global i64 0, align 8
@AHC_TRANS_USER = common dso_local global i64 0, align 8
@AHC_TRANS_GOAL = common dso_local global i64 0, align 8
@AHC_TRANS_CUR = common dso_local global i64 0, align 8
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SXFR_ULTRA2 = common dso_local global i64 0, align 8
@SINGLE_EDGE = common dso_local global i64 0, align 8
@ENABLE_CRC = common dso_local global i64 0, align 8
@MSG_EXT_PPR_DT_REQ = common dso_local global i64 0, align 8
@SXFR = common dso_local global i64 0, align 8
@SOFS = common dso_local global i64 0, align 8
@ULTRA_SXFR = common dso_local global i32 0, align 4
@SXFRCTL0 = common dso_local global i32 0, align 4
@FAST20 = common dso_local global i64 0, align 8
@SCSIRATE = common dso_local global i32 0, align 4
@SCSIOFFSET = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s: target %d synchronous at %sMHz%s, offset = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" DT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: target %d using asynchronous transfers\0A\00", align 1
@AHC_NEG_TO_GOAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_set_syncrate(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, %struct.ahc_syncrate* %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.ahc_softc*, align 8
  %10 = alloca %struct.ahc_devinfo*, align 8
  %11 = alloca %struct.ahc_syncrate*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ahc_initiator_tinfo*, align 8
  %18 = alloca %struct.ahc_tmode_tstate*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %9, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %10, align 8
  store %struct.ahc_syncrate* %2, %struct.ahc_syncrate** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* @AHC_TRANS_ACTIVE, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @AHC_TRANS_ACTIVE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %32 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %33 = icmp eq %struct.ahc_syncrate* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %34, %8
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %37 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %38 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %41 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %44 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %36, i32 %39, i32 %42, i32 %45, %struct.ahc_tmode_tstate** %18)
  store %struct.ahc_initiator_tinfo* %46, %struct.ahc_initiator_tinfo** %17, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @AHC_TRANS_USER, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %35
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %54 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %58 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %62 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %51, %35
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* @AHC_TRANS_GOAL, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %72 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %76 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %80 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %69, %64
  %83 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %84 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %19, align 8
  %87 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %88 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %20, align 8
  %91 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %92 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %21, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* @AHC_TRANS_CUR, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %306

99:                                               ; preds = %82
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %306

111:                                              ; preds = %107, %103, %99
  %112 = load i32, i32* %23, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %23, align 4
  %114 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %115 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %24, align 8
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %118 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AHC_ULTRA2, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %111
  %124 = load i64, i64* @SXFR_ULTRA2, align 8
  %125 = load i64, i64* @SINGLE_EDGE, align 8
  %126 = or i64 %124, %125
  %127 = load i64, i64* @ENABLE_CRC, align 8
  %128 = or i64 %126, %127
  %129 = xor i64 %128, -1
  %130 = load i64, i64* %24, align 8
  %131 = and i64 %130, %129
  store i64 %131, i64* %24, align 8
  %132 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %133 = icmp ne %struct.ahc_syncrate* %132, null
  br i1 %133, label %134, label %153

134:                                              ; preds = %123
  %135 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %136 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %24, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %24, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i64, i64* @ENABLE_CRC, align 8
  %146 = load i64, i64* %24, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %24, align 8
  br label %152

148:                                              ; preds = %134
  %149 = load i64, i64* @SINGLE_EDGE, align 8
  %150 = load i64, i64* %24, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %24, align 8
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %123
  br label %229

154:                                              ; preds = %111
  %155 = load i64, i64* @SXFR, align 8
  %156 = load i64, i64* @SOFS, align 8
  %157 = or i64 %155, %156
  %158 = xor i64 %157, -1
  %159 = load i64, i64* %24, align 8
  %160 = and i64 %159, %158
  store i64 %160, i64* %24, align 8
  %161 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %162 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %18, align 8
  %166 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %170 = icmp ne %struct.ahc_syncrate* %169, null
  br i1 %170, label %171, label %200

171:                                              ; preds = %154
  %172 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %173 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @ULTRA_SXFR, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %171
  %179 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %180 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %18, align 8
  %183 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %178, %171
  %187 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %188 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @SXFR, align 8
  %192 = and i64 %190, %191
  %193 = load i64, i64* %24, align 8
  %194 = or i64 %193, %192
  store i64 %194, i64* %24, align 8
  %195 = load i64, i64* %13, align 8
  %196 = load i64, i64* @SOFS, align 8
  %197 = and i64 %195, %196
  %198 = load i64, i64* %24, align 8
  %199 = or i64 %198, %197
  store i64 %199, i64* %24, align 8
  br label %200

200:                                              ; preds = %186, %154
  %201 = load i32, i32* %22, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %200
  %204 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %205 = load i32, i32* @SXFRCTL0, align 4
  %206 = call i64 @ahc_inb(%struct.ahc_softc* %204, i32 %205)
  store i64 %206, i64* %25, align 8
  %207 = load i64, i64* @FAST20, align 8
  %208 = xor i64 %207, -1
  %209 = load i64, i64* %25, align 8
  %210 = and i64 %209, %208
  store i64 %210, i64* %25, align 8
  %211 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %18, align 8
  %212 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %215 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %213, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %203
  %220 = load i64, i64* @FAST20, align 8
  %221 = load i64, i64* %25, align 8
  %222 = or i64 %221, %220
  store i64 %222, i64* %25, align 8
  br label %223

223:                                              ; preds = %219, %203
  %224 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %225 = load i32, i32* @SXFRCTL0, align 4
  %226 = load i64, i64* %25, align 8
  %227 = call i32 @ahc_outb(%struct.ahc_softc* %224, i32 %225, i64 %226)
  br label %228

228:                                              ; preds = %223, %200
  br label %229

229:                                              ; preds = %228, %153
  %230 = load i32, i32* %22, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %229
  %233 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %234 = load i32, i32* @SCSIRATE, align 4
  %235 = load i64, i64* %24, align 8
  %236 = call i32 @ahc_outb(%struct.ahc_softc* %233, i32 %234, i64 %235)
  %237 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %238 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @AHC_ULTRA2, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %232
  %244 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %245 = load i32, i32* @SCSIOFFSET, align 4
  %246 = load i64, i64* %13, align 8
  %247 = call i32 @ahc_outb(%struct.ahc_softc* %244, i32 %245, i64 %246)
  br label %248

248:                                              ; preds = %243, %232
  br label %249

249:                                              ; preds = %248, %229
  %250 = load i64, i64* %24, align 8
  %251 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %252 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load i64, i64* %12, align 8
  %254 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %255 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  store i64 %253, i64* %256, align 8
  %257 = load i64, i64* %13, align 8
  %258 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %259 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  store i64 %257, i64* %260, align 8
  %261 = load i64, i64* %14, align 8
  %262 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %263 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  store i64 %261, i64* %264, align 8
  %265 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %266 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %267 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %270 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %273 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %274 = call i32 @ahc_send_async(%struct.ahc_softc* %265, i32 %268, i32 %271, i32 %272, i32 %273, i32* null)
  %275 = load i64, i64* @bootverbose, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %249
  %278 = load i64, i64* %13, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %297

280:                                              ; preds = %277
  %281 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %282 = call i8* @ahc_name(%struct.ahc_softc* %281)
  %283 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %284 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %287 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %286, i32 0, i32 2
  %288 = load i8*, i8** %287, align 8
  %289 = load i64, i64* %14, align 8
  %290 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %291 = and i64 %289, %290
  %292 = icmp ne i64 %291, 0
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %295 = load i64, i64* %13, align 8
  %296 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %282, i32 %285, i8* %288, i8* %294, i64 %295)
  br label %304

297:                                              ; preds = %277
  %298 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %299 = call i8* @ahc_name(%struct.ahc_softc* %298)
  %300 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %301 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %299, i32 %302)
  br label %304

304:                                              ; preds = %297, %280
  br label %305

305:                                              ; preds = %304, %249
  br label %306

306:                                              ; preds = %305, %107, %82
  %307 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %308 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %10, align 8
  %309 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %18, align 8
  %310 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %17, align 8
  %311 = load i32, i32* @AHC_NEG_TO_GOAL, align 4
  %312 = call i64 @ahc_update_neg_request(%struct.ahc_softc* %307, %struct.ahc_devinfo* %308, %struct.ahc_tmode_tstate* %309, %struct.ahc_initiator_tinfo* %310, i32 %311)
  %313 = load i32, i32* %23, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %312
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %23, align 4
  %317 = load i32, i32* %23, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %306
  %320 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %321 = call i32 @ahc_update_pending_scbs(%struct.ahc_softc* %320)
  br label %322

322:                                              ; preds = %319, %306
  ret void
}

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i32 @ahc_send_async(%struct.ahc_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_update_neg_request(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_tmode_tstate*, %struct.ahc_initiator_tinfo*, i32) #1

declare dso_local i32 @ahc_update_pending_scbs(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
