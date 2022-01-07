; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { %struct.sge_list_data, %struct.sge_chain_data }
%struct.sge_list_data = type { i64, i64, i32*, i32* }
%struct.sge_chain_data = type { i32*, i32*, %struct.sge_txdesc*, i32*, i32*, %struct.sge_rxdesc*, i32*, i32, i32*, i32 }
%struct.sge_txdesc = type { i32* }
%struct.sge_rxdesc = type { i32* }

@SGE_RX_RING_CNT = common dso_local global i32 0, align 4
@SGE_TX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_softc*)* @sge_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_dma_free(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.sge_chain_data*, align 8
  %4 = alloca %struct.sge_list_data*, align 8
  %5 = alloca %struct.sge_rxdesc*, align 8
  %6 = alloca %struct.sge_txdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %8 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %8, i32 0, i32 1
  store %struct.sge_chain_data* %9, %struct.sge_chain_data** %3, align 8
  %10 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %10, i32 0, i32 0
  store %struct.sge_list_data* %11, %struct.sge_list_data** %4, align 8
  %12 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %13 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %56

16:                                               ; preds = %1
  %17 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %18 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %23 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %26 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bus_dmamap_unload(i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %31 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %36 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %39 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %42 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bus_dmamem_free(i32* %37, i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %47 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %49 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %51 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_dma_tag_destroy(i32* %52)
  %54 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %55 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %54, i32 0, i32 8
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %45, %1
  %57 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %58 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %101

61:                                               ; preds = %56
  %62 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %63 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %68 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %71 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bus_dmamap_unload(i32* %69, i32 %72)
  br label %74

74:                                               ; preds = %66, %61
  %75 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %76 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %81 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %84 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %87 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bus_dmamem_free(i32* %82, i32* %85, i32 %88)
  br label %90

90:                                               ; preds = %79, %74
  %91 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %92 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %94 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %96 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @bus_dma_tag_destroy(i32* %97)
  %99 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %100 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %99, i32 0, i32 6
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %90, %56
  %102 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %103 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %158

106:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %133, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SGE_RX_RING_CNT, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %113 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %112, i32 0, i32 5
  %114 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %114, i64 %116
  store %struct.sge_rxdesc* %117, %struct.sge_rxdesc** %5, align 8
  %118 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %5, align 8
  %119 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %111
  %123 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %124 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %5, align 8
  %127 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @bus_dmamap_destroy(i32* %125, i32* %128)
  %130 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %5, align 8
  %131 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %122, %111
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %107

136:                                              ; preds = %107
  %137 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %138 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %143 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %146 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @bus_dmamap_destroy(i32* %144, i32* %147)
  %149 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %150 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %149, i32 0, i32 4
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %141, %136
  %152 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %153 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @bus_dma_tag_destroy(i32* %154)
  %156 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %157 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %156, i32 0, i32 3
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %151, %101
  %159 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %160 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %200

163:                                              ; preds = %158
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %190, %163
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @SGE_TX_RING_CNT, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %164
  %169 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %170 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %169, i32 0, i32 2
  %171 = load %struct.sge_txdesc*, %struct.sge_txdesc** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %171, i64 %173
  store %struct.sge_txdesc* %174, %struct.sge_txdesc** %6, align 8
  %175 = load %struct.sge_txdesc*, %struct.sge_txdesc** %6, align 8
  %176 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %189

179:                                              ; preds = %168
  %180 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %181 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.sge_txdesc*, %struct.sge_txdesc** %6, align 8
  %184 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @bus_dmamap_destroy(i32* %182, i32* %185)
  %187 = load %struct.sge_txdesc*, %struct.sge_txdesc** %6, align 8
  %188 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %187, i32 0, i32 0
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %179, %168
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %164

193:                                              ; preds = %164
  %194 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %195 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @bus_dma_tag_destroy(i32* %196)
  %198 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %199 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %198, i32 0, i32 1
  store i32* null, i32** %199, align 8
  br label %200

200:                                              ; preds = %193, %158
  %201 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %202 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %207 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @bus_dma_tag_destroy(i32* %208)
  br label %210

210:                                              ; preds = %205, %200
  %211 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %212 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %211, i32 0, i32 0
  store i32* null, i32** %212, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
