; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { i32, i32, %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_PCI_BAR*, i32*, %struct.ISCI_CONTROLLER* }
%struct.ISCI_INTERRUPT_INFO = type { i32*, i32* }
%struct.ISCI_PCI_BAR = type { i32*, i32 }
%struct.ISCI_CONTROLLER = type { i64, i32, %struct.TYPE_2__*, i32*, i32*, i32, i32*, i32, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"isci\00", align 1
@M_ISCI = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ISCI_NUM_PCI_BARS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ISCI_CONTROLLER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ISCI_PCI_BAR*, align 8
  %10 = alloca %struct.ISCI_INTERRUPT_INFO*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.isci_softc* @DEVICE2SOFTC(i32 %11)
  store %struct.isci_softc* %12, %struct.isci_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %176, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %179

19:                                               ; preds = %13
  %20 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %20, i32 0, i32 5
  %22 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %22, i64 %24
  store %struct.ISCI_CONTROLLER* %25, %struct.ISCI_CONTROLLER** %6, align 8
  %26 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %27 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %89

30:                                               ; preds = %19
  %31 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %32 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @scif_controller_get_scic_handle(i32* %33)
  %35 = call i32 @scic_controller_disable_interrupts(i32 %34)
  %36 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %37 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %36, i32 0, i32 5
  %38 = call i32 @mtx_lock(i32* %37)
  %39 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %40 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @scif_controller_stop(i32* %41, i32 0)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %44 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %43, i32 0, i32 5
  %45 = call i32 @mtx_unlock(i32* %44)
  br label %46

46:                                               ; preds = %52, %30
  %47 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %48 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRUE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %54 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %53, i32 0, i32 5
  %55 = call i32 @mtx_lock(i32* %54)
  %56 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %57 = call i32 @isci_interrupt_poll_handler(%struct.ISCI_CONTROLLER* %56)
  %58 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %59 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %58, i32 0, i32 5
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = call i32 @pause(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %46

62:                                               ; preds = %46
  %63 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %64 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %69 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %68, i32 0, i32 5
  %70 = call i32 @mtx_lock(i32* %69)
  %71 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %72 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @xpt_free_path(i32 %73)
  %75 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %76 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @cam_sim_path(i32* %77)
  %79 = call i32 @xpt_bus_deregister(i32 %78)
  %80 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %81 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @TRUE, align 8
  %84 = call i32 @cam_sim_free(i32* %82, i64 %83)
  %85 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %86 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %85, i32 0, i32 5
  %87 = call i32 @mtx_unlock(i32* %86)
  br label %88

88:                                               ; preds = %67, %62
  br label %89

89:                                               ; preds = %88, %19
  %90 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %91 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %96 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @M_ISCI, align 4
  %99 = call i32 @free(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %102 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %107 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @M_ISCI, align 4
  %110 = call i32 @free(i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %100
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %157, %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @SCI_MAX_PHYS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %160

116:                                              ; preds = %112
  %117 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %118 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %128 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @led_destroy(i64 %134)
  br label %136

136:                                              ; preds = %126, %116
  %137 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %138 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %148 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @led_destroy(i64 %154)
  br label %156

156:                                              ; preds = %146, %136
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %112

160:                                              ; preds = %112
  br label %161

161:                                              ; preds = %160, %170
  %162 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %163 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @sci_pool_get(i32 %164, i8* %165)
  %167 = load i8*, i8** %8, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %175

170:                                              ; preds = %161
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* @PAGE_SIZE, align 4
  %173 = load i32, i32* @M_ISCI, align 4
  %174 = call i32 @contigfree(i8* %171, i32 %172, i32 %173)
  br label %161

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %13

179:                                              ; preds = %13
  %180 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %181 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %186 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @M_ISCI, align 4
  %189 = call i32 @free(i32* %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %179
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %217, %190
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @ISCI_NUM_PCI_BARS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %191
  %196 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %197 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %196, i32 0, i32 3
  %198 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %198, i64 %200
  store %struct.ISCI_PCI_BAR* %201, %struct.ISCI_PCI_BAR** %9, align 8
  %202 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %9, align 8
  %203 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %195
  %207 = load i32, i32* %2, align 4
  %208 = load i32, i32* @SYS_RES_MEMORY, align 4
  %209 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %9, align 8
  %210 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %9, align 8
  %213 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @bus_release_resource(i32 %207, i32 %208, i32 %211, i32* %214)
  br label %216

216:                                              ; preds = %206, %195
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %4, align 4
  br label %191

220:                                              ; preds = %191
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %266, %220
  %222 = load i32, i32* %4, align 4
  %223 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %224 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %269

227:                                              ; preds = %221
  %228 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %229 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %228, i32 0, i32 2
  %230 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %229, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %230, i64 %232
  store %struct.ISCI_INTERRUPT_INFO* %233, %struct.ISCI_INTERRUPT_INFO** %10, align 8
  %234 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %10, align 8
  %235 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %227
  %239 = load i32, i32* %2, align 4
  %240 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %10, align 8
  %241 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %10, align 8
  %244 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @bus_teardown_intr(i32 %239, i32* %242, i32* %245)
  br label %247

247:                                              ; preds = %238, %227
  %248 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %10, align 8
  %249 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %263

252:                                              ; preds = %247
  %253 = load i32, i32* %2, align 4
  %254 = load i32, i32* @SYS_RES_IRQ, align 4
  %255 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %10, align 8
  %256 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @rman_get_rid(i32* %257)
  %259 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %10, align 8
  %260 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @bus_release_resource(i32 %253, i32 %254, i32 %258, i32* %261)
  br label %263

263:                                              ; preds = %252, %247
  %264 = load i32, i32* %2, align 4
  %265 = call i32 @pci_release_msi(i32 %264)
  br label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %4, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %4, align 4
  br label %221

269:                                              ; preds = %221
  %270 = load i32, i32* %2, align 4
  %271 = call i32 @pci_disable_busmaster(i32 %270)
  ret i32 0
}

declare dso_local %struct.isci_softc* @DEVICE2SOFTC(i32) #1

declare dso_local i32 @scic_controller_disable_interrupts(i32) #1

declare dso_local i32 @scif_controller_get_scic_handle(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @scif_controller_stop(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @isci_interrupt_poll_handler(%struct.ISCI_CONTROLLER*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @led_destroy(i64) #1

declare dso_local i32 @sci_pool_get(i32, i8*) #1

declare dso_local i32 @contigfree(i8*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
