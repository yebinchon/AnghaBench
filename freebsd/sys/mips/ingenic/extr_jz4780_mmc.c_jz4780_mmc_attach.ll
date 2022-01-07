; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_2__, i32*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@jz4780_mmc_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate device resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@JZ_MSC_MEMRES = common dso_local global i64 0, align 8
@JZ_MSC_IRQRES = common dso_local global i64 0, align 8
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@jz4780_mmc_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"req_timeout\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Request timeout in seconds\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"jz4780_mmc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot reset the controller\0A\00", align 1
@jz4780_mmc_pio_mode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Couldn't setup DMA!\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"DMA status: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@MMC_OCR_320_330 = common dso_local global i32 0, align 4
@MMC_OCR_330_340 = common dso_local global i32 0, align 4
@MMC_CAP_HSPEED = common dso_local global i32 0, align 4
@mode_sd = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"cannot activate mmc clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"attaching MMC bus failed!\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"attaching MMC child failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @jz4780_mmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.jz4780_mmc_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.jz4780_mmc_softc* @device_get_softc(i32* %11)
  store %struct.jz4780_mmc_softc* %12, %struct.jz4780_mmc_softc** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %14, i32 0, i32 7
  store i32* %13, i32** %15, align 8
  %16 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %17 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %16, i32 0, i32 10
  store i32* null, i32** %17, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @jz4780_mmc_res_spec, align 4
  %20 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %21 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @bus_alloc_resources(i32* %18, i32 %19, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @device_printf(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %270

29:                                               ; preds = %1
  %30 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @JZ_MSC_MEMRES, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rman_get_bustag(i32 %35)
  %37 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 4
  %39 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @JZ_MSC_MEMRES, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rman_get_bushandle(i32 %44)
  %46 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @JZ_MSC_IRQRES, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INTR_TYPE_MISC, align 4
  %56 = load i32, i32* @INTR_MPSAFE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @jz4780_mmc_intr, align 4
  %59 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %60 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %61 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %60, i32 0, i32 3
  %62 = call i64 @bus_setup_intr(i32* %48, i32 %54, i32 %57, i32* null, i32 %58, %struct.jz4780_mmc_softc* %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %29
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @jz4780_mmc_res_spec, align 4
  %67 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %68 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @bus_release_resources(i32* %65, i32 %66, i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @device_printf(i32* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  br label %270

74:                                               ; preds = %29
  %75 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %76 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %75, i32 0, i32 0
  store i32 10, i32* %76, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32* %77)
  store %struct.sysctl_ctx_list* %78, %struct.sysctl_ctx_list** %5, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @device_get_sysctl_tree(i32* %79)
  %81 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %80)
  store %struct.sysctl_oid_list* %81, %struct.sysctl_oid_list** %6, align 8
  %82 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %83 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %84 = load i32, i32* @OID_AUTO, align 4
  %85 = load i32, i32* @CTLFLAG_RW, align 4
  %86 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %87 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %86, i32 0, i32 0
  %88 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %82, %struct.sysctl_oid_list* %83, i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32* %87, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %90 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %89, i32 0, i32 4
  %91 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %92 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @device_get_nameunit(i32* %93)
  %95 = load i32, i32* @MTX_DEF, align 4
  %96 = call i32 @mtx_init(i32* %90, i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %98 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %97, i32 0, i32 5
  %99 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %100 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %99, i32 0, i32 4
  %101 = call i32 @callout_init_mtx(i32* %98, i32* %100, i32 0)
  %102 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %103 = call i64 @jz4780_mmc_reset(%struct.jz4780_mmc_softc* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %74
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 (i32*, i8*, ...) @device_printf(i32* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %235

108:                                              ; preds = %74
  %109 = load i32, i32* @jz4780_mmc_pio_mode, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %113 = call i64 @jz4780_mmc_setup_dma(%struct.jz4780_mmc_softc* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %117 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 (i32*, i8*, ...) @device_printf(i32* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* @jz4780_mmc_pio_mode, align 4
  br label %120

120:                                              ; preds = %115, %111, %108
  %121 = load i64, i64* @bootverbose, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %125 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %124, i32 0, i32 7
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @jz4780_mmc_pio_mode, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %131 = call i32 (i32*, i8*, ...) @device_printf(i32* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %123, %120
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @ofw_bus_get_node(i32* %133)
  store i32 %134, i32* %10, align 4
  %135 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %136 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 24000000, i32* %137, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @OF_getencprop(i32 %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32* %9, i32 4)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = udiv i64 %141, 4
  %143 = icmp eq i64 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %132
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %147 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %132
  %150 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %151 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, 128
  %155 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %156 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* @MMC_OCR_320_330, align 4
  %159 = load i32, i32* @MMC_OCR_330_340, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %162 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %165 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %166 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* @mode_sd, align 4
  %169 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %170 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 4
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @OF_getencprop(i32 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %9, i32 4)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = udiv i64 %175, 4
  %177 = icmp ne i64 %176, 1
  br i1 %177, label %178, label %187

178:                                              ; preds = %149
  %179 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %180 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %183 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %181
  store i32 %186, i32* %184, align 4
  br label %209

187:                                              ; preds = %149
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %188, 8
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %192 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %193 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %191
  store i32 %196, i32* %194, align 4
  br label %208

197:                                              ; preds = %187
  %198 = load i32, i32* %9, align 4
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %202 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %203 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %200, %197
  br label %208

208:                                              ; preds = %207, %190
  br label %209

209:                                              ; preds = %208, %178
  %210 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %211 = call i64 @jz4780_mmc_enable_clock(%struct.jz4780_mmc_softc* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 (i32*, i8*, ...) @device_printf(i32* %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %235

216:                                              ; preds = %209
  %217 = load i32*, i32** %3, align 8
  %218 = call i32* @device_add_child(i32* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  store i32* %218, i32** %7, align 8
  %219 = load i32*, i32** %7, align 8
  %220 = icmp eq i32* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32*, i32** %3, align 8
  %223 = call i32 (i32*, i8*, ...) @device_printf(i32* %222, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %235

224:                                              ; preds = %216
  %225 = load i32*, i32** %7, align 8
  %226 = call i64 @device_probe_and_attach(i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i32*, i32** %3, align 8
  %230 = call i32 (i32*, i8*, ...) @device_printf(i32* %229, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %231 = load i32*, i32** %3, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @device_delete_child(i32* %231, i32* %232)
  br label %235

234:                                              ; preds = %224
  store i32 0, i32* %2, align 4
  br label %270

235:                                              ; preds = %228, %221, %213, %105
  %236 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %237 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %236, i32 0, i32 5
  %238 = call i32 @callout_drain(i32* %237)
  %239 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %240 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %239, i32 0, i32 4
  %241 = call i32 @mtx_destroy(i32* %240)
  %242 = load i32*, i32** %3, align 8
  %243 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %244 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @JZ_MSC_IRQRES, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %250 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @bus_teardown_intr(i32* %242, i32 %248, i32 %251)
  %253 = load i32*, i32** %3, align 8
  %254 = load i32, i32* @jz4780_mmc_res_spec, align 4
  %255 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %256 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @bus_release_resources(i32* %253, i32 %254, i32* %257)
  %259 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %260 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %235
  %264 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %265 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @clk_release(i32* %266)
  br label %268

268:                                              ; preds = %263, %235
  %269 = load i32, i32* @ENXIO, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %268, %234, %64, %25
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local %struct.jz4780_mmc_softc* @device_get_softc(i32*) #1

declare dso_local i64 @bus_alloc_resources(i32*, i32, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i64 @bus_setup_intr(i32*, i32, i32, i32*, i32, %struct.jz4780_mmc_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32*, i32, i32*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @jz4780_mmc_reset(%struct.jz4780_mmc_softc*) #1

declare dso_local i64 @jz4780_mmc_setup_dma(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @jz4780_mmc_enable_clock(%struct.jz4780_mmc_softc*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32*, i32, i32) #1

declare dso_local i32 @clk_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
