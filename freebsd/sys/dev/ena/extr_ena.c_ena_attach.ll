; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev_get_features_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ena_llq_configurations = type { i32 }
%struct.ena_calc_queue_size_ctx = type { i32, i32, i32, i32, i8*, %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev*, i32 }
%struct.ena_com_dev = type { i64, %struct.ena_com_dev*, i8* }
%struct.ena_adapter = type { i32, %struct.ena_com_dev*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ena_bus = type { i64, i32 }

@ena_attach.version_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ENA global mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ENA ioctl sx\00", align 1
@DEFAULT_KEEP_ALIVE_TO = common dso_local global i32 0, align 4
@DEFAULT_TX_CMP_TO = common dso_local global i32 0, align 4
@DEFAULT_TX_MONITORED_QUEUES = common dso_local global i32 0, align 4
@DEFAULT_TX_CMP_THRESHOLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ena_version = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENA_REG_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"unable to allocate bus resource: registers!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to pmap registers bar\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"ENA device init failed! (err: %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to set placement policy\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Low Latency\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Placement policy: %s\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Invalid queue number: %d\0A\00", align 1
@ENA_DEFAULT_RING_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENA_REGS_RESET_NORMAL = common dso_local global i32 0, align 4
@ENA_DEFAULT_BUF_RING_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to create TX DMA tag\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Failed to create RX DMA tag\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"Creating %d io queues. Rx queue size: %d, Tx queue size: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Failed to enable and set the admin interrupts\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Error with network interface setup\0A\00", align 1
@ena_reset_task = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"ena_reset_enqueue\00", align 1
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"%s rstq\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENA_FLAG_DEVICE_RUNNING = common dso_local global i32 0, align 4
@ENA_REGS_RESET_INIT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ena_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ena_com_dev_get_features_ctx, align 4
  %5 = alloca %struct.ena_llq_configurations, align 4
  %6 = alloca %struct.ena_calc_queue_size_ctx, align 8
  %7 = alloca %struct.ena_adapter*, align 8
  %8 = alloca %struct.ena_com_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = bitcast %struct.ena_calc_queue_size_ctx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  store %struct.ena_com_dev* null, %struct.ena_com_dev** %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.ena_adapter* @device_get_softc(i8* %14)
  store %struct.ena_adapter* %15, %struct.ena_adapter** %7, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 25
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %21)
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 27
  %25 = call i32 @sx_init(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %26, i32 0, i32 26
  %28 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %28, i32 0, i32 25
  %30 = call i32 @callout_init_mtx(i32* %27, i32* %29, i32 0)
  %31 = load i32, i32* @DEFAULT_KEEP_ALIVE_TO, align 4
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 24
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @DEFAULT_TX_CMP_TO, align 4
  %35 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %35, i32 0, i32 23
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @DEFAULT_TX_MONITORED_QUEUES, align 4
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %38, i32 0, i32 22
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DEFAULT_TX_CMP_THRESHOLD, align 4
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 21
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ena_attach.version_printed, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @ena_attach.version_printed, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @ena_version, align 4
  %49 = call i32 (i8*, i8*, ...) @device_printf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %1
  %51 = load i32, i32* @M_DEVBUF, align 4
  %52 = load i32, i32* @M_WAITOK, align 4
  %53 = load i32, i32* @M_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = call i8* @malloc(i32 24, i32 %51, i32 %54)
  %56 = bitcast i8* %55 to %struct.ena_com_dev*
  store %struct.ena_com_dev* %56, %struct.ena_com_dev** %8, align 8
  %57 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %58 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %59 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %58, i32 0, i32 1
  store %struct.ena_com_dev* %57, %struct.ena_com_dev** %59, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %62 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @ENA_REG_BAR, align 4
  %64 = call i32 @PCIR_BAR(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %65, i32 0, i32 20
  store i32* null, i32** %66, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = load i32, i32* @RF_ACTIVE, align 4
  %70 = call i32* @bus_alloc_resource_any(i8* %67, i32 %68, i32* %11, i32 %69)
  %71 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %71, i32 0, i32 19
  store i32* %70, i32** %72, align 8
  %73 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %73, i32 0, i32 19
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %50
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 (i8*, i8*, ...) @device_printf(i8* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %12, align 4
  br label %375

84:                                               ; preds = %50
  %85 = load i32, i32* @M_DEVBUF, align 4
  %86 = load i32, i32* @M_WAITOK, align 4
  %87 = load i32, i32* @M_ZERO, align 4
  %88 = or i32 %86, %87
  %89 = call i8* @malloc(i32 16, i32 %85, i32 %88)
  %90 = bitcast i8* %89 to %struct.ena_com_dev*
  %91 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %92 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %91, i32 0, i32 1
  store %struct.ena_com_dev* %90, %struct.ena_com_dev** %92, align 8
  %93 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %94 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %93, i32 0, i32 19
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @rman_get_bustag(i32* %95)
  %97 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %98 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %97, i32 0, i32 1
  %99 = load %struct.ena_com_dev*, %struct.ena_com_dev** %98, align 8
  %100 = bitcast %struct.ena_com_dev* %99 to %struct.ena_bus*
  %101 = getelementptr inbounds %struct.ena_bus, %struct.ena_bus* %100, i32 0, i32 1
  store i32 %96, i32* %101, align 8
  %102 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %102, i32 0, i32 19
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @rman_get_bushandle(i32* %104)
  %106 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %107 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %106, i32 0, i32 1
  %108 = load %struct.ena_com_dev*, %struct.ena_com_dev** %107, align 8
  %109 = bitcast %struct.ena_com_dev* %108 to %struct.ena_bus*
  %110 = getelementptr inbounds %struct.ena_bus, %struct.ena_bus* %109, i32 0, i32 0
  store i64 %105, i64* %110, align 8
  %111 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %112 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %111, i32 0, i32 1
  %113 = load %struct.ena_com_dev*, %struct.ena_com_dev** %112, align 8
  %114 = bitcast %struct.ena_com_dev* %113 to %struct.ena_bus*
  %115 = getelementptr inbounds %struct.ena_bus, %struct.ena_bus* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %84
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 (i8*, i8*, ...) @device_printf(i8* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @ENXIO, align 4
  store i32 %124, i32* %12, align 4
  br label %367

125:                                              ; preds = %84
  %126 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %127 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %128 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %130 = call i32 @ENA_FLAG_ZERO(%struct.ena_adapter* %129)
  %131 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %134 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %133, i32 0, i32 18
  %135 = call i32 @ena_device_init(%struct.ena_adapter* %131, i8* %132, %struct.ena_com_dev_get_features_ctx* %4, i32* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %125
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 (i8*, i8*, ...) @device_printf(i8* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @ENXIO, align 4
  store i32 %145, i32* %12, align 4
  br label %367

146:                                              ; preds = %125
  %147 = call i32 @set_default_llq_configurations(%struct.ena_llq_configurations* %5)
  %148 = load i8*, i8** %3, align 8
  %149 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %150 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %4, i32 0, i32 2
  %151 = call i32 @ena_set_queues_placement_policy(i8* %148, %struct.ena_com_dev* %149, i32* %150, %struct.ena_llq_configurations* %5)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 (i8*, i8*, ...) @device_printf(i8* %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %360

160:                                              ; preds = %146
  %161 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %162 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %168

167:                                              ; preds = %160
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i8*, i8** %3, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 (i8*, i8*, ...) @device_printf(i8* %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %170)
  %172 = call i32 (...) @getsbinuptime()
  %173 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %174 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %173, i32 0, i32 17
  store i32 %172, i32* %174, align 4
  %175 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %4, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %179 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %178, i32 0, i32 16
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %181 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %180, i32 0, i32 15
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %4, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %187 = call i32 @memcpy(i32 %182, i32 %185, i32 %186)
  %188 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %189 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 6
  store %struct.ena_com_dev* %188, %struct.ena_com_dev** %189, align 8
  %190 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 5
  store %struct.ena_com_dev_get_features_ctx* %4, %struct.ena_com_dev_get_features_ctx** %190, align 8
  %191 = load i8*, i8** %3, align 8
  %192 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 4
  store i8* %191, i8** %192, align 8
  %193 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %194 = call i32 @ena_calc_io_queue_num(%struct.ena_adapter* %193, %struct.ena_com_dev_get_features_ctx* %4)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp sgt i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @ENA_ASSERT(i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %202 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %4, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %207 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %206, i32 0, i32 14
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* @ENA_DEFAULT_RING_SIZE, align 4
  %209 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %210 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %209, i32 0, i32 11
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %212 = call i32 @ena_calc_queue_size(%struct.ena_adapter* %211, %struct.ena_calc_queue_size_ctx* %6)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %168
  %216 = load i32, i32* %10, align 4
  %217 = icmp sle i32 %216, 0
  br label %218

218:                                              ; preds = %215, %168
  %219 = phi i1 [ true, %168 ], [ %217, %215 ]
  %220 = zext i1 %219 to i32
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* @EFAULT, align 4
  store i32 %224, i32* %12, align 4
  br label %360

225:                                              ; preds = %218
  %226 = load i32, i32* @ENA_REGS_RESET_NORMAL, align 4
  %227 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %228 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %227, i32 0, i32 13
  store i32 %226, i32* %228, align 4
  %229 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %232 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %231, i32 0, i32 12
  store i32 %230, i32* %232, align 8
  %233 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %236 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %235, i32 0, i32 11
  store i32 %234, i32* %236, align 4
  %237 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %240 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %239, i32 0, i32 10
  store i32 %238, i32* %240, align 8
  %241 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %244 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %243, i32 0, i32 9
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @ENA_DEFAULT_BUF_RING_SIZE, align 4
  %246 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %247 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 8
  %248 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %249 = call i32 @ena_setup_tx_dma_tag(%struct.ena_adapter* %248)
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i64 @unlikely(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %225
  %256 = load i8*, i8** %3, align 8
  %257 = call i32 (i8*, i8*, ...) @device_printf(i8* %256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %360

258:                                              ; preds = %225
  %259 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %260 = call i32 @ena_setup_rx_dma_tag(%struct.ena_adapter* %259)
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = call i64 @unlikely(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i8*, i8** %3, align 8
  %268 = call i32 (i8*, i8*, ...) @device_printf(i8* %267, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %357

269:                                              ; preds = %258
  %270 = load i8*, i8** %3, align 8
  %271 = load i32, i32* %10, align 4
  %272 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %6, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 (i8*, i8*, ...) @device_printf(i8* %270, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 %271, i32 %273, i32 %275)
  %277 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %278 = call i32 @ena_init_io_rings(%struct.ena_adapter* %277)
  %279 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter* %279, i32 %280)
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i64 @unlikely(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %269
  %288 = load i8*, i8** %3, align 8
  %289 = call i32 (i8*, i8*, ...) @device_printf(i8* %288, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  br label %352

290:                                              ; preds = %269
  %291 = load i8*, i8** %3, align 8
  %292 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %293 = call i32 @ena_setup_ifnet(i8* %291, %struct.ena_adapter* %292, %struct.ena_com_dev_get_features_ctx* %4)
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i32
  %297 = call i64 @unlikely(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %290
  %300 = load i8*, i8** %3, align 8
  %301 = call i32 (i8*, i8*, ...) @device_printf(i8* %300, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %342

302:                                              ; preds = %290
  %303 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %304 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %303, i32 0, i32 7
  %305 = load i32, i32* @ena_reset_task, align 4
  %306 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %307 = call i32 @TASK_INIT(i32* %304, i32 0, i32 %305, %struct.ena_adapter* %306)
  %308 = load i32, i32* @M_WAITOK, align 4
  %309 = load i32, i32* @M_ZERO, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %312 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %313 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %312, i32 0, i32 6
  %314 = call i32 @taskqueue_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %310, i32 %311, i32* %313)
  %315 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %316 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %315, i32 0, i32 6
  store i32 %314, i32* %316, align 8
  %317 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %318 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %317, i32 0, i32 6
  %319 = load i32, i32* @PI_NET, align 4
  %320 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %321 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %320, i32 0, i32 5
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @device_get_nameunit(i8* %322)
  %324 = call i32 @taskqueue_start_threads(i32* %318, i32 1, i32 %319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %323)
  %325 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %326 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %325, i32 0, i32 4
  %327 = call i32 @ena_alloc_counters(i32* %326, i32 4)
  %328 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %329 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %328, i32 0, i32 3
  %330 = call i32 @ena_alloc_counters(i32* %329, i32 4)
  %331 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %332 = call i32 @ena_sysctl_add_nodes(%struct.ena_adapter* %331)
  %333 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %334 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %337 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %338 = call i32 @if_setdrvflagbits(i32 %335, i32 %336, i32 %337)
  %339 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %340 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %341 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %339, %struct.ena_adapter* %340)
  store i32 0, i32* %2, align 4
  br label %380

342:                                              ; preds = %299
  %343 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %344 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %343, i32 0, i32 1
  %345 = load %struct.ena_com_dev*, %struct.ena_com_dev** %344, align 8
  %346 = load i32, i32* @ENA_REGS_RESET_INIT_ERR, align 4
  %347 = call i32 @ena_com_dev_reset(%struct.ena_com_dev* %345, i32 %346)
  %348 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %349 = call i32 @ena_free_mgmnt_irq(%struct.ena_adapter* %348)
  %350 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %351 = call i32 @ena_disable_msix(%struct.ena_adapter* %350)
  br label %352

352:                                              ; preds = %342, %287
  %353 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %354 = call i32 @ena_free_all_io_rings_resources(%struct.ena_adapter* %353)
  %355 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %356 = call i32 @ena_free_rx_dma_tag(%struct.ena_adapter* %355)
  br label %357

357:                                              ; preds = %352, %266
  %358 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %359 = call i32 @ena_free_tx_dma_tag(%struct.ena_adapter* %358)
  br label %360

360:                                              ; preds = %357, %255, %223, %157
  %361 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %362 = call i32 @ena_com_admin_destroy(%struct.ena_com_dev* %361)
  %363 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %364 = call i32 @ena_com_delete_host_info(%struct.ena_com_dev* %363)
  %365 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %366 = call i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev* %365)
  br label %367

367:                                              ; preds = %360, %141, %121
  %368 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %369 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %368, i32 0, i32 1
  %370 = load %struct.ena_com_dev*, %struct.ena_com_dev** %369, align 8
  %371 = load i32, i32* @M_DEVBUF, align 4
  %372 = call i32 @free(%struct.ena_com_dev* %370, i32 %371)
  %373 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %374 = call i32 @ena_free_pci_resources(%struct.ena_adapter* %373)
  br label %375

375:                                              ; preds = %367, %80
  %376 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %377 = load i32, i32* @M_DEVBUF, align 4
  %378 = call i32 @free(%struct.ena_com_dev* %376, i32 %377)
  %379 = load i32, i32* %12, align 4
  store i32 %379, i32* %2, align 4
  br label %380

380:                                              ; preds = %375, %302
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ena_adapter* @device_get_softc(i8*) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i32 @sx_init(i32*, i8*) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @device_printf(i8*, i8*, ...) #2

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i32* @bus_alloc_resource_any(i8*, i32, i32*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @rman_get_bustag(i32*) #2

declare dso_local i64 @rman_get_bushandle(i32*) #2

declare dso_local i32 @ENA_FLAG_ZERO(%struct.ena_adapter*) #2

declare dso_local i32 @ena_device_init(%struct.ena_adapter*, i8*, %struct.ena_com_dev_get_features_ctx*, i32*) #2

declare dso_local i32 @set_default_llq_configurations(%struct.ena_llq_configurations*) #2

declare dso_local i32 @ena_set_queues_placement_policy(i8*, %struct.ena_com_dev*, i32*, %struct.ena_llq_configurations*) #2

declare dso_local i32 @getsbinuptime(...) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @ena_calc_io_queue_num(%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*) #2

declare dso_local i32 @ENA_ASSERT(i32, i8*, i32) #2

declare dso_local i32 @ena_calc_queue_size(%struct.ena_adapter*, %struct.ena_calc_queue_size_ctx*) #2

declare dso_local i32 @ena_setup_tx_dma_tag(%struct.ena_adapter*) #2

declare dso_local i32 @ena_setup_rx_dma_tag(%struct.ena_adapter*) #2

declare dso_local i32 @ena_init_io_rings(%struct.ena_adapter*) #2

declare dso_local i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter*, i32) #2

declare dso_local i32 @ena_setup_ifnet(i8*, %struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*) #2

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ena_adapter*) #2

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #2

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #2

declare dso_local i32 @device_get_nameunit(i8*) #2

declare dso_local i32 @ena_alloc_counters(i32*, i32) #2

declare dso_local i32 @ena_sysctl_add_nodes(%struct.ena_adapter*) #2

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #2

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #2

declare dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev*, i32) #2

declare dso_local i32 @ena_free_mgmnt_irq(%struct.ena_adapter*) #2

declare dso_local i32 @ena_disable_msix(%struct.ena_adapter*) #2

declare dso_local i32 @ena_free_all_io_rings_resources(%struct.ena_adapter*) #2

declare dso_local i32 @ena_free_rx_dma_tag(%struct.ena_adapter*) #2

declare dso_local i32 @ena_free_tx_dma_tag(%struct.ena_adapter*) #2

declare dso_local i32 @ena_com_admin_destroy(%struct.ena_com_dev*) #2

declare dso_local i32 @ena_com_delete_host_info(%struct.ena_com_dev*) #2

declare dso_local i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev*) #2

declare dso_local i32 @free(%struct.ena_com_dev*, i32) #2

declare dso_local i32 @ena_free_pci_resources(%struct.ena_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
