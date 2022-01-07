; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmsoftintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmsoftintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i64, i64, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_21__, i32, %struct.TYPE_20__, %struct.TYPE_22__, %struct.TYPE_19__, i32, %struct.TYPE_18__, %struct.TYPE_22__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }

@psmsoftintr.butmap = internal global [8 x i32] [i32 0, i32 144, i32 142, i32 158, i32 143, i32 159, i32 143, i32 159], align 16
@PSM_LEVEL_NATIVE = common dso_local global i64 0, align 8
@MOUSE_PS2_XOVERFLOW = common dso_local global i32 0, align 4
@MOUSE_PS2_XNEG = common dso_local global i32 0, align 4
@MOUSE_PS2_YNEG = common dso_local global i32 0, align 4
@MOUSE_PS2_BUTTONS = common dso_local global i32 0, align 4
@PSM_CONFIG_FORCETAP = common dso_local global i32 0, align 4
@MOUSE_PS2_TAP = common dso_local global i32 0, align 4
@MOUSE_BUTTON4DOWN = common dso_local global i32 0, align 4
@MOUSE_EXPLORER_ZNEG = common dso_local global i32 0, align 4
@MOUSE_EXPLORER_BUTTON4DOWN = common dso_local global i32 0, align 4
@MOUSE_EXPLORER_BUTTON5DOWN = common dso_local global i32 0, align 4
@MOUSE_BUTTON5DOWN = common dso_local global i32 0, align 4
@MOUSE_PS2INTELLI_BUTTON4DOWN = common dso_local global i32 0, align 4
@MOUSE_PS2INTELLI_BUTTON5DOWN = common dso_local global i32 0, align 4
@MOUSE_PS2_BUTTON3DOWN = common dso_local global i32 0, align 4
@MOUSE_PS2_BUTTON1DOWN = common dso_local global i32 0, align 4
@MOUSE_4D_WHEELBITS = common dso_local global i32 0, align 4
@MOUSE_4DPLUS_BUTTON4DOWN = common dso_local global i32 0, align 4
@MOUSE_4DPLUS_ZNEG = common dso_local global i32 0, align 4
@MOUSE_EXTBUTTONS = common dso_local global i32 0, align 4
@MOUSE_PS2_PACKETSIZE = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"synaptics: packet rejected\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"elantech: packet rejected\0A\00", align 1
@MOUSE_POSCHANGED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PSM_PACKETQUEUE = common dso_local global i64 0, align 8
@PSM_ASLP = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@PSM_SOFTARMED = common dso_local global i32 0, align 4
@psmsoftintridle = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"softintr: callout set: %d ticks\0A\00", align 1
@EVDEV_RCPT_HW_MOUSE = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@evdev_rcpt_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @psmsoftintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmsoftintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.psm_softc*, align 8
  %4 = alloca %struct.TYPE_23__, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.psm_softc*
  store %struct.psm_softc* %13, %struct.psm_softc** %3, align 8
  %14 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %15 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %14, i32 0, i32 17
  %16 = call i32 @getmicrouptime(i32* %15)
  %17 = call i32 (...) @spltty()
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %726, %1
  %19 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %20 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %19, i32 0, i32 16
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i64 %24
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %5, align 8
  %26 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %27 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PSM_LEVEL_NATIVE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %624

33:                                               ; preds = %18
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %40 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MOUSE_PS2_XOVERFLOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 128, i32 0
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %50
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %44, %33
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MOUSE_PS2_XNEG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 256
  br label %75

69:                                               ; preds = %57
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = phi i32 [ %68, %62 ], [ %74, %69 ]
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @MOUSE_PS2_YNEG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 256
  br label %94

88:                                               ; preds = %75
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  br label %94

94:                                               ; preds = %88, %81
  %95 = phi i32 [ %87, %81 ], [ %93, %88 ]
  store i32 %95, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %96 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %97 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @MOUSE_PS2_BUTTONS, align 4
  %102 = and i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* @psmsoftintr.butmap, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %108 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PSM_CONFIG_FORCETAP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %94
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @MOUSE_PS2_TAP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %121

121:                                              ; preds = %119, %118
  %122 = phi i32 [ 0, %118 ], [ %120, %119 ]
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %94
  %127 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %128 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %127, i32 0, i32 5
  %129 = call i32 @timevalclear(i32* %128)
  %130 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %131 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %130, i32 0, i32 12
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 8
  %133 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %134 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %133, i32 0, i32 15
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %479 [
    i32 138, label %137
    i32 135, label %195
    i32 133, label %195
    i32 134, label %234
    i32 136, label %238
    i32 132, label %251
    i32 130, label %307
    i32 128, label %320
    i32 141, label %339
    i32 140, label %392
    i32 131, label %447
    i32 139, label %469
    i32 129, label %478
    i32 137, label %478
  ]

137:                                              ; preds = %126
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MOUSE_EXPLORER_ZNEG, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %137
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 15
  %153 = sub nsw i32 %152, 16
  br label %161

154:                                              ; preds = %137
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  br label %161

161:                                              ; preds = %154, %146
  %162 = phi i32 [ %153, %146 ], [ %160, %154 ]
  store i32 %162, i32* %8, align 4
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @MOUSE_EXPLORER_BUTTON4DOWN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %174

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ]
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @MOUSE_EXPLORER_BUTTON5DOWN, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %174
  %188 = load i32, i32* @MOUSE_BUTTON5DOWN, align 4
  br label %190

189:                                              ; preds = %174
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32 [ %188, %187 ], [ 0, %189 ]
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %191
  store i32 %194, i32* %192, align 4
  br label %480

195:                                              ; preds = %126, %126
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = trunc i32 %200 to i8
  %202 = sext i8 %201 to i32
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp sge i32 %203, 7
  br i1 %204, label %208, label %205

205:                                              ; preds = %195
  %206 = load i32, i32* %8, align 4
  %207 = icmp sle i32 %206, -7
  br i1 %207, label %208, label %209

208:                                              ; preds = %205, %195
  store i32 0, i32* %8, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @MOUSE_PS2INTELLI_BUTTON4DOWN, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %217

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %214
  %218 = phi i32 [ %215, %214 ], [ 0, %216 ]
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %218
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @MOUSE_PS2INTELLI_BUTTON5DOWN, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %217
  %227 = load i32, i32* @MOUSE_BUTTON5DOWN, align 4
  br label %229

228:                                              ; preds = %217
  br label %229

229:                                              ; preds = %228, %226
  %230 = phi i32 [ %227, %226 ], [ 0, %228 ]
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %230
  store i32 %233, i32* %231, align 4
  br label %480

234:                                              ; preds = %126
  %235 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %237 = call i32 @proc_mmanplus(%struct.psm_softc* %235, %struct.TYPE_22__* %236, %struct.TYPE_23__* %4, i32* %6, i32* %7, i32* %8)
  br label %480

238:                                              ; preds = %126
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @MOUSE_PS2_TAP, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %246

244:                                              ; preds = %238
  %245 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %246

246:                                              ; preds = %244, %243
  %247 = phi i32 [ 0, %243 ], [ %245, %244 ]
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %247
  store i32 %250, i32* %248, align 4
  br label %480

251:                                              ; preds = %126
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @MOUSE_PS2_BUTTON3DOWN, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %251
  %261 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %263

262:                                              ; preds = %251
  br label %263

263:                                              ; preds = %262, %260
  %264 = phi i32 [ %261, %260 ], [ 0, %262 ]
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %264
  store i32 %267, i32* %265, align 4
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 3
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @MOUSE_PS2_BUTTON1DOWN, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %263
  %277 = load i32, i32* @MOUSE_BUTTON5DOWN, align 4
  br label %279

278:                                              ; preds = %263
  br label %279

279:                                              ; preds = %278, %276
  %280 = phi i32 [ %277, %276 ], [ 0, %278 ]
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %280
  store i32 %283, i32* %281, align 4
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 3
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @MOUSE_PS2_XNEG, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %279
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 4
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, 256
  br label %305

299:                                              ; preds = %279
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 4
  %304 = load i32, i32* %303, align 4
  br label %305

305:                                              ; preds = %299, %292
  %306 = phi i32 [ %298, %292 ], [ %304, %299 ]
  store i32 %306, i32* %8, align 4
  br label %480

307:                                              ; preds = %126
  %308 = load i32, i32* %9, align 4
  %309 = load i32, i32* @MOUSE_PS2_TAP, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %315

314:                                              ; preds = %307
  br label %315

315:                                              ; preds = %314, %312
  %316 = phi i32 [ %313, %312 ], [ 0, %314 ]
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %316
  store i32 %319, i32* %317, align 4
  br label %480

320:                                              ; preds = %126
  %321 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %323 = call i32 @proc_versapad(%struct.psm_softc* %321, %struct.TYPE_22__* %322, %struct.TYPE_23__* %4, i32* %6, i32* %7, i32* %8)
  %324 = load i32, i32* %6, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %320
  %327 = load i32, i32* @MOUSE_PS2_XNEG, align 4
  br label %329

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %328, %326
  %330 = phi i32 [ %327, %326 ], [ 0, %328 ]
  %331 = load i32, i32* %7, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = load i32, i32* @MOUSE_PS2_YNEG, align 4
  br label %336

335:                                              ; preds = %329
  br label %336

336:                                              ; preds = %335, %333
  %337 = phi i32 [ %334, %333 ], [ 0, %335 ]
  %338 = or i32 %330, %337
  store i32 %338, i32* %9, align 4
  br label %480

339:                                              ; preds = %126
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %344, 128
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %339
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  %352 = load i32, i32* %351, align 4
  %353 = sub nsw i32 %352, 256
  br label %360

354:                                              ; preds = %339
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  %359 = load i32, i32* %358, align 4
  br label %360

360:                                              ; preds = %354, %347
  %361 = phi i32 [ %353, %347 ], [ %359, %354 ]
  store i32 %361, i32* %6, align 4
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 2
  %366 = load i32, i32* %365, align 4
  %367 = and i32 %366, 128
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %360
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 2
  %374 = load i32, i32* %373, align 4
  %375 = sub nsw i32 %374, 256
  br label %382

376:                                              ; preds = %360
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 2
  %381 = load i32, i32* %380, align 4
  br label %382

382:                                              ; preds = %376, %369
  %383 = phi i32 [ %375, %369 ], [ %381, %376 ]
  store i32 %383, i32* %7, align 4
  %384 = load i32, i32* %9, align 4
  %385 = load i32, i32* @MOUSE_4D_WHEELBITS, align 4
  %386 = and i32 %384, %385
  switch i32 %386, label %391 [
    i32 16, label %387
    i32 48, label %388
    i32 64, label %389
    i32 192, label %390
  ]

387:                                              ; preds = %382
  store i32 1, i32* %8, align 4
  br label %391

388:                                              ; preds = %382
  store i32 -1, i32* %8, align 4
  br label %391

389:                                              ; preds = %382
  store i32 2, i32* %8, align 4
  br label %391

390:                                              ; preds = %382
  store i32 -2, i32* %8, align 4
  br label %391

391:                                              ; preds = %382, %390, %389, %388, %387
  br label %480

392:                                              ; preds = %126
  %393 = load i32, i32* %6, align 4
  %394 = icmp slt i32 %393, -240
  br i1 %394, label %395, label %438

395:                                              ; preds = %392
  %396 = load i32, i32* %7, align 4
  %397 = icmp slt i32 %396, -240
  br i1 %397, label %398, label %438

398:                                              ; preds = %395
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 2
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @MOUSE_4DPLUS_BUTTON4DOWN, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %398
  %408 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  %409 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = or i32 %410, %408
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %407, %398
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 2
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @MOUSE_4DPLUS_ZNEG, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %412
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 0
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 2
  %426 = load i32, i32* %425, align 4
  %427 = and i32 %426, 7
  %428 = sub nsw i32 %427, 8
  br label %436

429:                                              ; preds = %412
  %430 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 2
  %434 = load i32, i32* %433, align 4
  %435 = and i32 %434, 7
  br label %436

436:                                              ; preds = %429, %421
  %437 = phi i32 [ %428, %421 ], [ %435, %429 ]
  store i32 %437, i32* %8, align 4
  br label %446

438:                                              ; preds = %395, %392
  %439 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @MOUSE_EXTBUTTONS, align 4
  %442 = and i32 %440, %441
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = or i32 %444, %442
  store i32 %445, i32* %443, align 4
  br label %446

446:                                              ; preds = %438, %436
  br label %480

447:                                              ; preds = %126
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @MOUSE_PS2_PACKETSIZE, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %460

453:                                              ; preds = %447
  %454 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %455 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %456 = call i32 @proc_synaptics_mux(%struct.psm_softc* %454, %struct.TYPE_22__* %455)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %453
  br label %713

459:                                              ; preds = %453
  br label %460

460:                                              ; preds = %459, %447
  %461 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %462 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %463 = call i32 @proc_synaptics(%struct.psm_softc* %461, %struct.TYPE_22__* %462, %struct.TYPE_23__* %4, i32* %6, i32* %7, i32* %8)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %460
  %466 = load i32, i32* @LOG_DEBUG, align 4
  %467 = call i32 @VLOG(i32 3, i32 ptrtoint ([28 x i8]* @.str to i32))
  br label %713

468:                                              ; preds = %460
  br label %480

469:                                              ; preds = %126
  %470 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %471 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %472 = call i32 @proc_elantech(%struct.psm_softc* %470, %struct.TYPE_22__* %471, %struct.TYPE_23__* %4, i32* %6, i32* %7, i32* %8)
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %469
  %475 = load i32, i32* @LOG_DEBUG, align 4
  %476 = call i32 @VLOG(i32 3, i32 ptrtoint ([27 x i8]* @.str.1 to i32))
  br label %713

477:                                              ; preds = %469
  br label %480

478:                                              ; preds = %126, %126
  br label %479

479:                                              ; preds = %126, %478
  br label %480

480:                                              ; preds = %479, %477, %468, %446, %391, %336, %315, %305, %246, %234, %229, %190
  %481 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %482 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %481, i32 0, i32 13
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 8
  %485 = icmp sge i32 %484, 1
  br i1 %485, label %486, label %535

486:                                              ; preds = %480
  %487 = load i32, i32* %6, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %510

489:                                              ; preds = %486
  %490 = load i32, i32* %6, align 4
  %491 = load i32, i32* %6, align 4
  %492 = mul nsw i32 %490, %491
  %493 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %494 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %493, i32 0, i32 13
  %495 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 8
  %497 = sdiv i32 %492, %496
  store i32 %497, i32* %6, align 4
  %498 = load i32, i32* %6, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %489
  store i32 1, i32* %6, align 4
  br label %501

501:                                              ; preds = %500, %489
  %502 = load i32, i32* %9, align 4
  %503 = load i32, i32* @MOUSE_PS2_XNEG, align 4
  %504 = and i32 %502, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %509

506:                                              ; preds = %501
  %507 = load i32, i32* %6, align 4
  %508 = sub nsw i32 0, %507
  store i32 %508, i32* %6, align 4
  br label %509

509:                                              ; preds = %506, %501
  br label %510

510:                                              ; preds = %509, %486
  %511 = load i32, i32* %7, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %534

513:                                              ; preds = %510
  %514 = load i32, i32* %7, align 4
  %515 = load i32, i32* %7, align 4
  %516 = mul nsw i32 %514, %515
  %517 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %518 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %517, i32 0, i32 13
  %519 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = sdiv i32 %516, %520
  store i32 %521, i32* %7, align 4
  %522 = load i32, i32* %7, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %525

524:                                              ; preds = %513
  store i32 1, i32* %7, align 4
  br label %525

525:                                              ; preds = %524, %513
  %526 = load i32, i32* %9, align 4
  %527 = load i32, i32* @MOUSE_PS2_YNEG, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %533

530:                                              ; preds = %525
  %531 = load i32, i32* %7, align 4
  %532 = sub nsw i32 0, %531
  store i32 %532, i32* %7, align 4
  br label %533

533:                                              ; preds = %530, %525
  br label %534

534:                                              ; preds = %533, %510
  br label %535

535:                                              ; preds = %534, %480
  %536 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %537 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %536, i32 0, i32 5
  %538 = call i64 @timevalisset(i32* %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %552

540:                                              ; preds = %535
  %541 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %542 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %541, i32 0, i32 12
  %543 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 8
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %552

546:                                              ; preds = %540
  %547 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %548 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %547, i32 0, i32 12
  %549 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %550 = bitcast %struct.TYPE_22__* %548 to i8*
  %551 = bitcast %struct.TYPE_22__* %549 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %550, i8* align 8 %551, i64 16, i1 false)
  br label %552

552:                                              ; preds = %546, %540, %535
  %553 = load i32, i32* %6, align 4
  %554 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 2
  store i32 %553, i32* %554, align 4
  %555 = load i32, i32* %7, align 4
  %556 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 3
  store i32 %555, i32* %556, align 4
  %557 = load i32, i32* %8, align 4
  %558 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 4
  store i32 %557, i32* %558, align 4
  %559 = load i32, i32* %6, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %567, label %561

561:                                              ; preds = %552
  %562 = load i32, i32* %7, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %567, label %564

564:                                              ; preds = %561
  %565 = load i32, i32* %8, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %569

567:                                              ; preds = %564, %561, %552
  %568 = load i32, i32* @MOUSE_POSCHANGED, align 4
  br label %570

569:                                              ; preds = %564
  br label %570

570:                                              ; preds = %569, %567
  %571 = phi i32 [ %568, %567 ], [ 0, %569 ]
  %572 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = xor i32 %573, %575
  %577 = or i32 %571, %576
  %578 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 5
  store i32 %577, i32* %578, align 4
  %579 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %580 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %581 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %582 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %581, i32 0, i32 0
  %583 = load i32*, i32** %582, align 8
  %584 = call i32 @tame_mouse(%struct.psm_softc* %579, %struct.TYPE_22__* %580, %struct.TYPE_23__* %4, i32* %583)
  %585 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %585, i32 0, i32 1
  store i32 %584, i32* %586, align 8
  %587 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 5
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %590 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %589, i32 0, i32 11
  %591 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = or i32 %592, %588
  store i32 %593, i32* %591, align 4
  %594 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 2
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %597 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %596, i32 0, i32 11
  %598 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = add nsw i32 %599, %595
  store i32 %600, i32* %598, align 4
  %601 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 3
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %604 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %603, i32 0, i32 11
  %605 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = add nsw i32 %606, %602
  store i32 %607, i32* %605, align 4
  %608 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 4
  %609 = load i32, i32* %608, align 4
  %610 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %611 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %610, i32 0, i32 11
  %612 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 4
  %614 = add nsw i32 %613, %609
  store i32 %614, i32* %612, align 4
  %615 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %618 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %617, i32 0, i32 11
  %619 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %618, i32 0, i32 4
  store i32 %616, i32* %619, align 4
  %620 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %623 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %622, i32 0, i32 2
  store i32 %621, i32* %623, align 8
  br label %624

624:                                              ; preds = %570, %32
  %625 = load i32, i32* @FALSE, align 4
  %626 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %627 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %626, i32 0, i32 10
  store i32 %625, i32* %627, align 8
  %628 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %629 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %628, i32 0, i32 9
  %630 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 8
  %632 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %633 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 8
  %635 = add nsw i32 %631, %634
  %636 = sext i32 %635 to i64
  %637 = icmp ult i64 %636, 8
  br i1 %637, label %638, label %712

638:                                              ; preds = %624
  %639 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %640 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 8
  %642 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %643 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %642, i32 0, i32 9
  %644 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %643, i32 0, i32 1
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  %647 = sub i64 8, %646
  %648 = trunc i64 %647 to i32
  %649 = call i32 @imin(i32 %641, i32 %648)
  store i32 %649, i32* %10, align 4
  %650 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %650, i32 0, i32 0
  %652 = load i32*, i32** %651, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 0
  %654 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %655 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %654, i32 0, i32 9
  %656 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %655, i32 0, i32 2
  %657 = load i32*, i32** %656, align 8
  %658 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %659 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %658, i32 0, i32 9
  %660 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i32, i32* %657, i64 %662
  %664 = load i32, i32* %10, align 4
  %665 = call i32 @bcopy(i32* %653, i32* %663, i32 %664)
  %666 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %667 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %666, i32 0, i32 1
  %668 = load i32, i32* %667, align 8
  %669 = load i32, i32* %10, align 4
  %670 = icmp sgt i32 %668, %669
  br i1 %670, label %671, label %689

671:                                              ; preds = %638
  %672 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %673 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %672, i32 0, i32 0
  %674 = load i32*, i32** %673, align 8
  %675 = load i32, i32* %10, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i32, i32* %674, i64 %676
  %678 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %679 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %678, i32 0, i32 9
  %680 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %679, i32 0, i32 2
  %681 = load i32*, i32** %680, align 8
  %682 = getelementptr inbounds i32, i32* %681, i64 0
  %683 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %684 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %683, i32 0, i32 1
  %685 = load i32, i32* %684, align 8
  %686 = load i32, i32* %10, align 4
  %687 = sub nsw i32 %685, %686
  %688 = call i32 @bcopy(i32* %677, i32* %682, i32 %687)
  br label %689

689:                                              ; preds = %671, %638
  %690 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %691 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %690, i32 0, i32 9
  %692 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 4
  %694 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %695 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 8
  %697 = add nsw i32 %693, %696
  %698 = sext i32 %697 to i64
  %699 = urem i64 %698, 8
  %700 = trunc i64 %699 to i32
  %701 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %702 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %701, i32 0, i32 9
  %703 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %702, i32 0, i32 1
  store i32 %700, i32* %703, align 4
  %704 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %705 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %704, i32 0, i32 1
  %706 = load i32, i32* %705, align 8
  %707 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %708 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %707, i32 0, i32 9
  %709 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = add nsw i32 %710, %706
  store i32 %711, i32* %709, align 8
  br label %712

712:                                              ; preds = %689, %624
  br label %713

713:                                              ; preds = %712, %474, %465, %458
  %714 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %715 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %714, i32 0, i32 1
  store i32 0, i32* %715, align 8
  %716 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %717 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %716, i32 0, i32 0
  %718 = load i64, i64* %717, align 8
  %719 = add i64 %718, 1
  store i64 %719, i64* %717, align 8
  %720 = load i64, i64* @PSM_PACKETQUEUE, align 8
  %721 = icmp uge i64 %719, %720
  br i1 %721, label %722, label %725

722:                                              ; preds = %713
  %723 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %724 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %723, i32 0, i32 0
  store i64 0, i64* %724, align 8
  br label %725

725:                                              ; preds = %722, %713
  br label %726

726:                                              ; preds = %725
  %727 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %728 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %727, i32 0, i32 0
  %729 = load i64, i64* %728, align 8
  %730 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %731 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %730, i32 0, i32 1
  %732 = load i64, i64* %731, align 8
  %733 = icmp ne i64 %729, %732
  br i1 %733, label %18, label %734

734:                                              ; preds = %726
  %735 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %736 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %735, i32 0, i32 4
  %737 = load i32, i32* %736, align 8
  %738 = load i32, i32* @PSM_ASLP, align 4
  %739 = and i32 %737, %738
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %750

741:                                              ; preds = %734
  %742 = load i32, i32* @PSM_ASLP, align 4
  %743 = xor i32 %742, -1
  %744 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %745 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %744, i32 0, i32 4
  %746 = load i32, i32* %745, align 8
  %747 = and i32 %746, %743
  store i32 %747, i32* %745, align 8
  %748 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %749 = call i32 @wakeup(%struct.psm_softc* %748)
  br label %750

750:                                              ; preds = %741, %734
  %751 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %752 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %751, i32 0, i32 8
  %753 = load i32, i32* @PZERO, align 4
  %754 = call i32 @selwakeuppri(i32* %752, i32 %753)
  %755 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %756 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %755, i32 0, i32 7
  %757 = load i32*, i32** %756, align 8
  %758 = icmp ne i32* %757, null
  br i1 %758, label %759, label %764

759:                                              ; preds = %750
  %760 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %761 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %760, i32 0, i32 7
  %762 = load i32, i32* @SIGIO, align 4
  %763 = call i32 @pgsigio(i32** %761, i32 %762, i32 0)
  br label %764

764:                                              ; preds = %759, %750
  %765 = load i32, i32* @PSM_SOFTARMED, align 4
  %766 = xor i32 %765, -1
  %767 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %768 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %767, i32 0, i32 4
  %769 = load i32, i32* %768, align 8
  %770 = and i32 %769, %766
  store i32 %770, i32* %768, align 8
  %771 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %772 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %771, i32 0, i32 5
  %773 = call i64 @timevalisset(i32* %772)
  %774 = icmp ne i64 %773, 0
  br i1 %774, label %775, label %794

775:                                              ; preds = %764
  %776 = load i32, i32* @PSM_SOFTARMED, align 4
  %777 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %778 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %777, i32 0, i32 4
  %779 = load i32, i32* %778, align 8
  %780 = or i32 %779, %776
  store i32 %780, i32* %778, align 8
  %781 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %782 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %781, i32 0, i32 6
  %783 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %784 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %783, i32 0, i32 5
  %785 = call i32 @tvtohz(i32* %784)
  %786 = load i32, i32* @psmsoftintridle, align 4
  %787 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %788 = call i32 @callout_reset(i32* %782, i32 %785, i32 %786, %struct.psm_softc* %787)
  %789 = load i32, i32* @LOG_DEBUG, align 4
  %790 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %791 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %790, i32 0, i32 5
  %792 = call i32 @tvtohz(i32* %791)
  %793 = call i32 @VLOG(i32 2, i32 %792)
  br label %794

794:                                              ; preds = %775, %764
  %795 = load i32, i32* %11, align 4
  %796 = call i32 @splx(i32 %795)
  ret void
}

declare dso_local i32 @getmicrouptime(i32*) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @timevalclear(i32*) #1

declare dso_local i32 @proc_mmanplus(%struct.psm_softc*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32*, i32*) #1

declare dso_local i32 @proc_versapad(%struct.psm_softc*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32*, i32*) #1

declare dso_local i32 @proc_synaptics_mux(%struct.psm_softc*, %struct.TYPE_22__*) #1

declare dso_local i32 @proc_synaptics(%struct.psm_softc*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32*, i32*) #1

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @proc_elantech(%struct.psm_softc*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32*, i32*) #1

declare dso_local i64 @timevalisset(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tame_mouse(%struct.psm_softc*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @wakeup(%struct.psm_softc*) #1

declare dso_local i32 @selwakeuppri(i32*, i32) #1

declare dso_local i32 @pgsigio(i32**, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.psm_softc*) #1

declare dso_local i32 @tvtohz(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
