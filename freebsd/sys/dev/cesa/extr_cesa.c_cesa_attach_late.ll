; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_attach_late.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_attach_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_5__*, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i64, %struct.cesa_sa_data*, i64, %struct.cesa_sa_hdesc*, i64, %struct.cesa_tdma_hdesc* }
%struct.cesa_sa_data = type { i32 }
%struct.cesa_sa_hdesc = type { i32 }
%struct.cesa_tdma_hdesc = type { i32 }

@CPU_PM_CTRL_CRYPTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not powered on\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CESA_ICR_TPERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"CESA Shared Data\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"CESA TDMA Descriptors Pool\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"CESA SA Descriptors Pool\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"CESA Requests Pool\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"CESA Sessions Pool\00", align 1
@cesa_res_spec = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"marvell,armada-38x-crypto\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"could not setup SRAM\0A\00", align 1
@RES_CESA_IRQ = common dso_local global i64 0, align 8
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@cesa_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"could not setup engine completion irq\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@CESA_MAX_REQUEST_SIZE = common dso_local global i32 0, align 4
@CESA_MAX_FRAGMENTS = common dso_local global i32 0, align 4
@CESA_TDMA_DESCRIPTORS = common dso_local global i32 0, align 4
@ctd_stq = common dso_local global i32 0, align 4
@CESA_SA_DESCRIPTORS = common dso_local global i32 0, align 4
@csd_stq = common dso_local global i32 0, align 4
@CESA_REQUESTS = common dso_local global i32 0, align 4
@cr_stq = common dso_local global i32 0, align 4
@CESA_TDMA_CR_DBL128 = common dso_local global i32 0, align 4
@CESA_TDMA_CR_SBL128 = common dso_local global i32 0, align 4
@CESA_TDMA_CR_ORDEN = common dso_local global i32 0, align 4
@CESA_TDMA_CR_NBS = common dso_local global i32 0, align 4
@CESA_TDMA_CR_ENABLE = common dso_local global i32 0, align 4
@CESA_TDMA_NUM_OUTSTAND = common dso_local global i32 0, align 4
@CESA_TDMA_CR = common dso_local global i32 0, align 4
@CESA_SA_DPR = common dso_local global i32 0, align 4
@CESA_SA_CR = common dso_local global i32 0, align 4
@CESA_SA_CR_ACTIVATE_TDMA = common dso_local global i32 0, align 4
@CESA_SA_CR_WAIT_FOR_TDMA = common dso_local global i32 0, align 4
@CESA_SA_CR_MULTI_MODE = common dso_local global i32 0, align 4
@CESA_ICR = common dso_local global i32 0, align 4
@CESA_ICM = common dso_local global i32 0, align 4
@CESA_ICM_ACCTDMA = common dso_local global i32 0, align 4
@CESA_TDMA_ECR = common dso_local global i32 0, align 4
@CESA_TDMA_EMR = common dso_local global i32 0, align 4
@CESA_TDMA_EMR_MISS = common dso_local global i32 0, align 4
@CESA_TDMA_EMR_DOUBLE_HIT = common dso_local global i32 0, align 4
@CESA_TDMA_EMR_BOTH_HIT = common dso_local global i32 0, align 4
@CESA_TDMA_EMR_DATA_ERROR = common dso_local global i32 0, align 4
@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"could not get crypto driver id\0A\00", align 1
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_MD5 = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA1 = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cesa_attach_late to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_attach_late(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cesa_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.cesa_softc* @device_get_softc(i32 %10)
  store %struct.cesa_softc* %11, %struct.cesa_softc** %4, align 8
  %12 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %13 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %12, i32 0, i32 26
  store i64 0, i64* %13, align 8
  %14 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %14, i32 0, i32 25
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %18 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %17, i32 0, i32 24
  store i32 %16, i32* %18, align 4
  %19 = call i32 @soc_id(i32* %5, i32* %6)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %49 [
    i32 134, label %21
    i32 133, label %21
    i32 130, label %33
    i32 131, label %33
    i32 132, label %33
    i32 129, label %36
    i32 128, label %36
  ]

21:                                               ; preds = %1, %1
  %22 = load i32, i32* @CPU_PM_CTRL_CRYPTO, align 4
  %23 = call i32 @soc_power_ctrl_get(i32 %22)
  %24 = load i32, i32* @CPU_PM_CTRL_CRYPTO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %619

30:                                               ; preds = %21
  %31 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %32 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %51

33:                                               ; preds = %1, %1, %1
  %34 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %35 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %51

36:                                               ; preds = %1, %1
  %37 = load i32, i32* @CPU_PM_CTRL_CRYPTO, align 4
  %38 = call i32 @soc_power_ctrl_get(i32 %37)
  %39 = load i32, i32* @CPU_PM_CTRL_CRYPTO, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %619

45:                                               ; preds = %36
  %46 = load i32, i32* @CESA_ICR_TPERR, align 4
  %47 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %48 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %51

49:                                               ; preds = %1
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %2, align 4
  br label %619

51:                                               ; preds = %45, %33, %30
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %54 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %56 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_get_nameunit(i32 %57)
  %59 = load i32, i32* @MTX_DEF, align 4
  %60 = call i32 @mtx_init(i32* %56, i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %62 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %61, i32 0, i32 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_get_nameunit(i32 %63)
  %65 = load i32, i32* @MTX_DEF, align 4
  %66 = call i32 @mtx_init(i32* %62, i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %68 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %67, i32 0, i32 5
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_get_nameunit(i32 %69)
  %71 = load i32, i32* @MTX_DEF, align 4
  %72 = call i32 @mtx_init(i32* %68, i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %74 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %73, i32 0, i32 6
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @device_get_nameunit(i32 %75)
  %77 = load i32, i32* @MTX_DEF, align 4
  %78 = call i32 @mtx_init(i32* %74, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %80 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %79, i32 0, i32 7
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @device_get_nameunit(i32 %81)
  %83 = load i32, i32* @MTX_DEF, align 4
  %84 = call i32 @mtx_init(i32* %80, i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @cesa_res_spec, align 4
  %87 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %88 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_alloc_resources(i32 %85, i32 %86, i32* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %51
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %602

96:                                               ; preds = %51
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @ofw_bus_is_compatible(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %102 = call i32 @cesa_setup_sram(%struct.cesa_softc* %101)
  store i32 %102, i32* %8, align 4
  br label %106

103:                                              ; preds = %96
  %104 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %105 = call i32 @cesa_setup_sram_armada(%struct.cesa_softc* %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %595

112:                                              ; preds = %106
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %115 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %114, i32 0, i32 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @RES_CESA_IRQ, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @INTR_TYPE_NET, align 4
  %121 = load i32, i32* @INTR_MPSAFE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @cesa_intr, align 4
  %124 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %125 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %126 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %125, i32 0, i32 11
  %127 = call i32 @bus_setup_intr(i32 %113, i32 %119, i32 %122, i32* null, i32 %123, %struct.cesa_softc* %124, i32* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %112
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @device_printf(i32 %131, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  br label %571

133:                                              ; preds = %112
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @bus_get_dma_tag(i32 %134)
  %136 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %137 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %138 = load i32, i32* @CESA_MAX_REQUEST_SIZE, align 4
  %139 = load i32, i32* @CESA_MAX_FRAGMENTS, align 4
  %140 = load i32, i32* @CESA_MAX_REQUEST_SIZE, align 4
  %141 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %142 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %141, i32 0, i32 12
  %143 = call i32 @bus_dma_tag_create(i32 %135, i32 1, i32 0, i32 %136, i32 %137, i32* null, i32* null, i32 %138, i32 %139, i32 %140, i32 0, i32* null, i32* null, i32* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %559

147:                                              ; preds = %133
  %148 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %149 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %150 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %149, i32 0, i32 13
  %151 = load i32, i32* @CESA_TDMA_DESCRIPTORS, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = call i32 @cesa_alloc_dma_mem(%struct.cesa_softc* %148, %struct.TYPE_4__* %150, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %554

159:                                              ; preds = %147
  %160 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %161 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %160, i32 0, i32 23
  %162 = call i32 @STAILQ_INIT(i32* %161)
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %208, %159
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @CESA_TDMA_DESCRIPTORS, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %211

167:                                              ; preds = %163
  %168 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %169 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %168, i32 0, i32 13
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to %struct.cesa_tdma_hdesc*
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.cesa_tdma_hdesc, %struct.cesa_tdma_hdesc* %172, i64 %174
  %176 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %177 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %176, i32 0, i32 22
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 6
  store %struct.cesa_tdma_hdesc* %175, %struct.cesa_tdma_hdesc** %182, align 8
  %183 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %184 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %183, i32 0, i32 13
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 4
  %190 = add i64 %186, %189
  %191 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %192 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %191, i32 0, i32 22
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 5
  store i64 %190, i64* %197, align 8
  %198 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %199 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %198, i32 0, i32 23
  %200 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %201 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %200, i32 0, i32 22
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = load i32, i32* @ctd_stq, align 4
  %207 = call i32 @STAILQ_INSERT_TAIL(i32* %199, %struct.TYPE_5__* %205, i32 %206)
  br label %208

208:                                              ; preds = %167
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %163

211:                                              ; preds = %163
  %212 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %213 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %214 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %213, i32 0, i32 14
  %215 = load i32, i32* @CESA_SA_DESCRIPTORS, align 4
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  %218 = trunc i64 %217 to i32
  %219 = call i32 @cesa_alloc_dma_mem(%struct.cesa_softc* %212, %struct.TYPE_4__* %214, i32 %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  br label %550

223:                                              ; preds = %211
  %224 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %225 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %224, i32 0, i32 21
  %226 = call i32 @STAILQ_INIT(i32* %225)
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %272, %223
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @CESA_SA_DESCRIPTORS, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %275

231:                                              ; preds = %227
  %232 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %233 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %232, i32 0, i32 14
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to %struct.cesa_sa_hdesc*
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.cesa_sa_hdesc, %struct.cesa_sa_hdesc* %236, i64 %238
  %240 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %241 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %240, i32 0, i32 20
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 4
  store %struct.cesa_sa_hdesc* %239, %struct.cesa_sa_hdesc** %246, align 8
  %247 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %248 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %247, i32 0, i32 14
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = mul i64 %252, 4
  %254 = add i64 %250, %253
  %255 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %256 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %255, i32 0, i32 20
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 3
  store i64 %254, i64* %261, align 8
  %262 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %263 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %262, i32 0, i32 21
  %264 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %265 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %264, i32 0, i32 20
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %268
  %270 = load i32, i32* @csd_stq, align 4
  %271 = call i32 @STAILQ_INSERT_TAIL(i32* %263, %struct.TYPE_5__* %269, i32 %270)
  br label %272

272:                                              ; preds = %231
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %9, align 4
  br label %227

275:                                              ; preds = %227
  %276 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %277 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %278 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %277, i32 0, i32 15
  %279 = load i32, i32* @CESA_REQUESTS, align 4
  %280 = sext i32 %279 to i64
  %281 = mul i64 %280, 4
  %282 = trunc i64 %281 to i32
  %283 = call i32 @cesa_alloc_dma_mem(%struct.cesa_softc* %276, %struct.TYPE_4__* %278, i32 %282)
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* %8, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %275
  br label %546

287:                                              ; preds = %275
  %288 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %289 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %288, i32 0, i32 17
  %290 = call i32 @STAILQ_INIT(i32* %289)
  %291 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %292 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %291, i32 0, i32 19
  %293 = call i32 @STAILQ_INIT(i32* %292)
  %294 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %295 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %294, i32 0, i32 18
  %296 = call i32 @STAILQ_INIT(i32* %295)
  store i32 0, i32* %9, align 4
  br label %297

297:                                              ; preds = %380, %287
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* @CESA_REQUESTS, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %383

301:                                              ; preds = %297
  %302 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %303 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %302, i32 0, i32 15
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = inttoptr i64 %305 to %struct.cesa_sa_data*
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.cesa_sa_data, %struct.cesa_sa_data* %306, i64 %308
  %310 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %311 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %310, i32 0, i32 16
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %311, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 2
  store %struct.cesa_sa_data* %309, %struct.cesa_sa_data** %316, align 8
  %317 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %318 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %317, i32 0, i32 15
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = mul i64 %322, 4
  %324 = add i64 %320, %323
  %325 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %326 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %325, i32 0, i32 16
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %326, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  store i64 %324, i64* %331, align 8
  %332 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %333 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %332, i32 0, i32 12
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %336 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %335, i32 0, i32 16
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 0
  %342 = call i32 @bus_dmamap_create(i32 %334, i32 0, i32* %341)
  store i32 %342, i32* %8, align 4
  %343 = load i32, i32* %8, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %369

345:                                              ; preds = %301
  %346 = load i32, i32* %9, align 4
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %369

348:                                              ; preds = %345
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, -1
  store i32 %350, i32* %9, align 4
  br label %351

351:                                              ; preds = %364, %348
  %352 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %353 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %352, i32 0, i32 12
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %356 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %355, i32 0, i32 16
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %356, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @bus_dmamap_destroy(i32 %354, i32 %362)
  br label %364

364:                                              ; preds = %351
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* %9, align 4
  %367 = icmp ne i32 %365, 0
  br i1 %367, label %351, label %368

368:                                              ; preds = %364
  br label %542

369:                                              ; preds = %345, %301
  %370 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %371 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %370, i32 0, i32 17
  %372 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %373 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %372, i32 0, i32 16
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %373, align 8
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i64 %376
  %378 = load i32, i32* @cr_stq, align 4
  %379 = call i32 @STAILQ_INSERT_TAIL(i32* %371, %struct.TYPE_5__* %377, i32 %378)
  br label %380

380:                                              ; preds = %369
  %381 = load i32, i32* %9, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %9, align 4
  br label %297

383:                                              ; preds = %297
  %384 = load i32, i32* @CESA_TDMA_CR_DBL128, align 4
  %385 = load i32, i32* @CESA_TDMA_CR_SBL128, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @CESA_TDMA_CR_ORDEN, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @CESA_TDMA_CR_NBS, align 4
  %390 = or i32 %388, %389
  %391 = load i32, i32* @CESA_TDMA_CR_ENABLE, align 4
  %392 = or i32 %390, %391
  store i32 %392, i32* %7, align 4
  %393 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %394 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 130
  br i1 %396, label %407, label %397

397:                                              ; preds = %383
  %398 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %399 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, 131
  br i1 %401, label %407, label %402

402:                                              ; preds = %397
  %403 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %404 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %405, 132
  br i1 %406, label %407, label %411

407:                                              ; preds = %402, %397, %383
  %408 = load i32, i32* @CESA_TDMA_NUM_OUTSTAND, align 4
  %409 = load i32, i32* %7, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %7, align 4
  br label %411

411:                                              ; preds = %407, %402
  %412 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %413 = load i32, i32* @CESA_TDMA_CR, align 4
  %414 = load i32, i32* %7, align 4
  %415 = call i32 @CESA_TDMA_WRITE(%struct.cesa_softc* %412, i32 %413, i32 %414)
  %416 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %417 = load i32, i32* @CESA_SA_DPR, align 4
  %418 = call i32 @CESA_REG_WRITE(%struct.cesa_softc* %416, i32 %417, i32 0)
  %419 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %420 = load i32, i32* @CESA_SA_CR, align 4
  %421 = load i32, i32* @CESA_SA_CR_ACTIVATE_TDMA, align 4
  %422 = load i32, i32* @CESA_SA_CR_WAIT_FOR_TDMA, align 4
  %423 = or i32 %421, %422
  %424 = load i32, i32* @CESA_SA_CR_MULTI_MODE, align 4
  %425 = or i32 %423, %424
  %426 = call i32 @CESA_REG_WRITE(%struct.cesa_softc* %419, i32 %420, i32 %425)
  %427 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %428 = load i32, i32* @CESA_ICR, align 4
  %429 = call i32 @CESA_REG_WRITE(%struct.cesa_softc* %427, i32 %428, i32 0)
  %430 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %431 = load i32, i32* @CESA_ICM, align 4
  %432 = load i32, i32* @CESA_ICM_ACCTDMA, align 4
  %433 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %434 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = or i32 %432, %435
  %437 = call i32 @CESA_REG_WRITE(%struct.cesa_softc* %430, i32 %431, i32 %436)
  %438 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %439 = load i32, i32* @CESA_TDMA_ECR, align 4
  %440 = call i32 @CESA_TDMA_WRITE(%struct.cesa_softc* %438, i32 %439, i32 0)
  %441 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %442 = load i32, i32* @CESA_TDMA_EMR, align 4
  %443 = load i32, i32* @CESA_TDMA_EMR_MISS, align 4
  %444 = load i32, i32* @CESA_TDMA_EMR_DOUBLE_HIT, align 4
  %445 = or i32 %443, %444
  %446 = load i32, i32* @CESA_TDMA_EMR_BOTH_HIT, align 4
  %447 = or i32 %445, %446
  %448 = load i32, i32* @CESA_TDMA_EMR_DATA_ERROR, align 4
  %449 = or i32 %447, %448
  %450 = call i32 @CESA_TDMA_WRITE(%struct.cesa_softc* %441, i32 %442, i32 %449)
  %451 = load i32, i32* %3, align 4
  %452 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %453 = call i64 @crypto_get_driverid(i32 %451, i32 4, i32 %452)
  %454 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %455 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %454, i32 0, i32 2
  store i64 %453, i64* %455, align 8
  %456 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %457 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %456, i32 0, i32 2
  %458 = load i64, i64* %457, align 8
  %459 = icmp slt i64 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %411
  %461 = load i32, i32* %3, align 4
  %462 = call i32 @device_printf(i32 %461, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %520

463:                                              ; preds = %411
  %464 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %465 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %464, i32 0, i32 2
  %466 = load i64, i64* %465, align 8
  %467 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %468 = call i32 @crypto_register(i64 %466, i32 %467, i32 0, i32 0)
  %469 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %470 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %469, i32 0, i32 2
  %471 = load i64, i64* %470, align 8
  %472 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %473 = call i32 @crypto_register(i64 %471, i32 %472, i32 0, i32 0)
  %474 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %475 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %478 = call i32 @crypto_register(i64 %476, i32 %477, i32 0, i32 0)
  %479 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %480 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %479, i32 0, i32 2
  %481 = load i64, i64* %480, align 8
  %482 = load i32, i32* @CRYPTO_MD5, align 4
  %483 = call i32 @crypto_register(i64 %481, i32 %482, i32 0, i32 0)
  %484 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %485 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %488 = call i32 @crypto_register(i64 %486, i32 %487, i32 0, i32 0)
  %489 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %490 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %489, i32 0, i32 2
  %491 = load i64, i64* %490, align 8
  %492 = load i32, i32* @CRYPTO_SHA1, align 4
  %493 = call i32 @crypto_register(i64 %491, i32 %492, i32 0, i32 0)
  %494 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %495 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %494, i32 0, i32 2
  %496 = load i64, i64* %495, align 8
  %497 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %498 = call i32 @crypto_register(i64 %496, i32 %497, i32 0, i32 0)
  %499 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %500 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = icmp eq i32 %501, 130
  br i1 %502, label %513, label %503

503:                                              ; preds = %463
  %504 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %505 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = icmp eq i32 %506, 131
  br i1 %507, label %513, label %508

508:                                              ; preds = %503
  %509 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %510 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = icmp eq i32 %511, 132
  br i1 %512, label %513, label %519

513:                                              ; preds = %508, %503, %463
  %514 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %515 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %514, i32 0, i32 2
  %516 = load i64, i64* %515, align 8
  %517 = load i32, i32* @CRYPTO_SHA2_256_HMAC, align 4
  %518 = call i32 @crypto_register(i64 %516, i32 %517, i32 0, i32 0)
  br label %519

519:                                              ; preds = %513, %508
  store i32 0, i32* %2, align 4
  br label %619

520:                                              ; preds = %460
  store i32 0, i32* %9, align 4
  br label %521

521:                                              ; preds = %538, %520
  %522 = load i32, i32* %9, align 4
  %523 = load i32, i32* @CESA_REQUESTS, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %541

525:                                              ; preds = %521
  %526 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %527 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %526, i32 0, i32 12
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %530 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %529, i32 0, i32 16
  %531 = load %struct.TYPE_5__*, %struct.TYPE_5__** %530, align 8
  %532 = load i32, i32* %9, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %531, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @bus_dmamap_destroy(i32 %528, i32 %536)
  br label %538

538:                                              ; preds = %525
  %539 = load i32, i32* %9, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %9, align 4
  br label %521

541:                                              ; preds = %521
  br label %542

542:                                              ; preds = %541, %368
  %543 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %544 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %543, i32 0, i32 15
  %545 = call i32 @cesa_free_dma_mem(%struct.TYPE_4__* %544)
  br label %546

546:                                              ; preds = %542, %286
  %547 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %548 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %547, i32 0, i32 14
  %549 = call i32 @cesa_free_dma_mem(%struct.TYPE_4__* %548)
  br label %550

550:                                              ; preds = %546, %222
  %551 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %552 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %551, i32 0, i32 13
  %553 = call i32 @cesa_free_dma_mem(%struct.TYPE_4__* %552)
  br label %554

554:                                              ; preds = %550, %158
  %555 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %556 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %555, i32 0, i32 12
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @bus_dma_tag_destroy(i32 %557)
  br label %559

559:                                              ; preds = %554, %146
  %560 = load i32, i32* %3, align 4
  %561 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %562 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %561, i32 0, i32 8
  %563 = load i32*, i32** %562, align 8
  %564 = load i64, i64* @RES_CESA_IRQ, align 8
  %565 = getelementptr inbounds i32, i32* %563, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %568 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %567, i32 0, i32 11
  %569 = load i32, i32* %568, align 8
  %570 = call i32 @bus_teardown_intr(i32 %560, i32 %566, i32 %569)
  br label %571

571:                                              ; preds = %559, %130
  %572 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %573 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = icmp eq i32 %574, 130
  br i1 %575, label %586, label %576

576:                                              ; preds = %571
  %577 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %578 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = icmp eq i32 %579, 131
  br i1 %580, label %586, label %581

581:                                              ; preds = %576
  %582 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %583 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = icmp eq i32 %584, 132
  br i1 %585, label %586, label %594

586:                                              ; preds = %581, %576, %571
  %587 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %588 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %587, i32 0, i32 10
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %591 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %590, i32 0, i32 9
  %592 = load i32, i32* %591, align 8
  %593 = call i32 @pmap_unmapdev(i32 %589, i32 %592)
  br label %594

594:                                              ; preds = %586, %581
  br label %595

595:                                              ; preds = %594, %109
  %596 = load i32, i32* %3, align 4
  %597 = load i32, i32* @cesa_res_spec, align 4
  %598 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %599 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %598, i32 0, i32 8
  %600 = load i32*, i32** %599, align 8
  %601 = call i32 @bus_release_resources(i32 %596, i32 %597, i32* %600)
  br label %602

602:                                              ; preds = %595, %93
  %603 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %604 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %603, i32 0, i32 7
  %605 = call i32 @mtx_destroy(i32* %604)
  %606 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %607 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %606, i32 0, i32 6
  %608 = call i32 @mtx_destroy(i32* %607)
  %609 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %610 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %609, i32 0, i32 5
  %611 = call i32 @mtx_destroy(i32* %610)
  %612 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %613 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %612, i32 0, i32 4
  %614 = call i32 @mtx_destroy(i32* %613)
  %615 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %616 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %615, i32 0, i32 3
  %617 = call i32 @mtx_destroy(i32* %616)
  %618 = load i32, i32* @ENXIO, align 4
  store i32 %618, i32* %2, align 4
  br label %619

619:                                              ; preds = %602, %519, %49, %41, %26
  %620 = load i32, i32* %2, align 4
  ret i32 %620
}

declare dso_local %struct.cesa_softc* @device_get_softc(i32) #1

declare dso_local i32 @soc_id(i32*, i32*) #1

declare dso_local i32 @soc_power_ctrl_get(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @cesa_setup_sram(%struct.cesa_softc*) #1

declare dso_local i32 @cesa_setup_sram_armada(%struct.cesa_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.cesa_softc*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @cesa_alloc_dma_mem(%struct.cesa_softc*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @CESA_TDMA_WRITE(%struct.cesa_softc*, i32, i32) #1

declare dso_local i32 @CESA_REG_WRITE(%struct.cesa_softc*, i32, i32) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @crypto_register(i64, i32, i32, i32) #1

declare dso_local i32 @cesa_free_dma_mem(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
