; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { %struct.TYPE_4__, i32*, i64, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i64, i32*, i32*, i32, i32, i64, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_4__ = type { %struct.twa_softc* }
%struct.TYPE_5__ = type { %struct.twa_softc* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"tw_osl_io_lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"tw_osl_q_lock\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"tw_osl_sim_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@_hw = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot add sysctl tree node\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@TW_OSL_DRIVER_VERSION_STRING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"TWA driver version\00", align 1
@TW_CL_BAR_TYPE_MEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Can't get PCI BAR info\00", align 1
@PCIR_BARS = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Can't allocate register window\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Can't allocate interrupt\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Can't set up interrupt\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@TW_OSLI_MAX_NUM_REQUESTS = common dso_local global i32 0, align 4
@TW_OSLI_MAX_NUM_AENS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"Failed to initialize Common Layer/controller\00", align 1
@twa_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"twa%d\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Failed to initialize CAM\00", align 1
@hz = common dso_local global i32 0, align 4
@twa_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @twa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @twa_attach(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.twa_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.twa_softc* @device_get_softc(i32 %9)
  store %struct.twa_softc* %10, %struct.twa_softc** %4, align 8
  %11 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %12 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %14 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %15 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.twa_softc* %13, %struct.twa_softc** %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %19 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_get_device(i32 %20)
  %22 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %23 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %25 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %24, i32 0, i32 23
  %26 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %27 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %26, i32 0, i32 22
  store i32* %25, i32** %27, align 8
  %28 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %29 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %28, i32 0, i32 22
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @MTX_SPIN, align 4
  %32 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %31)
  %33 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %34 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %33, i32 0, i32 21
  %35 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %36 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %35, i32 0, i32 20
  store i32* %34, i32** %36, align 8
  %37 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %38 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %37, i32 0, i32 20
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @MTX_SPIN, align 4
  %41 = call i32 @mtx_init(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %40)
  %42 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %43 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %42, i32 0, i32 19
  %44 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %45 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %44, i32 0, i32 18
  store i32* %43, i32** %45, align 8
  %46 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %47 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %46, i32 0, i32 18
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = load i32, i32* @MTX_RECURSE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @mtx_init(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %51)
  %53 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %54 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %53, i32 0, i32 17
  %55 = call i32 @sysctl_ctx_init(i32* %54)
  %56 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %57 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %56, i32 0, i32 17
  %58 = load i32, i32* @_hw, align 4
  %59 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %58)
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_get_nameunit(i32 %61)
  %63 = load i32, i32* @CTLFLAG_RD, align 4
  %64 = call i32* @SYSCTL_ADD_NODE(i32* %57, i32 %59, i32 %60, i32 %62, i32 %63, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %66 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %65, i32 0, i32 16
  store i32* %64, i32** %66, align 8
  %67 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %68 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %67, i32 0, i32 16
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %1
  %72 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %73 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %74 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %75 = load i64, i64* @ENXIO, align 8
  %76 = call i32 @tw_osli_printf(%struct.twa_softc* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %74, i32 8192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* @ENXIO, align 8
  store i64 %77, i64* %2, align 8
  br label %283

78:                                               ; preds = %1
  %79 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %80 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %79, i32 0, i32 17
  %81 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %82 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %81, i32 0, i32 16
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @SYSCTL_CHILDREN(i32* %83)
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = load i32, i32* @TW_OSL_DRIVER_VERSION_STRING, align 4
  %88 = call i32 @SYSCTL_ADD_STRING(i32* %80, i32 %84, i32 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %86, i32 %87, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @pci_enable_busmaster(i32 %89)
  %91 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %92 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TW_CL_BAR_TYPE_MEM, align 4
  %95 = call i64 @tw_cl_get_pci_bar_info(i32 %93, i32 %94, i64* %5, i64* %6, i64* %7)
  store i64 %95, i64* %8, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %78
  %98 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %99 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %100 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @tw_osli_printf(%struct.twa_softc* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %100, i32 8223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %101)
  %103 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %104 = call i32 @tw_osli_free_resources(%struct.twa_softc* %103)
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %2, align 8
  br label %283

106:                                              ; preds = %78
  %107 = load i64, i64* @PCIR_BARS, align 8
  %108 = load i64, i64* %6, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %111 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %110, i32 0, i32 15
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @SYS_RES_MEMORY, align 4
  %114 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %115 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %114, i32 0, i32 15
  %116 = load i32, i32* @RF_ACTIVE, align 4
  %117 = call i8* @bus_alloc_resource_any(i32 %112, i32 %113, i64* %115, i32 %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %120 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %119, i32 0, i32 12
  store i32* %118, i32** %120, align 8
  %121 = icmp eq i32* %118, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %106
  %123 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %124 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %125 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %126 = load i64, i64* @ENXIO, align 8
  %127 = call i32 @tw_osli_printf(%struct.twa_softc* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %125, i32 8194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64 %126)
  %128 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %129 = call i32 @tw_osli_free_resources(%struct.twa_softc* %128)
  %130 = load i64, i64* @ENXIO, align 8
  store i64 %130, i64* %2, align 8
  br label %283

131:                                              ; preds = %106
  %132 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %133 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %132, i32 0, i32 12
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @rman_get_bustag(i32* %134)
  %136 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %137 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %136, i32 0, i32 14
  store i32 %135, i32* %137, align 4
  %138 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %139 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %138, i32 0, i32 12
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @rman_get_bushandle(i32* %140)
  %142 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %143 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %142, i32 0, i32 13
  store i32 %141, i32* %143, align 8
  %144 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %145 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %144, i32 0, i32 10
  store i64 0, i64* %145, align 8
  %146 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %147 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SYS_RES_IRQ, align 4
  %150 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %151 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %150, i32 0, i32 10
  %152 = load i32, i32* @RF_SHAREABLE, align 4
  %153 = load i32, i32* @RF_ACTIVE, align 4
  %154 = or i32 %152, %153
  %155 = call i8* @bus_alloc_resource_any(i32 %148, i32 %149, i64* %151, i32 %154)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %158 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %157, i32 0, i32 11
  store i32* %156, i32** %158, align 8
  %159 = icmp eq i32* %156, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %131
  %161 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %162 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %163 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %164 = load i64, i64* @ENXIO, align 8
  %165 = call i32 @tw_osli_printf(%struct.twa_softc* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %162, i32 %163, i32 8195, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %164)
  %166 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %167 = call i32 @tw_osli_free_resources(%struct.twa_softc* %166)
  %168 = load i64, i64* @ENXIO, align 8
  store i64 %168, i64* %2, align 8
  br label %283

169:                                              ; preds = %131
  %170 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %171 = call i64 @twa_setup_intr(%struct.twa_softc* %170)
  store i64 %171, i64* %8, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %175 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %176 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @tw_osli_printf(%struct.twa_softc* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %175, i32 %176, i32 8196, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %177)
  %179 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %180 = call i32 @tw_osli_free_resources(%struct.twa_softc* %179)
  %181 = load i64, i64* %8, align 8
  store i64 %181, i64* %2, align 8
  br label %283

182:                                              ; preds = %169
  %183 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %184 = call i64 @tw_osli_alloc_mem(%struct.twa_softc* %183)
  store i64 %184, i64* %8, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %188 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %189 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %190 = load i64, i64* %8, align 8
  %191 = call i32 @tw_osli_printf(%struct.twa_softc* %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %188, i32 %189, i32 8197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i64 %190)
  %192 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %193 = call i32 @tw_osli_free_resources(%struct.twa_softc* %192)
  %194 = load i64, i64* %8, align 8
  store i64 %194, i64* %2, align 8
  br label %283

195:                                              ; preds = %182
  %196 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %197 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %196, i32 0, i32 0
  %198 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %199 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %202 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @TW_OSLI_MAX_NUM_REQUESTS, align 4
  %205 = load i32, i32* @TW_OSLI_MAX_NUM_AENS, align 4
  %206 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %207 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %210 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %213 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @tw_cl_init_ctlr(%struct.TYPE_4__* %197, i32 %200, i32 %203, i32 %204, i32 %205, i32 %208, i32 %211, i32 %214)
  store i64 %215, i64* %8, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %195
  %218 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %219 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %220 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %221 = load i64, i64* %8, align 8
  %222 = call i32 @tw_osli_printf(%struct.twa_softc* %218, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %219, i32 %220, i32 8198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i64 %221)
  %223 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %224 = call i32 @tw_osli_free_resources(%struct.twa_softc* %223)
  %225 = load i64, i64* %8, align 8
  store i64 %225, i64* %2, align 8
  br label %283

226:                                              ; preds = %195
  %227 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %228 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @device_get_unit(i32 %229)
  %231 = load i32, i32* @UID_ROOT, align 4
  %232 = load i32, i32* @GID_OPERATOR, align 4
  %233 = load i32, i32* @S_IRUSR, align 4
  %234 = load i32, i32* @S_IWUSR, align 4
  %235 = or i32 %233, %234
  %236 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %237 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @device_get_unit(i32 %238)
  %240 = call %struct.TYPE_5__* @make_dev(i32* @twa_cdevsw, i32 %230, i32 %231, i32 %232, i32 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %239)
  %241 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %242 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %241, i32 0, i32 3
  store %struct.TYPE_5__* %240, %struct.TYPE_5__** %242, align 8
  %243 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %244 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %245 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %244, i32 0, i32 3
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  store %struct.twa_softc* %243, %struct.twa_softc** %247, align 8
  %248 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %249 = call i64 @tw_osli_cam_attach(%struct.twa_softc* %248)
  store i64 %249, i64* %8, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %226
  %252 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %253 = call i32 @tw_osli_free_resources(%struct.twa_softc* %252)
  %254 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %255 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %256 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %257 = load i64, i64* %8, align 8
  %258 = call i32 @tw_osli_printf(%struct.twa_softc* %254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %255, i32 %256, i32 8199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i64 %257)
  %259 = load i64, i64* %8, align 8
  store i64 %259, i64* %2, align 8
  br label %283

260:                                              ; preds = %226
  %261 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %262 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %261, i32 0, i32 2
  store i64 0, i64* %262, align 8
  %263 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %264 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = call i32 @callout_init(i32* %266, i32 1)
  %268 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %269 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = call i32 @callout_init(i32* %271, i32 1)
  %273 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %274 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* @hz, align 4
  %278 = mul nsw i32 5, %277
  %279 = load i32, i32* @twa_watchdog, align 4
  %280 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %281 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %280, i32 0, i32 0
  %282 = call i32 @callout_reset(i32* %276, i32 %278, i32 %279, %struct.TYPE_4__* %281)
  store i64 0, i64* %2, align 8
  br label %283

283:                                              ; preds = %260, %251, %217, %186, %173, %160, %122, %97, %71
  %284 = load i64, i64* %2, align 8
  ret i64 %284
}

declare dso_local %struct.twa_softc* @device_get_softc(i32) #1

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32* @SYSCTL_ADD_NODE(i32*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i64 @tw_cl_get_pci_bar_info(i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @tw_osli_free_resources(%struct.twa_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @twa_setup_intr(%struct.twa_softc*) #1

declare dso_local i64 @tw_osli_alloc_mem(%struct.twa_softc*) #1

declare dso_local i64 @tw_cl_init_ctlr(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @tw_osli_cam_attach(%struct.twa_softc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
