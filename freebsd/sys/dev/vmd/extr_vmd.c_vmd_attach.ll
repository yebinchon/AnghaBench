; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmd_softc = type { i8*, i32*, i32, i32, i32*, %struct.TYPE_6__*, %struct.pcib_secbus, i32**, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32, %struct.vmd_softc* }
%struct.pcib_secbus = type { i32, i32*, i8*, i8*, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@vmd_attach.b = internal global i32 0, align 4
@vmd_attach.s = internal global i32 0, align 4
@vmd_attach.f = internal global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"VMD IRQ lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@VMD_MAX_BAR = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_TYPE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_64 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot allocate resources\0A\00", align 1
@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot allocate IO\0A\00", align 1
@PCIR_PRIBUS_2 = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@PCI_BUSMAX = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s bus numbers\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to initialize %s bus number rman\0A\00", align 1
@PCI_RES_BUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to add resource to rman\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to alloc irq\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@vmd_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Cannot set up interrupt\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to attach child\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to add probe child\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PI_DISK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@vmd_handle_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vmd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmd_softc*, align 8
  %5 = alloca %struct.pcib_secbus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.vmd_softc* @device_get_softc(i8* %14)
  store %struct.vmd_softc* %15, %struct.vmd_softc** %4, align 8
  %16 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %17 = call i32 @bzero(%struct.vmd_softc* %16, i32 144)
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %20 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  store i32 0, i32* @vmd_attach.f, align 4
  store i32 0, i32* @vmd_attach.s, align 4
  store i32 0, i32* @vmd_attach.b, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @pci_enable_busmaster(i8* %21)
  %23 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %23, i32 0, i32 11
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %25)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %80, %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @VMD_MAX_BAR, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @PCIR_BAR(i32 %32)
  %34 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %35 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @PCIR_BAR(i32 0)
  %42 = call i32 @pci_read_config(i8* %40, i32 %41, i32 4)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @PCI_BAR_MEM(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @PCIM_BAR_MEM_TYPE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46, %31
  %56 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %57 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %61 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* @RF_ACTIVE, align 4
  %67 = call i8* @bus_alloc_resource_any(i8* %58, i32 %59, i32* %65, i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %70 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %69, i32 0, i32 7
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* %68, i32** %74, align 8
  %75 = icmp eq i32* %68, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %55
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 (i8*, i8*, ...) @device_printf(i8* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %434

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %27

85:                                               ; preds = %27
  %86 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %87 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %88 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %90 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @device_get_parent(i8* %91)
  %93 = load i32, i32* @SYS_RES_IOPORT, align 4
  %94 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %95 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %94, i32 0, i32 2
  %96 = load i32, i32* @RF_ACTIVE, align 4
  %97 = call i8* @bus_alloc_resource_any(i8* %92, i32 %93, i32* %95, i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %100 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %99, i32 0, i32 10
  store i32* %98, i32** %100, align 8
  %101 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %102 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %101, i32 0, i32 10
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %85
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 (i8*, i8*, ...) @device_printf(i8* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %434

108:                                              ; preds = %85
  %109 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %110 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %109, i32 0, i32 7
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @rman_get_bustag(i32* %113)
  %115 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %116 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  %117 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %118 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %117, i32 0, i32 7
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @rman_get_bushandle(i32* %121)
  %123 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %124 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = load i32, i32* @PCIR_PRIBUS_2, align 4
  %127 = load i8*, i8** %3, align 8
  %128 = call i8* @device_get_parent(i8* %127)
  %129 = call i32 @pcib_get_bus(i8* %128)
  %130 = call i32 @pci_write_config(i8* %125, i32 %126, i32 %129, i32 1)
  %131 = load i32, i32* @PCIR_SECBUS_1, align 4
  store i32 %131, i32* %11, align 4
  %132 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %133 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %132, i32 0, i32 6
  store %struct.pcib_secbus* %133, %struct.pcib_secbus** %5, align 8
  %134 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %135 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %136 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** %3, align 8
  %138 = load i32, i32* @vmd_attach.b, align 4
  %139 = load i32, i32* @vmd_attach.s, align 4
  %140 = load i32, i32* @vmd_attach.f, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i8* @vmd_read_config(i8* %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 1)
  %143 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %144 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** %3, align 8
  %146 = load i32, i32* @vmd_attach.b, align 4
  %147 = load i32, i32* @vmd_attach.s, align 4
  %148 = load i32, i32* @vmd_attach.f, align 4
  %149 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %150 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @vmd_read_config(i8* %145, i32 %146, i32 %147, i32 %148, i32 %151, i32 1)
  %153 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %154 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load i8*, i8** %3, align 8
  %156 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %157 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  %158 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %159 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* @PCI_BUSMAX, align 4
  %162 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %163 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* @RMAN_ARRAY, align 4
  %166 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %167 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %170 = load i8*, i8** %3, align 8
  %171 = call i8* @device_get_nameunit(i8* %170)
  %172 = call i32 @snprintf(i8* %169, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %171)
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %174 = load i32, i32* @M_DEVBUF, align 4
  %175 = call i32 @strdup(i8* %173, i32 %174)
  %176 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %177 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %180 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %179, i32 0, i32 4
  %181 = call i32 @rman_init(%struct.TYPE_5__* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %108
  %185 = load i8*, i8** %3, align 8
  %186 = load i8*, i8** %3, align 8
  %187 = call i8* @device_get_nameunit(i8* %186)
  %188 = call i32 (i8*, i8*, ...) @device_printf(i8* %185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %187)
  br label %434

189:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  %190 = load i8*, i8** %3, align 8
  %191 = load i32, i32* @PCI_RES_BUS, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i8* @bus_alloc_resource_anywhere(i8* %190, i32 %191, i32* %10, i32 %192, i32 0)
  %194 = bitcast i8* %193 to i32*
  %195 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %196 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %195, i32 0, i32 1
  store i32* %194, i32** %196, align 8
  %197 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %198 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %189
  %202 = load i8*, i8** %3, align 8
  %203 = load i32, i32* @PCI_RES_BUS, align 4
  %204 = call i8* @bus_alloc_resource_anywhere(i8* %202, i32 %203, i32* %10, i32 1, i32 0)
  %205 = bitcast i8* %204 to i32*
  %206 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %207 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %206, i32 0, i32 1
  store i32* %205, i32** %207, align 8
  br label %235

208:                                              ; preds = %189
  %209 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %210 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @rman_get_size(i32* %211)
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %234

215:                                              ; preds = %208
  %216 = load i8*, i8** %3, align 8
  %217 = load i32, i32* @PCI_RES_BUS, align 4
  %218 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %219 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %222 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = call i8* @rman_get_start(i32* %223)
  %225 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %226 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = call i8* @rman_get_start(i32* %227)
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr i8, i8* %228, i64 %230
  %232 = getelementptr i8, i8* %231, i64 -1
  %233 = call i32 @bus_adjust_resource(i8* %216, i32 %217, i32* %220, i8* %224, i8* %232)
  br label %234

234:                                              ; preds = %215, %208
  br label %235

235:                                              ; preds = %234, %201
  %236 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %237 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %270

240:                                              ; preds = %235
  %241 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %242 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %241, i32 0, i32 4
  %243 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %244 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i8* @rman_get_start(i32* %245)
  %247 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %248 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = call i8* @rman_get_end(i32* %249)
  %251 = call i32 @rman_manage_region(%struct.TYPE_5__* %242, i8* %246, i8* %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %240
  %255 = load i8*, i8** %3, align 8
  %256 = call i32 (i8*, i8*, ...) @device_printf(i8* %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %434

257:                                              ; preds = %240
  %258 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %259 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = call i8* @rman_get_start(i32* %260)
  %262 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %263 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %262, i32 0, i32 3
  store i8* %261, i8** %263, align 8
  %264 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %265 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = call i8* @rman_get_end(i32* %266)
  %268 = load %struct.pcib_secbus*, %struct.pcib_secbus** %5, align 8
  %269 = getelementptr inbounds %struct.pcib_secbus, %struct.pcib_secbus* %268, i32 0, i32 2
  store i8* %267, i8** %269, align 8
  br label %270

270:                                              ; preds = %257, %235
  %271 = load i8*, i8** %3, align 8
  %272 = call i32 @pci_msix_count(i8* %271)
  %273 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %274 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 4
  %275 = load i8*, i8** %3, align 8
  %276 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %277 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %276, i32 0, i32 3
  %278 = call i64 @pci_alloc_msix(i8* %275, i32* %277)
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %411

280:                                              ; preds = %270
  %281 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %282 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = mul i64 4, %284
  %286 = trunc i64 %285 to i32
  %287 = load i32, i32* @M_DEVBUF, align 4
  %288 = load i32, i32* @M_WAITOK, align 4
  %289 = load i32, i32* @M_ZERO, align 4
  %290 = or i32 %288, %289
  %291 = call %struct.TYPE_6__* @malloc(i32 %286, i32 %287, i32 %290)
  %292 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %293 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %292, i32 0, i32 5
  store %struct.TYPE_6__* %291, %struct.TYPE_6__** %293, align 8
  store i32 0, i32* %7, align 4
  br label %294

294:                                              ; preds = %407, %280
  %295 = load i32, i32* %7, align 4
  %296 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %297 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %295, %298
  br i1 %299, label %300, label %410

300:                                              ; preds = %294
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  %303 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %304 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %303, i32 0, i32 5
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  store i32 %302, i32* %309, align 8
  %310 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %311 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %312 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %311, i32 0, i32 5
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 5
  store %struct.vmd_softc* %310, %struct.vmd_softc** %317, align 8
  %318 = load i32, i32* %7, align 4
  %319 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %320 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %319, i32 0, i32 5
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 1
  store i32 %318, i32* %325, align 4
  %326 = load i8*, i8** %3, align 8
  %327 = load i32, i32* @SYS_RES_IRQ, align 4
  %328 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %329 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %328, i32 0, i32 5
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i32, i32* @RF_ACTIVE, align 4
  %336 = call i8* @bus_alloc_resource_any(i8* %326, i32 %327, i32* %334, i32 %335)
  %337 = bitcast i8* %336 to i32*
  %338 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %339 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %338, i32 0, i32 5
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = load i32, i32* %7, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 2
  store i32* %337, i32** %344, align 8
  %345 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %346 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %345, i32 0, i32 5
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = load i32, i32* %7, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 2
  %352 = load i32*, i32** %351, align 8
  %353 = icmp eq i32* %352, null
  br i1 %353, label %354, label %357

354:                                              ; preds = %300
  %355 = load i8*, i8** %3, align 8
  %356 = call i32 (i8*, i8*, ...) @device_printf(i8* %355, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %434

357:                                              ; preds = %300
  %358 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %359 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %358, i32 0, i32 5
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = load i32, i32* %7, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 4
  %365 = call i32 @TAILQ_INIT(i32* %364)
  %366 = load i8*, i8** %3, align 8
  %367 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %368 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %367, i32 0, i32 5
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %368, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* @INTR_TYPE_MISC, align 4
  %376 = load i32, i32* @INTR_MPSAFE, align 4
  %377 = or i32 %375, %376
  %378 = load i32, i32* @vmd_intr, align 4
  %379 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %380 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %379, i32 0, i32 5
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %380, align 8
  %382 = load i32, i32* %7, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i64 %383
  %385 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %386 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %385, i32 0, i32 5
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %386, align 8
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 3
  %392 = call i64 @bus_setup_intr(i8* %366, i32* %374, i32 %377, i32* null, i32 %378, %struct.TYPE_6__* %384, i32* %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %406

394:                                              ; preds = %357
  %395 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %396 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %395, i32 0, i32 0
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 (i8*, i8*, ...) @device_printf(i8* %397, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %399 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %400 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %399, i32 0, i32 5
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %400, align 8
  %402 = load i32, i32* %7, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 2
  store i32* null, i32** %405, align 8
  br label %434

406:                                              ; preds = %357
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %7, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %7, align 4
  br label %294

410:                                              ; preds = %294
  br label %411

411:                                              ; preds = %410, %270
  %412 = load i8*, i8** %3, align 8
  %413 = call i32* @device_add_child(i8* %412, i32* null, i32 -1)
  %414 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %415 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %414, i32 0, i32 4
  store i32* %413, i32** %415, align 8
  %416 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %417 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %416, i32 0, i32 4
  %418 = load i32*, i32** %417, align 8
  %419 = icmp eq i32* %418, null
  br i1 %419, label %420, label %423

420:                                              ; preds = %411
  %421 = load i8*, i8** %3, align 8
  %422 = call i32 (i8*, i8*, ...) @device_printf(i8* %421, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %434

423:                                              ; preds = %411
  %424 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %425 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %424, i32 0, i32 4
  %426 = load i32*, i32** %425, align 8
  %427 = call i32 @device_probe_and_attach(i32* %426)
  store i32 %427, i32* %9, align 4
  %428 = load i32, i32* %9, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %423
  %431 = load i8*, i8** %3, align 8
  %432 = call i32 (i8*, i8*, ...) @device_printf(i8* %431, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %434

433:                                              ; preds = %423
  store i32 0, i32* %2, align 4
  br label %438

434:                                              ; preds = %430, %420, %394, %354, %254, %184, %105, %76
  %435 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %436 = call i32 @vmd_free(%struct.vmd_softc* %435)
  %437 = load i32, i32* @ENXIO, align 4
  store i32 %437, i32* %2, align 4
  br label %438

438:                                              ; preds = %434, %433
  %439 = load i32, i32* %2, align 4
  ret i32 %439
}

declare dso_local %struct.vmd_softc* @device_get_softc(i8*) #1

declare dso_local i32 @bzero(%struct.vmd_softc*, i32) #1

declare dso_local i32 @pci_enable_busmaster(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @pci_read_config(i8*, i32, i32) #1

declare dso_local i64 @PCI_BAR_MEM(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i8* @device_get_parent(i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @pci_write_config(i8*, i32, i32, i32) #1

declare dso_local i32 @pcib_get_bus(i8*) #1

declare dso_local i8* @vmd_read_config(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i8*) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local i32 @rman_init(%struct.TYPE_5__*) #1

declare dso_local i8* @bus_alloc_resource_anywhere(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @bus_adjust_resource(i8*, i32, i32*, i8*, i8*) #1

declare dso_local i8* @rman_get_start(i32*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i8* @rman_get_end(i32*) #1

declare dso_local i32 @pci_msix_count(i8*) #1

declare dso_local i64 @pci_alloc_msix(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @bus_setup_intr(i8*, i32*, i32, i32*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32* @device_add_child(i8*, i32*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @vmd_free(%struct.vmd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
