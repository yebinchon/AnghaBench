; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_pollcard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_pollcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_softc = type { i64, i32, %struct.rc_chans* }
%struct.rc_chans = type { i32, i32, i32*, i32*, i32*, i32*, %struct.tty* }
%struct.tty = type { i32, i32, i32, i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CD180_NCHAN = common dso_local global i32 0, align 4
@RC_WAS_BUFOVFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"channel %d: interrupt-level buffer overflow\0A\00", align 1
@RC_WAS_SILOVFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"channel %d: silo overflow\0A\00", align 1
@RC_MODCHG = common dso_local global i32 0, align 4
@LOTS_OF_EVENTS = common dso_local global i64 0, align 8
@MSVR_CD = common dso_local global i32 0, align 4
@RC_DORXFER = common dso_local global i32 0, align 4
@RC_IBUFSIZE = common dso_local global i32 0, align 4
@RC_IHIGHWATER = common dso_local global i64 0, align 8
@RC_RTSFLOW = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@TS_TBLOCK = common dso_local global i32 0, align 4
@MSVR_RTS = common dso_local global i32 0, align 4
@CD180_CAR = common dso_local global i32 0, align 4
@CD180_MSVR = common dso_local global i32 0, align 4
@TS_CAN_BYPASS_L_RINT = common dso_local global i32 0, align 4
@TS_LOCAL = common dso_local global i32 0, align 4
@RB_I_HIGH_WATER = common dso_local global i64 0, align 8
@IXOFF = common dso_local global i32 0, align 4
@tk_nin = common dso_local global i32 0, align 4
@tk_rawcc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"channel %d: tty-level buffer overflow\0A\00", align 1
@TS_TTSTOP = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@FLUSHO = common dso_local global i32 0, align 4
@rc_rcsrt = common dso_local global i32* null, align 8
@INPUT_FLAGS_SHIFT = common dso_local global i64 0, align 8
@RC_DOXXFER = common dso_local global i32 0, align 4
@TS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_pollcard(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rc_softc*, align 8
  %4 = alloca %struct.rc_chans*, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.rc_softc*
  store %struct.rc_softc* %11, %struct.rc_softc** %3, align 8
  %12 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %477

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %471, %17
  %19 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %19, i32 0, i32 2
  %21 = load %struct.rc_chans*, %struct.rc_chans** %20, align 8
  store %struct.rc_chans* %21, %struct.rc_chans** %4, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %465, %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CD180_NCHAN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %470

26:                                               ; preds = %22
  %27 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %28 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %27, i32 0, i32 6
  %29 = load %struct.tty*, %struct.tty** %28, align 8
  store %struct.tty* %29, %struct.tty** %5, align 8
  %30 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %31 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RC_WAS_BUFOVFL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %26
  %37 = call i32 (...) @critical_enter()
  %38 = load i32, i32* @RC_WAS_BUFOVFL, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %41 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = call i32 (...) @critical_exit()
  %49 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %36, %26
  %55 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %56 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RC_WAS_SILOVFL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = call i32 (...) @critical_enter()
  %63 = load i32, i32* @RC_WAS_SILOVFL, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %66 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = call i32 (...) @critical_exit()
  %74 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %61, %54
  %80 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %81 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RC_MODCHG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %79
  %87 = call i32 (...) @critical_enter()
  %88 = load i32, i32* @RC_MODCHG, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %91 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %95 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %96 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, %94
  store i64 %98, i64* %96, align 8
  %99 = call i32 (...) @critical_exit()
  %100 = load %struct.tty*, %struct.tty** %5, align 8
  %101 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %102 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MSVR_CD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @ttyld_modem(%struct.tty* %100, i32 %109)
  br label %111

111:                                              ; preds = %86, %79
  %112 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %113 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @RC_DORXFER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %427

118:                                              ; preds = %111
  %119 = call i32 (...) @critical_enter()
  %120 = load i32, i32* @RC_DORXFER, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %123 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %127 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %7, align 8
  %129 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %130 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %133 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @RC_IBUFSIZE, align 4
  %136 = mul nsw i32 2, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = icmp eq i32* %131, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %118
  %141 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %142 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* @RC_IBUFSIZE, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32* %146, i32** %6, align 8
  br label %151

147:                                              ; preds = %118
  %148 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %149 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %6, align 8
  br label %151

151:                                              ; preds = %147, %140
  %152 = load i32*, i32** %7, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = ptrtoint i32* %152 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %270

161:                                              ; preds = %151
  %162 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %163 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %166 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @RC_IBUFSIZE, align 4
  %169 = mul nsw i32 2, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = icmp eq i32* %164, %171
  br i1 %172, label %173, label %194

173:                                              ; preds = %161
  %174 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %175 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %178 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %177, i32 0, i32 2
  store i32* %176, i32** %178, align 8
  %179 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %180 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @RC_IBUFSIZE, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %186 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %185, i32 0, i32 3
  store i32* %184, i32** %186, align 8
  %187 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %188 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @RC_IHIGHWATER, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %193 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %192, i32 0, i32 5
  store i32* %191, i32** %193, align 8
  br label %222

194:                                              ; preds = %161
  %195 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %196 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* @RC_IBUFSIZE, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %202 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %201, i32 0, i32 2
  store i32* %200, i32** %202, align 8
  %203 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %204 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @RC_IBUFSIZE, align 4
  %207 = mul nsw i32 2, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %211 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %210, i32 0, i32 3
  store i32* %209, i32** %211, align 8
  %212 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %213 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* @RC_IBUFSIZE, align 4
  %216 = sext i32 %215 to i64
  %217 = load i64, i64* @RC_IHIGHWATER, align 8
  %218 = add i64 %216, %217
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %221 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %220, i32 0, i32 5
  store i32* %219, i32** %221, align 8
  br label %222

222:                                              ; preds = %194, %173
  %223 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %224 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @RC_RTSFLOW, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %263

229:                                              ; preds = %222
  %230 = load %struct.tty*, %struct.tty** %5, align 8
  %231 = getelementptr inbounds %struct.tty, %struct.tty* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @TS_ISOPEN, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %263

236:                                              ; preds = %229
  %237 = load %struct.tty*, %struct.tty** %5, align 8
  %238 = getelementptr inbounds %struct.tty, %struct.tty* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @TS_TBLOCK, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %263, label %243

243:                                              ; preds = %236
  %244 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %245 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @MSVR_RTS, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %263, label %250

250:                                              ; preds = %243
  %251 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %252 = load i32, i32* @CD180_CAR, align 4
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @rcout(%struct.rc_softc* %251, i32 %252, i32 %253)
  %255 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %256 = load i32, i32* @CD180_MSVR, align 4
  %257 = load i32, i32* @MSVR_RTS, align 4
  %258 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %259 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = call i32 @rcout(%struct.rc_softc* %255, i32 %256, i32 %261)
  br label %263

263:                                              ; preds = %250, %243, %236, %229, %222
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %267 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %268, %265
  store i64 %269, i64* %267, align 8
  br label %270

270:                                              ; preds = %263, %151
  %271 = call i32 (...) @critical_exit()
  %272 = load i32, i32* %9, align 4
  %273 = icmp sle i32 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %270
  %275 = load %struct.tty*, %struct.tty** %5, align 8
  %276 = getelementptr inbounds %struct.tty, %struct.tty* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @TS_ISOPEN, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %274, %270
  br label %426

282:                                              ; preds = %274
  %283 = load %struct.tty*, %struct.tty** %5, align 8
  %284 = getelementptr inbounds %struct.tty, %struct.tty* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @TS_CAN_BYPASS_L_RINT, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %400

289:                                              ; preds = %282
  %290 = load %struct.tty*, %struct.tty** %5, align 8
  %291 = getelementptr inbounds %struct.tty, %struct.tty* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @TS_LOCAL, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %400, label %296

296:                                              ; preds = %289
  %297 = load %struct.tty*, %struct.tty** %5, align 8
  %298 = getelementptr inbounds %struct.tty, %struct.tty* %297, i32 0, i32 5
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %300, %302
  %304 = load i64, i64* @RB_I_HIGH_WATER, align 8
  %305 = icmp sge i64 %303, %304
  br i1 %305, label %306, label %330

306:                                              ; preds = %296
  %307 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %308 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @RC_RTSFLOW, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %306
  %314 = load %struct.tty*, %struct.tty** %5, align 8
  %315 = getelementptr inbounds %struct.tty, %struct.tty* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @IXOFF, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %313, %306
  %321 = load %struct.tty*, %struct.tty** %5, align 8
  %322 = getelementptr inbounds %struct.tty, %struct.tty* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @TS_TBLOCK, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %320
  %328 = load %struct.tty*, %struct.tty** %5, align 8
  %329 = call i32 @ttyblock(%struct.tty* %328)
  br label %330

330:                                              ; preds = %327, %320, %313, %296
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* @tk_nin, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* @tk_nin, align 4
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* @tk_rawcc, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* @tk_rawcc, align 4
  %337 = load i32, i32* %9, align 4
  %338 = load %struct.tty*, %struct.tty** %5, align 8
  %339 = getelementptr inbounds %struct.tty, %struct.tty* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, %337
  store i32 %341, i32* %339, align 8
  %342 = load i32*, i32** %6, align 8
  %343 = load i32, i32* %9, align 4
  %344 = load %struct.tty*, %struct.tty** %5, align 8
  %345 = getelementptr inbounds %struct.tty, %struct.tty* %344, i32 0, i32 5
  %346 = call i64 @b_to_q(i32* %342, i32 %343, %struct.TYPE_2__* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %330
  %349 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %350 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* %8, align 4
  %353 = call i32 @device_printf(i32 %351, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %352)
  br label %354

354:                                              ; preds = %348, %330
  %355 = load %struct.tty*, %struct.tty** %5, align 8
  %356 = call i32 @ttwakeup(%struct.tty* %355)
  %357 = load %struct.tty*, %struct.tty** %5, align 8
  %358 = getelementptr inbounds %struct.tty, %struct.tty* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @TS_TTSTOP, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %399

363:                                              ; preds = %354
  %364 = load %struct.tty*, %struct.tty** %5, align 8
  %365 = getelementptr inbounds %struct.tty, %struct.tty* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @IXANY, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %384, label %370

370:                                              ; preds = %363
  %371 = load %struct.tty*, %struct.tty** %5, align 8
  %372 = getelementptr inbounds %struct.tty, %struct.tty* %371, i32 0, i32 3
  %373 = load i64*, i64** %372, align 8
  %374 = load i64, i64* @VSTART, align 8
  %375 = getelementptr inbounds i64, i64* %373, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.tty*, %struct.tty** %5, align 8
  %378 = getelementptr inbounds %struct.tty, %struct.tty* %377, i32 0, i32 3
  %379 = load i64*, i64** %378, align 8
  %380 = load i64, i64* @VSTOP, align 8
  %381 = getelementptr inbounds i64, i64* %379, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp eq i64 %376, %382
  br i1 %383, label %384, label %399

384:                                              ; preds = %370, %363
  %385 = load i32, i32* @TS_TTSTOP, align 4
  %386 = xor i32 %385, -1
  %387 = load %struct.tty*, %struct.tty** %5, align 8
  %388 = getelementptr inbounds %struct.tty, %struct.tty* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = and i32 %389, %386
  store i32 %390, i32* %388, align 8
  %391 = load i32, i32* @FLUSHO, align 4
  %392 = xor i32 %391, -1
  %393 = load %struct.tty*, %struct.tty** %5, align 8
  %394 = getelementptr inbounds %struct.tty, %struct.tty* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 8
  %396 = and i32 %395, %392
  store i32 %396, i32* %394, align 8
  %397 = load %struct.tty*, %struct.tty** %5, align 8
  %398 = call i32 @rc_start(%struct.tty* %397)
  br label %399

399:                                              ; preds = %384, %370, %354
  br label %425

400:                                              ; preds = %289, %282
  br label %401

401:                                              ; preds = %421, %400
  %402 = load i32*, i32** %6, align 8
  %403 = load i32*, i32** %7, align 8
  %404 = icmp ult i32* %402, %403
  br i1 %404, label %405, label %424

405:                                              ; preds = %401
  %406 = load %struct.tty*, %struct.tty** %5, align 8
  %407 = load i32*, i32** %6, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32*, i32** @rc_rcsrt, align 8
  %411 = load i32*, i32** %6, align 8
  %412 = load i64, i64* @INPUT_FLAGS_SHIFT, align 8
  %413 = getelementptr inbounds i32, i32* %411, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, 15
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %410, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = or i32 %409, %418
  %420 = call i32 @ttyld_rint(%struct.tty* %406, i32 %419)
  br label %421

421:                                              ; preds = %405
  %422 = load i32*, i32** %6, align 8
  %423 = getelementptr inbounds i32, i32* %422, i32 1
  store i32* %423, i32** %6, align 8
  br label %401

424:                                              ; preds = %401
  br label %425

425:                                              ; preds = %424, %399
  br label %426

426:                                              ; preds = %425, %281
  br label %427

427:                                              ; preds = %426, %111
  %428 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %429 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @RC_DOXXFER, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %458

434:                                              ; preds = %427
  %435 = call i32 (...) @critical_enter()
  %436 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %437 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %438 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = sub nsw i64 %439, %436
  store i64 %440, i64* %438, align 8
  %441 = load i32, i32* @RC_DOXXFER, align 4
  %442 = xor i32 %441, -1
  %443 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %444 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = and i32 %445, %442
  store i32 %446, i32* %444, align 8
  %447 = load i32, i32* @TS_BUSY, align 4
  %448 = xor i32 %447, -1
  %449 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %450 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %449, i32 0, i32 6
  %451 = load %struct.tty*, %struct.tty** %450, align 8
  %452 = getelementptr inbounds %struct.tty, %struct.tty* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = and i32 %453, %448
  store i32 %454, i32* %452, align 8
  %455 = call i32 (...) @critical_exit()
  %456 = load %struct.tty*, %struct.tty** %5, align 8
  %457 = call i32 @ttyld_start(%struct.tty* %456)
  br label %458

458:                                              ; preds = %434, %427
  %459 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %460 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %458
  br label %470

464:                                              ; preds = %458
  br label %465

465:                                              ; preds = %464
  %466 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %467 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %466, i32 1
  store %struct.rc_chans* %467, %struct.rc_chans** %4, align 8
  %468 = load i32, i32* %8, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %8, align 4
  br label %22

470:                                              ; preds = %463, %22
  br label %471

471:                                              ; preds = %470
  %472 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %473 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %476 = icmp sge i64 %474, %475
  br i1 %476, label %18, label %477

477:                                              ; preds = %16, %471
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ttyld_modem(%struct.tty*, i32) #1

declare dso_local i32 @rcout(%struct.rc_softc*, i32, i32) #1

declare dso_local i32 @ttyblock(%struct.tty*) #1

declare dso_local i64 @b_to_q(i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ttwakeup(%struct.tty*) #1

declare dso_local i32 @rc_start(%struct.tty*) #1

declare dso_local i32 @ttyld_rint(%struct.tty*, i32) #1

declare dso_local i32 @ttyld_start(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
