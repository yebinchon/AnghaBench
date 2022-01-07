; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci_pci.c_uhci_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci_pci.c_uhci_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32*, i32*, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i8* }

@UHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@uhci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_UHCI_BASE_REG = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not map ports\0A\00", align 1
@UHCI_INTR = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"VIA\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"(New UHCI DeviceId=0x%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"(0x%04x)\00", align 1
@PCI_USBREV = common dso_local global i32 0, align 4
@PCI_USB_REV_MASK = common dso_local global i32 0, align 4
@USB_REV_PRE_1_0 = common dso_local global i32 0, align 4
@USB_REV_1_0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"USB revision is unknown. Assuming v1.1.\0A\00", align 1
@USB_REV_1_1 = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@uhci_interrupt = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@PCI_LEGSUP = common dso_local global i32 0, align 4
@PCI_LEGSUP_USBPIRQDEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"USB init failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uhci_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_pci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.TYPE_8__* @device_get_softc(i8* %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  store i8* %9, i8** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @UHCI_MAX_DEVICES, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @USB_GET_DMA_TAG(i8* %28)
  %30 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__* %27, i32 %29, i32* @uhci_iterate_hw_softc)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %230

34:                                               ; preds = %1
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @pci_enable_busmaster(i8* %38)
  %40 = load i32, i32* @PCI_UHCI_BASE_REG, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* @SYS_RES_IOPORT, align 4
  %43 = load i32, i32* @RF_ACTIVE, align 4
  %44 = call i8* @bus_alloc_resource_any(i8* %41, i32 %42, i32* %5, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i8*, i8*, ...) @device_printf(i8* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %226

54:                                               ; preds = %34
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @rman_get_bustag(i8* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @rman_get_bushandle(i8* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @rman_get_size(i8* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UHCI_INTR, align 4
  %80 = call i32 @bus_space_write_2(i32 %75, i32 %78, i32 %79, i32 0)
  store i32 0, i32* %5, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = load i32, i32* @RF_SHAREABLE, align 4
  %84 = load i32, i32* @RF_ACTIVE, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @bus_alloc_resource_any(i8* %81, i32 %82, i32* %5, i32 %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %54
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 (i8*, i8*, ...) @device_printf(i8* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %226

97:                                               ; preds = %54
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @device_add_child(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %97
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 (i8*, i8*, ...) @device_printf(i8* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %226

111:                                              ; preds = %97
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = call i32 @device_set_ivars(i32 %115, %struct.TYPE_9__* %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 @uhci_pci_match(i8* %123)
  %125 = call i32 @device_set_desc(i32 %122, i32 %124)
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @pci_get_vendor(i8* %126)
  switch i32 %127, label %143 [
    i32 131, label %128
    i32 132, label %133
    i32 130, label %138
  ]

128:                                              ; preds = %111
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, ...) @sprintf(i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %158

133:                                              ; preds = %111
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @sprintf(i32 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %158

138:                                              ; preds = %111
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, ...) @sprintf(i32 %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %158

143:                                              ; preds = %111
  %144 = load i32, i32* @bootverbose, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i8*, i8** %3, align 8
  %148 = load i8*, i8** %3, align 8
  %149 = call i32 @pci_get_devid(i8* %148)
  %150 = call i32 (i8*, i8*, ...) @device_printf(i8* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %143
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i8*, i8** %3, align 8
  %156 = call i32 @pci_get_vendor(i8* %155)
  %157 = call i32 (i32, i8*, ...) @sprintf(i32 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %151, %138, %133, %128
  %159 = load i8*, i8** %3, align 8
  %160 = load i32, i32* @PCI_USBREV, align 4
  %161 = call i32 @pci_read_config(i8* %159, i32 %160, i32 1)
  %162 = load i32, i32* @PCI_USB_REV_MASK, align 4
  %163 = and i32 %161, %162
  switch i32 %163, label %174 [
    i32 128, label %164
    i32 129, label %169
  ]

164:                                              ; preds = %158
  %165 = load i32, i32* @USB_REV_PRE_1_0, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  br label %181

169:                                              ; preds = %158
  %170 = load i32, i32* @USB_REV_1_0, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 8
  br label %181

174:                                              ; preds = %158
  %175 = load i8*, i8** %3, align 8
  %176 = call i32 (i8*, i8*, ...) @device_printf(i8* %175, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %177 = load i32, i32* @USB_REV_1_1, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 8
  br label %181

181:                                              ; preds = %174, %169, %164
  %182 = load i8*, i8** %3, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @INTR_TYPE_BIO, align 4
  %187 = load i32, i32* @INTR_MPSAFE, align 4
  %188 = or i32 %186, %187
  %189 = load i64, i64* @uhci_interrupt, align 8
  %190 = inttoptr i64 %189 to i32*
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = bitcast i32** %193 to %struct.TYPE_8__*
  %195 = call i32 (i8*, i32*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, ...) @bus_setup_intr(i8* %182, i32* %185, i32 %188, i32* %190, %struct.TYPE_8__* %191, %struct.TYPE_8__* %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %181
  %199 = load i8*, i8** %3, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 (i8*, i8*, ...) @device_printf(i8* %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %200)
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  store i32* null, i32** %203, align 8
  br label %226

204:                                              ; preds = %181
  %205 = load i8*, i8** %3, align 8
  %206 = load i32, i32* @PCI_LEGSUP, align 4
  %207 = load i32, i32* @PCI_LEGSUP_USBPIRQDEN, align 4
  %208 = call i32 @pci_write_config(i8* %205, i32 %206, i32 %207, i32 2)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %210 = call i32 @uhci_init(%struct.TYPE_8__* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %204
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @device_probe_and_attach(i32 %217)
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %213, %204
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i8*, i8** %3, align 8
  %224 = call i32 (i8*, i8*, ...) @device_printf(i8* %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %226

225:                                              ; preds = %219
  store i32 0, i32* %2, align 4
  br label %230

226:                                              ; preds = %222, %198, %108, %94, %51
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @uhci_pci_detach(i8* %227)
  %229 = load i32, i32* @ENXIO, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %226, %225, %32
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_8__* @device_get_softc(i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i32 @pci_enable_busmaster(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @bus_space_write_2(i32, i32, i32, i32) #1

declare dso_local i32 @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @uhci_pci_match(i8*) #1

declare dso_local i32 @pci_get_vendor(i8*) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @pci_get_devid(i8*) #1

declare dso_local i32 @pci_read_config(i8*, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, ...) #1

declare dso_local i32 @pci_write_config(i8*, i32, i32, i32) #1

declare dso_local i32 @uhci_init(%struct.TYPE_8__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @uhci_pci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
