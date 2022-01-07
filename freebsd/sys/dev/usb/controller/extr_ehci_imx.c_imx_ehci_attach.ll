; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_imx.c_imx_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_imx.c_imx_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ehci_softc = type { i8*, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i8* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"usb_bus_mem_alloc_all() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IMX_EHCI_REG_OFF = common dso_local global i32 0, align 4
@IMX_EHCI_REG_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"bus_space_subregion() failed\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Could not setup IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"disable-over-current\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@USB_VENDOR_FREESCALE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Freescale\00", align 1
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@EHCI_SCFLG_TT = common dso_local global i32 0, align 4
@imx_ehci_post_reset = common dso_local global i32 0, align 4
@ehci_get_port_speed_portsc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"USB init failed, usb_err_t=%d\0A\00", align 1
@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"device_probe_and_attach() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @imx_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ehci_attach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.imx_ehci_softc*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.imx_ehci_softc* @device_get_softc(i8* %7)
  store %struct.imx_ehci_softc* %8, %struct.imx_ehci_softc** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %11 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %12, i32 0, i32 3
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i8* %14, i32 %15, i32* %6, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %20 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 (i8*, i8*, ...) @device_printf(i8* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %5, align 4
  br label %196

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i8* %30, i32 %31, i32* %6, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 (i8*, i8*, ...) @device_printf(i8* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %5, align 4
  br label %196

45:                                               ; preds = %29
  %46 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %47 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @rman_get_bustag(i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store i8* %52, i8** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 32, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @USB_GET_DMA_TAG(i8* %71)
  %73 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__* %70, i32 %72, i32* @ehci_iterate_hw_softc)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %45
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 (i8*, i8*, ...) @device_printf(i8* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %5, align 4
  br label %196

79:                                               ; preds = %45
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %84 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @rman_get_bushandle(i32* %85)
  %87 = load i32, i32* @IMX_EHCI_REG_OFF, align 4
  %88 = load i32, i32* @IMX_EHCI_REG_SIZE, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  %91 = call i32 @bus_space_subregion(i32 %82, i32 %86, i32 %87, i32 %88, i32* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %79
  %95 = load i8*, i8** %2, align 8
  %96 = call i32 (i8*, i8*, ...) @device_printf(i8* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %5, align 4
  br label %196

98:                                               ; preds = %79
  %99 = load i8*, i8** %2, align 8
  %100 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %101 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @INTR_TYPE_BIO, align 4
  %104 = load i32, i32* @INTR_MPSAFE, align 4
  %105 = or i32 %103, %104
  %106 = load i64, i64* @ehci_interrupt, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  %111 = call i32 @bus_setup_intr(i8* %99, i32* %102, i32 %105, i32* null, i32* %107, %struct.TYPE_6__* %108, i32* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load i8*, i8** %2, align 8
  %116 = call i32 (i8*, i8*, ...) @device_printf(i8* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %196

117:                                              ; preds = %98
  %118 = load i8*, i8** %2, align 8
  %119 = call i32 @imx_ccm_usb_enable(i8* %118)
  %120 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %121 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @ofw_bus_get_node(i8* %122)
  %124 = call i64 @OF_hasprop(i32 %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %3, align 8
  %128 = call i32 @imx_ehci_disable_oc(%struct.imx_ehci_softc* %127)
  br label %129

129:                                              ; preds = %126, %117
  %130 = load i8*, i8** %2, align 8
  %131 = call i32* @device_add_child(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32* %131, i32** %134, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load i8*, i8** %2, align 8
  %142 = call i32 (i8*, i8*, ...) @device_printf(i8* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %196

143:                                              ; preds = %129
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = call i32 @device_set_ivars(i32* %147, %struct.TYPE_7__* %149)
  %151 = load i32, i32* @USB_VENDOR_FREESCALE, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @strlcpy(i32 %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %158 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %159 = load i32, i32* @EHCI_SCFLG_TT, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load i32, i32* @imx_ehci_post_reset, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @ehci_get_port_speed_portsc, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = call i32 @ehci_init(%struct.TYPE_6__* %171)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %143
  %176 = load i8*, i8** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 (i8*, i8*, ...) @device_printf(i8* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  br label %196

179:                                              ; preds = %143
  %180 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @device_probe_and_attach(i32* %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %179
  %193 = load i8*, i8** %2, align 8
  %194 = call i32 (i8*, i8*, ...) @device_printf(i8* %193, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %196

195:                                              ; preds = %179
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %192, %175, %140, %114, %94, %75, %41, %25
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i8*, i8** %2, align 8
  %201 = call i32 @imx_ehci_detach(i8* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local %struct.imx_ehci_softc* @device_get_softc(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @imx_ccm_usb_enable(i8*) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i8*) #1

declare dso_local i32 @imx_ehci_disable_oc(%struct.imx_ehci_softc*) #1

declare dso_local i32* @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ehci_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @imx_ehci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
