; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i32, i32, i32, i32*, i32, i32, %struct.ifnet*, i32*, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.dme_softc* }
%struct.TYPE_2__ = type { i32, i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unable to map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"vcc-supply\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to enable power supply\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"too many reset gpios\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Cannot configure GPIO pin %d on %s\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Unable to find reset GPIO\0A\00", align 1
@DME_ISR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Unable to determine device mode\0A\00", align 1
@DME_VIDH = common dso_local global i32 0, align 4
@DME_VIDL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Vendor ID: 0x%04x\0A\00", align 1
@DME_PIDH = common dso_local global i32 0, align 4
@DME_PIDL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Product ID: 0x%04x\0A\00", align 1
@DME_CHIPR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Revision: 0x%04x\0A\00", align 1
@DME_CHIP_DM9000A = common dso_local global i32 0, align 4
@DME_CHIP_DM9000B = common dso_local global i32 0, align 4
@DME_CHIP_DM9000 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"using %d-bit IO mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"wrong io mode\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"unable to allocate ifp\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@dme_ifmedia_upd = common dso_local global i32 0, align 4
@dme_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"PHY probe failed\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@dme_start = common dso_local global i32 0, align 4
@dme_ioctl = common dso_local global i32 0, align 4
@dme_init = common dso_local global i32 0, align 4
@IFQ_MAXLEN = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@dme_intr = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dme_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dme_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.dme_softc* @device_get_softc(i32 %8)
  store %struct.dme_softc* %9, %struct.dme_softc** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %12 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %11, i32 0, i32 14
  store i32 %10, i32* %12, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %14 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %13, i32 0, i32 12
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = call i32 @mtx_init(i32* %14, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %20, i32 0, i32 13
  %22 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %23 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %22, i32 0, i32 12
  %24 = call i32 @callout_init_mtx(i32* %21, i32* %23, i32 0)
  store i32 0, i32* %6, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i8* @bus_alloc_resource_any(i32 %25, i32 %26, i32* %6, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %31 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %30, i32 0, i32 7
  store i32* %29, i32** %31, align 8
  %32 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %33 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %5, align 4
  br label %359

40:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load i32, i32* @RF_ACTIVE, align 4
  %44 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i32* %6, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %47 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %49 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %5, align 4
  br label %359

56:                                               ; preds = %40
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %59 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %58, i32 0, i32 11
  %60 = call i32 @regulator_get_by_ofw_property(i32 %57, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %65 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @regulator_enable(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %5, align 4
  br label %359

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %56
  %76 = call i32 @DELAY(i32 100000)
  %77 = load i32, i32* %2, align 4
  %78 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %79 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %78, i32 0, i32 10
  %80 = call i32 @ofw_gpiobus_parse_gpios(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_2__** %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* %2, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %87 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %86, i32 0, i32 10
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %87, align 8
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %5, align 4
  br label %359

89:                                               ; preds = %75
  %90 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %91 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %90, i32 0, i32 10
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = icmp ne %struct.TYPE_2__* %92, null
  br i1 %93, label %94, label %182

94:                                               ; preds = %89
  %95 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %96 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %95, i32 0, i32 10
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %101 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %100, i32 0, i32 10
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @GPIO_PIN_SET(i32 %99, i32 %104, i32 0)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %94
  %109 = load i32, i32* %2, align 4
  %110 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %111 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %110, i32 0, i32 10
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %116 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %115, i32 0, i32 10
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_get_nameunit(i32 %119)
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %120)
  br label %359

122:                                              ; preds = %94
  %123 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %124 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %123, i32 0, i32 10
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %129 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %128, i32 0, i32 10
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %134 = call i32 @GPIO_PIN_SETFLAGS(i32 %127, i32 %132, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %122
  %138 = load i32, i32* %2, align 4
  %139 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %140 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %139, i32 0, i32 10
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %145 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %144, i32 0, i32 10
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @device_get_nameunit(i32 %148)
  %150 = call i32 (i32, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %149)
  br label %359

151:                                              ; preds = %122
  %152 = call i32 @DELAY(i32 2000)
  %153 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %154 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %153, i32 0, i32 10
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %159 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %158, i32 0, i32 10
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @GPIO_PIN_SET(i32 %157, i32 %162, i32 1)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %151
  %167 = load i32, i32* %2, align 4
  %168 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %169 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %168, i32 0, i32 10
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %174 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %173, i32 0, i32 10
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @device_get_nameunit(i32 %177)
  %179 = call i32 (i32, i8*, ...) @device_printf(i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %172, i32 %178)
  br label %359

180:                                              ; preds = %151
  %181 = call i32 @DELAY(i32 4000)
  br label %185

182:                                              ; preds = %89
  %183 = load i32, i32* %2, align 4
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %180
  %186 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %187 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %186, i32 0, i32 7
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @rman_get_bustag(i32* %188)
  %190 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %191 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 4
  %192 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %193 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %192, i32 0, i32 7
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @rman_get_bushandle(i32* %194)
  %196 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %197 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 8
  %198 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %199 = call i32 @dme_reset(%struct.dme_softc* %198)
  %200 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %201 = load i32, i32* @DME_ISR, align 4
  %202 = call i32 @dme_read_reg(%struct.dme_softc* %200, i32 %201)
  %203 = ashr i32 %202, 6
  %204 = and i32 %203, 3
  switch i32 %204, label %214 [
    i32 0, label %205
    i32 1, label %208
    i32 2, label %211
  ]

205:                                              ; preds = %185
  %206 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %207 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %206, i32 0, i32 0
  store i32 16, i32* %207, align 8
  br label %218

208:                                              ; preds = %185
  %209 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %210 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %209, i32 0, i32 0
  store i32 32, i32* %210, align 8
  br label %218

211:                                              ; preds = %185
  %212 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %213 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %212, i32 0, i32 0
  store i32 8, i32* %213, align 8
  br label %218

214:                                              ; preds = %185
  %215 = load i32, i32* %2, align 4
  %216 = call i32 (i32, i8*, ...) @device_printf(i32 %215, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %217 = load i32, i32* @ENXIO, align 4
  store i32 %217, i32* %5, align 4
  br label %359

218:                                              ; preds = %211, %208, %205
  %219 = call i32 @DELAY(i32 100000)
  %220 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %221 = load i32, i32* @DME_VIDH, align 4
  %222 = call i32 @dme_read_reg(%struct.dme_softc* %220, i32 %221)
  %223 = shl i32 %222, 8
  store i32 %223, i32* %7, align 4
  %224 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %225 = load i32, i32* @DME_VIDL, align 4
  %226 = call i32 @dme_read_reg(%struct.dme_softc* %224, i32 %225)
  %227 = load i32, i32* %7, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %2, align 4
  %230 = load i32, i32* %7, align 4
  %231 = call i32 (i32, i8*, ...) @device_printf(i32 %229, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  %232 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %233 = load i32, i32* @DME_PIDH, align 4
  %234 = call i32 @dme_read_reg(%struct.dme_softc* %232, i32 %233)
  %235 = shl i32 %234, 8
  store i32 %235, i32* %7, align 4
  %236 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %237 = load i32, i32* @DME_PIDL, align 4
  %238 = call i32 @dme_read_reg(%struct.dme_softc* %236, i32 %237)
  %239 = load i32, i32* %7, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %2, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %241, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %242)
  %244 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %245 = load i32, i32* @DME_CHIPR, align 4
  %246 = call i32 @dme_read_reg(%struct.dme_softc* %244, i32 %245)
  store i32 %246, i32* %7, align 4
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* %7, align 4
  %249 = call i32 (i32, i8*, ...) @device_printf(i32 %247, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @DME_CHIP_DM9000A, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %218
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @DME_CHIP_DM9000B, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = load i32, i32* @DME_CHIP_DM9000, align 4
  store i32 %258, i32* %7, align 4
  br label %259

259:                                              ; preds = %257, %253, %218
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %262 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %2, align 4
  %264 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %265 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i32, i8*, ...) @device_printf(i32 %263, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %266)
  %268 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %269 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 8
  %272 = zext i1 %271 to i32
  %273 = call i32 @KASSERT(i32 %272, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %274 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %275 = call i32 @dme_get_macaddr(%struct.dme_softc* %274)
  %276 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %277 = call i32 @dme_config(%struct.dme_softc* %276)
  %278 = load i32, i32* @IFT_ETHER, align 4
  %279 = call %struct.ifnet* @if_alloc(i32 %278)
  %280 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %281 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %280, i32 0, i32 6
  store %struct.ifnet* %279, %struct.ifnet** %281, align 8
  store %struct.ifnet* %279, %struct.ifnet** %4, align 8
  %282 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %283 = icmp eq %struct.ifnet* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %259
  %285 = load i32, i32* %2, align 4
  %286 = call i32 (i32, i8*, ...) @device_printf(i32 %285, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %287 = load i32, i32* @ENOSPC, align 4
  store i32 %287, i32* %5, align 4
  br label %359

288:                                              ; preds = %259
  %289 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %290 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %291 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %290, i32 0, i32 5
  store %struct.dme_softc* %289, %struct.dme_softc** %291, align 8
  %292 = load i32, i32* %2, align 4
  %293 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %294 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %293, i32 0, i32 5
  %295 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %296 = load i32, i32* @dme_ifmedia_upd, align 4
  %297 = load i32, i32* @dme_ifmedia_sts, align 4
  %298 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %299 = load i32, i32* @MII_PHY_ANY, align 4
  %300 = load i32, i32* @MII_OFFSET_ANY, align 4
  %301 = call i32 @mii_attach(i32 %292, i32* %294, %struct.ifnet* %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 0)
  store i32 %301, i32* %5, align 4
  %302 = load i32, i32* %5, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %288
  %305 = load i32, i32* %2, align 4
  %306 = call i32 (i32, i8*, ...) @device_printf(i32 %305, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %359

307:                                              ; preds = %288
  %308 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %309 = load i32, i32* %2, align 4
  %310 = call i32 @device_get_name(i32 %309)
  %311 = load i32, i32* %2, align 4
  %312 = call i32 @device_get_unit(i32 %311)
  %313 = call i32 @if_initname(%struct.ifnet* %308, i32 %310, i32 %312)
  %314 = load i32, i32* @IFF_BROADCAST, align 4
  %315 = load i32, i32* @IFF_SIMPLEX, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @IFF_MULTICAST, align 4
  %318 = or i32 %316, %317
  %319 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %320 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load i32, i32* @dme_start, align 4
  %322 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %323 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %322, i32 0, i32 4
  store i32 %321, i32* %323, align 8
  %324 = load i32, i32* @dme_ioctl, align 4
  %325 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %326 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %325, i32 0, i32 3
  store i32 %324, i32* %326, align 4
  %327 = load i32, i32* @dme_init, align 4
  %328 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %329 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 8
  %330 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %331 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %330, i32 0, i32 1
  %332 = load i32, i32* @IFQ_MAXLEN, align 4
  %333 = call i32 @IFQ_SET_MAXLEN(i32* %331, i32 %332)
  %334 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %335 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %336 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @ether_ifattach(%struct.ifnet* %334, i32 %337)
  %339 = load i32, i32* %2, align 4
  %340 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %341 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* @INTR_TYPE_NET, align 4
  %344 = load i32, i32* @INTR_MPSAFE, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* @dme_intr, align 4
  %347 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %348 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %349 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %348, i32 0, i32 2
  %350 = call i32 @bus_setup_intr(i32 %339, i32* %342, i32 %345, i32* null, i32 %346, %struct.dme_softc* %347, i32* %349)
  store i32 %350, i32* %5, align 4
  %351 = load i32, i32* %5, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %307
  %354 = load i32, i32* %2, align 4
  %355 = call i32 (i32, i8*, ...) @device_printf(i32 %354, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %356 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %357 = call i32 @ether_ifdetach(%struct.ifnet* %356)
  br label %359

358:                                              ; preds = %307
  br label %359

359:                                              ; preds = %358, %353, %304, %284, %214, %166, %137, %108, %83, %70, %52, %36
  %360 = load i32, i32* %5, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i32, i32* %2, align 4
  %364 = call i32 @dme_detach(i32 %363)
  br label %365

365:                                              ; preds = %362, %359
  %366 = load i32, i32* %5, align 4
  ret i32 %366
}

declare dso_local %struct.dme_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ofw_gpiobus_parse_gpios(i32, i8*, %struct.TYPE_2__**) #1

declare dso_local i32 @GPIO_PIN_SET(i32, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32, i32, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @dme_reset(%struct.dme_softc*) #1

declare dso_local i32 @dme_read_reg(%struct.dme_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dme_get_macaddr(%struct.dme_softc*) #1

declare dso_local i32 @dme_config(%struct.dme_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.dme_softc*, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @dme_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
