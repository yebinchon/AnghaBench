; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.ubsec_softc = type { i32, i32, i32 }
%struct.ubsec_q = type { i64, i64, i32, i32*, i32*, %struct.ubsec_dma*, i64 }
%struct.ubsec_dma = type { %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.cryptop = type { i32, i64, %struct.cryptodesc*, i32 }
%struct.cryptodesc = type { i64, i32, %struct.cryptodesc*, i64, i64 }
%struct.ubsec_session = type { i32, i64 }

@ubsecstats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@UBSEC_QFLAGS_COPYOUTIV = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_3DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_MD5_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@q_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_softc*, %struct.ubsec_q*)* @ubsec_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_callback(%struct.ubsec_softc* %0, %struct.ubsec_q* %1) #0 {
  %3 = alloca %struct.ubsec_softc*, align 8
  %4 = alloca %struct.ubsec_q*, align 8
  %5 = alloca %struct.cryptop*, align 8
  %6 = alloca %struct.ubsec_session*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca %struct.ubsec_dma*, align 8
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %3, align 8
  store %struct.ubsec_q* %1, %struct.ubsec_q** %4, align 8
  %9 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %10 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cryptop*
  store %struct.cryptop* %12, %struct.cryptop** %5, align 8
  %13 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %14 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %13, i32 0, i32 5
  %15 = load %struct.ubsec_dma*, %struct.ubsec_dma** %14, align 8
  store %struct.ubsec_dma* %15, %struct.ubsec_dma** %8, align 8
  %16 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %17 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ubsec_session* @crypto_get_driver_session(i32 %18)
  store %struct.ubsec_session* %19, %struct.ubsec_session** %6, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ubsecstats, i32 0, i32 1), align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ubsecstats, i32 0, i32 1), align 4
  %22 = load %struct.ubsec_dma*, %struct.ubsec_dma** %8, align 8
  %23 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ubsecstats, i32 0, i32 0), align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ubsecstats, i32 0, i32 0), align 4
  %30 = load %struct.ubsec_dma*, %struct.ubsec_dma** %8, align 8
  %31 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %30, i32 0, i32 1
  %32 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %33 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ubsec_dma_sync(%struct.TYPE_6__* %31, i32 %34)
  %36 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %37 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %2
  %41 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %42 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %45 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %43, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %40
  %49 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %53 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %56 = call i32 @bus_dmamap_sync(i32 %51, i32* %54, i32 %55)
  %57 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %61 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_dmamap_unload(i32 %59, i32* %62)
  %64 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %68 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @bus_dmamap_destroy(i32 %66, i32* %69)
  br label %71

71:                                               ; preds = %48, %40, %2
  %72 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %76 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %79 = call i32 @bus_dmamap_sync(i32 %74, i32* %77, i32 %78)
  %80 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %84 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bus_dmamap_unload(i32 %82, i32* %85)
  %87 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %91 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @bus_dmamap_destroy(i32 %89, i32* %92)
  %94 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %95 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %71
  %101 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %102 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %105 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %100
  %109 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %110 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @m_freem(i64 %111)
  %113 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %114 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %117 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %108, %100, %71
  %119 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %120 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @UBSEC_QFLAGS_COPYOUTIV, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %169

125:                                              ; preds = %118
  %126 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %127 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %126, i32 0, i32 2
  %128 = load %struct.cryptodesc*, %struct.cryptodesc** %127, align 8
  store %struct.cryptodesc* %128, %struct.cryptodesc** %7, align 8
  br label %129

129:                                              ; preds = %164, %125
  %130 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %131 = icmp ne %struct.cryptodesc* %130, null
  br i1 %131, label %132, label %168

132:                                              ; preds = %129
  %133 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %134 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CRYPTO_DES_CBC, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %140 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CRYPTO_3DES_CBC, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %164

145:                                              ; preds = %138, %132
  %146 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %147 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %150 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %153 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %156 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %154, %157
  %159 = sub nsw i64 %158, 8
  %160 = load %struct.ubsec_session*, %struct.ubsec_session** %6, align 8
  %161 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @crypto_copydata(i32 %148, i64 %151, i64 %159, i32 8, i64 %162)
  br label %168

164:                                              ; preds = %144
  %165 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %166 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %165, i32 0, i32 2
  %167 = load %struct.cryptodesc*, %struct.cryptodesc** %166, align 8
  store %struct.cryptodesc* %167, %struct.cryptodesc** %7, align 8
  br label %129

168:                                              ; preds = %145, %129
  br label %169

169:                                              ; preds = %168, %118
  %170 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %171 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %170, i32 0, i32 2
  %172 = load %struct.cryptodesc*, %struct.cryptodesc** %171, align 8
  store %struct.cryptodesc* %172, %struct.cryptodesc** %7, align 8
  br label %173

173:                                              ; preds = %208, %169
  %174 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %175 = icmp ne %struct.cryptodesc* %174, null
  br i1 %175, label %176, label %212

176:                                              ; preds = %173
  %177 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %178 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %184 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %208

189:                                              ; preds = %182, %176
  %190 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %191 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %194 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %197 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ubsec_session*, %struct.ubsec_session** %6, align 8
  %200 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ubsec_dma*, %struct.ubsec_dma** %8, align 8
  %203 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @crypto_copyback(i32 %192, i64 %195, i32 %198, i32 %201, i64 %206)
  br label %212

208:                                              ; preds = %188
  %209 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %210 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %209, i32 0, i32 2
  %211 = load %struct.cryptodesc*, %struct.cryptodesc** %210, align 8
  store %struct.cryptodesc* %211, %struct.cryptodesc** %7, align 8
  br label %173

212:                                              ; preds = %189, %173
  %213 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %214 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %213, i32 0, i32 0
  %215 = call i32 @mtx_lock(i32* %214)
  %216 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %217 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %216, i32 0, i32 1
  %218 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %219 = load i32, i32* @q_next, align 4
  %220 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %217, %struct.ubsec_q* %218, i32 %219)
  %221 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %222 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %221, i32 0, i32 0
  %223 = call i32 @mtx_unlock(i32* %222)
  %224 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %225 = call i32 @crypto_done(%struct.cryptop* %224)
  ret void
}

declare dso_local %struct.ubsec_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @m_freem(i64) #1

declare dso_local i32 @crypto_copydata(i32, i64, i64, i32, i64) #1

declare dso_local i32 @crypto_copyback(i32, i64, i32, i32, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.ubsec_q*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
