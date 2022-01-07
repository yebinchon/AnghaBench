; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i64, i64, i32*, i32*, i32**, i32*, i32, i32**, i32*, i32, i32*, i64, i32*, i32*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@CGEM_NUM_RX_DESCS = common dso_local global i32 0, align 4
@CGEM_NUM_TX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cgem_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgem_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgem_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.cgem_softc* @device_get_softc(i32 %6)
  store %struct.cgem_softc* %7, %struct.cgem_softc** %4, align 8
  %8 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %9 = icmp eq %struct.cgem_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  store i32 %11, i32* %2, align 4
  br label %265

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @device_is_attached(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %18 = call i32 @CGEM_LOCK(%struct.cgem_softc* %17)
  %19 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %20 = call i32 @cgem_stop(%struct.cgem_softc* %19)
  %21 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %22 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %21)
  %23 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %24 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %23, i32 0, i32 15
  %25 = call i32 @callout_drain(i32* %24)
  %26 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %27 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_UP, align 4
  %30 = call i32 @if_setflagbits(i32 %28, i32 0, i32 %29)
  %31 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %32 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ether_ifdetach(i32 %33)
  br label %35

35:                                               ; preds = %16, %12
  %36 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %37 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %36, i32 0, i32 13
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %43 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %42, i32 0, i32 13
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @device_delete_child(i32 %41, i32* %44)
  %46 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %47 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %46, i32 0, i32 13
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %50 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %49, i32 0, i32 12
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SYS_RES_MEMORY, align 4
  %56 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %57 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %56, i32 0, i32 12
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @rman_get_rid(i32* %58)
  %60 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %61 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %60, i32 0, i32 12
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_release_resource(i32 %54, i32 %55, i32 %59, i32* %62)
  %64 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %65 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %64, i32 0, i32 12
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %53, %48
  %67 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %68 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %67, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %73 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %79 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %78, i32 0, i32 10
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %82 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @bus_teardown_intr(i32 %77, i32* %80, i64 %83)
  br label %85

85:                                               ; preds = %76, %71
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @SYS_RES_IRQ, align 4
  %88 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %89 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %88, i32 0, i32 10
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @rman_get_rid(i32* %90)
  %92 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %93 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %92, i32 0, i32 10
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @bus_release_resource(i32 %86, i32 %87, i32 %91, i32* %94)
  %96 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %97 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %96, i32 0, i32 10
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %85, %66
  %99 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %100 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %99, i32 0, i32 8
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %167

103:                                              ; preds = %98
  %104 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %105 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %110 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %113 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @bus_dmamap_unload(i32* %111, i32 %114)
  %116 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %117 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %108, %103
  %119 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %120 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %123 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %122, i32 0, i32 8
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %126 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @bus_dmamem_free(i32* %121, i32* %124, i32 %127)
  %129 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %130 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %129, i32 0, i32 8
  store i32* null, i32** %130, align 8
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %163, %118
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @CGEM_NUM_RX_DESCS, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %166

135:                                              ; preds = %131
  %136 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %137 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %136, i32 0, i32 7
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %162

144:                                              ; preds = %135
  %145 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %146 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %149 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %148, i32 0, i32 7
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @bus_dmamap_destroy(i32* %147, i32* %154)
  %156 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %157 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %156, i32 0, i32 7
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  store i32* null, i32** %161, align 8
  br label %162

162:                                              ; preds = %144, %135
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %131

166:                                              ; preds = %131
  br label %167

167:                                              ; preds = %166, %98
  %168 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %169 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %236

172:                                              ; preds = %167
  %173 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %174 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %179 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %182 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @bus_dmamap_unload(i32* %180, i32 %183)
  %185 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %186 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %177, %172
  %188 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %189 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %192 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %195 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @bus_dmamem_free(i32* %190, i32* %193, i32 %196)
  %198 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %199 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %198, i32 0, i32 5
  store i32* null, i32** %199, align 8
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %232, %187
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %235

204:                                              ; preds = %200
  %205 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %206 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %205, i32 0, i32 4
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %231

213:                                              ; preds = %204
  %214 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %215 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %218 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %217, i32 0, i32 4
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @bus_dmamap_destroy(i32* %216, i32* %223)
  %225 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %226 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %225, i32 0, i32 4
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  store i32* null, i32** %230, align 8
  br label %231

231:                                              ; preds = %213, %204
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %200

235:                                              ; preds = %200
  br label %236

236:                                              ; preds = %235, %167
  %237 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %238 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %243 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @bus_dma_tag_destroy(i32* %244)
  %246 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %247 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %246, i32 0, i32 3
  store i32* null, i32** %247, align 8
  br label %248

248:                                              ; preds = %241, %236
  %249 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %250 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %248
  %254 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %255 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = call i32 @bus_dma_tag_destroy(i32* %256)
  %258 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %259 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %258, i32 0, i32 2
  store i32* null, i32** %259, align 8
  br label %260

260:                                              ; preds = %253, %248
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @bus_generic_detach(i32 %261)
  %263 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %264 = call i32 @CGEM_LOCK_DESTROY(%struct.cgem_softc* %263)
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %260, %10
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.cgem_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @CGEM_LOCK(%struct.cgem_softc*) #1

declare dso_local i32 @cgem_stop(%struct.cgem_softc*) #1

declare dso_local i32 @CGEM_UNLOCK(%struct.cgem_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @if_setflagbits(i32, i32, i32) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @CGEM_LOCK_DESTROY(%struct.cgem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
