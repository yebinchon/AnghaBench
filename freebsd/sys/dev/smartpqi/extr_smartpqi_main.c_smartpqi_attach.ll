; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_smartpqi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_smartpqi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pqi_ident = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Could not get softc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"memory window not available command = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"set hardware up for PMC SRCv for %p\00", align 1
@PQI_HWIF_UNKNOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"unknown hardware type\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"couldn't allocate register window 0\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"FreeBSD \00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to initialize pqi lib error = %d\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"cam_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"map_lock\00", align 1
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [51 x i8] c"can't allocate buffer DMA tag for pqi_buffer_dmat\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"Cant create datamap for buf @rcbp = %p maxio = %d error = %d\0A\00", align 1
@os_wellness_periodic = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@smartpqi_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to scan lib error = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Failed to register sim index = %d error = %d\0A\00", align 1
@pqisrc_event_worker = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [51 x i8] c"Failed to register character device index=%d r=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"OUT error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smartpqi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smartpqi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqisrc_softstate*, align 8
  %5 = alloca %struct.pqi_ident*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pqisrc_softstate* null, %struct.pqisrc_softstate** %4, align 8
  store %struct.pqi_ident* null, %struct.pqi_ident** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_unit(i32 %11)
  store i32 %12, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.pqisrc_softstate* @device_get_softc(i32 %13)
  store %struct.pqisrc_softstate* %14, %struct.pqisrc_softstate** %4, align 8
  %15 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %16 = icmp ne %struct.pqisrc_softstate* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %320

20:                                               ; preds = %1
  %21 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %22 = call i32 @memset(%struct.pqisrc_softstate* %21, i32 0, i32 104)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %25 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %30 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_enable_busmaster(i32 %32)
  %34 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %35 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCIR_COMMAND, align 4
  %39 = call i32 @pci_read_config(i32 %37, i32 %38, i32 2)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %6, align 4
  br label %320

48:                                               ; preds = %20
  %49 = load i32, i32* %3, align 4
  %50 = call %struct.pqi_ident* @pqi_find_ident(i32 %49)
  store %struct.pqi_ident* %50, %struct.pqi_ident** %5, align 8
  %51 = load %struct.pqi_ident*, %struct.pqi_ident** %5, align 8
  %52 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %55 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %58 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %64 [
    i32 128, label %61
  ]

61:                                               ; preds = %48
  %62 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %63 = call i32 @DBG_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.pqisrc_softstate* %62)
  br label %71

64:                                               ; preds = %48
  %65 = load i32, i32* @PQI_HWIF_UNKNOWN, align 4
  %66 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %67 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %6, align 4
  br label %320

71:                                               ; preds = %61
  %72 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %73 = call i32 @pqisrc_save_controller_info(%struct.pqisrc_softstate* %72)
  %74 = call i32 @PCIR_BAR(i32 0)
  %75 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %76 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %79 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SYS_RES_MEMORY, align 4
  %83 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %84 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = call i32* @bus_alloc_resource_any(i32 %81, i32 %82, i32* %85, i32 %86)
  %88 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %89 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32* %87, i32** %90, align 8
  %91 = icmp eq i32* %87, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %71
  %93 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  store i32 %94, i32* %6, align 4
  br label %320

95:                                               ; preds = %71
  %96 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %97 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SYS_RES_MEMORY, align 4
  %101 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %102 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @bus_get_resource_start(i32 %99, i32 %100, i32 %104)
  %106 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %107 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @rman_get_bustag(i32* %109)
  %111 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %112 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %115 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @rman_get_bushandle(i32* %117)
  %119 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %120 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %123 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i64 @rman_get_virtual(i32* %125)
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %129 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @bus_get_dma_tag(i32 %130)
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %134 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %135 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %136 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %137 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %138 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %139 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 9
  %141 = call i64 @bus_dma_tag_create(i32 %131, i32 %132, i32 0, i32 %133, i32 %134, i32* null, i32* null, i32 %135, i32 %136, i32 %137, i32 0, i32* null, i32* null, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %95
  %144 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* @ENOMEM, align 4
  store i32 %145, i32* %6, align 4
  br label %298

146:                                              ; preds = %95
  %147 = load i32, i32* @FALSE, align 4
  %148 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %149 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 12
  store i32 %147, i32* %150, align 8
  %151 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %152 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %151, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %152, align 8
  %153 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %154 = call i32 @pqisrc_init(%struct.pqisrc_softstate* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load i32, i32* %6, align 4
  %159 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %160, i32* %6, align 4
  br label %320

161:                                              ; preds = %146
  %162 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %163 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 11
  %165 = load i32, i32* @MTX_DEF, align 4
  %166 = call i32 @mtx_init(i32* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %165)
  %167 = load i32, i32* @TRUE, align 4
  %168 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %169 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 10
  store i32 %167, i32* %170, align 8
  %171 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %172 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 8
  %174 = load i32, i32* @MTX_DEF, align 4
  %175 = call i32 @mtx_init(i32* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 %174)
  %176 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %177 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %181 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %182 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %183 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @PAGE_SIZE, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %189 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %193 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %194 = load i32*, i32** @busdma_lock_mutex, align 8
  %195 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %196 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 8
  %198 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %199 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 7
  %201 = call i64 @bus_dma_tag_create(i32 %179, i32 1, i32 0, i32 %180, i32 %181, i32* null, i32* null, i32 %187, i32 %191, i32 %192, i32 %193, i32* %194, i32* %197, i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %161
  %204 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  %205 = load i32, i32* @ENOMEM, align 4
  store i32 %205, i32* %2, align 4
  br label %324

206:                                              ; preds = %161
  %207 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %208 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %207, i32 0, i32 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 1
  store %struct.TYPE_8__* %210, %struct.TYPE_8__** %10, align 8
  store i32 1, i32* %8, align 4
  br label %211

211:                                              ; preds = %236, %206
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %214 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp sle i32 %212, %216
  br i1 %217, label %218, label %241

218:                                              ; preds = %211
  %219 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %220 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = call i32 @bus_dmamap_create(i32 %222, i32 0, i32* %224)
  store i32 %225, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %218
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %229 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %230 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_8__* %228, i32 %232, i32 %233)
  br label %298

235:                                              ; preds = %218
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 1
  store %struct.TYPE_8__* %240, %struct.TYPE_8__** %10, align 8
  br label %211

241:                                              ; preds = %211
  %242 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %243 = bitcast %struct.pqisrc_softstate* %242 to i8*
  %244 = call i32 @os_start_heartbeat_timer(i8* %243)
  %245 = load i32, i32* @os_wellness_periodic, align 4
  %246 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %247 = load i32, i32* @hz, align 4
  %248 = mul nsw i32 120, %247
  %249 = call i32 @timeout(i32 %245, %struct.pqisrc_softstate* %246, i32 %248)
  %250 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %251 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 6
  store i32 %249, i32* %252, align 8
  %253 = load i32, i32* @shutdown_final, align 4
  %254 = load i32, i32* @smartpqi_shutdown, align 4
  %255 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %256 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %257 = call i32 @EVENTHANDLER_REGISTER(i32 %253, i32 %254, %struct.pqisrc_softstate* %255, i32 %256)
  %258 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %259 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 5
  store i32 %257, i32* %260, align 4
  %261 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %262 = call i32 @pqisrc_scan_devices(%struct.pqisrc_softstate* %261)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %241
  %266 = load i32, i32* %6, align 4
  %267 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %268, i32* %6, align 4
  br label %320

269:                                              ; preds = %241
  %270 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @register_sim(%struct.pqisrc_softstate* %270, i32 %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %6, align 4
  %278 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %276, i32 %277)
  br label %320

279:                                              ; preds = %269
  %280 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %281 = call i32 @smartpqi_target_rescan(%struct.pqisrc_softstate* %280)
  %282 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %283 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 4
  %285 = load i32, i32* @pqisrc_event_worker, align 4
  %286 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %287 = call i32 @TASK_INIT(i32* %284, i32 0, i32 %285, %struct.pqisrc_softstate* %286)
  %288 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @create_char_dev(%struct.pqisrc_softstate* %288, i32 %289)
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %6, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %279
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %6, align 4
  %296 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 %294, i32 %295)
  br label %320

297:                                              ; preds = %279
  br label %320

298:                                              ; preds = %227, %143
  %299 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %300 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %319

304:                                              ; preds = %298
  %305 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %306 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @SYS_RES_MEMORY, align 4
  %310 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %311 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %315 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @bus_release_resource(i32 %308, i32 %309, i32 %313, i32* %317)
  br label %319

319:                                              ; preds = %304, %298
  br label %320

320:                                              ; preds = %319, %297, %293, %275, %265, %157, %92, %64, %44, %17
  %321 = load i32, i32* %6, align 4
  %322 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %321)
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %320, %203
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.pqisrc_softstate* @device_get_softc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(%struct.pqisrc_softstate*, i32, i32) #1

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local %struct.pqi_ident* @pqi_find_ident(i32) #1

declare dso_local i32 @DBG_INFO(i8*, %struct.pqisrc_softstate*) #1

declare dso_local i32 @pqisrc_save_controller_info(%struct.pqisrc_softstate*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_get_resource_start(i32, i32, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @rman_get_virtual(i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @pqisrc_init(%struct.pqisrc_softstate*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @os_start_heartbeat_timer(i8*) #1

declare dso_local i32 @timeout(i32, %struct.pqisrc_softstate*, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.pqisrc_softstate*, i32) #1

declare dso_local i32 @pqisrc_scan_devices(%struct.pqisrc_softstate*) #1

declare dso_local i32 @register_sim(%struct.pqisrc_softstate*, i32) #1

declare dso_local i32 @smartpqi_target_rescan(%struct.pqisrc_softstate*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.pqisrc_softstate*) #1

declare dso_local i32 @create_char_dev(%struct.pqisrc_softstate*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
