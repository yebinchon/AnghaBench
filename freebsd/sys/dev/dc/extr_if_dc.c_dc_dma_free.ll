; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i64, i32*, i32, %struct.TYPE_4__, i32*, i32, %struct.TYPE_3__, i32*, i32, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32*, i32**, i32** }
%struct.TYPE_3__ = type { i64, i64, i32*, i32* }

@DC_RX_LIST_CNT = common dso_local global i32 0, align 4
@DC_TX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_dma_free(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %4 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %4, i32 0, i32 10
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %37, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %24, i32 0, i32 10
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_dmamap_destroy(i32* %26, i32* %34)
  br label %36

36:                                               ; preds = %23, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %41, i32 0, i32 11
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %46, i32 0, i32 10
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %49, i32 0, i32 11
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_dmamap_destroy(i32* %48, i32* %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %54, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @bus_dma_tag_destroy(i32* %56)
  br label %58

58:                                               ; preds = %53, %1
  %59 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %60 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %100

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %92, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %70 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %68
  %79 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %80 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %79, i32 0, i32 9
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %83 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_dmamap_destroy(i32* %81, i32* %89)
  br label %91

91:                                               ; preds = %78, %68
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %64

95:                                               ; preds = %64
  %96 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %97 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %96, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_dma_tag_destroy(i32* %98)
  br label %100

100:                                              ; preds = %95, %58
  %101 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %102 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %107 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %113 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bus_dmamap_unload(i32* %114, i32 %117)
  br label %119

119:                                              ; preds = %111, %105
  %120 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %121 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %127 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %126, i32 0, i32 7
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %130 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %134 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @bus_dmamem_free(i32* %128, i32* %132, i32 %135)
  br label %137

137:                                              ; preds = %125, %119
  %138 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %139 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @bus_dma_tag_destroy(i32* %140)
  br label %142

142:                                              ; preds = %137, %100
  %143 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %144 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %184

147:                                              ; preds = %142
  %148 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %149 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %155 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %158 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @bus_dmamap_unload(i32* %156, i32 %159)
  br label %161

161:                                              ; preds = %153, %147
  %162 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %163 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %169 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %172 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %176 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @bus_dmamem_free(i32* %170, i32* %174, i32 %177)
  br label %179

179:                                              ; preds = %167, %161
  %180 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %181 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @bus_dma_tag_destroy(i32* %182)
  br label %184

184:                                              ; preds = %179, %142
  %185 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %186 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %225

189:                                              ; preds = %184
  %190 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %191 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %196 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %199 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @bus_dmamap_unload(i32* %197, i32 %200)
  br label %202

202:                                              ; preds = %194, %189
  %203 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %204 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %220

208:                                              ; preds = %202
  %209 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %210 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %213 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %217 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @bus_dmamem_free(i32* %211, i32* %215, i32 %218)
  br label %220

220:                                              ; preds = %208, %202
  %221 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %222 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @bus_dma_tag_destroy(i32* %223)
  br label %225

225:                                              ; preds = %220, %184
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
