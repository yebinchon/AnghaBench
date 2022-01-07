; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i32*, i32* }
%struct.ifnet = type { i32 }

@CAS_NRXDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CAS_TXQUEUELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas_softc*)* @cas_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_detach(%struct.cas_softc* %0) #0 {
  %2 = alloca %struct.cas_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.cas_softc* %0, %struct.cas_softc** %2, align 8
  %5 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %5, i32 0, i32 15
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = call i32 @ether_ifdetach(%struct.ifnet* %8)
  %10 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %11 = call i32 @CAS_LOCK(%struct.cas_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = call i32 @cas_stop(%struct.ifnet* %12)
  %14 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %15 = call i32 @CAS_UNLOCK(%struct.cas_softc* %14)
  %16 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %17 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %16, i32 0, i32 14
  %18 = call i32 @callout_drain(i32* %17)
  %19 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %20 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %19, i32 0, i32 13
  %21 = call i32 @callout_drain(i32* %20)
  %22 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %23 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %26 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %25, i32 0, i32 12
  %27 = call i32 @taskqueue_drain(i32 %24, i32* %26)
  %28 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %29 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %32 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %31, i32 0, i32 11
  %33 = call i32 @taskqueue_drain(i32 %30, i32* %32)
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = call i32 @if_free(%struct.ifnet* %34)
  %36 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %37 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @taskqueue_free(i32 %38)
  %40 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %41 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %44 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_delete_child(i32 %42, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %78, %1
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @CAS_NRXDESC, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %53 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %52, i32 0, i32 7
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %51
  %62 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %63 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %66 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %65, i32 0, i32 7
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %74 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @bus_dmamap_sync(i32 %64, i32* %72, i32 %75)
  br label %77

77:                                               ; preds = %61, %51
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %47

81:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %110, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @CAS_NRXDESC, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %88 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %87, i32 0, i32 7
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %86
  %97 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %98 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %101 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %100, i32 0, i32 7
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @bus_dmamap_unload(i32 %99, i32* %107)
  br label %109

109:                                              ; preds = %96, %86
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %82

113:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %150, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @CAS_NRXDESC, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %153

118:                                              ; preds = %114
  %119 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %120 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %119, i32 0, i32 7
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %149

128:                                              ; preds = %118
  %129 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %130 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %133 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %132, i32 0, i32 7
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %141 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %140, i32 0, i32 7
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @bus_dmamem_free(i32 %131, i32* %139, i32* %147)
  br label %149

149:                                              ; preds = %128, %118
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  br label %114

153:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %182, %153
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @CAS_TXQUEUELEN, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %160 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %159, i32 0, i32 6
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %181

168:                                              ; preds = %158
  %169 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %170 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %173 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %172, i32 0, i32 6
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @bus_dmamap_destroy(i32 %171, i32* %179)
  br label %181

181:                                              ; preds = %168, %158
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %154

185:                                              ; preds = %154
  %186 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %187 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %188 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @CAS_CDSYNC(%struct.cas_softc* %186, i32 %189)
  %191 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %192 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %195 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @bus_dmamap_unload(i32 %193, i32* %196)
  %198 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %199 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %202 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %205 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @bus_dmamem_free(i32 %200, i32* %203, i32* %206)
  %208 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %209 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @bus_dma_tag_destroy(i32 %210)
  %212 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %213 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @bus_dma_tag_destroy(i32 %214)
  %216 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %217 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @bus_dma_tag_destroy(i32 %218)
  %220 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %221 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @bus_dma_tag_destroy(i32 %222)
  ret void
}

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @CAS_LOCK(%struct.cas_softc*) #1

declare dso_local i32 @cas_stop(%struct.ifnet*) #1

declare dso_local i32 @CAS_UNLOCK(%struct.cas_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @CAS_CDSYNC(%struct.cas_softc*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
