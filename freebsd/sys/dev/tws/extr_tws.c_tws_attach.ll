; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i8*, i32*, i32**, i8**, i64, i32, i64, i64, %struct.TYPE_3__*, i32, i32, i8*, i8*, i8*, i8*, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tws_softc* }

@.str = private unnamed_addr constant [11 x i8] c"tws_q_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tws_sim_lock\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"tws_gen_lock\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tws_io_lock\00", align 1
@MTX_RECURSE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"trace init failure\0A\00", align 1
@TWS_INIT_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"BIG endian\00", align 1
@_hw = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SYSCTL_TREE_NODE_ADD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@TWS_DRIVER_VERSION_STRING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"TWS driver version\00", align 1
@TWS_PCI_BAR0 = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"bar0 \00", align 1
@TWS_PCI_BAR1 = common dso_local global i8* null, align 8
@TWS_BIT2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"bar1 \00", align 1
@TWS_PCI_BAR2 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"bar2 \00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ALLOC_MEMORY_RES = common dso_local global i32 0, align 4
@TWS_INTx = common dso_local global i32 0, align 4
@tws_enable_msi = common dso_local global i64 0, align 8
@TWS_MSI = common dso_local global i32 0, align 4
@tws_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"tws%u\00", align 1
@TWS_INIT_FAILURE = common dso_local global i32 0, align 4
@TWS_CTLR_INIT_FAILURE = common dso_local global i32 0, align 4
@TWS_CAM_ATTACH = common dso_local global i32 0, align 4
@TWS_INIT_COMPLETE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"attached successfully\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"bus irq res\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"bus release \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"bus release2 \00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tws_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.tws_softc* @device_get_softc(i32 %8)
  store %struct.tws_softc* %9, %struct.tws_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %12 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %11, i32 0, i32 9
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pci_get_device(i32 %13)
  %15 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %16 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %15, i32 0, i32 19
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pci_get_subvendor(i32 %17)
  %19 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %20 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %19, i32 0, i32 28
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_get_subdevice(i32 %21)
  %23 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %24 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %23, i32 0, i32 27
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %26 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %25, i32 0, i32 6
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  %29 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %30 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %29, i32 0, i32 5
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %31)
  %33 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %34 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %33, i32 0, i32 4
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = call i32 @mtx_init(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %35)
  %37 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %38 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %37, i32 0, i32 3
  %39 = load i32, i32* @MTX_DEF, align 4
  %40 = load i32, i32* @MTX_RECURSE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @mtx_init(i32* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %44 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %43, i32 0, i32 26
  %45 = call i32 @callout_init(i32* %44, i32 1)
  %46 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %47 = call i64 @tws_init_trace_q(%struct.tws_softc* %46)
  %48 = load i64, i64* @FAILURE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %1
  %53 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %54 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %53, i32 0, i32 4
  %55 = call i32 @mtx_lock(i32* %54)
  %56 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %57 = load i32, i32* @TWS_INIT_START, align 4
  %58 = call i32 @tws_send_event(%struct.tws_softc* %56, i32 %57)
  %59 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %60 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %59, i32 0, i32 4
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %63 = call i32 @TWS_TRACE(%struct.tws_softc* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* null)
  %64 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %65 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %64, i32 0, i32 2
  %66 = call i32 @sysctl_ctx_init(i32* %65)
  %67 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %68 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %67, i32 0, i32 2
  %69 = load i32, i32* @_hw, align 4
  %70 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %69)
  %71 = load i32, i32* @OID_AUTO, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_get_nameunit(i32 %72)
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = call i32* @SYSCTL_ADD_NODE(i32* %68, i32 %70, i32 %71, i32 %73, i32 %74, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %77 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %76, i32 0, i32 25
  store i32* %75, i32** %77, align 8
  %78 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %79 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %78, i32 0, i32 25
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %52
  %83 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %84 = load i32, i32* @SYSCTL_TREE_NODE_ADD, align 4
  %85 = call i32 @tws_log(%struct.tws_softc* %83, i32 %84)
  br label %412

86:                                               ; preds = %52
  %87 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %88 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %87, i32 0, i32 2
  %89 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %90 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %89, i32 0, i32 25
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @SYSCTL_CHILDREN(i32* %91)
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLFLAG_RD, align 4
  %95 = load i32, i32* @TWS_DRIVER_VERSION_STRING, align 4
  %96 = call i32 @SYSCTL_ADD_STRING(i32* %88, i32 %92, i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %94, i32 %95, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @pci_enable_busmaster(i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = load i8*, i8** @TWS_PCI_BAR0, align 8
  %101 = call i32 @pci_read_config(i32 %99, i8* %100, i32 4)
  store i32 %101, i32* %5, align 4
  %102 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %103, i32 0)
  %105 = load i32, i32* %3, align 4
  %106 = load i8*, i8** @TWS_PCI_BAR1, align 8
  %107 = call i32 @pci_read_config(i32 %105, i8* %106, i32 4)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @TWS_BIT2, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %113, i32 0)
  %115 = load i32, i32* %3, align 4
  %116 = load i8*, i8** @TWS_PCI_BAR2, align 8
  %117 = call i32 @pci_read_config(i32 %115, i8* %116, i32 4)
  %118 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %119 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %121 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @TWS_BIT2, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %127 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %129 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %130 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %131, i32 0)
  %133 = load i8*, i8** @TWS_PCI_BAR1, align 8
  %134 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %135 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @SYS_RES_MEMORY, align 4
  %138 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %139 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %138, i32 0, i32 7
  %140 = load i32, i32* @RF_ACTIVE, align 4
  %141 = call i8* @bus_alloc_resource_any(i32 %136, i32 %137, i8** %139, i32 %140)
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %144 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %143, i32 0, i32 8
  store i32* %142, i32** %144, align 8
  %145 = icmp eq i32* %142, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %86
  %147 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %148 = load i32, i32* @ALLOC_MEMORY_RES, align 4
  %149 = call i32 @tws_log(%struct.tws_softc* %147, i32 %148)
  br label %412

150:                                              ; preds = %86
  %151 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %152 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %151, i32 0, i32 8
  %153 = load i32*, i32** %152, align 8
  %154 = call i8* @rman_get_bustag(i32* %153)
  %155 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %156 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %155, i32 0, i32 24
  store i8* %154, i8** %156, align 8
  %157 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %158 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = call i8* @rman_get_bushandle(i32* %159)
  %161 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %162 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %161, i32 0, i32 23
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @TWS_PCI_BAR2, align 8
  %164 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %165 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %164, i32 0, i32 10
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @SYS_RES_MEMORY, align 4
  %168 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %169 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %168, i32 0, i32 10
  %170 = load i32, i32* @RF_ACTIVE, align 4
  %171 = call i8* @bus_alloc_resource_any(i32 %166, i32 %167, i8** %169, i32 %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %174 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %173, i32 0, i32 11
  store i32* %172, i32** %174, align 8
  %175 = icmp eq i32* %172, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %150
  %177 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %178 = load i32, i32* @ALLOC_MEMORY_RES, align 4
  %179 = call i32 @tws_log(%struct.tws_softc* %177, i32 %178)
  br label %361

180:                                              ; preds = %150
  %181 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %182 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %181, i32 0, i32 11
  %183 = load i32*, i32** %182, align 8
  %184 = call i8* @rman_get_bustag(i32* %183)
  %185 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %186 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %185, i32 0, i32 22
  store i8* %184, i8** %186, align 8
  %187 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %188 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %187, i32 0, i32 11
  %189 = load i32*, i32** %188, align 8
  %190 = call i8* @rman_get_bushandle(i32* %189)
  %191 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %192 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %191, i32 0, i32 21
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* @TWS_INTx, align 4
  %194 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %195 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %194, i32 0, i32 20
  store i32 %193, i32* %195, align 4
  %196 = load i64, i64* @tws_enable_msi, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %180
  %199 = load i32, i32* @TWS_MSI, align 4
  %200 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %201 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %200, i32 0, i32 20
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %198, %180
  %203 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %204 = call i64 @tws_setup_irq(%struct.tws_softc* %203)
  %205 = load i64, i64* @FAILURE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %209 = load i32, i32* @ALLOC_MEMORY_RES, align 4
  %210 = call i32 @tws_log(%struct.tws_softc* %208, i32 %209)
  br label %315

211:                                              ; preds = %202
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @device_get_unit(i32 %212)
  %214 = load i32, i32* @UID_ROOT, align 4
  %215 = load i32, i32* @GID_OPERATOR, align 4
  %216 = load i32, i32* @S_IRUSR, align 4
  %217 = load i32, i32* @S_IWUSR, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @device_get_unit(i32 %219)
  %221 = call %struct.TYPE_3__* @make_dev(i32* @tws_cdevsw, i32 %213, i32 %214, i32 %215, i32 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %220)
  %222 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %223 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %222, i32 0, i32 18
  store %struct.TYPE_3__* %221, %struct.TYPE_3__** %223, align 8
  %224 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %225 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %226 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %225, i32 0, i32 18
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  store %struct.tws_softc* %224, %struct.tws_softc** %228, align 8
  %229 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %230 = call i64 @tws_init(%struct.tws_softc* %229)
  %231 = load i64, i64* @FAILURE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %211
  %234 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %235 = load i32, i32* @TWS_INIT_FAILURE, align 4
  %236 = call i32 @tws_log(%struct.tws_softc* %234, i32 %235)
  br label %269

237:                                              ; preds = %211
  %238 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %239 = call i64 @tws_init_ctlr(%struct.tws_softc* %238)
  %240 = load i64, i64* @FAILURE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %244 = load i32, i32* @TWS_CTLR_INIT_FAILURE, align 4
  %245 = call i32 @tws_log(%struct.tws_softc* %243, i32 %244)
  br label %269

246:                                              ; preds = %237
  %247 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %248 = call i32 @tws_cam_attach(%struct.tws_softc* %247)
  store i32 %248, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %252 = load i32, i32* @TWS_CAM_ATTACH, align 4
  %253 = call i32 @tws_log(%struct.tws_softc* %251, i32 %252)
  br label %269

254:                                              ; preds = %246
  %255 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %256 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %255, i32 0, i32 4
  %257 = call i32 @mtx_lock(i32* %256)
  %258 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %259 = load i32, i32* @TWS_INIT_COMPLETE, align 4
  %260 = call i32 @tws_send_event(%struct.tws_softc* %258, i32 %259)
  %261 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %262 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %261, i32 0, i32 4
  %263 = call i32 @mtx_unlock(i32* %262)
  %264 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %265 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %266 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %265, i32 0, i32 19
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %264, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 %267)
  store i32 0, i32* %2, align 4
  br label %429

269:                                              ; preds = %250, %242, %233
  %270 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %271 = call i32 @tws_teardown_intr(%struct.tws_softc* %270)
  %272 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %273 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %272, i32 0, i32 18
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %273, align 8
  %275 = call i32 @destroy_dev(%struct.TYPE_3__* %274)
  %276 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %277 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %276, i32 0, i32 17
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %269
  %281 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %282 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %281, i32 0, i32 14
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %285 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %284, i32 0, i32 15
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @bus_dmamap_unload(i64 %283, i32 %286)
  br label %288

288:                                              ; preds = %280, %269
  %289 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %290 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %289, i32 0, i32 16
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %288
  %294 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %295 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %294, i32 0, i32 14
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %298 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %297, i32 0, i32 16
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %301 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %300, i32 0, i32 15
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @bus_dmamem_free(i64 %296, i64 %299, i32 %302)
  br label %304

304:                                              ; preds = %293, %288
  %305 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %306 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %305, i32 0, i32 14
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %311 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %310, i32 0, i32 14
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @bus_dma_tag_destroy(i64 %312)
  br label %314

314:                                              ; preds = %309, %304
  br label %315

315:                                              ; preds = %314, %207
  store i32 0, i32* %7, align 4
  br label %316

316:                                              ; preds = %357, %315
  %317 = load i32, i32* %7, align 4
  %318 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %319 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %360

322:                                              ; preds = %316
  %323 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %324 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %323, i32 0, i32 12
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = icmp ne i32* %329, null
  br i1 %330, label %331, label %356

331:                                              ; preds = %322
  %332 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %333 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %332, i32 0, i32 9
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @SYS_RES_IRQ, align 4
  %336 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %337 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %336, i32 0, i32 13
  %338 = load i8**, i8*** %337, align 8
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %344 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %343, i32 0, i32 12
  %345 = load i32**, i32*** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %345, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = call i64 @bus_release_resource(i32 %334, i32 %335, i8* %342, i32* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %331
  %353 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %354 = call i32 @TWS_TRACE(%struct.tws_softc* %353, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 0, i8* null)
  br label %355

355:                                              ; preds = %352, %331
  br label %356

356:                                              ; preds = %355, %322
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %7, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %7, align 4
  br label %316

360:                                              ; preds = %316
  br label %361

361:                                              ; preds = %360, %176
  %362 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %363 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %362, i32 0, i32 11
  %364 = load i32*, i32** %363, align 8
  %365 = icmp ne i32* %364, null
  br i1 %365, label %366, label %386

366:                                              ; preds = %361
  %367 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %368 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %367, i32 0, i32 9
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @SYS_RES_MEMORY, align 4
  %371 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %372 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %371, i32 0, i32 10
  %373 = load i8*, i8** %372, align 8
  %374 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %375 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %374, i32 0, i32 11
  %376 = load i32*, i32** %375, align 8
  %377 = call i64 @bus_release_resource(i32 %369, i32 %370, i8* %373, i32* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %366
  %380 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %381 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %382 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %381, i32 0, i32 10
  %383 = load i8*, i8** %382, align 8
  %384 = call i32 @TWS_TRACE(%struct.tws_softc* %380, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 0, i8* %383)
  br label %385

385:                                              ; preds = %379, %366
  br label %386

386:                                              ; preds = %385, %361
  %387 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %388 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %387, i32 0, i32 8
  %389 = load i32*, i32** %388, align 8
  %390 = icmp ne i32* %389, null
  br i1 %390, label %391, label %411

391:                                              ; preds = %386
  %392 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %393 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %392, i32 0, i32 9
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @SYS_RES_MEMORY, align 4
  %396 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %397 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %396, i32 0, i32 7
  %398 = load i8*, i8** %397, align 8
  %399 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %400 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %399, i32 0, i32 8
  %401 = load i32*, i32** %400, align 8
  %402 = call i64 @bus_release_resource(i32 %394, i32 %395, i8* %398, i32* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %391
  %405 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %406 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %407 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %406, i32 0, i32 7
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 @TWS_TRACE(%struct.tws_softc* %405, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 0, i8* %408)
  br label %410

410:                                              ; preds = %404, %391
  br label %411

411:                                              ; preds = %410, %386
  br label %412

412:                                              ; preds = %411, %146, %82
  %413 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %414 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %413, i32 0, i32 6
  %415 = call i32 @mtx_destroy(i32* %414)
  %416 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %417 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %416, i32 0, i32 5
  %418 = call i32 @mtx_destroy(i32* %417)
  %419 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %420 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %419, i32 0, i32 4
  %421 = call i32 @mtx_destroy(i32* %420)
  %422 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %423 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %422, i32 0, i32 3
  %424 = call i32 @mtx_destroy(i32* %423)
  %425 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %426 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %425, i32 0, i32 2
  %427 = call i32 @sysctl_ctx_free(i32* %426)
  %428 = load i32, i32* @ENXIO, align 4
  store i32 %428, i32* %2, align 4
  br label %429

429:                                              ; preds = %412, %254
  %430 = load i32, i32* %2, align 4
  ret i32 %430
}

declare dso_local %struct.tws_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i64 @tws_init_trace_q(%struct.tws_softc*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @tws_send_event(%struct.tws_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i32, i8*) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32* @SYSCTL_ADD_NODE(i32*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @tws_log(%struct.tws_softc*, i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_read_config(i32, i8*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i64 @tws_setup_irq(%struct.tws_softc*) #1

declare dso_local %struct.TYPE_3__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @tws_init(%struct.tws_softc*) #1

declare dso_local i64 @tws_init_ctlr(%struct.tws_softc*) #1

declare dso_local i32 @tws_cam_attach(%struct.tws_softc*) #1

declare dso_local i32 @tws_teardown_intr(%struct.tws_softc*) #1

declare dso_local i32 @destroy_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i64 @bus_release_resource(i32, i32, i8*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
