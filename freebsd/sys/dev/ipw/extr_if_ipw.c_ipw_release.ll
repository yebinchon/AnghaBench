; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32*, %struct.ipw_soft_buf*, i32*, %struct.TYPE_4__*, i32*, %struct.TYPE_3__*, i32*, i32, i32*, i32*, i32, i32*, i32*, i32, i32*, i32*, i32, i32*, i32* }
%struct.ipw_soft_buf = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPW_NTBD = common dso_local global i32 0, align 4
@IPW_NDATA = common dso_local global i32 0, align 4
@IPW_NRBD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_softc*)* @ipw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_release(%struct.ipw_softc* %0) #0 {
  %2 = alloca %struct.ipw_softc*, align 8
  %3 = alloca %struct.ipw_soft_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %2, align 8
  %5 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %5, i32 0, i32 18
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %10, i32 0, i32 18
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @bus_dma_tag_destroy(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %20, i32 0, i32 15
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32* %22, i32 %25)
  %27 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %27, i32 0, i32 15
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %30, i32 0, i32 17
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bus_dmamem_free(i32* %29, i32* %32, i32 %35)
  %37 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %37, i32 0, i32 15
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @bus_dma_tag_destroy(i32* %39)
  br label %41

41:                                               ; preds = %19, %14
  %42 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %42, i32 0, i32 12
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %47, i32 0, i32 14
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %52, i32 0, i32 12
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bus_dmamap_unload(i32* %54, i32 %57)
  %59 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %59, i32 0, i32 12
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %62, i32 0, i32 14
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bus_dmamem_free(i32* %61, i32* %64, i32 %67)
  br label %69

69:                                               ; preds = %51, %46
  %70 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %70, i32 0, i32 12
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bus_dma_tag_destroy(i32* %72)
  br label %74

74:                                               ; preds = %69, %41
  %75 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %107

79:                                               ; preds = %74
  %80 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %81 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %80, i32 0, i32 11
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %85, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %89 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bus_dmamap_unload(i32* %87, i32 %90)
  %92 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %93 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %96 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %95, i32 0, i32 11
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @bus_dmamem_free(i32* %94, i32* %97, i32 %100)
  br label %102

102:                                              ; preds = %84, %79
  %103 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %103, i32 0, i32 9
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @bus_dma_tag_destroy(i32* %105)
  br label %107

107:                                              ; preds = %102, %74
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %121, %107
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @IPW_NTBD, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %114 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %115 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %114, i32 0, i32 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @ipw_release_sbd(%struct.ipw_softc* %113, i32* %119)
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %108

124:                                              ; preds = %108
  %125 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %125, i32 0, i32 6
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %131 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @bus_dmamap_destroy(i32* %132, i32 %135)
  %137 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %138 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %137, i32 0, i32 6
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @bus_dma_tag_destroy(i32* %139)
  br label %141

141:                                              ; preds = %129, %124
  %142 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %143 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %164, %146
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @IPW_NDATA, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %153 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %156 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %155, i32 0, i32 5
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @bus_dmamap_destroy(i32* %154, i32 %162)
  br label %164

164:                                              ; preds = %151
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %4, align 4
  br label %147

167:                                              ; preds = %147
  %168 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %169 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @bus_dma_tag_destroy(i32* %170)
  br label %172

172:                                              ; preds = %167, %141
  %173 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %174 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %203

177:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %195, %177
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @IPW_NDATA, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %178
  %183 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %184 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %187 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %186, i32 0, i32 3
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @bus_dmamap_destroy(i32* %185, i32 %193)
  br label %195

195:                                              ; preds = %182
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  br label %178

198:                                              ; preds = %178
  %199 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %200 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @bus_dma_tag_destroy(i32* %201)
  br label %203

203:                                              ; preds = %198, %172
  %204 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %205 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %260

208:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %252, %208
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @IPW_NRBD, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %255

213:                                              ; preds = %209
  %214 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %215 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %214, i32 0, i32 1
  %216 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %215, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %216, i64 %218
  store %struct.ipw_soft_buf* %219, %struct.ipw_soft_buf** %3, align 8
  %220 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %3, align 8
  %221 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %244

224:                                              ; preds = %213
  %225 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %226 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %3, align 8
  %229 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %232 = call i32 @bus_dmamap_sync(i32* %227, i32 %230, i32 %231)
  %233 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %234 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %3, align 8
  %237 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @bus_dmamap_unload(i32* %235, i32 %238)
  %240 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %3, align 8
  %241 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @m_freem(i32* %242)
  br label %244

244:                                              ; preds = %224, %213
  %245 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %246 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %3, align 8
  %249 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @bus_dmamap_destroy(i32* %247, i32 %250)
  br label %252

252:                                              ; preds = %244
  %253 = load i32, i32* %4, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %209

255:                                              ; preds = %209
  %256 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %257 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @bus_dma_tag_destroy(i32* %258)
  br label %260

260:                                              ; preds = %255, %203
  ret void
}

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @ipw_release_sbd(%struct.ipw_softc*, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
