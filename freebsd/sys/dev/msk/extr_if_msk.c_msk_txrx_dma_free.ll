; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_txrx_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_txrx_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, %struct.msk_rxdesc*, i32*, %struct.msk_txdesc*, i32*, i32, i32*, i32 }
%struct.msk_rxdesc = type { i32* }
%struct.msk_txdesc = type { i32* }
%struct.TYPE_3__ = type { i64, i32*, i64, i32* }

@MSK_TX_RING_CNT = common dso_local global i32 0, align 4
@MSK_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_txrx_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_txrx_dma_free(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_txdesc*, align 8
  %4 = alloca %struct.msk_rxdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %6 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %7 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %62

11:                                               ; preds = %1
  %12 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %13 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %19 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %23 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32* %21, i32 %25)
  br label %27

27:                                               ; preds = %17, %11
  %28 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %29 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %35 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %39 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %43 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bus_dmamem_free(i32* %37, i32* %41, i32 %45)
  br label %47

47:                                               ; preds = %33, %27
  %48 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %49 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %52 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %55 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @bus_dma_tag_destroy(i32* %57)
  %59 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %60 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 8
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %47, %1
  %63 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %64 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %119

68:                                               ; preds = %62
  %69 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %70 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %76 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %80 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bus_dmamap_unload(i32* %78, i32 %82)
  br label %84

84:                                               ; preds = %74, %68
  %85 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %86 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %92 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %96 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %100 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bus_dmamem_free(i32* %94, i32* %98, i32 %102)
  br label %104

104:                                              ; preds = %90, %84
  %105 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %106 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32* null, i32** %107, align 8
  %108 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %109 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %112 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @bus_dma_tag_destroy(i32* %114)
  %116 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %117 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 6
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %104, %62
  %120 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %121 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %166

125:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %154, %125
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @MSK_TX_RING_CNT, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  %131 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %132 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  %134 = load %struct.msk_txdesc*, %struct.msk_txdesc** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %134, i64 %136
  store %struct.msk_txdesc* %137, %struct.msk_txdesc** %3, align 8
  %138 = load %struct.msk_txdesc*, %struct.msk_txdesc** %3, align 8
  %139 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %130
  %143 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %144 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.msk_txdesc*, %struct.msk_txdesc** %3, align 8
  %148 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @bus_dmamap_destroy(i32* %146, i32* %149)
  %151 = load %struct.msk_txdesc*, %struct.msk_txdesc** %3, align 8
  %152 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %151, i32 0, i32 0
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %142, %130
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %126

157:                                              ; preds = %126
  %158 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %159 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @bus_dma_tag_destroy(i32* %161)
  %163 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %164 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %157, %119
  %167 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %168 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %232

172:                                              ; preds = %166
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %201, %172
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %173
  %178 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %179 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %181, i64 %183
  store %struct.msk_rxdesc* %184, %struct.msk_rxdesc** %4, align 8
  %185 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %4, align 8
  %186 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %177
  %190 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %191 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %4, align 8
  %195 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @bus_dmamap_destroy(i32* %193, i32* %196)
  %198 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %4, align 8
  %199 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %198, i32 0, i32 0
  store i32* null, i32** %199, align 8
  br label %200

200:                                              ; preds = %189, %177
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  br label %173

204:                                              ; preds = %173
  %205 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %206 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %212 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %216 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @bus_dmamap_destroy(i32* %214, i32* %218)
  %220 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %221 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  store i32* null, i32** %222, align 8
  br label %223

223:                                              ; preds = %210, %204
  %224 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %225 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @bus_dma_tag_destroy(i32* %227)
  %229 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %230 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  store i32* null, i32** %231, align 8
  br label %232

232:                                              ; preds = %223, %166
  %233 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %234 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %232
  %239 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %240 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @bus_dma_tag_destroy(i32* %242)
  %244 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %245 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  store i32* null, i32** %246, align 8
  br label %247

247:                                              ; preds = %238, %232
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
