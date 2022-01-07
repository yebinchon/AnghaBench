; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, i32*, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_USBREV = common dso_local global i32 0, align 4
@PCI_USB_REV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pre-2.0 USB revision (ignored)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"USB revision is unknown. Assuming v2.0.\0A\00", align 1
@PCI_CBMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"AcerLabs\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"AMD\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Apple\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ATI\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"CMDTECH\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"NEC\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"OPTi\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Philips\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"SiS\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"nVidia\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"VIA\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"(New EHCI DeviceId=0x%08x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"(0x%04x)\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@EHCI_SCFLG_LOSTINTRBUG = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [39 x i8] c"Dropped interrupts workaround enabled\0A\00", align 1
@EHCI_SCFLG_IAADBUG = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c"Doorbell workaround enabled\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ehci_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_8__* @device_get_softc(i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  store i32 %9, i32* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @USB_GET_DMA_TAG(i32 %28)
  %30 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__* %27, i32 %29, i32* @ehci_iterate_hw_softc)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %303

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pci_enable_busmaster(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @PCI_USBREV, align 4
  %39 = call i32 @pci_read_config(i32 %37, i32 %38, i32 1)
  %40 = load i32, i32* @PCI_USB_REV_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %46 [
    i32 128, label %42
    i32 131, label %42
    i32 130, label %42
    i32 129, label %45
  ]

42:                                               ; preds = %34, %34, %34
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %34, %42
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i32, i32* @PCI_CBMEM, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i8* @bus_alloc_resource_any(i32 %51, i32 %52, i32* %6, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %299

64:                                               ; preds = %49
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @rman_get_bustag(i8* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @rman_get_bushandle(i8* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @rman_get_size(i8* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %6, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @SYS_RES_IRQ, align 4
  %85 = load i32, i32* @RF_SHAREABLE, align 4
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @bus_alloc_resource_any(i32 %83, i32 %84, i32* %6, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %64
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %299

99:                                               ; preds = %64
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @device_add_child(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %299

113:                                              ; preds = %99
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i32 @device_set_ivars(i32 %117, %struct.TYPE_9__* %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @ehci_pci_match(i32 %125)
  %127 = call i32 @device_set_desc(i32 %124, i32 %126)
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @pci_get_vendor(i32 %128)
  switch i32 %129, label %190 [
    i32 144, label %130
    i32 143, label %135
    i32 142, label %140
    i32 141, label %145
    i32 140, label %150
    i32 139, label %155
    i32 138, label %160
    i32 135, label %165
    i32 134, label %170
    i32 133, label %175
    i32 137, label %180
    i32 136, label %180
    i32 132, label %185
  ]

130:                                              ; preds = %113
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @sprintf(i32 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %205

135:                                              ; preds = %113
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @sprintf(i32 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %205

140:                                              ; preds = %113
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @sprintf(i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %205

145:                                              ; preds = %113
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @sprintf(i32 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %205

150:                                              ; preds = %113
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @sprintf(i32 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %205

155:                                              ; preds = %113
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, ...) @sprintf(i32 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %205

160:                                              ; preds = %113
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @sprintf(i32 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %205

165:                                              ; preds = %113
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, ...) @sprintf(i32 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %205

170:                                              ; preds = %113
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @sprintf(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %205

175:                                              ; preds = %113
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, ...) @sprintf(i32 %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %205

180:                                              ; preds = %113, %113
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @sprintf(i32 %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %205

185:                                              ; preds = %113
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32, i8*, ...) @sprintf(i32 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %205

190:                                              ; preds = %113
  %191 = load i32, i32* @bootverbose, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @pci_get_devid(i32 %195)
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %193, %190
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @pci_get_vendor(i32 %202)
  %204 = call i32 (i32, i8*, ...) @sprintf(i32 %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %198, %185, %180, %175, %170, %165, %160, %155, %150, %145, %140, %135, %130
  %206 = load i32, i32* %3, align 4
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* @INTR_TYPE_BIO, align 4
  %211 = load i32, i32* @INTR_MPSAFE, align 4
  %212 = or i32 %210, %211
  %213 = load i64, i64* @ehci_interrupt, align 8
  %214 = inttoptr i64 %213 to i32*
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = bitcast i32** %217 to %struct.TYPE_8__*
  %219 = call i32 (i32, i32*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, ...) @bus_setup_intr(i32 %206, i32* %209, i32 %212, i32* %214, %struct.TYPE_8__* %215, %struct.TYPE_8__* %218)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %5, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %205
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* %5, align 4
  %225 = call i32 (i32, i8*, ...) @device_printf(i32 %223, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %224)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  store i32* null, i32** %227, align 8
  br label %299

228:                                              ; preds = %205
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @ehci_pci_take_controller(i32 %229)
  %231 = load i32, i32* %3, align 4
  %232 = call i32 @pci_get_vendor(i32 %231)
  switch i32 %232, label %247 [
    i32 141, label %233
    i32 132, label %244
  ]

233:                                              ; preds = %228
  %234 = load i32, i32* %3, align 4
  %235 = call i32 @pci_get_device(i32 %234)
  switch i32 %235, label %242 [
    i32 17286, label %236
    i32 17302, label %239
  ]

236:                                              ; preds = %233
  %237 = load i32, i32* %3, align 4
  %238 = call i32 @ehci_pci_ati_quirk(i32 %237, i32 0)
  br label %243

239:                                              ; preds = %233
  %240 = load i32, i32* %3, align 4
  %241 = call i32 @ehci_pci_ati_quirk(i32 %240, i32 1)
  br label %243

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242, %239, %236
  br label %248

244:                                              ; preds = %228
  %245 = load i32, i32* %3, align 4
  %246 = call i32 @ehci_pci_via_quirk(i32 %245)
  br label %248

247:                                              ; preds = %228
  br label %248

248:                                              ; preds = %247, %244, %243
  %249 = load i32, i32* %3, align 4
  %250 = call i32 @pci_get_vendor(i32 %249)
  switch i32 %250, label %263 [
    i32 141, label %251
    i32 132, label %251
  ]

251:                                              ; preds = %248, %248
  %252 = load i32, i32* @EHCI_SCFLG_LOSTINTRBUG, align 4
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  %257 = load i32, i32* @bootverbose, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %251
  %260 = load i32, i32* %3, align 4
  %261 = call i32 (i32, i8*, ...) @device_printf(i32 %260, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %251
  br label %264

263:                                              ; preds = %248
  br label %264

264:                                              ; preds = %263, %262
  %265 = load i32, i32* %3, align 4
  %266 = call i32 @pci_get_vendor(i32 %265)
  switch i32 %266, label %279 [
    i32 137, label %267
    i32 136, label %267
  ]

267:                                              ; preds = %264, %264
  %268 = load i32, i32* @EHCI_SCFLG_IAADBUG, align 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* @bootverbose, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %267
  %276 = load i32, i32* %3, align 4
  %277 = call i32 (i32, i8*, ...) @device_printf(i32 %276, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  br label %278

278:                                              ; preds = %275, %267
  br label %280

279:                                              ; preds = %264
  br label %280

280:                                              ; preds = %279, %278
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %282 = call i32 @ehci_init(%struct.TYPE_8__* %281)
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* %5, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %280
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @device_probe_and_attach(i32 %289)
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %285, %280
  %292 = load i32, i32* %5, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* %5, align 4
  %297 = call i32 (i32, i8*, ...) @device_printf(i32 %295, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %296)
  br label %299

298:                                              ; preds = %291
  store i32 0, i32* %2, align 4
  br label %303

299:                                              ; preds = %294, %222, %110, %96, %61
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @ehci_pci_detach(i32 %300)
  %302 = load i32, i32* @ENXIO, align 4
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %299, %298, %32
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local %struct.TYPE_8__* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @ehci_pci_match(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, ...) #1

declare dso_local i32 @ehci_pci_take_controller(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @ehci_pci_ati_quirk(i32, i32) #1

declare dso_local i32 @ehci_pci_via_quirk(i32) #1

declare dso_local i32 @ehci_init(%struct.TYPE_8__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @ehci_pci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
