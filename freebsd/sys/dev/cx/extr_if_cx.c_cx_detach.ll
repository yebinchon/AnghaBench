; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__*, i32, i32, i32, %struct.TYPE_16__, i32, %struct.TYPE_18__, %struct.TYPE_17__, i32*, %struct.TYPE_24__*, i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cx mutex not initialized\00", align 1
@NCHAN = common dso_local global i32 0, align 4
@T_NONE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@M_ASYNC = common dso_local global i64 0, align 8
@TS_ISOPEN = common dso_local global i32 0, align 4
@led_timo = common dso_local global i32* null, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@adapter = common dso_local global i32** null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cx_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_23__* @device_get_softc(i32 %13)
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %4, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %5, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = call i32 @mtx_initialized(i32* %19)
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @splhigh()
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = call i32 @CX_LOCK(%struct.TYPE_23__* %23)
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %6, align 8
  br label %28

28:                                               ; preds = %107, %1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = load i32, i32* @NCHAN, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i64 %34
  %36 = icmp ult %struct.TYPE_21__* %29, %35
  br i1 %36, label %37, label %110

37:                                               ; preds = %28
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %8, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = icmp ne %struct.TYPE_20__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @T_NONE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %37
  br label %107

52:                                               ; preds = %43
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 13
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = call i32 @CX_UNLOCK(%struct.TYPE_23__* %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @splx(i32 %60)
  %62 = load i32, i32* @EBUSY, align 4
  store i32 %62, i32* %2, align 4
  br label %368

63:                                               ; preds = %52
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @M_ASYNC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %63
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 11
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %71, align 8
  %73 = icmp ne %struct.TYPE_24__* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 11
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TS_ISOPEN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %91 = call i32 @CX_UNLOCK(%struct.TYPE_23__* %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @splx(i32 %92)
  %94 = load i32, i32* @EBUSY, align 4
  store i32 %94, i32* %2, align 4
  br label %368

95:                                               ; preds = %83, %74, %69, %63
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 12
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = call i32 @CX_UNLOCK(%struct.TYPE_23__* %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @splx(i32 %103)
  %105 = load i32, i32* @EBUSY, align 4
  store i32 %105, i32* %2, align 4
  br label %368

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %51
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 1
  store %struct.TYPE_21__* %109, %struct.TYPE_21__** %6, align 8
  br label %28

110:                                              ; preds = %28
  %111 = load i32*, i32** @led_timo, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = call i32 @callout_stop(i32* %115)
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  store %struct.TYPE_21__* %119, %struct.TYPE_21__** %6, align 8
  br label %120

120:                                              ; preds = %148, %110
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = load i32, i32* @NCHAN, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i64 %126
  %128 = icmp ult %struct.TYPE_21__* %121, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %120
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  store %struct.TYPE_20__* %132, %struct.TYPE_20__** %9, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %134 = icmp ne %struct.TYPE_20__* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @T_NONE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135, %129
  br label %148

144:                                              ; preds = %135
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 4
  %147 = call i32 @callout_stop(i32* %146)
  br label %148

148:                                              ; preds = %144, %143
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 1
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %6, align 8
  br label %120

151:                                              ; preds = %120
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %153 = call i32 @CX_UNLOCK(%struct.TYPE_23__* %152)
  %154 = load i32, i32* %3, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @bus_teardown_intr(i32 %154, i32 %157, i32 %160)
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* @SYS_RES_IRQ, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @bus_release_resource(i32 %162, i32 %163, i32 %166, i32 %169)
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @SYS_RES_DRQ, align 4
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @bus_release_resource(i32 %171, i32 %172, i32 %175, i32 %178)
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @SYS_RES_IOPORT, align 4
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @bus_release_resource(i32 %180, i32 %181, i32 %184, i32 %187)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %190 = call i32 @CX_LOCK(%struct.TYPE_23__* %189)
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %192 = call i32 @cx_close_board(%struct.TYPE_22__* %191)
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  store %struct.TYPE_21__* %195, %struct.TYPE_21__** %6, align 8
  br label %196

196:                                              ; preds = %263, %151
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = load i32, i32* @NCHAN, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i64 %202
  %204 = icmp ult %struct.TYPE_21__* %197, %203
  br i1 %204, label %205, label %266

205:                                              ; preds = %196
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %207, align 8
  store %struct.TYPE_20__* %208, %struct.TYPE_20__** %10, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %210 = icmp ne %struct.TYPE_20__* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @T_NONE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %211, %205
  br label %263

220:                                              ; preds = %211
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 11
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %222, align 8
  %224 = icmp ne %struct.TYPE_24__* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 11
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %227, align 8
  %229 = call i32 @ttyfree(%struct.TYPE_24__* %228)
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 11
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %231, align 8
  br label %232

232:                                              ; preds = %225, %220
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 3
  %235 = call i32 @callout_stop(i32* %234)
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @bpfdetach(i32 %238)
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @sppp_detach(i32 %242)
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @if_detach(i32 %246)
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @if_free(i32 %250)
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 6
  %254 = call i32 @IF_DRAIN(%struct.TYPE_16__* %253)
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 6
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = call i32 @mtx_destroy(i32* %257)
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @destroy_dev(i32 %261)
  br label %263

263:                                              ; preds = %232, %219
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 1
  store %struct.TYPE_21__* %265, %struct.TYPE_21__** %6, align 8
  br label %196

266:                                              ; preds = %196
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %268 = call i32 @cx_led_off(%struct.TYPE_22__* %267)
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %270 = call i32 @CX_UNLOCK(%struct.TYPE_23__* %269)
  %271 = load i32*, i32** @led_timo, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = call i32 @callout_drain(i32* %275)
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %278, align 8
  store %struct.TYPE_21__* %279, %struct.TYPE_21__** %6, align 8
  br label %280

280:                                              ; preds = %311, %266
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %283, align 8
  %285 = load i32, i32* @NCHAN, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i64 %286
  %288 = icmp ult %struct.TYPE_21__* %281, %287
  br i1 %288, label %289, label %314

289:                                              ; preds = %280
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %291, align 8
  store %struct.TYPE_20__* %292, %struct.TYPE_20__** %11, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %294 = icmp ne %struct.TYPE_20__* %293, null
  br i1 %294, label %295, label %303

295:                                              ; preds = %289
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @T_NONE, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %295, %289
  br label %311

304:                                              ; preds = %295
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 4
  %307 = call i32 @callout_drain(i32* %306)
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 3
  %310 = call i32 @callout_drain(i32* %309)
  br label %311

311:                                              ; preds = %304, %303
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 1
  store %struct.TYPE_21__* %313, %struct.TYPE_21__** %6, align 8
  br label %280

314:                                              ; preds = %280
  %315 = load i32, i32* %7, align 4
  %316 = call i32 @splx(i32 %315)
  %317 = call i32 (...) @splhigh()
  store i32 %317, i32* %7, align 4
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %319, align 8
  store %struct.TYPE_21__* %320, %struct.TYPE_21__** %6, align 8
  br label %321

321:                                              ; preds = %349, %314
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %324, align 8
  %326 = load i32, i32* @NCHAN, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i64 %327
  %329 = icmp ult %struct.TYPE_21__* %322, %328
  br i1 %329, label %330, label %352

330:                                              ; preds = %321
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %332, align 8
  store %struct.TYPE_20__* %333, %struct.TYPE_20__** %12, align 8
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %335 = icmp ne %struct.TYPE_20__* %334, null
  br i1 %335, label %336, label %344

336:                                              ; preds = %330
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 2
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @T_NONE, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %336, %330
  br label %349

345:                                              ; preds = %336
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 1
  %348 = call i32 @cx_bus_dma_mem_free(i32* %347)
  br label %349

349:                                              ; preds = %345, %344
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 1
  store %struct.TYPE_21__* %351, %struct.TYPE_21__** %6, align 8
  br label %321

352:                                              ; preds = %321
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %354, align 8
  %355 = load i32**, i32*** @adapter, align 8
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds i32*, i32** %355, i64 %358
  store i32* null, i32** %359, align 8
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %361 = load i32, i32* @M_DEVBUF, align 4
  %362 = call i32 @free(%struct.TYPE_22__* %360, i32 %361)
  %363 = load i32, i32* %7, align 4
  %364 = call i32 @splx(i32 %363)
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 0
  %367 = call i32 @mtx_destroy(i32* %366)
  store i32 0, i32* %2, align 4
  br label %368

368:                                              ; preds = %352, %100, %89, %57
  %369 = load i32, i32* %2, align 4
  ret i32 %369
}

declare dso_local %struct.TYPE_23__* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @CX_LOCK(%struct.TYPE_23__*) #1

declare dso_local i32 @CX_UNLOCK(%struct.TYPE_23__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @cx_close_board(%struct.TYPE_22__*) #1

declare dso_local i32 @ttyfree(%struct.TYPE_24__*) #1

declare dso_local i32 @bpfdetach(i32) #1

declare dso_local i32 @sppp_detach(i32) #1

declare dso_local i32 @if_detach(i32) #1

declare dso_local i32 @if_free(i32) #1

declare dso_local i32 @IF_DRAIN(%struct.TYPE_16__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @cx_led_off(%struct.TYPE_22__*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @cx_bus_dma_mem_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
