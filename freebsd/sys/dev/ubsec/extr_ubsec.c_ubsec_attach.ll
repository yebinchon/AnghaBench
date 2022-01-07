; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32, i32, i64, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_6__, i8*, i64, i32, i32, i32, i32, %struct.ubsec_q**, %struct.ubsec_dma*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ubsec_q = type { %struct.ubsec_dma* }
%struct.ubsec_dma = type { %struct.TYPE_7__, %struct.ubsec_dmachunk* }
%struct.ubsec_dmachunk = type { i32 }

@BS_STAT_MCR1_DONE = common dso_local global i32 0, align 4
@BS_STAT_DMAERR = common dso_local global i32 0, align 4
@PCI_VENDOR_BLUESTEEL = common dso_local global i64 0, align 8
@PCI_PRODUCT_BLUESTEEL_5601 = common dso_local global i64 0, align 8
@UBS_FLAGS_KEY = common dso_local global i32 0, align 4
@UBS_FLAGS_RNG = common dso_local global i32 0, align 4
@PCI_VENDOR_BROADCOM = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5802 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5805 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5820 = common dso_local global i64 0, align 8
@UBS_FLAGS_LONGCTX = common dso_local global i32 0, align 4
@UBS_FLAGS_HWNORM = common dso_local global i32 0, align 4
@UBS_FLAGS_BIGKEY = common dso_local global i32 0, align 4
@PCI_PRODUCT_BROADCOM_5821 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5822 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5823 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5825 = common dso_local global i64 0, align 8
@PCI_VENDOR_SUN = common dso_local global i64 0, align 8
@PCI_PRODUCT_SUN_SCA1K = common dso_local global i64 0, align 8
@PCI_PRODUCT_SUN_5821 = common dso_local global i64 0, align 8
@BS_STAT_MCR1_ALLEMPTY = common dso_local global i32 0, align 4
@BS_STAT_MCR2_ALLEMPTY = common dso_local global i32 0, align 4
@BS_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot map register space\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not map interrupt\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ubsec_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not establish interrupt\0A\00", align 1
@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"could not get crypto driver id\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@UBS_MAX_SCATTER = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot allocate DMA tag\0A\00", align 1
@UBS_MAX_NQUEUE = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"cannot allocate queue buffers\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"cannot allocate dma buffers\0A\00", align 1
@q_next = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"mcr1 operations\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"mcr1 free q\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@BS_STAT_MCR2_DONE = common dso_local global i32 0, align 4
@default_harvest = common dso_local global i8* null, align 8
@UBSEC_RNG_BUFSIZ = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ubsec_rng = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"mcr2 operations\00", align 1
@CRK_MOD_EXP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CRK_MOD_EXP_CRT = common dso_local global i32 0, align 4
@rndtest_harvest = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubsec_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubsec_softc*, align 8
  %5 = alloca %struct.ubsec_dma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubsec_q*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ubsec_softc* @device_get_softc(i32 %9)
  store %struct.ubsec_softc* %10, %struct.ubsec_softc** %4, align 8
  %11 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %12 = call i32 @bzero(%struct.ubsec_softc* %11, i32 160)
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %16, i32 0, i32 25
  %18 = call i32 @SIMPLEQ_INIT(i32* %17)
  %19 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %19, i32 0, i32 24
  %21 = call i32 @SIMPLEQ_INIT(i32* %20)
  %22 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %22, i32 0, i32 23
  %24 = call i32 @SIMPLEQ_INIT(i32* %23)
  %25 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %25, i32 0, i32 22
  %27 = call i32 @SIMPLEQ_INIT(i32* %26)
  %28 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %28, i32 0, i32 21
  %30 = call i32 @SIMPLEQ_INIT(i32* %29)
  %31 = load i32, i32* @BS_STAT_MCR1_DONE, align 4
  %32 = load i32, i32* @BS_STAT_DMAERR, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @pci_get_vendor(i32 %36)
  %38 = load i64, i64* @PCI_VENDOR_BLUESTEEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @pci_get_device(i32 %41)
  %43 = load i64, i64* @PCI_PRODUCT_BLUESTEEL_5601, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* @UBS_FLAGS_KEY, align 4
  %47 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %45, %40, %1
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @pci_get_vendor(i32 %54)
  %56 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @pci_get_device(i32 %59)
  %61 = load i64, i64* @PCI_PRODUCT_BROADCOM_5802, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @pci_get_device(i32 %64)
  %66 = load i64, i64* @PCI_PRODUCT_BROADCOM_5805, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @UBS_FLAGS_KEY, align 4
  %70 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %68, %63, %53
  %77 = load i32, i32* %3, align 4
  %78 = call i64 @pci_get_vendor(i32 %77)
  %79 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load i32, i32* %3, align 4
  %83 = call i64 @pci_get_device(i32 %82)
  %84 = load i64, i64* @PCI_PRODUCT_BROADCOM_5820, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i32, i32* @UBS_FLAGS_KEY, align 4
  %88 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @UBS_FLAGS_LONGCTX, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @UBS_FLAGS_HWNORM, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @UBS_FLAGS_BIGKEY, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %97 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %86, %81, %76
  %101 = load i32, i32* %3, align 4
  %102 = call i64 @pci_get_vendor(i32 %101)
  %103 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = call i64 @pci_get_device(i32 %106)
  %108 = load i64, i64* @PCI_PRODUCT_BROADCOM_5821, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %140, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %3, align 4
  %112 = call i64 @pci_get_device(i32 %111)
  %113 = load i64, i64* @PCI_PRODUCT_BROADCOM_5822, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %140, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %3, align 4
  %117 = call i64 @pci_get_device(i32 %116)
  %118 = load i64, i64* @PCI_PRODUCT_BROADCOM_5823, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %140, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %3, align 4
  %122 = call i64 @pci_get_device(i32 %121)
  %123 = load i64, i64* @PCI_PRODUCT_BROADCOM_5825, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %140, label %125

125:                                              ; preds = %120, %100
  %126 = load i32, i32* %3, align 4
  %127 = call i64 @pci_get_vendor(i32 %126)
  %128 = load i64, i64* @PCI_VENDOR_SUN, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %161

130:                                              ; preds = %125
  %131 = load i32, i32* %3, align 4
  %132 = call i64 @pci_get_device(i32 %131)
  %133 = load i64, i64* @PCI_PRODUCT_SUN_SCA1K, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %3, align 4
  %137 = call i64 @pci_get_device(i32 %136)
  %138 = load i64, i64* @PCI_PRODUCT_SUN_5821, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %135, %130, %120, %115, %110, %105
  %141 = load i32, i32* @BS_STAT_MCR1_ALLEMPTY, align 4
  %142 = load i32, i32* @BS_STAT_MCR2_ALLEMPTY, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %145 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* @UBS_FLAGS_KEY, align 4
  %149 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @UBS_FLAGS_LONGCTX, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @UBS_FLAGS_HWNORM, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @UBS_FLAGS_BIGKEY, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %158 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %140, %135, %125
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @pci_enable_busmaster(i32 %162)
  %164 = load i32, i32* @BS_BAR, align 4
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @SYS_RES_MEMORY, align 4
  %167 = load i32, i32* @RF_ACTIVE, align 4
  %168 = call i8* @bus_alloc_resource_any(i32 %165, i32 %166, i32* %7, i32 %167)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %171 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %170, i32 0, i32 4
  store i32* %169, i32** %171, align 8
  %172 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %173 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %161
  %177 = load i32, i32* %3, align 4
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %497

179:                                              ; preds = %161
  %180 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %181 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @rman_get_bustag(i32* %182)
  %184 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %185 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %184, i32 0, i32 20
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %187 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @rman_get_bushandle(i32* %188)
  %190 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %191 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %190, i32 0, i32 19
  store i32 %189, i32* %191, align 4
  store i32 0, i32* %7, align 4
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @SYS_RES_IRQ, align 4
  %194 = load i32, i32* @RF_SHAREABLE, align 4
  %195 = load i32, i32* @RF_ACTIVE, align 4
  %196 = or i32 %194, %195
  %197 = call i8* @bus_alloc_resource_any(i32 %192, i32 %193, i32* %7, i32 %196)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %200 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %199, i32 0, i32 5
  store i32* %198, i32** %200, align 8
  %201 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %202 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %179
  %206 = load i32, i32* %3, align 4
  %207 = call i32 (i32, i8*, ...) @device_printf(i32 %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %489

208:                                              ; preds = %179
  %209 = load i32, i32* %3, align 4
  %210 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %211 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* @INTR_TYPE_NET, align 4
  %214 = load i32, i32* @INTR_MPSAFE, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @ubsec_intr, align 4
  %217 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %218 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %219 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %218, i32 0, i32 6
  %220 = call i64 @bus_setup_intr(i32 %209, i32* %212, i32 %215, i32* null, i32 %216, %struct.ubsec_softc* %217, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %208
  %223 = load i32, i32* %3, align 4
  %224 = call i32 (i32, i8*, ...) @device_printf(i32 %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %482

225:                                              ; preds = %208
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %228 = call i64 @crypto_get_driverid(i32 %226, i32 4, i32 %227)
  %229 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %230 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %229, i32 0, i32 2
  store i64 %228, i64* %230, align 8
  %231 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %232 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %225
  %236 = load i32, i32* %3, align 4
  %237 = call i32 (i32, i8*, ...) @device_printf(i32 %236, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %473

238:                                              ; preds = %225
  %239 = load i32, i32* %3, align 4
  %240 = call i32 @bus_get_dma_tag(i32 %239)
  %241 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %242 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %243 = load i32, i32* @UBS_MAX_SCATTER, align 4
  %244 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %245 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %246 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %245, i32 0, i32 18
  %247 = call i64 @bus_dma_tag_create(i32 %240, i32 1, i32 0, i32 %241, i32 %242, i32* null, i32* null, i32 262143, i32 %243, i32 65535, i32 %244, i32* null, i32* null, i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %238
  %250 = load i32, i32* %3, align 4
  %251 = call i32 (i32, i8*, ...) @device_printf(i32 %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %468

252:                                              ; preds = %238
  %253 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %254 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %253, i32 0, i32 15
  %255 = call i32 @SIMPLEQ_INIT(i32* %254)
  %256 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %257 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %256, i32 0, i32 17
  %258 = load %struct.ubsec_dma*, %struct.ubsec_dma** %257, align 8
  store %struct.ubsec_dma* %258, %struct.ubsec_dma** %5, align 8
  store i64 0, i64* %6, align 8
  br label %259

259:                                              ; preds = %307, %252
  %260 = load i64, i64* %6, align 8
  %261 = load i64, i64* @UBS_MAX_NQUEUE, align 8
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %263, label %312

263:                                              ; preds = %259
  %264 = load i32, i32* @M_DEVBUF, align 4
  %265 = load i32, i32* @M_NOWAIT, align 4
  %266 = call i64 @malloc(i32 8, i32 %264, i32 %265)
  %267 = inttoptr i64 %266 to %struct.ubsec_q*
  store %struct.ubsec_q* %267, %struct.ubsec_q** %8, align 8
  %268 = load %struct.ubsec_q*, %struct.ubsec_q** %8, align 8
  %269 = icmp eq %struct.ubsec_q* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %263
  %271 = load i32, i32* %3, align 4
  %272 = call i32 (i32, i8*, ...) @device_printf(i32 %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %312

273:                                              ; preds = %263
  %274 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %275 = load %struct.ubsec_dma*, %struct.ubsec_dma** %5, align 8
  %276 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %275, i32 0, i32 0
  %277 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %274, i32 4, %struct.TYPE_7__* %276, i32 0)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %273
  %280 = load i32, i32* %3, align 4
  %281 = call i32 (i32, i8*, ...) @device_printf(i32 %280, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %282 = load %struct.ubsec_q*, %struct.ubsec_q** %8, align 8
  %283 = load i32, i32* @M_DEVBUF, align 4
  %284 = call i32 @free(%struct.ubsec_q* %282, i32 %283)
  br label %312

285:                                              ; preds = %273
  %286 = load %struct.ubsec_dma*, %struct.ubsec_dma** %5, align 8
  %287 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = inttoptr i64 %289 to %struct.ubsec_dmachunk*
  %291 = load %struct.ubsec_dma*, %struct.ubsec_dma** %5, align 8
  %292 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %291, i32 0, i32 1
  store %struct.ubsec_dmachunk* %290, %struct.ubsec_dmachunk** %292, align 8
  %293 = load %struct.ubsec_dma*, %struct.ubsec_dma** %5, align 8
  %294 = load %struct.ubsec_q*, %struct.ubsec_q** %8, align 8
  %295 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %294, i32 0, i32 0
  store %struct.ubsec_dma* %293, %struct.ubsec_dma** %295, align 8
  %296 = load %struct.ubsec_q*, %struct.ubsec_q** %8, align 8
  %297 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %298 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %297, i32 0, i32 16
  %299 = load %struct.ubsec_q**, %struct.ubsec_q*** %298, align 8
  %300 = load i64, i64* %6, align 8
  %301 = getelementptr inbounds %struct.ubsec_q*, %struct.ubsec_q** %299, i64 %300
  store %struct.ubsec_q* %296, %struct.ubsec_q** %301, align 8
  %302 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %303 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %302, i32 0, i32 15
  %304 = load %struct.ubsec_q*, %struct.ubsec_q** %8, align 8
  %305 = load i32, i32* @q_next, align 4
  %306 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %303, %struct.ubsec_q* %304, i32 %305)
  br label %307

307:                                              ; preds = %285
  %308 = load i64, i64* %6, align 8
  %309 = add nsw i64 %308, 1
  store i64 %309, i64* %6, align 8
  %310 = load %struct.ubsec_dma*, %struct.ubsec_dma** %5, align 8
  %311 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %310, i32 1
  store %struct.ubsec_dma* %311, %struct.ubsec_dma** %5, align 8
  br label %259

312:                                              ; preds = %279, %270, %259
  %313 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %314 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %313, i32 0, i32 14
  %315 = load i32, i32* %3, align 4
  %316 = call i32 @device_get_nameunit(i32 %315)
  %317 = load i32, i32* @MTX_DEF, align 4
  %318 = call i32 @mtx_init(i32* %314, i32 %316, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %317)
  %319 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %320 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %319, i32 0, i32 13
  %321 = load i32, i32* %3, align 4
  %322 = call i32 @device_get_nameunit(i32 %321)
  %323 = load i32, i32* @MTX_DEF, align 4
  %324 = call i32 @mtx_init(i32* %320, i32 %322, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %323)
  %325 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %326 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %325, i32 0, i32 12
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %329 = call i32 @ubsec_partname(%struct.ubsec_softc* %328)
  %330 = call i32 (i32, i8*, ...) @device_printf(i32 %327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %329)
  %331 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %332 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %335 = call i32 @crypto_register(i64 %333, i32 %334, i32 0, i32 0)
  %336 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %337 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %340 = call i32 @crypto_register(i64 %338, i32 %339, i32 0, i32 0)
  %341 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %342 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %345 = call i32 @crypto_register(i64 %343, i32 %344, i32 0, i32 0)
  %346 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %347 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %350 = call i32 @crypto_register(i64 %348, i32 %349, i32 0, i32 0)
  %351 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %352 = call i32 @ubsec_reset_board(%struct.ubsec_softc* %351)
  %353 = load i32, i32* %3, align 4
  %354 = call i32 @ubsec_init_pciregs(i32 %353)
  %355 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %356 = call i32 @ubsec_init_board(%struct.ubsec_softc* %355)
  %357 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %358 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %443

363:                                              ; preds = %312
  %364 = load i32, i32* @BS_STAT_MCR2_DONE, align 4
  %365 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %366 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load i8*, i8** @default_harvest, align 8
  %370 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %371 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %370, i32 0, i32 10
  store i8* %369, i8** %371, align 8
  %372 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %373 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %374 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %373, i32 0, i32 9
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  %377 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %372, i32 4, %struct.TYPE_7__* %376, i32 0)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %363
  br label %442

380:                                              ; preds = %363
  %381 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %382 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %383 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %382, i32 0, i32 9
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 1
  %386 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %381, i32 4, %struct.TYPE_7__* %385, i32 0)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %395

388:                                              ; preds = %380
  %389 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %390 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %391 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %390, i32 0, i32 9
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 0
  %394 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %389, %struct.TYPE_7__* %393)
  br label %442

395:                                              ; preds = %380
  %396 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %397 = load i32, i32* @UBSEC_RNG_BUFSIZ, align 4
  %398 = sext i32 %397 to i64
  %399 = mul i64 8, %398
  %400 = trunc i64 %399 to i32
  %401 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %402 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %401, i32 0, i32 9
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 1
  %404 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %396, i32 %400, %struct.TYPE_7__* %403, i32 0)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %419

406:                                              ; preds = %395
  %407 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %408 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %409 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %408, i32 0, i32 9
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 1
  %412 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %407, %struct.TYPE_7__* %411)
  %413 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %414 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %415 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %414, i32 0, i32 9
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 0
  %418 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %413, %struct.TYPE_7__* %417)
  br label %442

419:                                              ; preds = %395
  %420 = load i32, i32* @hz, align 4
  %421 = icmp sge i32 %420, 100
  br i1 %421, label %422, label %427

422:                                              ; preds = %419
  %423 = load i32, i32* @hz, align 4
  %424 = sdiv i32 %423, 100
  %425 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %426 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %425, i32 0, i32 3
  store i32 %424, i32* %426, align 8
  br label %430

427:                                              ; preds = %419
  %428 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %429 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %428, i32 0, i32 3
  store i32 1, i32* %429, align 8
  br label %430

430:                                              ; preds = %427, %422
  %431 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %432 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %431, i32 0, i32 8
  %433 = call i32 @callout_init(i32* %432, i32 1)
  %434 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %435 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %434, i32 0, i32 8
  %436 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %437 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @ubsec_rng, align 4
  %440 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %441 = call i32 @callout_reset(i32* %435, i32 %438, i32 %439, %struct.ubsec_softc* %440)
  br label %442

442:                                              ; preds = %430, %406, %388, %379
  br label %443

443:                                              ; preds = %442, %312
  %444 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %445 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %444, i32 0, i32 7
  %446 = load i32, i32* %3, align 4
  %447 = call i32 @device_get_nameunit(i32 %446)
  %448 = load i32, i32* @MTX_DEF, align 4
  %449 = call i32 @mtx_init(i32* %445, i32 %447, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %448)
  %450 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %451 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @UBS_FLAGS_KEY, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %467

456:                                              ; preds = %443
  %457 = load i32, i32* @BS_STAT_MCR2_DONE, align 4
  %458 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %459 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = or i32 %460, %457
  store i32 %461, i32* %459, align 8
  %462 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %463 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %462, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = load i32, i32* @CRK_MOD_EXP, align 4
  %466 = call i32 @crypto_kregister(i64 %464, i32 %465, i32 0)
  br label %467

467:                                              ; preds = %456, %443
  store i32 0, i32* %2, align 4
  br label %499

468:                                              ; preds = %249
  %469 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %470 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %469, i32 0, i32 2
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @crypto_unregister_all(i64 %471)
  br label %473

473:                                              ; preds = %468, %235
  %474 = load i32, i32* %3, align 4
  %475 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %476 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %475, i32 0, i32 5
  %477 = load i32*, i32** %476, align 8
  %478 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %479 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %478, i32 0, i32 6
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @bus_teardown_intr(i32 %474, i32* %477, i32 %480)
  br label %482

482:                                              ; preds = %473, %222
  %483 = load i32, i32* %3, align 4
  %484 = load i32, i32* @SYS_RES_IRQ, align 4
  %485 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %486 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %485, i32 0, i32 5
  %487 = load i32*, i32** %486, align 8
  %488 = call i32 @bus_release_resource(i32 %483, i32 %484, i32 0, i32* %487)
  br label %489

489:                                              ; preds = %482, %205
  %490 = load i32, i32* %3, align 4
  %491 = load i32, i32* @SYS_RES_MEMORY, align 4
  %492 = load i32, i32* @BS_BAR, align 4
  %493 = load %struct.ubsec_softc*, %struct.ubsec_softc** %4, align 8
  %494 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %493, i32 0, i32 4
  %495 = load i32*, i32** %494, align 8
  %496 = call i32 @bus_release_resource(i32 %490, i32 %491, i32 %492, i32* %495)
  br label %497

497:                                              ; preds = %489, %176
  %498 = load i32, i32* @ENXIO, align 4
  store i32 %498, i32* %2, align 4
  br label %499

499:                                              ; preds = %497, %467
  %500 = load i32, i32* %2, align 4
  ret i32 %500
}

declare dso_local %struct.ubsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ubsec_softc*, i32) #1

declare dso_local i32 @SIMPLEQ_INIT(i32*) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ubsec_softc*, i32*) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @ubsec_dma_malloc(%struct.ubsec_softc*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @free(%struct.ubsec_q*, i32) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.ubsec_q*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ubsec_partname(%struct.ubsec_softc*) #1

declare dso_local i32 @crypto_register(i64, i32, i32, i32) #1

declare dso_local i32 @ubsec_reset_board(%struct.ubsec_softc*) #1

declare dso_local i32 @ubsec_init_pciregs(i32) #1

declare dso_local i32 @ubsec_init_board(%struct.ubsec_softc*) #1

declare dso_local i32 @ubsec_dma_free(%struct.ubsec_softc*, %struct.TYPE_7__*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ubsec_softc*) #1

declare dso_local i32 @crypto_kregister(i64, i32, i32) #1

declare dso_local i32 @crypto_unregister_all(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
