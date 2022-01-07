; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mk48txx/extr_mk48txx.c_mk48txx_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mk48txx/extr_mk48txx.c_mk48txx_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.mk48txx_softc = type { i32, i32, i32, i32 (i32, i64, i32)*, i32 (i32, i64)*, i64 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }

@MK48TXX_ICSR = common dso_local global i64 0, align 8
@MK48TXX_CSR_WRITE = common dso_local global i32 0, align 4
@MK48TXX_ISEC = common dso_local global i32 0, align 4
@MK48TXX_SEC_MASK = common dso_local global i32 0, align 4
@MK48TXX_IMIN = common dso_local global i32 0, align 4
@MK48TXX_MIN_MASK = common dso_local global i32 0, align 4
@MK48TXX_IHOUR = common dso_local global i32 0, align 4
@MK48TXX_HOUR_MASK = common dso_local global i32 0, align 4
@MK48TXX_IWDAY = common dso_local global i32 0, align 4
@MK48TXX_WDAY_MASK = common dso_local global i32 0, align 4
@MK48TXX_IDAY = common dso_local global i32 0, align 4
@MK48TXX_DAY_MASK = common dso_local global i32 0, align 4
@MK48TXX_IMON = common dso_local global i32 0, align 4
@MK48TXX_MON_MASK = common dso_local global i32 0, align 4
@MK48TXX_NO_CENT_ADJUST = common dso_local global i32 0, align 4
@MK48TXX_WDAY_CB = common dso_local global i32 0, align 4
@MK48TXX_WDAY_CB_SHIFT = common dso_local global i32 0, align 4
@MK48TXX_IYEAR = common dso_local global i32 0, align 4
@MK48TXX_YEAR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mk48txx_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.mk48txx_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clocktime, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.mk48txx_softc* @device_get_softc(i32 %11)
  store %struct.mk48txx_softc* %12, %struct.mk48txx_softc** %5, align 8
  %13 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %14 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.timespec*, %struct.timespec** %4, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 500000000
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.timespec*, %struct.timespec** %4, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.timespec*, %struct.timespec** %4, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.timespec*, %struct.timespec** %4, align 8
  %29 = call i32 @clock_ts_to_ct(%struct.timespec* %28, %struct.clocktime* %7)
  %30 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %31 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %30, i32 0, i32 2
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %34 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %33, i32 0, i32 4
  %35 = load i32 (i32, i64)*, i32 (i32, i64)** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @MK48TXX_ICSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 %35(i32 %36, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @MK48TXX_CSR_WRITE, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %45 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %44, i32 0, i32 3
  %46 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @MK48TXX_ICSR, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = call i32 %46(i32 %47, i64 %50, i32 %51)
  %53 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %54 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %53, i32 0, i32 3
  %55 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @MK48TXX_ISEC, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %62 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %61, i32 0, i32 4
  %63 = load i32 (i32, i64)*, i32 (i32, i64)** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* @MK48TXX_ISEC, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 %63(i32 %64, i64 %68)
  %70 = load i32, i32* @MK48TXX_SEC_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @TOBCD(i32 %74)
  %76 = load i32, i32* @MK48TXX_SEC_MASK, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %72, %77
  %79 = call i32 %55(i32 %56, i64 %60, i32 %78)
  %80 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %81 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %80, i32 0, i32 3
  %82 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i64, i64* %6, align 8
  %85 = load i32, i32* @MK48TXX_IMIN, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %89 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %88, i32 0, i32 4
  %90 = load i32 (i32, i64)*, i32 (i32, i64)** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* @MK48TXX_IMIN, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = call i32 %90(i32 %91, i64 %95)
  %97 = load i32, i32* @MK48TXX_MIN_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @TOBCD(i32 %101)
  %103 = load i32, i32* @MK48TXX_MIN_MASK, align 4
  %104 = and i32 %102, %103
  %105 = or i32 %99, %104
  %106 = call i32 %82(i32 %83, i64 %87, i32 %105)
  %107 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %108 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %107, i32 0, i32 3
  %109 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @MK48TXX_IHOUR, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %116 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %115, i32 0, i32 4
  %117 = load i32 (i32, i64)*, i32 (i32, i64)** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = load i64, i64* %6, align 8
  %120 = load i32, i32* @MK48TXX_IHOUR, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = call i32 %117(i32 %118, i64 %122)
  %124 = load i32, i32* @MK48TXX_HOUR_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  %127 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @TOBCD(i32 %128)
  %130 = load i32, i32* @MK48TXX_HOUR_MASK, align 4
  %131 = and i32 %129, %130
  %132 = or i32 %126, %131
  %133 = call i32 %109(i32 %110, i64 %114, i32 %132)
  %134 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %135 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %134, i32 0, i32 3
  %136 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = load i64, i64* %6, align 8
  %139 = load i32, i32* @MK48TXX_IWDAY, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %143 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %142, i32 0, i32 4
  %144 = load i32 (i32, i64)*, i32 (i32, i64)** %143, align 8
  %145 = load i32, i32* %3, align 4
  %146 = load i64, i64* %6, align 8
  %147 = load i32, i32* @MK48TXX_IWDAY, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = call i32 %144(i32 %145, i64 %149)
  %151 = load i32, i32* @MK48TXX_WDAY_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  %154 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @MK48TXX_WDAY_MASK, align 4
  %158 = and i32 %156, %157
  %159 = or i32 %153, %158
  %160 = call i32 %136(i32 %137, i64 %141, i32 %159)
  %161 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %162 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %161, i32 0, i32 3
  %163 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = load i64, i64* %6, align 8
  %166 = load i32, i32* @MK48TXX_IDAY, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %170 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %169, i32 0, i32 4
  %171 = load i32 (i32, i64)*, i32 (i32, i64)** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load i64, i64* %6, align 8
  %174 = load i32, i32* @MK48TXX_IDAY, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %173, %175
  %177 = call i32 %171(i32 %172, i64 %176)
  %178 = load i32, i32* @MK48TXX_DAY_MASK, align 4
  %179 = xor i32 %178, -1
  %180 = and i32 %177, %179
  %181 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @TOBCD(i32 %182)
  %184 = load i32, i32* @MK48TXX_DAY_MASK, align 4
  %185 = and i32 %183, %184
  %186 = or i32 %180, %185
  %187 = call i32 %163(i32 %164, i64 %168, i32 %186)
  %188 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %189 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %188, i32 0, i32 3
  %190 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = load i64, i64* %6, align 8
  %193 = load i32, i32* @MK48TXX_IMON, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %197 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %196, i32 0, i32 4
  %198 = load i32 (i32, i64)*, i32 (i32, i64)** %197, align 8
  %199 = load i32, i32* %3, align 4
  %200 = load i64, i64* %6, align 8
  %201 = load i32, i32* @MK48TXX_IMON, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %200, %202
  %204 = call i32 %198(i32 %199, i64 %203)
  %205 = load i32, i32* @MK48TXX_MON_MASK, align 4
  %206 = xor i32 %205, -1
  %207 = and i32 %204, %206
  %208 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @TOBCD(i32 %209)
  %211 = load i32, i32* @MK48TXX_MON_MASK, align 4
  %212 = and i32 %210, %211
  %213 = or i32 %207, %212
  %214 = call i32 %190(i32 %191, i64 %195, i32 %213)
  %215 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %218 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %216, %219
  store i32 %220, i32* %10, align 4
  %221 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %222 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @MK48TXX_NO_CENT_ADJUST, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %261

227:                                              ; preds = %25
  %228 = load i32, i32* %10, align 4
  %229 = sdiv i32 %228, 100
  store i32 %229, i32* %9, align 4
  %230 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %231 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %230, i32 0, i32 3
  %232 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %231, align 8
  %233 = load i32, i32* %3, align 4
  %234 = load i64, i64* %6, align 8
  %235 = load i32, i32* @MK48TXX_IWDAY, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %239 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %238, i32 0, i32 4
  %240 = load i32 (i32, i64)*, i32 (i32, i64)** %239, align 8
  %241 = load i32, i32* %3, align 4
  %242 = load i64, i64* %6, align 8
  %243 = load i32, i32* @MK48TXX_IWDAY, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %242, %244
  %246 = call i32 %240(i32 %241, i64 %245)
  %247 = load i32, i32* @MK48TXX_WDAY_CB, align 4
  %248 = xor i32 %247, -1
  %249 = and i32 %246, %248
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* @MK48TXX_WDAY_CB_SHIFT, align 4
  %252 = shl i32 %250, %251
  %253 = load i32, i32* @MK48TXX_WDAY_CB, align 4
  %254 = and i32 %252, %253
  %255 = or i32 %249, %254
  %256 = call i32 %232(i32 %233, i64 %237, i32 %255)
  %257 = load i32, i32* %9, align 4
  %258 = mul nsw i32 %257, 100
  %259 = load i32, i32* %10, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %10, align 4
  br label %268

261:                                              ; preds = %25
  %262 = load i32, i32* %10, align 4
  %263 = icmp sgt i32 %262, 99
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %10, align 4
  %266 = sub nsw i32 %265, 100
  store i32 %266, i32* %10, align 4
  br label %267

267:                                              ; preds = %264, %261
  br label %268

268:                                              ; preds = %267, %227
  %269 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %270 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %269, i32 0, i32 3
  %271 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %270, align 8
  %272 = load i32, i32* %3, align 4
  %273 = load i64, i64* %6, align 8
  %274 = load i32, i32* @MK48TXX_IYEAR, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %273, %275
  %277 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %278 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %277, i32 0, i32 4
  %279 = load i32 (i32, i64)*, i32 (i32, i64)** %278, align 8
  %280 = load i32, i32* %3, align 4
  %281 = load i64, i64* %6, align 8
  %282 = load i32, i32* @MK48TXX_IYEAR, align 4
  %283 = sext i32 %282 to i64
  %284 = add nsw i64 %281, %283
  %285 = call i32 %279(i32 %280, i64 %284)
  %286 = load i32, i32* @MK48TXX_YEAR_MASK, align 4
  %287 = xor i32 %286, -1
  %288 = and i32 %285, %287
  %289 = load i32, i32* %10, align 4
  %290 = call i32 @TOBCD(i32 %289)
  %291 = load i32, i32* @MK48TXX_YEAR_MASK, align 4
  %292 = and i32 %290, %291
  %293 = or i32 %288, %292
  %294 = call i32 %271(i32 %272, i64 %276, i32 %293)
  %295 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %296 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %295, i32 0, i32 4
  %297 = load i32 (i32, i64)*, i32 (i32, i64)** %296, align 8
  %298 = load i32, i32* %3, align 4
  %299 = load i64, i64* %6, align 8
  %300 = load i64, i64* @MK48TXX_ICSR, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 %297(i32 %298, i64 %301)
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* @MK48TXX_CSR_WRITE, align 4
  %304 = xor i32 %303, -1
  %305 = load i32, i32* %8, align 4
  %306 = and i32 %305, %304
  store i32 %306, i32* %8, align 4
  %307 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %308 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %307, i32 0, i32 3
  %309 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %308, align 8
  %310 = load i32, i32* %3, align 4
  %311 = load i64, i64* %6, align 8
  %312 = load i64, i64* @MK48TXX_ICSR, align 8
  %313 = add nsw i64 %311, %312
  %314 = load i32, i32* %8, align 4
  %315 = call i32 %309(i32 %310, i64 %313, i32 %314)
  %316 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %5, align 8
  %317 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %316, i32 0, i32 2
  %318 = call i32 @mtx_unlock(i32* %317)
  ret i32 0
}

declare dso_local %struct.mk48txx_softc* @device_get_softc(i32) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TOBCD(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
