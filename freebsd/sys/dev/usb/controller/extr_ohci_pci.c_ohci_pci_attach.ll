; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci_pci.c_ohci_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci_pci.c_ohci_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8* }

@OHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_CBMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"AcerLabs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"AMD\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Apple\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ATI\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CMDTECH\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NEC\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"nVidia\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"OPTi\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"SiS\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"(New OHCI DeviceId=0x%08x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"(0x%04x)\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ohci_interrupt = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"USB init failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ohci_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_pci_attach(i8* %0) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  store i8* %9, i8** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @OHCI_MAX_DEVICES, align 4
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
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @USB_GET_DMA_TAG(i8* %28)
  %30 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__* %27, i32 %29, i32* @ohci_iterate_hw_softc)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %241

34:                                               ; preds = %1
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @pci_enable_busmaster(i8* %38)
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @pci_get_devid(i8* %40)
  %42 = icmp eq i32 %41, 285413518
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @pci_get_intpin(i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @pci_set_intpin(i8* %48, i32 4)
  br label %50

50:                                               ; preds = %47, %43, %34
  %51 = load i32, i32* @PCI_CBMEM, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = call i8* @bus_alloc_resource_any(i8* %52, i32 %53, i32* %5, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %50
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 (i8*, i8*, ...) @device_printf(i8* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %237

65:                                               ; preds = %50
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @rman_get_bustag(i8* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @rman_get_bushandle(i8* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @rman_get_size(i8* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %5, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* @SYS_RES_IRQ, align 4
  %86 = load i32, i32* @RF_SHAREABLE, align 4
  %87 = load i32, i32* @RF_ACTIVE, align 4
  %88 = or i32 %86, %87
  %89 = call i8* @bus_alloc_resource_any(i8* %84, i32 %85, i32* %5, i32 %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %65
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 (i8*, i8*, ...) @device_printf(i8* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %237

100:                                              ; preds = %65
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @device_add_child(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %100
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 (i8*, i8*, ...) @device_printf(i8* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %237

114:                                              ; preds = %100
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = call i32 @device_set_ivars(i32 %118, %struct.TYPE_9__* %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @ohci_pci_match(i8* %126)
  %128 = call i32 @device_set_desc(i32 %125, i32 %127)
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @pci_get_vendor(i8* %129)
  switch i32 %130, label %181 [
    i32 138, label %131
    i32 137, label %136
    i32 136, label %141
    i32 135, label %146
    i32 134, label %151
    i32 133, label %156
    i32 132, label %161
    i32 131, label %161
    i32 130, label %166
    i32 129, label %171
    i32 128, label %176
  ]

131:                                              ; preds = %114
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, ...) @sprintf(i32 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %196

136:                                              ; preds = %114
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, ...) @sprintf(i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %196

141:                                              ; preds = %114
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @sprintf(i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %196

146:                                              ; preds = %114
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @sprintf(i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %196

151:                                              ; preds = %114
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32, i8*, ...) @sprintf(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %196

156:                                              ; preds = %114
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @sprintf(i32 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %196

161:                                              ; preds = %114, %114
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @sprintf(i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %196

166:                                              ; preds = %114
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i32, i8*, ...) @sprintf(i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %196

171:                                              ; preds = %114
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, ...) @sprintf(i32 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %196

176:                                              ; preds = %114
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @sprintf(i32 %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %196

181:                                              ; preds = %114
  %182 = load i32, i32* @bootverbose, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i8*, i8** %3, align 8
  %186 = load i8*, i8** %3, align 8
  %187 = call i32 @pci_get_devid(i8* %186)
  %188 = call i32 (i8*, i8*, ...) @device_printf(i8* %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %184, %181
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i8*, i8** %3, align 8
  %194 = call i32 @pci_get_vendor(i8* %193)
  %195 = call i32 (i32, i8*, ...) @sprintf(i32 %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %189, %176, %171, %166, %161, %156, %151, %146, %141, %136, %131
  %197 = load i8*, i8** %3, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @INTR_TYPE_BIO, align 4
  %202 = load i32, i32* @INTR_MPSAFE, align 4
  %203 = or i32 %201, %202
  %204 = load i64, i64* @ohci_interrupt, align 8
  %205 = inttoptr i64 %204 to i32*
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = bitcast i32** %208 to %struct.TYPE_8__*
  %210 = call i32 (i8*, i32*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, ...) @bus_setup_intr(i8* %197, i32* %200, i32 %203, i32* %205, %struct.TYPE_8__* %206, %struct.TYPE_8__* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %196
  %214 = load i8*, i8** %3, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call i32 (i8*, i8*, ...) @device_printf(i8* %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %215)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i32* null, i32** %218, align 8
  br label %237

219:                                              ; preds = %196
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = call i32 @ohci_init(%struct.TYPE_8__* %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %219
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @device_probe_and_attach(i32 %228)
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %224, %219
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i8*, i8** %3, align 8
  %235 = call i32 (i8*, i8*, ...) @device_printf(i8* %234, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %237

236:                                              ; preds = %230
  store i32 0, i32* %2, align 4
  br label %241

237:                                              ; preds = %233, %213, %111, %97, %62
  %238 = load i8*, i8** %3, align 8
  %239 = call i32 @ohci_pci_detach(i8* %238)
  %240 = load i32, i32* @ENXIO, align 4
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %237, %236, %32
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local %struct.TYPE_8__* @device_get_softc(i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i32 @pci_enable_busmaster(i8*) #1

declare dso_local i32 @pci_get_devid(i8*) #1

declare dso_local i64 @pci_get_intpin(i8*) #1

declare dso_local i32 @pci_set_intpin(i8*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @ohci_pci_match(i8*) #1

declare dso_local i32 @pci_get_vendor(i8*) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, ...) #1

declare dso_local i32 @ohci_init(%struct.TYPE_8__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @ohci_pci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
