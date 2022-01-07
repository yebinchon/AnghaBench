; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_callback2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_callback2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32, i32, i32, i32, i32, i32, i32 (i32, i64, i32)* }
%struct.ubsec_q2 = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.cryptkop = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ubsec_ctx_keyop = type { i32 }
%struct.ubsec_q2_rng = type { i32, %struct.TYPE_7__ }
%struct.ubsec_q2_modexp = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_7__, %struct.cryptkop* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ubsec_q2_rsapriv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_7__, %struct.cryptkop* }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@UBSEC_RNG_BUFSIZ = common dso_local global i32 0, align 4
@ubsec_rng = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@UBS_FLAGS_HWNORM = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@UBS_RSAPRIV_PAR_MSGOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown ctx op: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_softc*, %struct.ubsec_q2*)* @ubsec_callback2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_callback2(%struct.ubsec_softc* %0, %struct.ubsec_q2* %1) #0 {
  %3 = alloca %struct.ubsec_softc*, align 8
  %4 = alloca %struct.ubsec_q2*, align 8
  %5 = alloca %struct.cryptkop*, align 8
  %6 = alloca %struct.ubsec_ctx_keyop*, align 8
  %7 = alloca %struct.ubsec_q2_rng*, align 8
  %8 = alloca %struct.ubsec_q2_modexp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubsec_q2_rsapriv*, align 8
  %12 = alloca i32, align 4
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %3, align 8
  store %struct.ubsec_q2* %1, %struct.ubsec_q2** %4, align 8
  %13 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %14 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ubsec_ctx_keyop*
  store %struct.ubsec_ctx_keyop* %17, %struct.ubsec_ctx_keyop** %6, align 8
  %18 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %19 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %18, i32 0, i32 1
  %20 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %21 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %19, i32 %20)
  %22 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %23 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %301 [
    i32 129, label %25
    i32 130, label %57
    i32 128, label %228
  ]

25:                                               ; preds = %2
  %26 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %27 = bitcast %struct.ubsec_q2* %26 to %struct.ubsec_q2_rng*
  store %struct.ubsec_q2_rng* %27, %struct.ubsec_q2_rng** %7, align 8
  %28 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %7, align 8
  %29 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %28, i32 0, i32 1
  %30 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %31 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %29, i32 %30)
  %32 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %32, i32 0, i32 6
  %34 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %33, align 8
  %35 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %7, align 8
  %39 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @UBSEC_RNG_BUFSIZ, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 %34(i32 %37, i64 %41, i32 %45)
  %47 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %7, align 8
  %48 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %49, i32 0, i32 4
  %51 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ubsec_rng, align 4
  %55 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %56 = call i32 @callout_reset(i32* %50, i32 %53, i32 %54, %struct.ubsec_softc* %55)
  br label %310

57:                                               ; preds = %2
  %58 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %59 = bitcast %struct.ubsec_q2* %58 to %struct.ubsec_q2_modexp*
  store %struct.ubsec_q2_modexp* %59, %struct.ubsec_q2_modexp** %8, align 8
  %60 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %61 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %60, i32 0, i32 8
  %62 = load %struct.cryptkop*, %struct.cryptkop** %61, align 8
  store %struct.cryptkop* %62, %struct.cryptkop** %5, align 8
  %63 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %64 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 7
  %67 = sdiv i32 %66, 8
  store i32 %67, i32* %9, align 4
  %68 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %69 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %72 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 7
  %78 = sdiv i32 %77, 8
  store i32 %78, i32* %10, align 4
  %79 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %80 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %79, i32 0, i32 2
  %81 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %82 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %80, i32 %81)
  %83 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %84 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %83, i32 0, i32 3
  %85 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %86 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %84, i32 %85)
  %87 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %88 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %87, i32 0, i32 1
  %89 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %90 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %88, i32 %89)
  %91 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %92 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %91, i32 0, i32 7
  %93 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %94 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %57
  %99 = load i32, i32* @E2BIG, align 4
  %100 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %101 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %181

102:                                              ; preds = %57
  %103 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @UBS_FLAGS_HWNORM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %102
  %110 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %111 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %114 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %120 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %123 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 7
  %129 = sdiv i32 %128, 8
  %130 = call i32 @bzero(i64 %118, i32 %129)
  %131 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %132 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %136 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %139 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %145 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 7
  %148 = sdiv i32 %147, 8
  %149 = call i32 @bcopy(i64 %134, i64 %143, i32 %148)
  br label %180

150:                                              ; preds = %102
  %151 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %152 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %155 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %159 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %162 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %161, i32 0, i32 1
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %165 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %171 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %174 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ubsec_kshift_l(i32 %153, i64 %157, i32 %160, i64 %169, i32 %178)
  br label %180

180:                                              ; preds = %150, %109
  br label %181

181:                                              ; preds = %180, %98
  %182 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %183 = call i32 @crypto_kdone(%struct.cryptkop* %182)
  %184 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %185 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %189 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @bzero(i64 %187, i32 %191)
  %193 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %194 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %198 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @bzero(i64 %196, i32 %200)
  %202 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %203 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %207 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @bzero(i64 %205, i32 %209)
  %211 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %212 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %217 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @bzero(i64 %215, i32 %220)
  %222 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %223 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %222, i32 0, i32 2
  %224 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %225 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %224, i32 0, i32 0
  %226 = load i32, i32* @q_next, align 4
  %227 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %223, %struct.TYPE_8__* %225, i32 %226)
  br label %310

228:                                              ; preds = %2
  %229 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %230 = bitcast %struct.ubsec_q2* %229 to %struct.ubsec_q2_rsapriv*
  store %struct.ubsec_q2_rsapriv* %230, %struct.ubsec_q2_rsapriv** %11, align 8
  %231 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %232 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %231, i32 0, i32 3
  %233 = load %struct.cryptkop*, %struct.cryptkop** %232, align 8
  store %struct.cryptkop* %233, %struct.cryptkop** %5, align 8
  %234 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %235 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %234, i32 0, i32 2
  %236 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %237 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %235, i32 %236)
  %238 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %239 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %238, i32 0, i32 1
  %240 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %241 = call i32 @ubsec_dma_sync(%struct.TYPE_7__* %239, i32 %240)
  %242 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %243 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %242, i32 0, i32 1
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = load i64, i64* @UBS_RSAPRIV_PAR_MSGOUT, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 7
  %250 = sdiv i32 %249, 8
  store i32 %250, i32* %12, align 4
  %251 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %252 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %256 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %255, i32 0, i32 1
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i64, i64* @UBS_RSAPRIV_PAR_MSGOUT, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @bcopy(i64 %254, i64 %261, i32 %262)
  %264 = load %struct.cryptkop*, %struct.cryptkop** %5, align 8
  %265 = call i32 @crypto_kdone(%struct.cryptkop* %264)
  %266 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %267 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %271 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @bzero(i64 %269, i32 %273)
  %275 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %276 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %280 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @bzero(i64 %278, i32 %282)
  %284 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %285 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %290 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @bzero(i64 %288, i32 %293)
  %295 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %296 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %295, i32 0, i32 2
  %297 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %11, align 8
  %298 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %297, i32 0, i32 0
  %299 = load i32, i32* @q_next, align 4
  %300 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %296, %struct.TYPE_8__* %298, i32 %299)
  br label %310

301:                                              ; preds = %2
  %302 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %303 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.ubsec_ctx_keyop*, %struct.ubsec_ctx_keyop** %6, align 8
  %306 = getelementptr inbounds %struct.ubsec_ctx_keyop, %struct.ubsec_ctx_keyop* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @letoh16(i32 %307)
  %309 = call i32 @device_printf(i32 %304, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %301, %228, %181, %25
  ret void
}

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ubsec_softc*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

declare dso_local i32 @ubsec_kshift_l(i32, i64, i32, i64, i32) #1

declare dso_local i32 @crypto_kdone(%struct.cryptkop*) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @letoh16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
