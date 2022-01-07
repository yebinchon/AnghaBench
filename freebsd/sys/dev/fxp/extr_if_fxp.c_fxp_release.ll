; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_2__, i64, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i64, i32* }
%struct.TYPE_2__ = type { %struct.fxp_tx*, %struct.fxp_rx*, i64 }
%struct.fxp_tx = type { i32, i32* }
%struct.fxp_rx = type { i32, i32* }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fxp_release() called with intr handle still active\00", align 1
@FXP_NRFABUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@FXP_NTXCB = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_release(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca %struct.fxp_rx*, align 8
  %4 = alloca %struct.fxp_tx*, align 8
  %5 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %6 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %7 = load i32, i32* @MA_NOTOWNED, align 4
  %8 = call i32 @FXP_LOCK_ASSERT(%struct.fxp_softc* %6, i32 %7)
  %9 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %10 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %9, i32 0, i32 19
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %16 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %15, i32 0, i32 18
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %21 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %24 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %23, i32 0, i32 18
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @device_delete_child(i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %29 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bus_generic_detach(i32 %30)
  %32 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %33 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %32, i32 0, i32 17
  %34 = call i32 @ifmedia_removeall(i32* %33)
  %35 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %36 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %27
  %41 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %42 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %45 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bus_dmamap_unload(i64 %43, i32 %46)
  %48 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %49 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %52 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %56 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bus_dmamem_free(i64 %50, i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %40, %27
  %60 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %61 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %60, i32 0, i32 15
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %66 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %69 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %68, i32 0, i32 14
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bus_dmamap_unload(i64 %67, i32 %70)
  %72 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %73 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %76 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %75, i32 0, i32 15
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %79 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bus_dmamem_free(i64 %74, i64 %77, i32 %80)
  br label %82

82:                                               ; preds = %64, %59
  %83 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %84 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %83, i32 0, i32 13
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %89 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %92 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bus_dmamap_unload(i64 %90, i32 %93)
  %95 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %96 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %99 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %98, i32 0, i32 13
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %102 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bus_dmamem_free(i64 %97, i64 %100, i32 %103)
  br label %105

105:                                              ; preds = %87, %82
  %106 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %107 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %110 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %113 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bus_release_resources(i32 %108, i32 %111, i32 %114)
  %116 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %117 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %180

120:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %165, %120
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @FXP_NRFABUFS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %168

125:                                              ; preds = %121
  %126 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %127 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load %struct.fxp_rx*, %struct.fxp_rx** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %129, i64 %131
  store %struct.fxp_rx* %132, %struct.fxp_rx** %3, align 8
  %133 = load %struct.fxp_rx*, %struct.fxp_rx** %3, align 8
  %134 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %157

137:                                              ; preds = %125
  %138 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %139 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.fxp_rx*, %struct.fxp_rx** %3, align 8
  %142 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %145 = call i32 @bus_dmamap_sync(i64 %140, i32 %143, i32 %144)
  %146 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %147 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.fxp_rx*, %struct.fxp_rx** %3, align 8
  %150 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @bus_dmamap_unload(i64 %148, i32 %151)
  %153 = load %struct.fxp_rx*, %struct.fxp_rx** %3, align 8
  %154 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @m_freem(i32* %155)
  br label %157

157:                                              ; preds = %137, %125
  %158 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %159 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.fxp_rx*, %struct.fxp_rx** %3, align 8
  %162 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @bus_dmamap_destroy(i64 %160, i32 %163)
  br label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %121

168:                                              ; preds = %121
  %169 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %170 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %173 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @bus_dmamap_destroy(i64 %171, i32 %174)
  %176 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %177 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @bus_dma_tag_destroy(i64 %178)
  br label %180

180:                                              ; preds = %168, %105
  %181 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %182 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %238

185:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %230, %185
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @FXP_NTXCB, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %233

190:                                              ; preds = %186
  %191 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %192 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load %struct.fxp_tx*, %struct.fxp_tx** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %194, i64 %196
  store %struct.fxp_tx* %197, %struct.fxp_tx** %4, align 8
  %198 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %199 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %222

202:                                              ; preds = %190
  %203 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %204 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %207 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %210 = call i32 @bus_dmamap_sync(i64 %205, i32 %208, i32 %209)
  %211 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %212 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %215 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @bus_dmamap_unload(i64 %213, i32 %216)
  %218 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %219 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @m_freem(i32* %220)
  br label %222

222:                                              ; preds = %202, %190
  %223 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %224 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %223, i32 0, i32 5
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %227 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @bus_dmamap_destroy(i64 %225, i32 %228)
  br label %230

230:                                              ; preds = %222
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %186

233:                                              ; preds = %186
  %234 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %235 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @bus_dma_tag_destroy(i64 %236)
  br label %238

238:                                              ; preds = %233, %180
  %239 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %240 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %245 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @bus_dma_tag_destroy(i64 %246)
  br label %248

248:                                              ; preds = %243, %238
  %249 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %250 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %255 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @bus_dma_tag_destroy(i64 %256)
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %260 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %265 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @bus_dma_tag_destroy(i64 %266)
  br label %268

268:                                              ; preds = %263, %258
  %269 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %270 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %275 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @if_free(i64 %276)
  br label %278

278:                                              ; preds = %273, %268
  %279 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %280 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %279, i32 0, i32 0
  %281 = call i32 @mtx_destroy(i32* %280)
  ret void
}

declare dso_local i32 @FXP_LOCK_ASSERT(%struct.fxp_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i64, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @if_free(i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
