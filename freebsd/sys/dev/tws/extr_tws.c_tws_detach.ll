; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i64, i32, i32, i64, i64, i32, i64, i64, i32*, i64* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_UNINIT_START = common dso_local global i32 0, align 4
@TWS_I2O0_HOBDBC = common dso_local global i32 0, align 4
@TWS_I2O0_HIMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"turn-off-intr\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bus release irq resource\00", align 1
@TWS_MSI = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"bus release mem resource\00", align 1
@tws_queue_depth = common dso_local global i32 0, align 4
@M_TWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tws_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.tws_softc* @device_get_softc(i32 %6)
  store %struct.tws_softc* %7, %struct.tws_softc** %3, align 8
  %8 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %9 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %10 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %11 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %10, i32 0, i32 6
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %14 = load i32, i32* @TWS_UNINIT_START, align 4
  %15 = call i32 @tws_send_event(%struct.tws_softc* %13, i32 %14)
  %16 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %16, i32 0, i32 6
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %20 = call i32 @tws_turn_off_interrupts(%struct.tws_softc* %19)
  %21 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %22 = load i32, i32* @TWS_I2O0_HOBDBC, align 4
  %23 = call i32 @tws_write_reg(%struct.tws_softc* %21, i32 %22, i32 -1, i32 4)
  %24 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %25 = load i32, i32* @TWS_I2O0_HIMASK, align 4
  %26 = call i32 @tws_read_reg(%struct.tws_softc* %24, i32 %25, i32 4)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 0)
  %30 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %31 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %33 = call i32 @tws_init_connect(%struct.tws_softc* %32, i32 1)
  %34 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %35 = call i32 @tws_teardown_intr(%struct.tws_softc* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %85, %1
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %36
  %43 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %44 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %43, i32 0, i32 28
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %42
  %52 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %53 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %52, i32 0, i32 20
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SYS_RES_IRQ, align 4
  %56 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %57 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %56, i32 0, i32 27
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %64 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %63, i32 0, i32 28
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @bus_release_resource(i32 %54, i32 %55, i32 %62, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %51
  %73 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %76 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %75, i32 0, i32 27
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @TWS_TRACE(%struct.tws_softc* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %72, %51
  br label %84

84:                                               ; preds = %83, %42
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %36

88:                                               ; preds = %36
  %89 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %90 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TWS_MSI, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %96 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %95, i32 0, i32 20
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pci_release_msi(i32 %97)
  br label %99

99:                                               ; preds = %94, %88
  %100 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %101 = call i32 @tws_cam_detach(%struct.tws_softc* %100)
  %102 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %103 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %102, i32 0, i32 26
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %108 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %107, i32 0, i32 23
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %111 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %110, i32 0, i32 24
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @bus_dmamap_unload(i64 %109, i32 %112)
  br label %114

114:                                              ; preds = %106, %99
  %115 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %116 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %115, i32 0, i32 25
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %121 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %120, i32 0, i32 23
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %124 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %123, i32 0, i32 25
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %127 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %126, i32 0, i32 24
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bus_dmamem_free(i64 %122, i64 %125, i32 %128)
  br label %130

130:                                              ; preds = %119, %114
  %131 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %132 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %131, i32 0, i32 23
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %137 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %136, i32 0, i32 23
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @bus_dma_tag_destroy(i64 %138)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %142 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %141, i32 0, i32 22
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %140
  %146 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %147 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %146, i32 0, i32 20
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SYS_RES_MEMORY, align 4
  %150 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %151 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %150, i32 0, i32 21
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %154 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %153, i32 0, i32 22
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @bus_release_resource(i32 %148, i32 %149, i32 %152, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %145
  %159 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %160 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %161 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %160, i32 0, i32 21
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @TWS_TRACE(%struct.tws_softc* %159, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %162)
  br label %164

164:                                              ; preds = %158, %145
  br label %165

165:                                              ; preds = %164, %140
  %166 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %167 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %166, i32 0, i32 19
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %165
  %171 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %172 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %171, i32 0, i32 20
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SYS_RES_MEMORY, align 4
  %175 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %176 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %175, i32 0, i32 18
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %179 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %178, i32 0, i32 19
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @bus_release_resource(i32 %173, i32 %174, i32 %177, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %170
  %184 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %185 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %186 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %185, i32 0, i32 18
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @TWS_TRACE(%struct.tws_softc* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %187)
  br label %189

189:                                              ; preds = %183, %170
  br label %190

190:                                              ; preds = %189, %165
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %227, %190
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @tws_queue_depth, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %230

195:                                              ; preds = %191
  %196 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %197 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %196, i32 0, i32 16
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %195
  %206 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %207 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %206, i32 0, i32 11
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %210 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %209, i32 0, i32 16
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @bus_dmamap_destroy(i64 %208, i64 %216)
  br label %218

218:                                              ; preds = %205, %195
  %219 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %220 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %219, i32 0, i32 16
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = call i32 @callout_drain(i32* %225)
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %4, align 4
  br label %191

230:                                              ; preds = %191
  %231 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %232 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %231, i32 0, i32 17
  %233 = call i32 @callout_drain(i32* %232)
  %234 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %235 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %234, i32 0, i32 16
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = load i32, i32* @M_TWS, align 4
  %238 = call i32 @free(%struct.TYPE_6__* %236, i32 %237)
  %239 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %240 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %239, i32 0, i32 15
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = load i32, i32* @M_TWS, align 4
  %243 = call i32 @free(%struct.TYPE_6__* %241, i32 %242)
  %244 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %245 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %244, i32 0, i32 14
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* @M_TWS, align 4
  %248 = call i32 @free(%struct.TYPE_6__* %246, i32 %247)
  %249 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %250 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %249, i32 0, i32 13
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %230
  %254 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %255 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %254, i32 0, i32 11
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %258 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %257, i32 0, i32 13
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %261 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %260, i32 0, i32 12
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @bus_dmamem_free(i64 %256, i64 %259, i32 %262)
  br label %264

264:                                              ; preds = %253, %230
  %265 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %266 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %265, i32 0, i32 11
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %271 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %270, i32 0, i32 11
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @bus_dma_tag_destroy(i64 %272)
  br label %274

274:                                              ; preds = %269, %264
  %275 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %276 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %275, i32 0, i32 10
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = load i32, i32* @M_TWS, align 4
  %280 = call i32 @free(%struct.TYPE_6__* %278, i32 %279)
  %281 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %282 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %281, i32 0, i32 9
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = load i32, i32* @M_TWS, align 4
  %286 = call i32 @free(%struct.TYPE_6__* %284, i32 %285)
  %287 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %288 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %287, i32 0, i32 8
  %289 = call i32 @mtx_destroy(i32* %288)
  %290 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %291 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %290, i32 0, i32 7
  %292 = call i32 @mtx_destroy(i32* %291)
  %293 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %294 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %293, i32 0, i32 6
  %295 = call i32 @mtx_destroy(i32* %294)
  %296 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %297 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %296, i32 0, i32 5
  %298 = call i32 @mtx_destroy(i32* %297)
  %299 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %300 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @destroy_dev(i32 %301)
  %303 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %304 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %303, i32 0, i32 3
  %305 = call i32 @sysctl_ctx_free(i32* %304)
  ret i32 0
}

declare dso_local %struct.tws_softc* @device_get_softc(i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @tws_send_event(%struct.tws_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @tws_turn_off_interrupts(%struct.tws_softc*) #1

declare dso_local i32 @tws_write_reg(%struct.tws_softc*, i32, i32, i32) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @tws_init_connect(%struct.tws_softc*, i32) #1

declare dso_local i32 @tws_teardown_intr(%struct.tws_softc*) #1

declare dso_local i64 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @tws_cam_detach(%struct.tws_softc*) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
