; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_14__, i32, %struct.TYPE_15__, i32*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ct mutex not initialized\00", align 1
@NCHAN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@led_timo = common dso_local global i32* null, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@adapter = common dso_local global i32** null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ct_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.TYPE_20__* @device_get_softc(i32 %11)
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %4, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = call i32 @mtx_initialized(i32* %17)
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @splimp()
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = call i32 @CT_LOCK(%struct.TYPE_20__* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %6, align 8
  br label %26

26:                                               ; preds = %62, %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = load i32, i32* @NCHAN, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i64 %32
  %34 = icmp ult %struct.TYPE_18__* %27, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %26
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %8, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %35
  br label %62

50:                                               ; preds = %42
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = call i32 @CT_UNLOCK(%struct.TYPE_20__* %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @splx(i32 %58)
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %2, align 4
  br label %242

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %49
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 1
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %6, align 8
  br label %26

65:                                               ; preds = %26
  %66 = load i32*, i32** @led_timo, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = call i32 @callout_stop(i32* %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = call i32 @CT_UNLOCK(%struct.TYPE_20__* %72)
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bus_teardown_intr(i32 %74, i32 %77, i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @SYS_RES_IRQ, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bus_release_resource(i32 %82, i32 %83, i32 %86, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SYS_RES_DRQ, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @bus_release_resource(i32 %91, i32 %92, i32 %95, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @SYS_RES_IOPORT, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @bus_release_resource(i32 %100, i32 %101, i32 %104, i32 %107)
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = call i32 @CT_LOCK(%struct.TYPE_20__* %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = call i32 @ct_close_board(%struct.TYPE_19__* %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = call i32 @CT_UNLOCK(%struct.TYPE_20__* %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  store %struct.TYPE_18__* %117, %struct.TYPE_18__** %6, align 8
  br label %118

118:                                              ; preds = %173, %65
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = load i32, i32* @NCHAN, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i64 %124
  %126 = icmp ult %struct.TYPE_18__* %119, %125
  br i1 %126, label %127, label %176

127:                                              ; preds = %118
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %9, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %133 = icmp ne %struct.TYPE_17__* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %134, %127
  br label %173

142:                                              ; preds = %134
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = call i32 @callout_stop(i32* %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bpfdetach(i32 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @sppp_detach(i32 %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @if_detach(i32 %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @if_free(i32 %160)
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = call i32 @IF_DRAIN(%struct.TYPE_14__* %163)
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = call i32 @mtx_destroy(i32* %167)
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @destroy_dev(i32 %171)
  br label %173

173:                                              ; preds = %142, %141
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 1
  store %struct.TYPE_18__* %175, %struct.TYPE_18__** %6, align 8
  br label %118

176:                                              ; preds = %118
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %178 = call i32 @CT_LOCK(%struct.TYPE_20__* %177)
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = call i32 @ct_led_off(%struct.TYPE_19__* %179)
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = call i32 @CT_UNLOCK(%struct.TYPE_20__* %181)
  %183 = load i32*, i32** @led_timo, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = call i32 @callout_drain(i32* %187)
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @splx(i32 %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  store %struct.TYPE_18__* %193, %struct.TYPE_18__** %6, align 8
  br label %194

194:                                              ; preds = %225, %176
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = load i32, i32* @NCHAN, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i64 %200
  %202 = icmp ult %struct.TYPE_18__* %195, %201
  br i1 %202, label %203, label %228

203:                                              ; preds = %194
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %207, %struct.TYPE_17__** %10, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %209 = icmp ne %struct.TYPE_17__* %208, null
  br i1 %209, label %210, label %217

210:                                              ; preds = %203
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %210, %203
  br label %225

218:                                              ; preds = %210
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = call i32 @callout_drain(i32* %220)
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = call i32 @ct_bus_dma_mem_free(i32* %223)
  br label %225

225:                                              ; preds = %218, %217
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 1
  store %struct.TYPE_18__* %227, %struct.TYPE_18__** %6, align 8
  br label %194

228:                                              ; preds = %194
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %230, align 8
  %231 = load i32**, i32*** @adapter, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i32*, i32** %231, i64 %234
  store i32* null, i32** %235, align 8
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %237 = load i32, i32* @M_DEVBUF, align 4
  %238 = call i32 @free(%struct.TYPE_19__* %236, i32 %237)
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = call i32 @mtx_destroy(i32* %240)
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %228, %55
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.TYPE_20__* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @CT_LOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @CT_UNLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @ct_close_board(%struct.TYPE_19__*) #1

declare dso_local i32 @bpfdetach(i32) #1

declare dso_local i32 @sppp_detach(i32) #1

declare dso_local i32 @if_detach(i32) #1

declare dso_local i32 @if_free(i32) #1

declare dso_local i32 @IF_DRAIN(%struct.TYPE_14__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @ct_led_off(%struct.TYPE_19__*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ct_bus_dma_mem_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
