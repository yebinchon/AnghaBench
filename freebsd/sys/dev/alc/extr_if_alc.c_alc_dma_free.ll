; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32*, %struct.alc_rxdesc*, i32*, %struct.alc_txdesc* }
%struct.alc_rxdesc = type { i32* }
%struct.alc_txdesc = type { i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32* }

@ALC_TX_RING_CNT = common dso_local global i32 0, align 4
@ALC_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_dma_free(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.alc_txdesc*, align 8
  %4 = alloca %struct.alc_rxdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %6 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 15
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %40, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ALC_TX_RING_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 16
  %20 = load %struct.alc_txdesc*, %struct.alc_txdesc** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %20, i64 %22
  store %struct.alc_txdesc* %23, %struct.alc_txdesc** %3, align 8
  %24 = load %struct.alc_txdesc*, %struct.alc_txdesc** %3, align 8
  %25 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %16
  %29 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 15
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.alc_txdesc*, %struct.alc_txdesc** %3, align 8
  %34 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dmamap_destroy(i32* %32, i32* %35)
  %37 = load %struct.alc_txdesc*, %struct.alc_txdesc** %3, align 8
  %38 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28, %16
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %45 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 15
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bus_dma_tag_destroy(i32* %47)
  %49 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 15
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %43, %1
  %53 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %54 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 12
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %118

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ALC_RX_RING_CNT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 14
  %67 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %67, i64 %69
  store %struct.alc_rxdesc* %70, %struct.alc_rxdesc** %4, align 8
  %71 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %4, align 8
  %72 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %63
  %76 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %77 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 12
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %4, align 8
  %81 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @bus_dmamap_destroy(i32* %79, i32* %82)
  %84 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %4, align 8
  %85 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %75, %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %59

90:                                               ; preds = %59
  %91 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %92 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 13
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %98 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 12
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %102 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 13
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @bus_dmamap_destroy(i32* %100, i32* %104)
  %106 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %107 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 13
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %96, %90
  %110 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %111 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 12
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @bus_dma_tag_destroy(i32* %113)
  %115 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 12
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %109, %52
  %119 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %120 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 10
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %175

124:                                              ; preds = %118
  %125 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %126 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %132 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 10
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %136 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @bus_dmamap_unload(i32* %134, i32 %138)
  br label %140

140:                                              ; preds = %130, %124
  %141 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %142 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 9
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %148 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 10
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %152 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 9
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %156 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @bus_dmamem_free(i32* %150, i32* %154, i32 %158)
  br label %160

160:                                              ; preds = %146, %140
  %161 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %162 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  %164 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %165 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 9
  store i32* null, i32** %166, align 8
  %167 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %168 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 10
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @bus_dma_tag_destroy(i32* %170)
  %172 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %173 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 10
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %160, %118
  %176 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %177 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 8
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %232

181:                                              ; preds = %175
  %182 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %183 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %189 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 8
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %193 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @bus_dmamap_unload(i32* %191, i32 %195)
  br label %197

197:                                              ; preds = %187, %181
  %198 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %199 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 8
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %205 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 8
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %209 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 8
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %213 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @bus_dmamem_free(i32* %207, i32* %211, i32 %215)
  br label %217

217:                                              ; preds = %203, %197
  %218 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %219 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  store i64 0, i64* %220, align 8
  %221 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %222 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 8
  store i32* null, i32** %223, align 8
  %224 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %225 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 8
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @bus_dma_tag_destroy(i32* %227)
  %229 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %230 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 8
  store i32* null, i32** %231, align 8
  br label %232

232:                                              ; preds = %217, %175
  %233 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %234 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 6
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %289

238:                                              ; preds = %232
  %239 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %240 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %238
  %245 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %246 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 6
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %250 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @bus_dmamap_unload(i32* %248, i32 %252)
  br label %254

254:                                              ; preds = %244, %238
  %255 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %256 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 7
  %258 = load i32*, i32** %257, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %274

260:                                              ; preds = %254
  %261 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %262 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 6
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %266 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 7
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %270 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @bus_dmamem_free(i32* %264, i32* %268, i32 %272)
  br label %274

274:                                              ; preds = %260, %254
  %275 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %276 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 2
  store i64 0, i64* %277, align 8
  %278 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %279 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 7
  store i32* null, i32** %280, align 8
  %281 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %282 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 6
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @bus_dma_tag_destroy(i32* %284)
  %286 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %287 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 6
  store i32* null, i32** %288, align 8
  br label %289

289:                                              ; preds = %274, %232
  %290 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %291 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 4
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %346

295:                                              ; preds = %289
  %296 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %297 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %311

301:                                              ; preds = %295
  %302 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %303 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 4
  %305 = load i32*, i32** %304, align 8
  %306 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %307 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @bus_dmamap_unload(i32* %305, i32 %309)
  br label %311

311:                                              ; preds = %301, %295
  %312 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %313 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 6
  %315 = load i32*, i32** %314, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %331

317:                                              ; preds = %311
  %318 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %319 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 4
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %323 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 6
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %327 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @bus_dmamem_free(i32* %321, i32* %325, i32 %329)
  br label %331

331:                                              ; preds = %317, %311
  %332 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %333 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 3
  store i64 0, i64* %334, align 8
  %335 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %336 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 6
  store i32* null, i32** %337, align 8
  %338 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %339 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 4
  %341 = load i32*, i32** %340, align 8
  %342 = call i32 @bus_dma_tag_destroy(i32* %341)
  %343 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %344 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 4
  store i32* null, i32** %345, align 8
  br label %346

346:                                              ; preds = %331, %289
  %347 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %348 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 2
  %350 = load i32*, i32** %349, align 8
  %351 = icmp ne i32* %350, null
  br i1 %351, label %352, label %403

352:                                              ; preds = %346
  %353 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %354 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %368

358:                                              ; preds = %352
  %359 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %360 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %364 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @bus_dmamap_unload(i32* %362, i32 %366)
  br label %368

368:                                              ; preds = %358, %352
  %369 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %370 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 5
  %372 = load i32*, i32** %371, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %388

374:                                              ; preds = %368
  %375 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %376 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load i32*, i32** %377, align 8
  %379 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %380 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 5
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %384 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @bus_dmamem_free(i32* %378, i32* %382, i32 %386)
  br label %388

388:                                              ; preds = %374, %368
  %389 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %390 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 4
  store i64 0, i64* %391, align 8
  %392 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %393 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 5
  store i32* null, i32** %394, align 8
  %395 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %396 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 2
  %398 = load i32*, i32** %397, align 8
  %399 = call i32 @bus_dma_tag_destroy(i32* %398)
  %400 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %401 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 2
  store i32* null, i32** %402, align 8
  br label %403

403:                                              ; preds = %388, %346
  %404 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %405 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %418

409:                                              ; preds = %403
  %410 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %411 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 1
  %413 = load i32*, i32** %412, align 8
  %414 = call i32 @bus_dma_tag_destroy(i32* %413)
  %415 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %416 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 1
  store i32* null, i32** %417, align 8
  br label %418

418:                                              ; preds = %409, %403
  %419 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %420 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = icmp ne i32* %422, null
  br i1 %423, label %424, label %433

424:                                              ; preds = %418
  %425 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %426 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = call i32 @bus_dma_tag_destroy(i32* %428)
  %430 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %431 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  store i32* null, i32** %432, align 8
  br label %433

433:                                              ; preds = %424, %418
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
