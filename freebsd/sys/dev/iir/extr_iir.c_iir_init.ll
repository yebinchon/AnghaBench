; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32*, i32, i32, i32*, i32, i32, i32, i8*, i64, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.gdt_ccb*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.gdt_ccb = type { i32, i32*, i32*, i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GDT_D_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"iir_init()\0A\00", align 1
@GDT_POLLING = common dso_local global i32 0, align 4
@gdt_stat = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i32 0, align 4
@GDT_MAXSG = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"bus_dma_tag_create(..., gdt->sc_buffer_dmat) failed\0A\00", align 1
@GDT_MAXCMDS = common dso_local global i32 0, align 4
@GDT_SCRATCH_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"bus_dma_tag_create(...,gdt->sc_gcscratch_dmat) failed\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"bus_dmamem_alloc(...,&gdt->sc_gccbs,...) failed\0A\00", align 1
@gdtmapmem = common dso_local global i32 0, align 4
@M_GDTBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"no memory for gccbs.\0A\00", align 1
@GDT_GCF_UNUSED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@sle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"No free command index found\0A\00", align 1
@GDT_CMD_SZ = common dso_local global i32 0, align 4
@GDT_SCREENSERVICE = common dso_local global i32 0, align 4
@GDT_INIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Screen service initialization error %d\0A\00", align 1
@GDT_CACHESERVICE = common dso_local global i32 0, align 4
@GDT_UNFREEZE_IO = common dso_local global i32 0, align 4
@GDT_LINUX_OS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Cache service initialization error %d\0A\00", align 1
@GDT_IOC_VERSION = common dso_local global i32 0, align 4
@GDT_IOC_NEWEST = common dso_local global i32 0, align 4
@GDT_MAXBUS = common dso_local global i32 0, align 4
@GDT_IOC_LIST_ENTRIES = common dso_local global i64 0, align 8
@GDT_IOC_FIRST_CHAN = common dso_local global i64 0, align 8
@GDT_IOC_LAST_CHAN = common dso_local global i64 0, align 8
@GDT_IOC_LIST_OFFSET = common dso_local global i32 0, align 4
@GDT_IOC_HDR_SZ = common dso_local global i32 0, align 4
@GDT_IOCTL = common dso_local global i32 0, align 4
@GDT_IOCHAN_RAW_DESC = common dso_local global i32 0, align 4
@GDT_INVALID_CHANNEL = common dso_local global i32 0, align 4
@GDT_RAWIOC_SZ = common dso_local global i32 0, align 4
@GDT_IOC_CHAN_COUNT = common dso_local global i64 0, align 8
@GDT_RAWIOC_PROC_ID = common dso_local global i32 0, align 4
@GDT_MAXID_FC = common dso_local global i32 0, align 4
@GDT_GETCH_CHANNEL_NO = common dso_local global i32 0, align 4
@GDT_SCSI_CHAN_CNT = common dso_local global i32 0, align 4
@GDT_L_CTRL_PATTERN = common dso_local global i32 0, align 4
@GDT_IO_CHANNEL = common dso_local global i32 0, align 4
@GDT_GETCH_SZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Cannot get channel count, error %d\0A\00", align 1
@GDT_GETCH_SIOP_ID = common dso_local global i64 0, align 8
@GDT_SCSIRAWSERVICE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Raw service initialization error %d\0A\00", align 1
@GDT_SET_FEAT = common dso_local global i32 0, align 4
@GDT_SCATTER_GATHER = common dso_local global i32 0, align 4
@GDT_GET_FEAT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"%s: Scatter/Gather Raw Service required but not supported!\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"%s: Scatter/Gather Cache Service required but not supported!\0A\00", align 1
@GDT_OEM_VERSION = common dso_local global i32 0, align 4
@GDT_OEM_BUFSIZE = common dso_local global i32 0, align 4
@GDT_OEM_STR_RECORD = common dso_local global i32 0, align 4
@INTEL_VENDOR_ID_IIR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"Intel  \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ICP    \00", align 1
@GDT_MAX_HDRIVES = common dso_local global i32 0, align 4
@GDT_INFO = common dso_local global i32 0, align 4
@GDT_SECS32 = common dso_local global i32 0, align 4
@GDT_DEVTYPE = common dso_local global i32 0, align 4
@GDT_D_INIT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"dpmem %x %d-bus %d cache device%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@gdt_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iir_init(%struct.gdt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gdt_ccb*, align 8
  store %struct.gdt_softc* %0, %struct.gdt_softc** %3, align 8
  %11 = load i32, i32* @GDT_D_DEBUG, align 4
  %12 = call i32 @GDT_DPRINTF(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GDT_POLLING, align 4
  %14 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %14, i32 0, i32 29
  store i32 %13, i32* %15, align 8
  %16 = call i32 (...) @gdt_clear_events()
  %17 = call i32 @bzero(i32* @gdt_stat, i32 4)
  %18 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %18, i32 0, i32 19
  %20 = call i32 @SLIST_INIT(i32* %19)
  %21 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %22 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %21, i32 0, i32 28
  %23 = call i32 @SLIST_INIT(i32* %22)
  %24 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %25 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %24, i32 0, i32 27
  %26 = call i32 @TAILQ_INIT(i32* %25)
  %27 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %28 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %27, i32 0, i32 26
  %29 = call i32 @TAILQ_INIT(i32* %28)
  %30 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %31 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %30, i32 0, i32 25
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @DFLTPHYS, align 4
  %36 = load i32, i32* @GDT_MAXSG, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %38 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %39 = load i32, i32* @busdma_lock_mutex, align 4
  %40 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %41 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %40, i32 0, i32 10
  %42 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %43 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %42, i32 0, i32 21
  %44 = call i64 @bus_dma_tag_create(i32 %32, i32 1, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %1
  %47 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %48 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %804

51:                                               ; preds = %1
  %52 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %53 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %52, i32 0, i32 18
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %57 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %56, i32 0, i32 25
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %60 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %61 = load i32, i32* @GDT_MAXCMDS, align 4
  %62 = load i32, i32* @GDT_SCRATCH_SZ, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %65 = load i32, i32* @busdma_lock_mutex, align 4
  %66 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %67 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %66, i32 0, i32 10
  %68 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %69 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %68, i32 0, i32 24
  %70 = call i64 @bus_dma_tag_create(i32 %58, i32 1, i32 0, i32 %59, i32 %60, i32* null, i32* null, i32 %63, i32 1, i32 %64, i32 0, i32 %65, i32* %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %51
  %73 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %74 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %804

77:                                               ; preds = %51
  %78 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %79 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %83 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %82, i32 0, i32 24
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %86 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %85, i32 0, i32 0
  %87 = bitcast i32** %86 to i8**
  %88 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %89 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %90 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %89, i32 0, i32 23
  %91 = call i64 @bus_dmamem_alloc(i32 %84, i8** %87, i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %77
  %94 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %95 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %804

98:                                               ; preds = %77
  %99 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %100 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %99, i32 0, i32 18
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %104 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %103, i32 0, i32 24
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %107 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %106, i32 0, i32 23
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %110 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @GDT_MAXCMDS, align 4
  %113 = load i32, i32* @GDT_SCRATCH_SZ, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* @gdtmapmem, align 4
  %116 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %117 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %116, i32 0, i32 20
  %118 = call i32 @bus_dmamap_load(i32 %105, i32 %108, i32* %111, i32 %114, i32 %115, i64* %117, i32 0)
  %119 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %120 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %119, i32 0, i32 18
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %124 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @GDT_MAXCMDS, align 4
  %127 = load i32, i32* @GDT_SCRATCH_SZ, align 4
  %128 = mul nsw i32 %126, %127
  %129 = call i32 @bzero(i32* %125, i32 %128)
  %130 = load i32, i32* @GDT_MAXCMDS, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 56, %131
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* @M_GDTBUF, align 4
  %135 = load i32, i32* @M_NOWAIT, align 4
  %136 = load i32, i32* @M_ZERO, align 4
  %137 = or i32 %135, %136
  %138 = call %struct.gdt_ccb* @malloc(i32 %133, i32 %134, i32 %137)
  %139 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %140 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %139, i32 0, i32 22
  store %struct.gdt_ccb* %138, %struct.gdt_ccb** %140, align 8
  %141 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %142 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %141, i32 0, i32 22
  %143 = load %struct.gdt_ccb*, %struct.gdt_ccb** %142, align 8
  %144 = icmp eq %struct.gdt_ccb* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %98
  %146 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %147 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %146, i32 0, i32 13
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %804

150:                                              ; preds = %98
  %151 = load i32, i32* @GDT_MAXCMDS, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %215, %150
  %154 = load i32, i32* %5, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %218

156:                                              ; preds = %153
  %157 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %158 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %157, i32 0, i32 22
  %159 = load %struct.gdt_ccb*, %struct.gdt_ccb** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %159, i64 %161
  store %struct.gdt_ccb* %162, %struct.gdt_ccb** %10, align 8
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 2
  %165 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %166 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @GDT_GCF_UNUSED, align 4
  %168 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %169 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %172 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %174 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %173, i32 0, i32 21
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %177 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %176, i32 0, i32 6
  %178 = call i64 @bus_dmamap_create(i32 %175, i32 0, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %156
  store i32 1, i32* %2, align 4
  br label %804

181:                                              ; preds = %156
  %182 = load i32, i32* @TRUE, align 4
  %183 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %184 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  %185 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %186 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @GDT_SCRATCH_SZ, align 4
  %189 = load i32, i32* %5, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  %193 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %194 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %193, i32 0, i32 1
  store i32* %192, i32** %194, align 8
  %195 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %196 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %195, i32 0, i32 20
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @GDT_SCRATCH_SZ, align 4
  %199 = load i32, i32* %5, align 4
  %200 = mul nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %197, %201
  %203 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %204 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %203, i32 0, i32 4
  store i64 %202, i64* %204, align 8
  %205 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %206 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %205, i32 0, i32 3
  %207 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %208 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %207, i32 0, i32 10
  %209 = call i32 @callout_init_mtx(i32* %206, i32* %208, i32 0)
  %210 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %211 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %210, i32 0, i32 19
  %212 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %213 = load i32, i32* @sle, align 4
  %214 = call i32 @SLIST_INSERT_HEAD(i32* %211, %struct.gdt_ccb* %212, i32 %213)
  br label %215

215:                                              ; preds = %181
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %5, align 4
  br label %153

218:                                              ; preds = %153
  %219 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %220 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %219, i32 0, i32 18
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %224 = call i32 @gdt_make_dev(%struct.gdt_softc* %223)
  %225 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %226 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %225, i32 0, i32 17
  store i32 %224, i32* %226, align 8
  %227 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %228 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %227, i32 0, i32 10
  %229 = call i32 @mtx_lock(i32* %228)
  %230 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %231 = call %struct.gdt_ccb* @gdt_get_ccb(%struct.gdt_softc* %230)
  store %struct.gdt_ccb* %231, %struct.gdt_ccb** %10, align 8
  %232 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %233 = icmp eq %struct.gdt_ccb* %232, null
  br i1 %233, label %234, label %242

234:                                              ; preds = %218
  %235 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %236 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %235, i32 0, i32 10
  %237 = call i32 @mtx_unlock(i32* %236)
  %238 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %239 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %238, i32 0, i32 13
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i32, i8*, ...) @device_printf(i32 %240, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %804

242:                                              ; preds = %218
  %243 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %244 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* @GDT_CMD_SZ, align 4
  %247 = call i32 @bzero(i32* %245, i32 %246)
  %248 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %249 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %250 = load i32, i32* @GDT_SCREENSERVICE, align 4
  %251 = load i32, i32* @GDT_INIT, align 4
  %252 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %248, %struct.gdt_ccb* %249, i32 %250, i32 %251, i32 0, i32 0, i32 0)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %268, label %254

254:                                              ; preds = %242
  %255 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %256 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %255, i32 0, i32 13
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %259 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %258, i32 0, i32 14
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32, i8*, ...) @device_printf(i32 %257, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %260)
  %262 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %263 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %264 = call i32 @gdt_free_ccb(%struct.gdt_softc* %262, %struct.gdt_ccb* %263)
  %265 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %266 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %265, i32 0, i32 10
  %267 = call i32 @mtx_unlock(i32* %266)
  store i32 1, i32* %2, align 4
  br label %804

268:                                              ; preds = %242
  %269 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %270 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %271 = load i32, i32* @GDT_CACHESERVICE, align 4
  %272 = load i32, i32* @GDT_UNFREEZE_IO, align 4
  %273 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %269, %struct.gdt_ccb* %270, i32 %271, i32 %272, i32 0, i32 0, i32 0)
  %274 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %275 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %276 = load i32, i32* @GDT_CACHESERVICE, align 4
  %277 = load i32, i32* @GDT_INIT, align 4
  %278 = load i32, i32* @GDT_LINUX_OS, align 4
  %279 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %274, %struct.gdt_ccb* %275, i32 %276, i32 %277, i32 %278, i32 0, i32 0)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %295, label %281

281:                                              ; preds = %268
  %282 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %283 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %282, i32 0, i32 13
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %286 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %285, i32 0, i32 14
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i32, i8*, ...) @device_printf(i32 %284, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %287)
  %289 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %290 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %291 = call i32 @gdt_free_ccb(%struct.gdt_softc* %289, %struct.gdt_ccb* %290)
  %292 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %293 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %292, i32 0, i32 10
  %294 = call i32 @mtx_unlock(i32* %293)
  store i32 1, i32* %2, align 4
  br label %804

295:                                              ; preds = %268
  %296 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %297 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  store i32 %298, i32* %4, align 4
  %299 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %300 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %299, i32 0, i32 15
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %303 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %302, i32 0, i32 16
  store i32 %301, i32* %303, align 4
  %304 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %305 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* @GDT_IOC_VERSION, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* @GDT_IOC_NEWEST, align 4
  %311 = call i32 @gdt_enc32(i32* %309, i32 %310)
  %312 = load i32, i32* @GDT_MAXBUS, align 4
  %313 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %314 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* @GDT_IOC_LIST_ENTRIES, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  store i32 %312, i32* %317, align 4
  %318 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %319 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* @GDT_IOC_FIRST_CHAN, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  store i32 0, i32* %322, align 4
  %323 = load i32, i32* @GDT_MAXBUS, align 4
  %324 = sub nsw i32 %323, 1
  %325 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %326 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = load i64, i64* @GDT_IOC_LAST_CHAN, align 8
  %329 = getelementptr inbounds i32, i32* %327, i64 %328
  store i32 %324, i32* %329, align 4
  %330 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %331 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* @GDT_IOC_LIST_OFFSET, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* @GDT_IOC_HDR_SZ, align 4
  %337 = call i32 @gdt_enc32(i32* %335, i32 %336)
  %338 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %339 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %340 = load i32, i32* @GDT_CACHESERVICE, align 4
  %341 = load i32, i32* @GDT_IOCTL, align 4
  %342 = load i32, i32* @GDT_IOCHAN_RAW_DESC, align 4
  %343 = load i32, i32* @GDT_INVALID_CHANNEL, align 4
  %344 = load i32, i32* @GDT_IOC_HDR_SZ, align 4
  %345 = load i32, i32* @GDT_MAXBUS, align 4
  %346 = load i32, i32* @GDT_RAWIOC_SZ, align 4
  %347 = mul nsw i32 %345, %346
  %348 = add nsw i32 %344, %347
  %349 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %338, %struct.gdt_ccb* %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %398

351:                                              ; preds = %295
  %352 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %353 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i64, i64* @GDT_IOC_CHAN_COUNT, align 8
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %359 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 4
  store i32 0, i32* %5, align 4
  br label %360

360:                                              ; preds = %394, %351
  %361 = load i32, i32* %5, align 4
  %362 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %363 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %397

366:                                              ; preds = %360
  %367 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %368 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* @GDT_IOC_HDR_SZ, align 4
  %371 = load i32, i32* %5, align 4
  %372 = load i32, i32* @GDT_RAWIOC_SZ, align 4
  %373 = mul nsw i32 %371, %372
  %374 = add nsw i32 %370, %373
  %375 = load i32, i32* @GDT_RAWIOC_PROC_ID, align 4
  %376 = add nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %369, i64 %377
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %6, align 4
  %380 = load i32, i32* %6, align 4
  %381 = load i32, i32* @GDT_MAXID_FC, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %366
  %384 = load i32, i32* %6, align 4
  br label %386

385:                                              ; preds = %366
  br label %386

386:                                              ; preds = %385, %383
  %387 = phi i32 [ %384, %383 ], [ 255, %385 ]
  %388 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %389 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %388, i32 0, i32 3
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %5, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 %387, i32* %393, align 4
  br label %394

394:                                              ; preds = %386
  %395 = load i32, i32* %5, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %5, align 4
  br label %360

397:                                              ; preds = %360
  br label %475

398:                                              ; preds = %295
  store i32 0, i32* %5, align 4
  br label %399

399:                                              ; preds = %468, %398
  %400 = load i32, i32* %5, align 4
  %401 = load i32, i32* @GDT_MAXBUS, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %471

403:                                              ; preds = %399
  %404 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %405 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* @GDT_GETCH_CHANNEL_NO, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %5, align 4
  %411 = call i32 @gdt_enc32(i32* %409, i32 %410)
  %412 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %413 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %414 = load i32, i32* @GDT_CACHESERVICE, align 4
  %415 = load i32, i32* @GDT_IOCTL, align 4
  %416 = load i32, i32* @GDT_SCSI_CHAN_CNT, align 4
  %417 = load i32, i32* @GDT_L_CTRL_PATTERN, align 4
  %418 = or i32 %416, %417
  %419 = load i32, i32* @GDT_IO_CHANNEL, align 4
  %420 = load i32, i32* @GDT_INVALID_CHANNEL, align 4
  %421 = or i32 %419, %420
  %422 = load i32, i32* @GDT_GETCH_SZ, align 4
  %423 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %412, %struct.gdt_ccb* %413, i32 %414, i32 %415, i32 %418, i32 %421, i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %443, label %425

425:                                              ; preds = %403
  %426 = load i32, i32* %5, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %442

428:                                              ; preds = %425
  %429 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %430 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %429, i32 0, i32 13
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %433 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %432, i32 0, i32 14
  %434 = load i32, i32* %433, align 4
  %435 = call i32 (i32, i8*, ...) @device_printf(i32 %431, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %434)
  %436 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %437 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %438 = call i32 @gdt_free_ccb(%struct.gdt_softc* %436, %struct.gdt_ccb* %437)
  %439 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %440 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %439, i32 0, i32 10
  %441 = call i32 @mtx_unlock(i32* %440)
  store i32 1, i32* %2, align 4
  br label %804

442:                                              ; preds = %425
  br label %471

443:                                              ; preds = %403
  %444 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %445 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = load i64, i64* @GDT_GETCH_SIOP_ID, align 8
  %448 = getelementptr inbounds i32, i32* %446, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @GDT_MAXID_FC, align 4
  %451 = icmp slt i32 %449, %450
  br i1 %451, label %452, label %459

452:                                              ; preds = %443
  %453 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %454 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %453, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = load i64, i64* @GDT_GETCH_SIOP_ID, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  %458 = load i32, i32* %457, align 4
  br label %460

459:                                              ; preds = %443
  br label %460

460:                                              ; preds = %459, %452
  %461 = phi i32 [ %458, %452 ], [ 255, %459 ]
  %462 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %463 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %462, i32 0, i32 3
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %5, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  store i32 %461, i32* %467, align 4
  br label %468

468:                                              ; preds = %460
  %469 = load i32, i32* %5, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %5, align 4
  br label %399

471:                                              ; preds = %442, %399
  %472 = load i32, i32* %5, align 4
  %473 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %474 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %473, i32 0, i32 2
  store i32 %472, i32* %474, align 4
  br label %475

475:                                              ; preds = %471, %397
  %476 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %477 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %480 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %479, i32 0, i32 4
  store i32 %478, i32* %480, align 8
  %481 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %482 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %482, align 4
  %485 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %486 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %487 = load i32, i32* @GDT_SCSIRAWSERVICE, align 4
  %488 = load i32, i32* @GDT_INIT, align 4
  %489 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %485, %struct.gdt_ccb* %486, i32 %487, i32 %488, i32 0, i32 0, i32 0)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %505, label %491

491:                                              ; preds = %475
  %492 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %493 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %492, i32 0, i32 13
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %496 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %495, i32 0, i32 14
  %497 = load i32, i32* %496, align 4
  %498 = call i32 (i32, i8*, ...) @device_printf(i32 %494, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %497)
  %499 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %500 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %501 = call i32 @gdt_free_ccb(%struct.gdt_softc* %499, %struct.gdt_ccb* %500)
  %502 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %503 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %502, i32 0, i32 10
  %504 = call i32 @mtx_unlock(i32* %503)
  store i32 1, i32* %2, align 4
  br label %804

505:                                              ; preds = %475
  %506 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %507 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %506, i32 0, i32 5
  store i32 0, i32* %507, align 4
  %508 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %509 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %510 = load i32, i32* @GDT_SCSIRAWSERVICE, align 4
  %511 = load i32, i32* @GDT_SET_FEAT, align 4
  %512 = load i32, i32* @GDT_SCATTER_GATHER, align 4
  %513 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %508, %struct.gdt_ccb* %509, i32 %510, i32 %511, i32 %512, i32 0, i32 0)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %548

515:                                              ; preds = %505
  %516 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %517 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %518 = load i32, i32* @GDT_SCSIRAWSERVICE, align 4
  %519 = load i32, i32* @GDT_GET_FEAT, align 4
  %520 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %516, %struct.gdt_ccb* %517, i32 %518, i32 %519, i32 0, i32 0, i32 0)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %547

522:                                              ; preds = %515
  %523 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %524 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  %526 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %527 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %526, i32 0, i32 5
  store i32 %525, i32* %527, align 4
  %528 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %529 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 8
  %531 = load i32, i32* @GDT_SCATTER_GATHER, align 4
  %532 = and i32 %530, %531
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %546, label %534

534:                                              ; preds = %522
  %535 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %536 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %535, i32 0, i32 13
  %537 = load i32, i32* %536, align 8
  %538 = call i32 @device_get_nameunit(i32 %537)
  %539 = call i32 @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %538)
  %540 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %541 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %542 = call i32 @gdt_free_ccb(%struct.gdt_softc* %540, %struct.gdt_ccb* %541)
  %543 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %544 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %543, i32 0, i32 10
  %545 = call i32 @mtx_unlock(i32* %544)
  store i32 1, i32* %2, align 4
  br label %804

546:                                              ; preds = %522
  br label %547

547:                                              ; preds = %546, %515
  br label %548

548:                                              ; preds = %547, %505
  %549 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %550 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %549, i32 0, i32 6
  store i32 0, i32* %550, align 8
  %551 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %552 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %553 = load i32, i32* @GDT_CACHESERVICE, align 4
  %554 = load i32, i32* @GDT_SET_FEAT, align 4
  %555 = load i32, i32* @GDT_SCATTER_GATHER, align 4
  %556 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %551, %struct.gdt_ccb* %552, i32 %553, i32 %554, i32 0, i32 %555, i32 0)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %591

558:                                              ; preds = %548
  %559 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %560 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %561 = load i32, i32* @GDT_CACHESERVICE, align 4
  %562 = load i32, i32* @GDT_GET_FEAT, align 4
  %563 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %559, %struct.gdt_ccb* %560, i32 %561, i32 %562, i32 0, i32 0, i32 0)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %590

565:                                              ; preds = %558
  %566 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %567 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 8
  %569 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %570 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %569, i32 0, i32 6
  store i32 %568, i32* %570, align 8
  %571 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %572 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 8
  %574 = load i32, i32* @GDT_SCATTER_GATHER, align 4
  %575 = and i32 %573, %574
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %589, label %577

577:                                              ; preds = %565
  %578 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %579 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %578, i32 0, i32 13
  %580 = load i32, i32* %579, align 8
  %581 = call i32 @device_get_nameunit(i32 %580)
  %582 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %581)
  %583 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %584 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %585 = call i32 @gdt_free_ccb(%struct.gdt_softc* %583, %struct.gdt_ccb* %584)
  %586 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %587 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %586, i32 0, i32 10
  %588 = call i32 @mtx_unlock(i32* %587)
  store i32 1, i32* %2, align 4
  br label %804

589:                                              ; preds = %565
  br label %590

590:                                              ; preds = %589, %558
  br label %591

591:                                              ; preds = %590, %548
  %592 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %593 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %592, i32 0, i32 1
  %594 = load i32*, i32** %593, align 8
  %595 = load i32, i32* @GDT_OEM_VERSION, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = call i32 @gdt_enc32(i32* %597, i32 1)
  %599 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %600 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %599, i32 0, i32 1
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* @GDT_OEM_BUFSIZE, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  %605 = call i32 @gdt_enc32(i32* %604, i32 4)
  %606 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %607 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %608 = load i32, i32* @GDT_CACHESERVICE, align 4
  %609 = load i32, i32* @GDT_IOCTL, align 4
  %610 = load i32, i32* @GDT_OEM_STR_RECORD, align 4
  %611 = load i32, i32* @GDT_INVALID_CHANNEL, align 4
  %612 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %606, %struct.gdt_ccb* %607, i32 %608, i32 %609, i32 %610, i32 %611, i32 4)
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %630

614:                                              ; preds = %591
  %615 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %616 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %615, i32 0, i32 7
  %617 = load i8*, i8** %616, align 8
  %618 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %619 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %618, i32 0, i32 1
  %620 = load i32*, i32** %619, align 8
  %621 = bitcast i32* %620 to %struct.TYPE_6__*
  %622 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  %625 = call i32 @strncpy(i8* %617, i32 %624, i32 7)
  %626 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %627 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %626, i32 0, i32 7
  %628 = load i8*, i8** %627, align 8
  %629 = getelementptr inbounds i8, i8* %628, i64 7
  store i8 0, i8* %629, align 1
  br label %647

630:                                              ; preds = %591
  %631 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %632 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %631, i32 0, i32 8
  %633 = load i64, i64* %632, align 8
  %634 = load i64, i64* @INTEL_VENDOR_ID_IIR, align 8
  %635 = icmp eq i64 %633, %634
  br i1 %635, label %636, label %641

636:                                              ; preds = %630
  %637 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %638 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %637, i32 0, i32 7
  %639 = load i8*, i8** %638, align 8
  %640 = call i32 @strcpy(i8* %639, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %646

641:                                              ; preds = %630
  %642 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %643 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %642, i32 0, i32 7
  %644 = load i8*, i8** %643, align 8
  %645 = call i32 @strcpy(i8* %644, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %646

646:                                              ; preds = %641, %636
  br label %647

647:                                              ; preds = %646, %614
  store i32 0, i32* %5, align 4
  br label %648

648:                                              ; preds = %780, %647
  %649 = load i32, i32* %5, align 4
  %650 = load i32, i32* %4, align 4
  %651 = icmp slt i32 %649, %650
  br i1 %651, label %652, label %656

652:                                              ; preds = %648
  %653 = load i32, i32* %5, align 4
  %654 = load i32, i32* @GDT_MAX_HDRIVES, align 4
  %655 = icmp slt i32 %653, %654
  br label %656

656:                                              ; preds = %652, %648
  %657 = phi i1 [ false, %648 ], [ %655, %652 ]
  br i1 %657, label %658, label %783

658:                                              ; preds = %656
  %659 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %660 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %661 = load i32, i32* @GDT_CACHESERVICE, align 4
  %662 = load i32, i32* @GDT_INFO, align 4
  %663 = load i32, i32* %5, align 4
  %664 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %659, %struct.gdt_ccb* %660, i32 %661, i32 %662, i32 %663, i32 0, i32 0)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %779

666:                                              ; preds = %658
  %667 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %668 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %667, i32 0, i32 12
  %669 = load %struct.TYPE_5__*, %struct.TYPE_5__** %668, align 8
  %670 = load i32, i32* %5, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %669, i64 %671
  %673 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %672, i32 0, i32 0
  store i32 1, i32* %673, align 4
  %674 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %675 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %674, i32 0, i32 1
  %676 = load i32, i32* %675, align 8
  %677 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %678 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %677, i32 0, i32 12
  %679 = load %struct.TYPE_5__*, %struct.TYPE_5__** %678, align 8
  %680 = load i32, i32* %5, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %679, i64 %681
  %683 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %682, i32 0, i32 1
  store i32 %676, i32* %683, align 4
  %684 = load i32, i32* @GDT_SECS32, align 4
  %685 = xor i32 %684, -1
  %686 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %687 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %686, i32 0, i32 12
  %688 = load %struct.TYPE_5__*, %struct.TYPE_5__** %687, align 8
  %689 = load i32, i32* %5, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %688, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 4
  %694 = and i32 %693, %685
  store i32 %694, i32* %692, align 4
  %695 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %696 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %695, i32 0, i32 9
  %697 = load i32, i32* %696, align 8
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %709

699:                                              ; preds = %666
  %700 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %701 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %700, i32 0, i32 12
  %702 = load %struct.TYPE_5__*, %struct.TYPE_5__** %701, align 8
  %703 = load i32, i32* %5, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %702, i64 %704
  %706 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %705, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = call i32 @gdt_eval_mapping(i32 %707, i32* %7, i32* %8, i32* %9)
  br label %731

709:                                              ; preds = %666
  %710 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %711 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %710, i32 0, i32 9
  %712 = load i32, i32* %711, align 8
  %713 = and i32 %712, 255
  store i32 %713, i32* %8, align 4
  %714 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %715 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %714, i32 0, i32 9
  %716 = load i32, i32* %715, align 8
  %717 = ashr i32 %716, 8
  %718 = and i32 %717, 255
  store i32 %718, i32* %9, align 4
  %719 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %720 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %719, i32 0, i32 12
  %721 = load %struct.TYPE_5__*, %struct.TYPE_5__** %720, align 8
  %722 = load i32, i32* %5, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %724, i32 0, i32 1
  %726 = load i32, i32* %725, align 4
  %727 = load i32, i32* %8, align 4
  %728 = sdiv i32 %726, %727
  %729 = load i32, i32* %9, align 4
  %730 = sdiv i32 %728, %729
  store i32 %730, i32* %7, align 4
  br label %731

731:                                              ; preds = %709, %699
  %732 = load i32, i32* %8, align 4
  %733 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %734 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %733, i32 0, i32 12
  %735 = load %struct.TYPE_5__*, %struct.TYPE_5__** %734, align 8
  %736 = load i32, i32* %5, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %735, i64 %737
  %739 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %738, i32 0, i32 2
  store i32 %732, i32* %739, align 4
  %740 = load i32, i32* %9, align 4
  %741 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %742 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %741, i32 0, i32 12
  %743 = load %struct.TYPE_5__*, %struct.TYPE_5__** %742, align 8
  %744 = load i32, i32* %5, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %743, i64 %745
  %747 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %746, i32 0, i32 3
  store i32 %740, i32* %747, align 4
  %748 = load i32, i32* %7, align 4
  %749 = load i32, i32* %8, align 4
  %750 = mul nsw i32 %748, %749
  %751 = load i32, i32* %9, align 4
  %752 = mul nsw i32 %750, %751
  %753 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %754 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %753, i32 0, i32 12
  %755 = load %struct.TYPE_5__*, %struct.TYPE_5__** %754, align 8
  %756 = load i32, i32* %5, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %755, i64 %757
  %759 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %758, i32 0, i32 1
  store i32 %752, i32* %759, align 4
  %760 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %761 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %762 = load i32, i32* @GDT_CACHESERVICE, align 4
  %763 = load i32, i32* @GDT_DEVTYPE, align 4
  %764 = load i32, i32* %5, align 4
  %765 = call i64 @gdt_internal_cmd(%struct.gdt_softc* %760, %struct.gdt_ccb* %761, i32 %762, i32 %763, i32 %764, i32 0, i32 0)
  %766 = icmp ne i64 %765, 0
  br i1 %766, label %767, label %778

767:                                              ; preds = %731
  %768 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %769 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %768, i32 0, i32 1
  %770 = load i32, i32* %769, align 8
  %771 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %772 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %771, i32 0, i32 12
  %773 = load %struct.TYPE_5__*, %struct.TYPE_5__** %772, align 8
  %774 = load i32, i32* %5, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %773, i64 %775
  %777 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %776, i32 0, i32 4
  store i32 %770, i32* %777, align 4
  br label %778

778:                                              ; preds = %767, %731
  br label %779

779:                                              ; preds = %778, %658
  br label %780

780:                                              ; preds = %779
  %781 = load i32, i32* %5, align 4
  %782 = add nsw i32 %781, 1
  store i32 %782, i32* %5, align 4
  br label %648

783:                                              ; preds = %656
  %784 = load i32, i32* @GDT_D_INIT, align 4
  %785 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %786 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %785, i32 0, i32 11
  %787 = load i32, i32* %786, align 8
  %788 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %789 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %788, i32 0, i32 2
  %790 = load i32, i32* %789, align 4
  %791 = load i32, i32* %4, align 4
  %792 = load i32, i32* %4, align 4
  %793 = icmp eq i32 %792, 1
  %794 = zext i1 %793 to i64
  %795 = select i1 %793, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %796 = call i32 @GDT_DPRINTF(i32 %784, i8* %795)
  %797 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %798 = load %struct.gdt_ccb*, %struct.gdt_ccb** %10, align 8
  %799 = call i32 @gdt_free_ccb(%struct.gdt_softc* %797, %struct.gdt_ccb* %798)
  %800 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %801 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %800, i32 0, i32 10
  %802 = call i32 @mtx_unlock(i32* %801)
  %803 = call i32 @atomic_add_int(i32* @gdt_cnt, i32 1)
  store i32 0, i32* %2, align 4
  br label %804

804:                                              ; preds = %783, %577, %534, %491, %428, %281, %254, %234, %180, %145, %93, %72, %46
  %805 = load i32, i32* %2, align 4
  ret i32 %805
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @gdt_clear_events(...) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, i64*, i32) #1

declare dso_local %struct.gdt_ccb* @malloc(i32, i32, i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.gdt_ccb*, i32) #1

declare dso_local i32 @gdt_make_dev(%struct.gdt_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gdt_ccb* @gdt_get_ccb(%struct.gdt_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @gdt_internal_cmd(%struct.gdt_softc*, %struct.gdt_ccb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdt_free_ccb(%struct.gdt_softc*, %struct.gdt_ccb*) #1

declare dso_local i32 @gdt_enc32(i32*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @gdt_eval_mapping(i32, i32*, i32*, i32*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
