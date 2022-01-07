; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_cqspi.c_cqspi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_cqspi.c_cqspi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqspi_softc = type { %struct.TYPE_2__, i32*, i32*, i32, i32, i32, i32*, i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.cqspi_softc*, i32 }

@cqspi_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@cqspi_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unable to setup intr\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Can't find DMA controller.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Can't alloc virtual DMA channel.\0A\00", align 1
@cqspi_xdma_tx_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Can't setup xDMA interrupt handler.\0A\00", align 1
@cqspi_xdma_rx_intr = common dso_local global i32 0, align 4
@TX_QUEUE_SIZE = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@cqspi_delayed_attach = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"config_intrhook_establish failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cqspi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cqspi_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.cqspi_softc* @device_get_softc(i32 %7)
  store %struct.cqspi_softc* %8, %struct.cqspi_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @cqspi_spec, align 4
  %14 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %14, i32 0, i32 9
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %209

23:                                               ; preds = %1
  %24 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %24, i32 0, i32 9
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_bustag(i32 %28)
  %30 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %32, i32 0, i32 9
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_bushandle(i32 %36)
  %38 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %39 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %40, i32 0, i32 9
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rman_get_start(i32 %44)
  %46 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %49 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %52 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @INTR_TYPE_BIO, align 4
  %57 = load i32, i32* @INTR_MPSAFE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @cqspi_intr, align 4
  %60 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %61 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %61, i32 0, i32 8
  %63 = call i64 @bus_setup_intr(i32 %50, i32 %55, i32 %58, i32* null, i32 %59, %struct.cqspi_softc* %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %23
  %66 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %209

71:                                               ; preds = %23
  %72 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %73 = call i32 @CQSPI_LOCK_INIT(%struct.cqspi_softc* %72)
  store i64 0, i64* %5, align 8
  %74 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %75 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @xdma_ofw_get(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %79, i32 0, i32 7
  store i32* %78, i32** %80, align 8
  %81 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %82 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %2, align 4
  br label %209

89:                                               ; preds = %71
  %90 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %91 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @xdma_ofw_get(i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %96 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %95, i32 0, i32 6
  store i32* %94, i32** %96, align 8
  %97 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %98 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %2, align 4
  br label %209

105:                                              ; preds = %89
  %106 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %107 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i8* @xdma_channel_alloc(i32* %108, i64 %109)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %113 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %115 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %105
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %2, align 4
  br label %209

122:                                              ; preds = %105
  %123 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %124 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i8* @xdma_channel_alloc(i32* %125, i64 %126)
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %130 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %132 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %122
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* @ENXIO, align 4
  store i32 %138, i32* %2, align 4
  br label %209

139:                                              ; preds = %122
  %140 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %141 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* @cqspi_xdma_tx_intr, align 4
  %144 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %145 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %146 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %145, i32 0, i32 5
  %147 = call i32 @xdma_setup_intr(i32* %142, i32 %143, %struct.cqspi_softc* %144, i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %139
  %151 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %152 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %2, align 4
  br label %209

156:                                              ; preds = %139
  %157 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %158 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @cqspi_xdma_rx_intr, align 4
  %161 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %162 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %163 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %162, i32 0, i32 4
  %164 = call i32 @xdma_setup_intr(i32* %159, i32 %160, %struct.cqspi_softc* %161, i32* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %156
  %168 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %169 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @device_printf(i32 %170, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %172 = load i32, i32* @ENXIO, align 4
  store i32 %172, i32* %2, align 4
  br label %209

173:                                              ; preds = %156
  %174 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %175 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @TX_QUEUE_SIZE, align 4
  %178 = load i32, i32* @MAXPHYS, align 4
  %179 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %180 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %181 = call i32 @xdma_prep_sg(i32* %176, i32 %177, i32 %178, i32 8, i32 16, i32 0, i32 %179, i32 %180)
  %182 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %183 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* @TX_QUEUE_SIZE, align 4
  %186 = load i32, i32* @MAXPHYS, align 4
  %187 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %188 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %189 = call i32 @xdma_prep_sg(i32* %184, i32 %185, i32 %186, i32 8, i32 16, i32 0, i32 %187, i32 %188)
  %190 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %191 = call i32 @cqspi_init(%struct.cqspi_softc* %190)
  %192 = load i32, i32* @cqspi_delayed_attach, align 4
  %193 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %194 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 8
  %196 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %197 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %198 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store %struct.cqspi_softc* %196, %struct.cqspi_softc** %199, align 8
  %200 = load %struct.cqspi_softc*, %struct.cqspi_softc** %4, align 8
  %201 = getelementptr inbounds %struct.cqspi_softc, %struct.cqspi_softc* %200, i32 0, i32 0
  %202 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %173
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @device_printf(i32 %205, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %207 = load i32, i32* @ENOMEM, align 4
  store i32 %207, i32* %2, align 4
  br label %209

208:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %208, %204, %167, %150, %135, %118, %101, %85, %65, %19
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.cqspi_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.cqspi_softc*, i32*) #1

declare dso_local i32 @CQSPI_LOCK_INIT(%struct.cqspi_softc*) #1

declare dso_local i8* @xdma_ofw_get(i32, i8*) #1

declare dso_local i8* @xdma_channel_alloc(i32*, i64) #1

declare dso_local i32 @xdma_setup_intr(i32*, i32, %struct.cqspi_softc*, i32*) #1

declare dso_local i32 @xdma_prep_sg(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cqspi_init(%struct.cqspi_softc*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
