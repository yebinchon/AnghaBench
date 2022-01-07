; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i64, i32, i32, i32, i64, i32, i32, i32, i32*, i64, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, %struct.sec_hw_lt* }
%struct.sec_hw_lt = type { i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.sec_hw_desc* }
%struct.sec_hw_desc = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not get crypto driver ID!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SEC Controller lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"SEC Descriptors lock\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"could not allocate I/O memory!\0A\00", align 1
@sec_primary_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@sec_secondary_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@SEC_DESCRIPTORS = common dso_local global i32 0, align 4
@SEC_LT_ENTRIES = common dso_local global i32 0, align 4
@sc_free_desc_get_cnt = common dso_local global i32 0, align 4
@sc_free_desc_put_cnt = common dso_local global i32 0, align 4
@sc_ready_desc_get_cnt = common dso_local global i32 0, align 4
@sc_ready_desc_put_cnt = common dso_local global i32 0, align 4
@sc_queued_desc_get_cnt = common dso_local global i32 0, align 4
@sc_queued_desc_put_cnt = common dso_local global i32 0, align 4
@sc_lt_alloc_cnt = common dso_local global i32 0, align 4
@sc_lt_free_cnt = common dso_local global i32 0, align 4
@SEC_CHANNELS = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_FFLVL_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_FFLVL_S = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_MSTATE_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_MSTATE_S = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_PSTATE_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_PSTATE_S = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_GSTATE_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_GSTATE_S = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_FFLVL_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_FFLVL_S = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_MSTATE_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_MSTATE_S = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_PSTATE_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_PSTATE_S = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_GSTATE_M = common dso_local global i32 0, align 4
@SEC_CHAN_CSR3_GSTATE_S = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_MD5 = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA1 = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_384_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_512_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sec_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sec_softc*, align 8
  %5 = alloca %struct.sec_hw_lt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.sec_softc* @device_get_softc(i32 %8)
  store %struct.sec_softc* %9, %struct.sec_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %12 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %11, i32 0, i32 21
  store i32 %10, i32* %12, align 8
  %13 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %14 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %13, i32 0, i32 20
  store i64 0, i64* %14, align 8
  %15 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %16 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %15, i32 0, i32 19
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %19 = call i64 @crypto_get_driverid(i32 %17, i32 4, i32 %18)
  %20 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %21 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %23 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %439

30:                                               ; preds = %1
  %31 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %32 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %31, i32 0, i32 7
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_nameunit(i32 %33)
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = call i32 @mtx_init(i32* %32, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %38 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %37, i32 0, i32 6
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_nameunit(i32 %39)
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %38, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %44 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %43, i32 0, i32 9
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %48 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %47, i32 0, i32 9
  %49 = load i32, i32* @RF_ACTIVE, align 4
  %50 = call i32* @bus_alloc_resource_any(i32 %45, i32 %46, i64* %48, i32 %49)
  %51 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %52 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %51, i32 0, i32 8
  store i32* %50, i32** %52, align 8
  %53 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %54 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %30
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %431

60:                                               ; preds = %30
  %61 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %62 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @rman_get_bushandle(i32* %63)
  %65 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %66 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %65, i32 0, i32 18
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %69 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rman_get_bustag(i32* %70)
  %72 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %73 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %72, i32 0, i32 18
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %76 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %75, i32 0, i32 1
  store i32 0, i32* %76, align 8
  %77 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %78 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %79 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %78, i32 0, i32 11
  %80 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %81 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %80, i32 0, i32 10
  %82 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %83 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %82, i32 0, i32 1
  %84 = load i32, i32* @sec_primary_intr, align 4
  %85 = call i32 @sec_setup_intr(%struct.sec_softc* %77, i32* %79, i32* %81, i32* %83, i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %60
  br label %421

89:                                               ; preds = %60
  %90 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %91 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %96 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %95, i32 0, i32 3
  store i32 1, i32* %96, align 8
  %97 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %98 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %99 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %98, i32 0, i32 13
  %100 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %101 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %100, i32 0, i32 12
  %102 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %103 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %102, i32 0, i32 3
  %104 = load i32, i32* @sec_secondary_intr, align 4
  %105 = call i32 @sec_setup_intr(%struct.sec_softc* %97, i32* %99, i32* %101, i32* %103, i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %409

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %89
  %111 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %112 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %113 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %112, i32 0, i32 14
  %114 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i32 @sec_alloc_dma_mem(%struct.sec_softc* %111, %struct.TYPE_9__* %113, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %397

122:                                              ; preds = %110
  %123 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %124 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %125 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %124, i32 0, i32 15
  %126 = load i32, i32* @SEC_LT_ENTRIES, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 32
  %130 = trunc i64 %129 to i32
  %131 = call i32 @sec_alloc_dma_mem(%struct.sec_softc* %123, %struct.TYPE_9__* %125, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %393

135:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %171, %135
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %174

140:                                              ; preds = %136
  %141 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %142 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %141, i32 0, i32 14
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.sec_hw_desc*
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %145, i64 %147
  %149 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %150 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %149, i32 0, i32 17
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  store %struct.sec_hw_desc* %148, %struct.sec_hw_desc** %155, align 8
  %156 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %157 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %156, i32 0, i32 14
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = add i64 %159, %162
  %164 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %165 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %164, i32 0, i32 17
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i64 %163, i64* %170, align 8
  br label %171

171:                                              ; preds = %140
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %136

174:                                              ; preds = %136
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %211, %174
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @SEC_LT_ENTRIES, align 4
  %178 = add nsw i32 %177, 1
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %214

180:                                              ; preds = %175
  %181 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %182 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %181, i32 0, i32 15
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to %struct.sec_hw_lt*
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.sec_hw_lt, %struct.sec_hw_lt* %185, i64 %187
  %189 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %190 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %189, i32 0, i32 16
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  store %struct.sec_hw_lt* %188, %struct.sec_hw_lt** %195, align 8
  %196 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %197 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 %201, 32
  %203 = add i64 %199, %202
  %204 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %205 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %204, i32 0, i32 16
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  store i64 %203, i64* %210, align 8
  br label %211

211:                                              ; preds = %180
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %175

214:                                              ; preds = %175
  %215 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %216 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %215, i32 0, i32 16
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = load i32, i32* @SEC_LT_ENTRIES, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load %struct.sec_hw_lt*, %struct.sec_hw_lt** %221, align 8
  store %struct.sec_hw_lt* %222, %struct.sec_hw_lt** %5, align 8
  %223 = load %struct.sec_hw_lt*, %struct.sec_hw_lt** %5, align 8
  %224 = getelementptr inbounds %struct.sec_hw_lt, %struct.sec_hw_lt* %223, i32 0, i32 3
  store i64 0, i64* %224, align 8
  %225 = load %struct.sec_hw_lt*, %struct.sec_hw_lt** %5, align 8
  %226 = getelementptr inbounds %struct.sec_hw_lt, %struct.sec_hw_lt* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  %227 = load %struct.sec_hw_lt*, %struct.sec_hw_lt** %5, align 8
  %228 = getelementptr inbounds %struct.sec_hw_lt, %struct.sec_hw_lt* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %230 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %229, i32 0, i32 16
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.sec_hw_lt*, %struct.sec_hw_lt** %5, align 8
  %236 = getelementptr inbounds %struct.sec_hw_lt, %struct.sec_hw_lt* %235, i32 0, i32 1
  store i64 %234, i64* %236, align 8
  %237 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %238 = load i32, i32* @sc_free_desc_get_cnt, align 4
  %239 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %240 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %237, i32 %238, i32 %239)
  %241 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %242 = load i32, i32* @sc_free_desc_put_cnt, align 4
  %243 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %244 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %241, i32 %242, i32 %243)
  %245 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %246 = load i32, i32* @sc_ready_desc_get_cnt, align 4
  %247 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %248 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %245, i32 %246, i32 %247)
  %249 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %250 = load i32, i32* @sc_ready_desc_put_cnt, align 4
  %251 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %252 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %249, i32 %250, i32 %251)
  %253 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %254 = load i32, i32* @sc_queued_desc_get_cnt, align 4
  %255 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %256 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %253, i32 %254, i32 %255)
  %257 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %258 = load i32, i32* @sc_queued_desc_put_cnt, align 4
  %259 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %260 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %257, i32 %258, i32 %259)
  %261 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %262 = load i32, i32* @sc_lt_alloc_cnt, align 4
  %263 = load i32, i32* @SEC_LT_ENTRIES, align 4
  %264 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %261, i32 %262, i32 %263)
  %265 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %266 = load i32, i32* @sc_lt_free_cnt, align 4
  %267 = load i32, i32* @SEC_LT_ENTRIES, align 4
  %268 = call i32 @SEC_CNT_INIT(%struct.sec_softc* %265, i32 %266, i32 %267)
  %269 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %270 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %269, i32 0, i32 4
  store i64 0, i64* %270, align 8
  store i32 0, i32* %7, align 4
  br label %271

271:                                              ; preds = %283, %214
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* @SEC_CHANNELS, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %286

275:                                              ; preds = %271
  %276 = load i32, i32* %7, align 4
  %277 = call i64 @SEC_INT_CH_ERR(i32 %276)
  %278 = and i64 -1, %277
  %279 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %280 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = or i64 %281, %278
  store i64 %282, i64* %280, align 8
  br label %283

283:                                              ; preds = %275
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  br label %271

286:                                              ; preds = %271
  %287 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %288 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  switch i32 %289, label %326 [
    i32 2, label %290
    i32 3, label %308
  ]

290:                                              ; preds = %286
  %291 = load i32, i32* @SEC_CHAN_CSR2_FFLVL_M, align 4
  %292 = load i32, i32* @SEC_CHAN_CSR2_FFLVL_S, align 4
  %293 = shl i32 %291, %292
  %294 = load i32, i32* @SEC_CHAN_CSR2_MSTATE_M, align 4
  %295 = load i32, i32* @SEC_CHAN_CSR2_MSTATE_S, align 4
  %296 = shl i32 %294, %295
  %297 = or i32 %293, %296
  %298 = load i32, i32* @SEC_CHAN_CSR2_PSTATE_M, align 4
  %299 = load i32, i32* @SEC_CHAN_CSR2_PSTATE_S, align 4
  %300 = shl i32 %298, %299
  %301 = or i32 %297, %300
  %302 = load i32, i32* @SEC_CHAN_CSR2_GSTATE_M, align 4
  %303 = load i32, i32* @SEC_CHAN_CSR2_GSTATE_S, align 4
  %304 = shl i32 %302, %303
  %305 = or i32 %301, %304
  %306 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %307 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %306, i32 0, i32 5
  store i32 %305, i32* %307, align 8
  br label %326

308:                                              ; preds = %286
  %309 = load i32, i32* @SEC_CHAN_CSR3_FFLVL_M, align 4
  %310 = load i32, i32* @SEC_CHAN_CSR3_FFLVL_S, align 4
  %311 = shl i32 %309, %310
  %312 = load i32, i32* @SEC_CHAN_CSR3_MSTATE_M, align 4
  %313 = load i32, i32* @SEC_CHAN_CSR3_MSTATE_S, align 4
  %314 = shl i32 %312, %313
  %315 = or i32 %311, %314
  %316 = load i32, i32* @SEC_CHAN_CSR3_PSTATE_M, align 4
  %317 = load i32, i32* @SEC_CHAN_CSR3_PSTATE_S, align 4
  %318 = shl i32 %316, %317
  %319 = or i32 %315, %318
  %320 = load i32, i32* @SEC_CHAN_CSR3_GSTATE_M, align 4
  %321 = load i32, i32* @SEC_CHAN_CSR3_GSTATE_S, align 4
  %322 = shl i32 %320, %321
  %323 = or i32 %319, %322
  %324 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %325 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %324, i32 0, i32 5
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %286, %308, %290
  %327 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %328 = call i32 @sec_init(%struct.sec_softc* %327)
  store i32 %328, i32* %6, align 4
  %329 = load i32, i32* %6, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  br label %389

332:                                              ; preds = %326
  %333 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %334 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %337 = call i32 @crypto_register(i64 %335, i32 %336, i32 0, i32 0)
  %338 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %339 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %342 = call i32 @crypto_register(i64 %340, i32 %341, i32 0, i32 0)
  %343 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %344 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %347 = call i32 @crypto_register(i64 %345, i32 %346, i32 0, i32 0)
  %348 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %349 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i32, i32* @CRYPTO_MD5, align 4
  %352 = call i32 @crypto_register(i64 %350, i32 %351, i32 0, i32 0)
  %353 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %354 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %357 = call i32 @crypto_register(i64 %355, i32 %356, i32 0, i32 0)
  %358 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %359 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* @CRYPTO_SHA1, align 4
  %362 = call i32 @crypto_register(i64 %360, i32 %361, i32 0, i32 0)
  %363 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %364 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %367 = call i32 @crypto_register(i64 %365, i32 %366, i32 0, i32 0)
  %368 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %369 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i32, i32* @CRYPTO_SHA2_256_HMAC, align 4
  %372 = call i32 @crypto_register(i64 %370, i32 %371, i32 0, i32 0)
  %373 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %374 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = icmp sge i32 %375, 3
  br i1 %376, label %377, label %388

377:                                              ; preds = %332
  %378 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %379 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i32, i32* @CRYPTO_SHA2_384_HMAC, align 4
  %382 = call i32 @crypto_register(i64 %380, i32 %381, i32 0, i32 0)
  %383 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %384 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i32, i32* @CRYPTO_SHA2_512_HMAC, align 4
  %387 = call i32 @crypto_register(i64 %385, i32 %386, i32 0, i32 0)
  br label %388

388:                                              ; preds = %377, %332
  store i32 0, i32* %2, align 4
  br label %439

389:                                              ; preds = %331
  %390 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %391 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %390, i32 0, i32 15
  %392 = call i32 @sec_free_dma_mem(%struct.TYPE_9__* %391)
  br label %393

393:                                              ; preds = %389, %134
  %394 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %395 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %394, i32 0, i32 14
  %396 = call i32 @sec_free_dma_mem(%struct.TYPE_9__* %395)
  br label %397

397:                                              ; preds = %393, %121
  %398 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %399 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %400 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %399, i32 0, i32 13
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %403 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %402, i32 0, i32 12
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %406 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @sec_release_intr(%struct.sec_softc* %398, i32 %401, i32 %404, i32 %407, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %409

409:                                              ; preds = %397, %108
  %410 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %411 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %412 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %411, i32 0, i32 11
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %415 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %414, i32 0, i32 10
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %418 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @sec_release_intr(%struct.sec_softc* %410, i32 %413, i32 %416, i32 %419, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %421

421:                                              ; preds = %409, %88
  %422 = load i32, i32* %3, align 4
  %423 = load i32, i32* @SYS_RES_MEMORY, align 4
  %424 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %425 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %424, i32 0, i32 9
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %428 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %427, i32 0, i32 8
  %429 = load i32*, i32** %428, align 8
  %430 = call i32 @bus_release_resource(i32 %422, i32 %423, i64 %426, i32* %429)
  br label %431

431:                                              ; preds = %421, %57
  %432 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %433 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %432, i32 0, i32 7
  %434 = call i32 @mtx_destroy(i32* %433)
  %435 = load %struct.sec_softc*, %struct.sec_softc** %4, align 8
  %436 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %435, i32 0, i32 6
  %437 = call i32 @mtx_destroy(i32* %436)
  %438 = load i32, i32* @ENXIO, align 4
  store i32 %438, i32* %2, align 4
  br label %439

439:                                              ; preds = %431, %388, %26
  %440 = load i32, i32* %2, align 4
  ret i32 %440
}

declare dso_local %struct.sec_softc* @device_get_softc(i32) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @sec_setup_intr(%struct.sec_softc*, i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @sec_alloc_dma_mem(%struct.sec_softc*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @SEC_CNT_INIT(%struct.sec_softc*, i32, i32) #1

declare dso_local i64 @SEC_INT_CH_ERR(i32) #1

declare dso_local i32 @sec_init(%struct.sec_softc*) #1

declare dso_local i32 @crypto_register(i64, i32, i32, i32) #1

declare dso_local i32 @sec_free_dma_mem(%struct.TYPE_9__*) #1

declare dso_local i32 @sec_release_intr(%struct.sec_softc*, i32, i32, i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
