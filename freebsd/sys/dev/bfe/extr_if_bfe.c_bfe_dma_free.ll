; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i64, i64, i32*, i32*, i32*, %struct.bfe_rx_data*, i32*, %struct.bfe_tx_data*, i32*, i32*, i32, i32*, i32*, i32 }
%struct.bfe_rx_data = type { i32* }
%struct.bfe_tx_data = type { i32* }

@BFE_TX_LIST_CNT = common dso_local global i32 0, align 4
@BFE_RX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_dma_free(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca %struct.bfe_tx_data*, align 8
  %4 = alloca %struct.bfe_rx_data*, align 8
  %5 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %6 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %6, i32 0, i32 11
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %16, i32 0, i32 11
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bus_dmamap_unload(i32* %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %24, i32 0, i32 12
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %29, i32 0, i32 11
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %32, i32 0, i32 12
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bus_dmamem_free(i32* %31, i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %23
  %40 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %42, i32 0, i32 12
  store i32* null, i32** %43, align 8
  %44 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %44, i32 0, i32 11
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @bus_dma_tag_destroy(i32* %46)
  %48 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %49 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %48, i32 0, i32 11
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %39, %1
  %51 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %95

55:                                               ; preds = %50
  %56 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %62 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bus_dmamap_unload(i32* %63, i32 %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %69, i32 0, i32 9
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %75 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %78 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %77, i32 0, i32 9
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %81 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bus_dmamem_free(i32* %76, i32* %79, i32 %82)
  br label %84

84:                                               ; preds = %73, %68
  %85 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %86 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %88 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %87, i32 0, i32 9
  store i32* null, i32** %88, align 8
  %89 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %90 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %89, i32 0, i32 8
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_dma_tag_destroy(i32* %91)
  %93 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %93, i32 0, i32 8
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %84, %50
  %96 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %97 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %137

100:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @BFE_TX_LIST_CNT, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %107 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %106, i32 0, i32 7
  %108 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %108, i64 %110
  store %struct.bfe_tx_data* %111, %struct.bfe_tx_data** %3, align 8
  %112 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %113 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %105
  %117 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %118 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %121 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @bus_dmamap_destroy(i32* %119, i32* %122)
  %124 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %125 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %116, %105
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %101

130:                                              ; preds = %101
  %131 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %132 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @bus_dma_tag_destroy(i32* %133)
  %135 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %136 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %135, i32 0, i32 6
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %130, %95
  %138 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %139 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %194

142:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %169, %142
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @BFE_RX_LIST_CNT, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %172

147:                                              ; preds = %143
  %148 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %149 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %148, i32 0, i32 5
  %150 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %150, i64 %152
  store %struct.bfe_rx_data* %153, %struct.bfe_rx_data** %4, align 8
  %154 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %155 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %147
  %159 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %160 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %163 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @bus_dmamap_destroy(i32* %161, i32* %164)
  %166 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %167 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %166, i32 0, i32 0
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %158, %147
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %143

172:                                              ; preds = %143
  %173 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %174 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %179 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %182 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @bus_dmamap_destroy(i32* %180, i32* %183)
  %185 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %186 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %185, i32 0, i32 4
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %177, %172
  %188 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %189 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @bus_dma_tag_destroy(i32* %190)
  %192 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %193 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %192, i32 0, i32 3
  store i32* null, i32** %193, align 8
  br label %194

194:                                              ; preds = %187, %137
  %195 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %196 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %201 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @bus_dma_tag_destroy(i32* %202)
  %204 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %205 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %204, i32 0, i32 2
  store i32* null, i32** %205, align 8
  br label %206

206:                                              ; preds = %199, %194
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
