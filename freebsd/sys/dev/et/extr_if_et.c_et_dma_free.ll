; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32*, %struct.et_txstatus_data, %struct.et_txdesc_ring, %struct.et_rxstatus_data, %struct.et_rxstat_ring, %struct.et_rxdesc_ring*, i32*, %struct.et_txbuf_data, i32*, i32*, %struct.et_rxbuf_data*, i32*, i32* }
%struct.et_txstatus_data = type { i32, i32, i32, i32 }
%struct.et_txdesc_ring = type { i32, i32, i32, i32 }
%struct.et_rxstatus_data = type { i32 }
%struct.et_rxstat_ring = type { i32, i32, i32, i32 }
%struct.et_rxdesc_ring = type { i32, i32, i32, i32 }
%struct.et_txbuf_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.et_rxbuf_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@ET_RX_NDESC = common dso_local global i32 0, align 4
@ET_TX_NDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_dma_free(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.et_txdesc_ring*, align 8
  %4 = alloca %struct.et_rxdesc_ring*, align 8
  %5 = alloca %struct.et_txstatus_data*, align 8
  %6 = alloca %struct.et_rxstat_ring*, align 8
  %7 = alloca %struct.et_rxstatus_data*, align 8
  %8 = alloca %struct.et_rxbuf_data*, align 8
  %9 = alloca %struct.et_txbuf_data*, align 8
  %10 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %11 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %12 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %11, i32 0, i32 10
  %13 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %12, align 8
  %14 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %13, i64 0
  store %struct.et_rxbuf_data* %14, %struct.et_rxbuf_data** %8, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %50, %1
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ET_RX_NDESC, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %21 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %19
  %30 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %31 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %30, i32 0, i32 11
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %34 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @bus_dmamap_destroy(i32* %32, i32* %40)
  %42 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %43 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %29, %19
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %15

53:                                               ; preds = %15
  %54 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %55 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %54, i32 0, i32 12
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %60 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %59, i32 0, i32 11
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %63 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %62, i32 0, i32 12
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_dmamap_destroy(i32* %61, i32* %64)
  %66 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %67 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %66, i32 0, i32 12
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %58, %53
  %69 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %70 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %69, i32 0, i32 11
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %75 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %74, i32 0, i32 11
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @bus_dma_tag_destroy(i32* %76)
  %78 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %79 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %78, i32 0, i32 11
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %82 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %81, i32 0, i32 10
  %83 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %82, align 8
  %84 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %83, i64 1
  store %struct.et_rxbuf_data* %84, %struct.et_rxbuf_data** %8, align 8
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %120, %80
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @ET_RX_NDESC, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %85
  %90 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %91 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %89
  %100 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %101 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %104 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @bus_dmamap_destroy(i32* %102, i32* %110)
  %112 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %113 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %99, %89
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %85

123:                                              ; preds = %85
  %124 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %125 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %124, i32 0, i32 9
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %130 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %129, i32 0, i32 8
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %133 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @bus_dmamap_destroy(i32* %131, i32* %134)
  %136 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %137 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %136, i32 0, i32 9
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %128, %123
  %139 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %140 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %139, i32 0, i32 8
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %145 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %144, i32 0, i32 8
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @bus_dma_tag_destroy(i32* %146)
  %148 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %149 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %148, i32 0, i32 8
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %143, %138
  %151 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %152 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %151, i32 0, i32 7
  store %struct.et_txbuf_data* %152, %struct.et_txbuf_data** %9, align 8
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %188, %150
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @ET_TX_NDESC, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %191

157:                                              ; preds = %153
  %158 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %9, align 8
  %159 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %187

167:                                              ; preds = %157
  %168 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %169 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %9, align 8
  %172 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @bus_dmamap_destroy(i32* %170, i32* %178)
  %180 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %9, align 8
  %181 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %167, %157
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %153

191:                                              ; preds = %153
  %192 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %193 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %192, i32 0, i32 6
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %198 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @bus_dma_tag_destroy(i32* %199)
  %201 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %202 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %201, i32 0, i32 6
  store i32* null, i32** %202, align 8
  br label %203

203:                                              ; preds = %196, %191
  %204 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %205 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %204, i32 0, i32 5
  %206 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %205, align 8
  %207 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %206, i64 0
  store %struct.et_rxdesc_ring* %207, %struct.et_rxdesc_ring** %4, align 8
  %208 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %209 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %210 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %209, i32 0, i32 3
  %211 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %212 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %211, i32 0, i32 2
  %213 = bitcast i32* %212 to i8*
  %214 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %215 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %218 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %217, i32 0, i32 0
  %219 = call i32 @et_dma_ring_free(%struct.et_softc* %208, i32* %210, i8* %213, i32 %216, i32* %218)
  %220 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %221 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %220, i32 0, i32 5
  %222 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %221, align 8
  %223 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %222, i64 1
  store %struct.et_rxdesc_ring* %223, %struct.et_rxdesc_ring** %4, align 8
  %224 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %225 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %226 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %225, i32 0, i32 3
  %227 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %228 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %227, i32 0, i32 2
  %229 = bitcast i32* %228 to i8*
  %230 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %231 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %234 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %233, i32 0, i32 0
  %235 = call i32 @et_dma_ring_free(%struct.et_softc* %224, i32* %226, i8* %229, i32 %232, i32* %234)
  %236 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %237 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %236, i32 0, i32 4
  store %struct.et_rxstat_ring* %237, %struct.et_rxstat_ring** %6, align 8
  %238 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %239 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %240 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %239, i32 0, i32 3
  %241 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %242 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %241, i32 0, i32 2
  %243 = bitcast i32* %242 to i8*
  %244 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %245 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %248 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %247, i32 0, i32 0
  %249 = call i32 @et_dma_ring_free(%struct.et_softc* %238, i32* %240, i8* %243, i32 %246, i32* %248)
  %250 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %251 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %250, i32 0, i32 3
  store %struct.et_rxstatus_data* %251, %struct.et_rxstatus_data** %7, align 8
  %252 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %253 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %254 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %253, i32 0, i32 3
  %255 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %256 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %255, i32 0, i32 2
  %257 = bitcast i32* %256 to i8*
  %258 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %259 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %262 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %261, i32 0, i32 0
  %263 = call i32 @et_dma_ring_free(%struct.et_softc* %252, i32* %254, i8* %257, i32 %260, i32* %262)
  %264 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %265 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %264, i32 0, i32 2
  store %struct.et_txdesc_ring* %265, %struct.et_txdesc_ring** %3, align 8
  %266 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %267 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %268 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %267, i32 0, i32 3
  %269 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %270 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %269, i32 0, i32 2
  %271 = bitcast i32* %270 to i8*
  %272 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %273 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %276 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %275, i32 0, i32 0
  %277 = call i32 @et_dma_ring_free(%struct.et_softc* %266, i32* %268, i8* %271, i32 %274, i32* %276)
  %278 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %279 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %278, i32 0, i32 1
  store %struct.et_txstatus_data* %279, %struct.et_txstatus_data** %5, align 8
  %280 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %281 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %282 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %281, i32 0, i32 3
  %283 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %284 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %283, i32 0, i32 2
  %285 = bitcast i32* %284 to i8*
  %286 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %287 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %290 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %289, i32 0, i32 0
  %291 = call i32 @et_dma_ring_free(%struct.et_softc* %280, i32* %282, i8* %285, i32 %288, i32* %290)
  %292 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %293 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %303

296:                                              ; preds = %203
  %297 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %298 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @bus_dma_tag_destroy(i32* %299)
  %301 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %302 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %301, i32 0, i32 0
  store i32* null, i32** %302, align 8
  br label %303

303:                                              ; preds = %296, %203
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @et_dma_ring_free(%struct.et_softc*, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
