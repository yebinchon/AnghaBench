; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ehci.c_jz4780_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ehci.c_jz4780_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_ehci_softc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32*, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REV_2_0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"CGU failed to enable EHCI\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EHCI_USBINTR = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@EHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Ingenic\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@jz4780_ehci_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@JZ_EHCI_REG_UTMI_BUS = common dso_local global i32 0, align 4
@UTMI_BUS_WIDTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_ehci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.jz4780_ehci_softc* @device_get_softc(i32 %9)
  store %struct.jz4780_ehci_softc* %10, %struct.jz4780_ehci_softc** %4, align 8
  %11 = load %struct.jz4780_ehci_softc*, %struct.jz4780_ehci_softc** %4, align 8
  %12 = getelementptr inbounds %struct.jz4780_ehci_softc, %struct.jz4780_ehci_softc* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  store i32 %13, i32* %16, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @USB_GET_DMA_TAG(i32 %32)
  %34 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__* %31, i32 %33, i32* @ehci_iterate_hw_softc)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %198

38:                                               ; preds = %1
  %39 = load i32, i32* @USB_REV_2_0, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @jz4780_ehci_vbus_gpio_enable(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %194

48:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load i32, i32* @RF_ACTIVE, align 4
  %52 = call i8* @bus_alloc_resource_any(i32 %49, i32 %50, i32* %7, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %194

62:                                               ; preds = %48
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @rman_get_bustag(i8* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @rman_get_bushandle(i8* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @rman_get_size(i8* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @jz4780_ehci_clk_enable(i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %62
  br label %194

86:                                               ; preds = %62
  %87 = call i64 (...) @jz4780_ehci_enable()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %3, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %6, align 4
  br label %194

93:                                               ; preds = %86
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = load i32, i32* @EHCI_USBINTR, align 4
  %96 = call i32 @EWRITE4(%struct.TYPE_8__* %94, i32 %95, i32 0)
  store i32 0, i32* %7, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @SYS_RES_IRQ, align 4
  %99 = load i32, i32* @RF_ACTIVE, align 4
  %100 = load i32, i32* @RF_SHAREABLE, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @bus_alloc_resource_any(i32 %97, i32 %98, i32* %7, i32 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %93
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %194

113:                                              ; preds = %93
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @device_add_child(i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %3, align 4
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %194

127:                                              ; preds = %113
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = call i32 @device_set_ivars(i32 %131, %struct.TYPE_9__* %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @EHCI_HC_DEVSTR, align 4
  %140 = call i32 @device_set_desc(i32 %138, i32 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @sprintf(i32 %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @INTR_TYPE_BIO, align 4
  %150 = load i32, i32* @INTR_MPSAFE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @jz4780_ehci_intr, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = call i32 @bus_setup_intr(i32 %145, i32* %148, i32 %151, i32* null, i32 %152, %struct.TYPE_8__* %153, i32** %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %127
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32* null, i32** %164, align 8
  br label %194

165:                                              ; preds = %127
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = call i32 @ehci_init(%struct.TYPE_8__* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %186, label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = load i32, i32* @JZ_EHCI_REG_UTMI_BUS, align 4
  %173 = call i32 @EREAD4(%struct.TYPE_8__* %171, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* @UTMI_BUS_WIDTH, align 4
  %175 = load i32, i32* %8, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %8, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = load i32, i32* @JZ_EHCI_REG_UTMI_BUS, align 4
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @EWRITE4(%struct.TYPE_8__* %177, i32 %178, i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @device_probe_and_attach(i32 %184)
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %170, %165
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %191)
  br label %194

193:                                              ; preds = %186
  store i32 0, i32* %2, align 4
  br label %198

194:                                              ; preds = %189, %159, %124, %110, %89, %85, %59, %47
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @jz4780_ehci_detach(i32 %195)
  %197 = load i32, i32* @ENXIO, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %194, %193, %36
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.jz4780_ehci_softc* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @jz4780_ehci_vbus_gpio_enable(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @jz4780_ehci_clk_enable(i32) #1

declare dso_local i64 @jz4780_ehci_enable(...) #1

declare dso_local i32 @EWRITE4(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.TYPE_8__*, i32**) #1

declare dso_local i32 @ehci_init(%struct.TYPE_8__*) #1

declare dso_local i32 @EREAD4(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @jz4780_ehci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
