; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_device_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__**, %struct.TYPE_5__, i32**, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.1*)*, i32 (%struct.octeon_device.2*, i32)*, i64 (%struct.octeon_device.3*)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque
%struct.octeon_device.3 = type opaque
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@LIO_DDR_TIMEOUT = common dso_local global i64 0, align 8
@__const.lio_device_init.bootcmd = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LIO_DEV_BEGIN_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pci_enable_device failed\0A\00", align 1
@LIO_DEV_PCI_ENABLE_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Chip specific setup failed\0A\00", align 1
@LIO_DEV_PCI_MAP_DONE = common dso_local global i32 0, align 4
@LIO_DRV_INVALID_APP = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC_CORE_DRV_ACTIVE = common dso_local global i32 0, align 4
@lio_core_drv_init = common dso_local global i32 0, align 4
@LIO_DEV_DISPATCH_INIT_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to configure device registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"sc buffer pool allocation failed\0A\00", align 1
@LIO_DEV_SC_BUFF_POOL_INIT_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"IOQ vector allocation failed\0A\00", align 1
@LIO_DEV_MSIX_ALLOC_VECTOR_DONE = common dso_local global i32 0, align 4
@LIO_MAX_POSSIBLE_INSTR_QUEUES = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Instruction queue initialization failed\0A\00", align 1
@LIO_DEV_INSTR_QUEUE_INIT_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Response list allocation failed\0A\00", align 1
@LIO_DEV_RESP_LIST_INIT_DONE = common dso_local global i32 0, align 4
@LIO_MAX_POSSIBLE_OUTPUT_QUEUES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Output queue initialization failed\0A\00", align 1
@LIO_DEV_DROQ_INIT_DONE = common dso_local global i32 0, align 4
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@LIO_DEV_INTR_SET_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to enable input/output queues\00", align 1
@LIO_DEV_IO_QUEUES_DONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Waiting for DDR initialization...\0A\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"WAITING. Set ddr_timeout to non-zero value to proceed with initialization.\0A\00", align 1
@LIO_RESET_MSECS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [90 x i8] c"DDR not initialized. Please confirm that board is configured to boot from Flash, ret: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Board not responding\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Initializing consoles\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Could not access board consoles\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Could not access board console\0A\00", align 1
@lio_dbg_console_print = common dso_local global i32 0, align 4
@LIO_DEV_CONSOLE_INIT_DONE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"Loading firmware\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Could not load firmware to board\0A\00", align 1
@LIO_DEV_HOST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_device_init(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8], align 1
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %14 = load i64, i64* @LIO_DDR_TIMEOUT, align 8
  store i64 %14, i64* %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = bitcast [2 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.lio_device_init.bootcmd, i32 0, i32 0), i64 2, i1 false)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_get_bus(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_get_slot(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pci_get_function(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 1
  %30 = load i32, i32* @LIO_DEV_BEGIN_STATE, align 4
  %31 = call i32 @atomic_store_rel_int(i32* %29, i32 %30)
  %32 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pci_enable_busmaster(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %39 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

40:                                               ; preds = %1
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 1
  %43 = load i32, i32* @LIO_DEV_PCI_ENABLE_DONE, align 4
  %44 = call i32 @atomic_store_rel_int(i32* %42, i32 %43)
  %45 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %46 = call i64 @lio_chip_specific_setup(%struct.octeon_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %50 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

51:                                               ; preds = %40
  %52 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 1
  %54 = load i32, i32* @LIO_DEV_PCI_MAP_DONE, align 4
  %55 = call i32 @atomic_store_rel_int(i32* %53, i32 %54)
  %56 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @lio_register_device(%struct.octeon_device* %56, i32 %57, i32 %58, i32 %59, i32 1)
  %61 = load i32, i32* @LIO_DRV_INVALID_APP, align 4
  %62 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %65 = call i32 @lio_cn23xx_pf_fw_loaded(%struct.octeon_device* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %51
  %68 = call i32 (...) @fw_type_is_none()
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  %71 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i64 (%struct.octeon_device.3*)*, i64 (%struct.octeon_device.3*)** %73, align 8
  %75 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %76 = bitcast %struct.octeon_device* %75 to %struct.octeon_device.3*
  %77 = call i64 %74(%struct.octeon_device.3* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %401

80:                                               ; preds = %70
  %81 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %82 = call i32 @lio_cn23xx_pf_fw_loaded(%struct.octeon_device* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %86

85:                                               ; preds = %80
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %88

87:                                               ; preds = %67, %51
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %90 = call i64 @lio_init_dispatch_list(%struct.octeon_device* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %2, align 4
  br label %401

93:                                               ; preds = %88
  %94 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %95 = load i32, i32* @LIO_OPCODE_NIC, align 4
  %96 = load i32, i32* @LIO_OPCODE_NIC_CORE_DRV_ACTIVE, align 4
  %97 = load i32, i32* @lio_core_drv_init, align 4
  %98 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %99 = call i32 @lio_register_dispatch_fn(%struct.octeon_device* %94, i32 %95, i32 %96, i32 %97, %struct.octeon_device* %98)
  %100 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %100, i32 0, i32 1
  %102 = load i32, i32* @LIO_DEV_DISPATCH_INIT_DONE, align 4
  %103 = call i32 @atomic_store_rel_int(i32* %101, i32 %102)
  %104 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %105 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.0*)** %106, align 8
  %108 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %109 = bitcast %struct.octeon_device* %108 to %struct.octeon_device.0*
  %110 = call i32 %107(%struct.octeon_device.0* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %93
  %114 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %115 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %401

117:                                              ; preds = %93
  %118 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %119 = call i64 @lio_setup_sc_buffer_pool(%struct.octeon_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %123 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

124:                                              ; preds = %117
  %125 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %126 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %125, i32 0, i32 1
  %127 = load i32, i32* @LIO_DEV_SC_BUFF_POOL_INIT_DONE, align 4
  %128 = call i32 @atomic_store_rel_int(i32* %126, i32 %127)
  %129 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %130 = call i64 @lio_allocate_ioq_vector(%struct.octeon_device* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %134 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

135:                                              ; preds = %124
  %136 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %137 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %136, i32 0, i32 1
  %138 = load i32, i32* @LIO_DEV_MSIX_ALLOC_VECTOR_DONE, align 4
  %139 = call i32 @atomic_store_rel_int(i32* %137, i32 %138)
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %167, %135
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @LIO_MAX_POSSIBLE_INSTR_QUEUES, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %140
  %145 = load i32, i32* @M_DEVBUF, align 4
  %146 = load i32, i32* @M_NOWAIT, align 4
  %147 = load i32, i32* @M_ZERO, align 4
  %148 = or i32 %146, %147
  %149 = call i8* @malloc(i32 4, i32 %145, i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %151, i32 0, i32 6
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  store i32* %150, i32** %156, align 8
  %157 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %157, i32 0, i32 6
  %159 = load i32**, i32*** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %144
  store i32 1, i32* %2, align 4
  br label %401

166:                                              ; preds = %144
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %140

170:                                              ; preds = %140
  %171 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %172 = call i64 @lio_setup_instr_queue0(%struct.octeon_device* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %176 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %175, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

177:                                              ; preds = %170
  %178 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %179 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %178, i32 0, i32 1
  %180 = load i32, i32* @LIO_DEV_INSTR_QUEUE_INIT_DONE, align 4
  %181 = call i32 @atomic_store_rel_int(i32* %179, i32 %180)
  %182 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %183 = call i64 @lio_setup_response_list(%struct.octeon_device* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %187 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

188:                                              ; preds = %177
  %189 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %190 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %189, i32 0, i32 1
  %191 = load i32, i32* @LIO_DEV_RESP_LIST_INIT_DONE, align 4
  %192 = call i32 @atomic_store_rel_int(i32* %190, i32 %191)
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %220, %188
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @LIO_MAX_POSSIBLE_OUTPUT_QUEUES, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %193
  %198 = load i32, i32* @M_DEVBUF, align 4
  %199 = load i32, i32* @M_NOWAIT, align 4
  %200 = load i32, i32* @M_ZERO, align 4
  %201 = or i32 %199, %200
  %202 = call i8* @malloc(i32 8, i32 %198, i32 %201)
  %203 = bitcast i8* %202 to %struct.TYPE_6__*
  %204 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %205 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %204, i32 0, i32 4
  %206 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %206, i64 %208
  store %struct.TYPE_6__* %203, %struct.TYPE_6__** %209, align 8
  %210 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %211 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %210, i32 0, i32 4
  %212 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %212, i64 %214
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = icmp eq %struct.TYPE_6__* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %197
  store i32 1, i32* %2, align 4
  br label %401

219:                                              ; preds = %197
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %193

223:                                              ; preds = %193
  %224 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %225 = call i64 @lio_setup_output_queue0(%struct.octeon_device* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %229 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %228, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

230:                                              ; preds = %223
  %231 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %232 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %231, i32 0, i32 1
  %233 = load i32, i32* @LIO_DEV_DROQ_INIT_DONE, align 4
  %234 = call i32 @atomic_store_rel_int(i32* %232, i32 %233)
  %235 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %236 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %237 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @lio_setup_interrupt(%struct.octeon_device* %235, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  store i32 1, i32* %2, align 4
  br label %401

243:                                              ; preds = %230
  %244 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %245 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  %247 = load i32 (%struct.octeon_device.2*, i32)*, i32 (%struct.octeon_device.2*, i32)** %246, align 8
  %248 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %249 = bitcast %struct.octeon_device* %248 to %struct.octeon_device.2*
  %250 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %251 = call i32 %247(%struct.octeon_device.2* %249, i32 %250)
  %252 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %253 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %252, i32 0, i32 1
  %254 = load i32, i32* @LIO_DEV_INTR_SET_DONE, align 4
  %255 = call i32 @atomic_store_rel_int(i32* %253, i32 %254)
  store i32 0, i32* %8, align 4
  br label %256

256:                                              ; preds = %283, %243
  %257 = load i32, i32* %8, align 4
  %258 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %259 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %286

262:                                              ; preds = %256
  %263 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %264 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %265 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %264, i32 0, i32 4
  %266 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %266, i64 %268
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %274 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %273, i32 0, i32 4
  %275 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %275, i64 %277
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @lio_write_csr32(%struct.octeon_device* %263, i32 %272, i32 %281)
  br label %283

283:                                              ; preds = %262
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %8, align 4
  br label %256

286:                                              ; preds = %256
  %287 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %288 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 1
  %290 = load i32 (%struct.octeon_device.1*)*, i32 (%struct.octeon_device.1*)** %289, align 8
  %291 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %292 = bitcast %struct.octeon_device* %291 to %struct.octeon_device.1*
  %293 = call i32 %290(%struct.octeon_device.1* %292)
  store i32 %293, i32* %9, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %286
  %297 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %298 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %297, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %299 = load i32, i32* %9, align 4
  store i32 %299, i32* %2, align 4
  br label %401

300:                                              ; preds = %286
  %301 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %302 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %301, i32 0, i32 1
  %303 = load i32, i32* @LIO_DEV_IO_QUEUES_DONE, align 4
  %304 = call i32 @atomic_store_rel_int(i32* %302, i32 %303)
  %305 = load i32, i32* %6, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %396, label %307

307:                                              ; preds = %300
  %308 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %309 = call i32 @lio_dev_dbg(%struct.octeon_device* %308, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %310 = load i64, i64* %4, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %307
  %313 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %314 = call i32 @lio_dev_info(%struct.octeon_device* %313, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0))
  br label %315

315:                                              ; preds = %312, %307
  %316 = load i32, i32* @LIO_RESET_MSECS, align 4
  %317 = call i32 @lio_sleep_timeout(i32 %316)
  br label %318

318:                                              ; preds = %327, %315
  %319 = load i64, i64* %4, align 8
  %320 = icmp ne i64 %319, 0
  %321 = xor i1 %320, true
  br i1 %321, label %322, label %328

322:                                              ; preds = %318
  %323 = call i32 @lio_ms_to_ticks(i32 100)
  %324 = call i64 @pause(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  store i32 1, i32* %2, align 4
  br label %401

327:                                              ; preds = %322
  br label %318

328:                                              ; preds = %318
  %329 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %330 = call i32 @lio_wait_for_ddr_init(%struct.octeon_device* %329, i64* %4)
  store i32 %330, i32* %9, align 4
  %331 = load i32, i32* %9, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %335 = load i32, i32* %9, align 4
  %336 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %334, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.12, i64 0, i64 0), i32 %335)
  store i32 1, i32* %2, align 4
  br label %401

337:                                              ; preds = %328
  %338 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %339 = call i64 @lio_wait_for_bootloader(%struct.octeon_device* %338, i32 1100)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %343 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %342, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

344:                                              ; preds = %337
  %345 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %346 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %347 = call i32 @lio_console_send_cmd(%struct.octeon_device* %345, i8* %346, i32 50)
  store i32 %347, i32* %9, align 4
  %348 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %349 = call i32 @lio_dev_dbg(%struct.octeon_device* %348, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %350 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %351 = call i32 @lio_init_consoles(%struct.octeon_device* %350)
  store i32 %351, i32* %9, align 4
  %352 = load i32, i32* %9, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %344
  %355 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %356 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %355, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

357:                                              ; preds = %344
  %358 = call i64 @lio_console_debug_enabled(i32 0)
  %359 = icmp ne i64 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* null
  store i8* %361, i8** %5, align 8
  %362 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %363 = load i8*, i8** %5, align 8
  %364 = call i32 @lio_add_console(%struct.octeon_device* %362, i32 0, i8* %363)
  store i32 %364, i32* %9, align 4
  %365 = load i32, i32* %9, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %357
  %368 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %369 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %368, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

370:                                              ; preds = %357
  %371 = call i64 @lio_console_debug_enabled(i32 0)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %380

373:                                              ; preds = %370
  %374 = load i32, i32* @lio_dbg_console_print, align 4
  %375 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %376 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %375, i32 0, i32 2
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i64 0
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  store i32 %374, i32* %379, align 4
  br label %380

380:                                              ; preds = %373, %370
  br label %381

381:                                              ; preds = %380
  %382 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %383 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %382, i32 0, i32 1
  %384 = load i32, i32* @LIO_DEV_CONSOLE_INIT_DONE, align 4
  %385 = call i32 @atomic_store_rel_int(i32* %383, i32 %384)
  %386 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %387 = call i32 @lio_dev_dbg(%struct.octeon_device* %386, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %388 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %389 = call i32 @lio_load_firmware(%struct.octeon_device* %388)
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %9, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %381
  %393 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %394 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %393, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %401

395:                                              ; preds = %381
  br label %396

396:                                              ; preds = %395, %300
  %397 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %398 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %397, i32 0, i32 1
  %399 = load i32, i32* @LIO_DEV_HOST_OK, align 4
  %400 = call i32 @atomic_store_rel_int(i32* %398, i32 %399)
  store i32 0, i32* %2, align 4
  br label %401

401:                                              ; preds = %396, %392, %367, %354, %341, %333, %326, %296, %242, %227, %218, %185, %174, %165, %132, %121, %113, %92, %79, %48, %37
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pci_get_bus(i32) #2

declare dso_local i32 @pci_get_slot(i32) #2

declare dso_local i32 @pci_get_function(i32) #2

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #2

declare dso_local i64 @pci_enable_busmaster(i32) #2

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, ...) #2

declare dso_local i64 @lio_chip_specific_setup(%struct.octeon_device*) #2

declare dso_local i32 @lio_register_device(%struct.octeon_device*, i32, i32, i32, i32) #2

declare dso_local i32 @lio_cn23xx_pf_fw_loaded(%struct.octeon_device*) #2

declare dso_local i32 @fw_type_is_none(...) #2

declare dso_local i64 @lio_init_dispatch_list(%struct.octeon_device*) #2

declare dso_local i32 @lio_register_dispatch_fn(%struct.octeon_device*, i32, i32, i32, %struct.octeon_device*) #2

declare dso_local i64 @lio_setup_sc_buffer_pool(%struct.octeon_device*) #2

declare dso_local i64 @lio_allocate_ioq_vector(%struct.octeon_device*) #2

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i64 @lio_setup_instr_queue0(%struct.octeon_device*) #2

declare dso_local i64 @lio_setup_response_list(%struct.octeon_device*) #2

declare dso_local i64 @lio_setup_output_queue0(%struct.octeon_device*) #2

declare dso_local i64 @lio_setup_interrupt(%struct.octeon_device*, i32) #2

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #2

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*) #2

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*) #2

declare dso_local i32 @lio_sleep_timeout(i32) #2

declare dso_local i64 @pause(i8*, i32) #2

declare dso_local i32 @lio_ms_to_ticks(i32) #2

declare dso_local i32 @lio_wait_for_ddr_init(%struct.octeon_device*, i64*) #2

declare dso_local i64 @lio_wait_for_bootloader(%struct.octeon_device*, i32) #2

declare dso_local i32 @lio_console_send_cmd(%struct.octeon_device*, i8*, i32) #2

declare dso_local i32 @lio_init_consoles(%struct.octeon_device*) #2

declare dso_local i64 @lio_console_debug_enabled(i32) #2

declare dso_local i32 @lio_add_console(%struct.octeon_device*, i32, i8*) #2

declare dso_local i32 @lio_load_firmware(%struct.octeon_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
