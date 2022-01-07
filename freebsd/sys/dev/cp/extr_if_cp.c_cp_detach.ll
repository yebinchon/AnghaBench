; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__*, i32* }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_20__, %struct.TYPE_19__, i32*, i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cp mutex not initialized\00", align 1
@NCHAN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cp_destroy = common dso_local global i32 0, align 4
@led_timo = common dso_local global i32* null, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@channel = common dso_local global i32** null, align 8
@adapter = common dso_local global i32** null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_24__* @device_get_softc(i32 %12)
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %4, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %5, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = call i32 @mtx_initialized(i32* %18)
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @splimp()
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = call i32 @CP_LOCK(%struct.TYPE_24__* %22)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %6, align 8
  br label %27

27:                                               ; preds = %63, %1
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = load i32, i32* @NCHAN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i64 %33
  %35 = icmp ult %struct.TYPE_22__* %28, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %27
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %8, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = icmp ne %struct.TYPE_21__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %36
  br label %63

51:                                               ; preds = %43
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = call i32 @CP_UNLOCK(%struct.TYPE_24__* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @splx(i32 %59)
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %2, align 4
  br label %289

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 1
  store %struct.TYPE_22__* %65, %struct.TYPE_22__** %6, align 8
  br label %27

66:                                               ; preds = %27
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %6, align 8
  br label %70

70:                                               ; preds = %107, %66
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = load i32, i32* @NCHAN, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i64 %76
  %78 = icmp ult %struct.TYPE_22__* %71, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %70
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %83, %struct.TYPE_21__** %9, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %85 = icmp ne %struct.TYPE_21__* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86, %79
  br label %107

94:                                               ; preds = %86
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = call i32 @cp_stop_chan(%struct.TYPE_22__* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = call i32 @cp_stop_e1(%struct.TYPE_22__* %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = call i32 @cp_set_dtr(%struct.TYPE_18__* %101, i32 0)
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = call i32 @cp_set_rts(%struct.TYPE_18__* %105, i32 0)
  br label %107

107:                                              ; preds = %94, %93
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 1
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %6, align 8
  br label %70

110:                                              ; preds = %70
  store i32 1, i32* @cp_destroy, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = call i32 @cp_interrupt_poll(%struct.TYPE_23__* %111, i32 1)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %114 = call i32 @cp_led_off(%struct.TYPE_23__* %113)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %116 = call i32 @cp_reset(%struct.TYPE_23__* %115, i32 0, i32 0)
  %117 = load i32*, i32** @led_timo, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = call i32 @callout_stop(i32* %121)
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @bus_teardown_intr(i32 %123, i32 %126, i32 %129)
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %6, align 8
  br label %134

134:                                              ; preds = %189, %110
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = load i32, i32* @NCHAN, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i64 %140
  %142 = icmp ult %struct.TYPE_22__* %135, %141
  br i1 %142, label %143, label %192

143:                                              ; preds = %134
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %147, %struct.TYPE_21__** %10, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %149 = icmp ne %struct.TYPE_21__* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %150, %143
  br label %189

158:                                              ; preds = %150
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = call i32 @callout_stop(i32* %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @bpfdetach(i32 %164)
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @sppp_detach(i32 %168)
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @if_detach(i32 %172)
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @if_free(i32 %176)
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 5
  %180 = call i32 @IF_DRAIN(%struct.TYPE_19__* %179)
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = call i32 @mtx_destroy(i32* %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @destroy_dev(i32 %187)
  br label %189

189:                                              ; preds = %158, %157
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 1
  store %struct.TYPE_22__* %191, %struct.TYPE_22__** %6, align 8
  br label %134

192:                                              ; preds = %134
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 2
  store i32* null, i32** %194, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %196 = call i32 @CP_UNLOCK(%struct.TYPE_24__* %195)
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @SYS_RES_IRQ, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @bus_release_resource(i32 %197, i32 %198, i32 0, i32 %201)
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @SYS_RES_MEMORY, align 4
  %205 = call i32 @PCIR_BAR(i32 0)
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @bus_release_resource(i32 %203, i32 %204, i32 %205, i32 %208)
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %211 = call i32 @CP_LOCK(%struct.TYPE_24__* %210)
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %213 = call i32 @cp_led_off(%struct.TYPE_23__* %212)
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %215 = call i32 @CP_UNLOCK(%struct.TYPE_24__* %214)
  %216 = load i32*, i32** @led_timo, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = call i32 @callout_drain(i32* %220)
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @splx(i32 %222)
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %225, align 8
  store %struct.TYPE_22__* %226, %struct.TYPE_22__** %6, align 8
  br label %227

227:                                              ; preds = %271, %192
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %230, align 8
  %232 = load i32, i32* @NCHAN, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i64 %233
  %235 = icmp ult %struct.TYPE_22__* %228, %234
  br i1 %235, label %236, label %274

236:                                              ; preds = %227
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = inttoptr i64 %239 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %240, %struct.TYPE_21__** %11, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %242 = icmp ne %struct.TYPE_21__* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %243, %236
  br label %271

251:                                              ; preds = %243
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 1
  %254 = call i32 @callout_drain(i32* %253)
  %255 = load i32**, i32*** @channel, align 8
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* @NCHAN, align 4
  %260 = sext i32 %259 to i64
  %261 = mul i64 %258, %260
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = add i64 %261, %265
  %267 = getelementptr inbounds i32*, i32** %255, i64 %266
  store i32* null, i32** %267, align 8
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 0
  %270 = call i32 @cp_bus_dma_mem_free(i32* %269)
  br label %271

271:                                              ; preds = %251, %250
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 1
  store %struct.TYPE_22__* %273, %struct.TYPE_22__** %6, align 8
  br label %227

274:                                              ; preds = %227
  %275 = load i32**, i32*** @adapter, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds i32*, i32** %275, i64 %278
  store i32* null, i32** %279, align 8
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 1
  %282 = call i32 @cp_bus_dma_mem_free(i32* %281)
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %284 = load i32, i32* @M_DEVBUF, align 4
  %285 = call i32 @free(%struct.TYPE_23__* %283, i32 %284)
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = call i32 @mtx_destroy(i32* %287)
  store i32 0, i32* %2, align 4
  br label %289

289:                                              ; preds = %274, %56
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local %struct.TYPE_24__* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @CP_LOCK(%struct.TYPE_24__*) #1

declare dso_local i32 @CP_UNLOCK(%struct.TYPE_24__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @cp_stop_chan(%struct.TYPE_22__*) #1

declare dso_local i32 @cp_stop_e1(%struct.TYPE_22__*) #1

declare dso_local i32 @cp_set_dtr(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cp_set_rts(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cp_interrupt_poll(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @cp_led_off(%struct.TYPE_23__*) #1

declare dso_local i32 @cp_reset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bpfdetach(i32) #1

declare dso_local i32 @sppp_detach(i32) #1

declare dso_local i32 @if_detach(i32) #1

declare dso_local i32 @if_free(i32) #1

declare dso_local i32 @IF_DRAIN(%struct.TYPE_19__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @cp_bus_dma_mem_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
