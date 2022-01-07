; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32, i32*, i32*, i32**, i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i32*, i32*, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32* }

@RX_DESC_COUNT = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@MAX_IRQ_COUNT = common dso_local global i32 0, align 4
@irq_res_spec = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ffec_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffec_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffec_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ffec_softc* @device_get_softc(i32 %7)
  store %struct.ffec_softc* %8, %struct.ffec_softc** %3, align 8
  %9 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %9, i32 0, i32 14
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %15 = call i32 @FFEC_LOCK(%struct.ffec_softc* %14)
  %16 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %19 = call i32 @ffec_stop_locked(%struct.ffec_softc* %18)
  %20 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %21 = call i32 @FFEC_UNLOCK(%struct.ffec_softc* %20)
  %22 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %22, i32 0, i32 13
  %24 = call i32 @callout_drain(i32* %23)
  %25 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ether_ifdetach(i32 %27)
  br label %29

29:                                               ; preds = %13, %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %65, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @RX_DESC_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %35, i32 0, i32 11
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %45, i32 0, i32 10
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @bus_dmamap_unload(i32* %47, i32* %48)
  %50 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %50, i32 0, i32 10
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @bus_dmamap_destroy(i32* %52, i32* %53)
  %55 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %55, i32 0, i32 11
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @m_freem(i32 %62)
  br label %64

64:                                               ; preds = %44, %34
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %30

68:                                               ; preds = %30
  %69 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %69, i32 0, i32 10
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %74, i32 0, i32 10
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @bus_dma_tag_destroy(i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %79, i32 0, i32 9
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %85 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %84, i32 0, i32 8
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %87, i32 0, i32 9
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_dmamap_unload(i32* %86, i32* %89)
  %91 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %95 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %94, i32 0, i32 9
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_dmamap_destroy(i32* %93, i32* %96)
  br label %98

98:                                               ; preds = %83, %78
  %99 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %99, i32 0, i32 8
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %105 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %104, i32 0, i32 8
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @bus_dma_tag_destroy(i32* %106)
  br label %108

108:                                              ; preds = %103, %98
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %130, %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @TX_DESC_COUNT, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %114, i32 0, i32 7
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %4, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @bus_dmamap_destroy(i32* %126, i32* %127)
  br label %129

129:                                              ; preds = %123, %113
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %109

133:                                              ; preds = %109
  %134 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @bus_dma_tag_destroy(i32* %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %145 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %150 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %153 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @bus_dmamap_unload(i32* %151, i32* %154)
  %156 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %157 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %160 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @bus_dmamap_destroy(i32* %158, i32* %161)
  br label %163

163:                                              ; preds = %148, %143
  %164 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %170 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @bus_dma_tag_destroy(i32* %171)
  br label %173

173:                                              ; preds = %168, %163
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %205, %173
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @MAX_IRQ_COUNT, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %174
  %179 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %180 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %179, i32 0, i32 3
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %204

187:                                              ; preds = %178
  %188 = load i32, i32* %2, align 4
  %189 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %190 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %197 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %196, i32 0, i32 3
  %198 = load i32**, i32*** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @bus_teardown_intr(i32 %188, i32 %195, i32* %202)
  br label %204

204:                                              ; preds = %187, %178
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %174

208:                                              ; preds = %174
  %209 = load i32, i32* %2, align 4
  %210 = load i32, i32* @irq_res_spec, align 4
  %211 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %212 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @bus_release_resources(i32 %209, i32 %210, i32* %213)
  %215 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %216 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %208
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* @SYS_RES_MEMORY, align 4
  %222 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %223 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @bus_release_resource(i32 %220, i32 %221, i32 0, i32* %224)
  br label %226

226:                                              ; preds = %219, %208
  %227 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %228 = call i32 @FFEC_LOCK_DESTROY(%struct.ffec_softc* %227)
  ret i32 0
}

declare dso_local %struct.ffec_softc* @device_get_softc(i32) #1

declare dso_local i32 @FFEC_LOCK(%struct.ffec_softc*) #1

declare dso_local i32 @ffec_stop_locked(%struct.ffec_softc*) #1

declare dso_local i32 @FFEC_UNLOCK(%struct.ffec_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @FFEC_LOCK_DESTROY(%struct.ffec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
