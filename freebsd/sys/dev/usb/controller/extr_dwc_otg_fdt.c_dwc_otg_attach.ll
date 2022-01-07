; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg_fdt.c_dwc_otg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg_fdt.c_dwc_otg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_fdt_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32*, i32*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32 }

@DWC_OTG_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@DWC_MODE_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@DWC_MODE_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid FDT dr_mode: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"brcm,bcm2708-usb\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@dwc_otg_filter_interrupt = common dso_local global i32 0, align 4
@dwc_otg_interrupt = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc_otg_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_fdt_softc*, align 8
  %5 = alloca [24 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.dwc_otg_fdt_softc* @device_get_softc(i32 %8)
  store %struct.dwc_otg_fdt_softc* %9, %struct.dwc_otg_fdt_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i32 %10, i32* %14, align 8
  %15 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %16 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %20 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @DWC_OTG_MAX_DEVICES, align 4
  %24 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  %28 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 32, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ofw_bus_get_node(i32 %32)
  %34 = bitcast [24 x i8]* %5 to i8**
  %35 = call i64 @OF_getprop(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %34, i32 24)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %1
  %38 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 23
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @DWC_MODE_HOST, align 4
  %44 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %45 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 4
  br label %66

47:                                               ; preds = %37
  %48 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @DWC_MODE_DEVICE, align 4
  %53 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %54 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 7
  store i32 %52, i32* %55, align 4
  br label %65

56:                                               ; preds = %47
  %57 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %63 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %69 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @USB_GET_DMA_TAG(i32 %71)
  %73 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__* %70, i32 %72, i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOMEM, align 4
  store i32 %76, i32* %2, align 4
  br label %201

77:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @SYS_RES_MEMORY, align 4
  %80 = load i32, i32* @RF_ACTIVE, align 4
  %81 = call i8* @bus_alloc_resource_any(i32 %78, i32 %79, i32* %7, i32 %80)
  %82 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %83 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i8* %81, i8** %84, align 8
  %85 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %86 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* @ENOMEM, align 4
  store i32 %91, i32* %6, align 4
  br label %197

92:                                               ; preds = %77
  %93 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %94 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @rman_get_bustag(i8* %96)
  %98 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %99 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 6
  store i32 %97, i32* %100, align 8
  %101 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %102 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @rman_get_bushandle(i8* %104)
  %106 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %107 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  store i32 %105, i32* %108, align 4
  %109 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %110 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @rman_get_size(i8* %112)
  %114 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %115 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i64 @ofw_bus_is_compatible(i32 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @SYS_RES_IRQ, align 4
  %124 = load i32, i32* @RF_ACTIVE, align 4
  %125 = call i8* @bus_alloc_resource_any(i32 %122, i32 %123, i32* %7, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %128 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i32* %126, i32** %129, align 8
  %130 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %131 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %92
  br label %197

136:                                              ; preds = %92
  %137 = load i32, i32* %3, align 4
  %138 = call i32* @device_add_child(i32 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %139 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %140 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32* %138, i32** %142, align 8
  %143 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %144 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %197

150:                                              ; preds = %136
  %151 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %152 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %157 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = call i32 @device_set_ivars(i32* %155, %struct.TYPE_4__* %158)
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %162 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* @INTR_TYPE_TTY, align 4
  %166 = load i32, i32* @INTR_MPSAFE, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %169 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %170 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = call i32 @bus_setup_intr(i32 %160, i32* %164, i32 %167, i32* @dwc_otg_filter_interrupt, i32* @dwc_otg_interrupt, %struct.dwc_otg_fdt_softc* %168, i32** %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %150
  %176 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %177 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  store i32* null, i32** %178, align 8
  br label %197

179:                                              ; preds = %150
  %180 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %181 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %180, i32 0, i32 0
  %182 = call i32 @dwc_otg_init(%struct.TYPE_5__* %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %4, align 8
  %187 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @device_probe_and_attach(i32* %190)
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %185, %179
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %197

196:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %201

197:                                              ; preds = %195, %175, %149, %135, %90
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @dwc_otg_detach(i32 %198)
  %200 = load i32, i32* @ENXIO, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %196, %75
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.dwc_otg_fdt_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.dwc_otg_fdt_softc*, i32**) #1

declare dso_local i32 @dwc_otg_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @dwc_otg_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
