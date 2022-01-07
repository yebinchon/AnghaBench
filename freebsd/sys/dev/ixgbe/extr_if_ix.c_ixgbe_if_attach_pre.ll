; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_attach_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_attach_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.adapter = type { i32, %struct.ixgbe_hw, i8*, i32, %struct.TYPE_14__*, i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, %struct.adapter* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i8**, i8** }

@.str = private unnamed_addr constant [20 x i8] c"ixgbe_attach: begin\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Allocation of PCI resources failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT_DRV_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to initialize the shared code\0A\00", align 1
@allow_unsupported_sfp = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i32 0, align 4
@ixgbe_smart_speed = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FAN_FAIL = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@ixgbe_flow_control = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Unsupported SFP+ module detected!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Hardware initialization failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"The EEPROM Checksum Is Not Valid\0A\00", align 1
@.str.6 = private unnamed_addr constant [237 x i8] c"This device is a pre-production adapter/LOM.  Please be aware there may be issues associated with your hardware.\0AIf you are experiencing problems please contact your Intel or hardware representative who provided you with this hardware.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Unsupported SFP+ Module\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"No SFP+ Module found\0A\00", align 1
@ixgbe_intr = common dso_local global i32 0, align 4
@ixgbe_txrx = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@DBA_ALIGN = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@IXGBE_82598_SCATTER = common dso_local global i32 0, align 4
@CSUM_SCTP = common dso_local global i32 0, align 4
@CSUM_IP6_SCTP = common dso_local global i32 0, align 4
@IXGBE_82599_SCATTER = common dso_local global i32 0, align 4
@IXGBE_TSO_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IXGBE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_if_attach_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_attach_pre(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.adapter* @iflib_get_softc(i32 %14)
  store %struct.adapter* %15, %struct.adapter** %4, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 10
  store %struct.adapter* %16, %struct.adapter** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.TYPE_14__* @iflib_get_softc_ctx(i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 4
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %29, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %6, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @iflib_get_media(i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 1
  store %struct.ixgbe_hw* %35, %struct.ixgbe_hw** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pci_get_vendor(i32 %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pci_get_device(i32 %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @pci_get_revid(i32 %44)
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @pci_get_subvendor(i32 %48)
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @pci_get_subdevice(i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @ixgbe_allocate_pci_resources(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %1
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %328

63:                                               ; preds = %1
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %65 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %66 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @IXGBE_CTRL_EXT_DRV_LOAD, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %71 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %71, i32 %72)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %75 = call i64 @ixgbe_init_shared_code(%struct.ixgbe_hw* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %8, align 4
  br label %311

81:                                               ; preds = %63
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %85, align 8
  %87 = icmp ne i32 (%struct.ixgbe_hw.0*)* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %92, align 8
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %95 = bitcast %struct.ixgbe_hw* %94 to %struct.ixgbe_hw.0*
  %96 = call i32 %93(%struct.ixgbe_hw.0* %95)
  br label %97

97:                                               ; preds = %88, %81
  %98 = load i32, i32* @allow_unsupported_sfp, align 4
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ixgbe_mac_82598EB, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load i32, i32* @ixgbe_smart_speed, align 4
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 8
  br label %112

112:                                              ; preds = %107, %97
  %113 = load %struct.adapter*, %struct.adapter** %4, align 8
  %114 = call i32 @ixgbe_init_device_features(%struct.adapter* %113)
  %115 = load %struct.adapter*, %struct.adapter** %4, align 8
  %116 = call i32 @ixgbe_check_wol_support(%struct.adapter* %115)
  %117 = load %struct.adapter*, %struct.adapter** %4, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IXGBE_FEATURE_FAN_FAIL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %112
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %125 = load i32, i32* @IXGBE_ESDP, align 4
  %126 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %124, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load %struct.adapter*, %struct.adapter** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i8*, i8** @FALSE, align 8
  %130 = call i32 @ixgbe_check_fan_failure(%struct.adapter* %127, i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %123, %112
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %133 = call i32 @ixgbe_init_swfw_semaphore(%struct.ixgbe_hw* %132)
  %134 = load i32, i32* @ixgbe_flow_control, align 4
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %136 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load i8*, i8** @TRUE, align 8
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %140 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %143 = call i32 @ixgbe_reset_hw(%struct.ixgbe_hw* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i8*, i8** @FALSE, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %146 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 132
  br i1 %149, label %150, label %154

150:                                              ; preds = %131
  %151 = load i8*, i8** @TRUE, align 8
  %152 = load %struct.adapter*, %struct.adapter** %4, align 8
  %153 = getelementptr inbounds %struct.adapter, %struct.adapter* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  store i32 0, i32* %8, align 4
  br label %170

154:                                              ; preds = %131
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 131
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @EIO, align 4
  store i32 %160, i32* %8, align 4
  br label %311

161:                                              ; preds = %154
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @device_printf(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %167 = load i32, i32* @EIO, align 4
  store i32 %167, i32* %8, align 4
  br label %311

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169, %150
  %171 = load %struct.adapter*, %struct.adapter** %4, align 8
  %172 = getelementptr inbounds %struct.adapter, %struct.adapter* %171, i32 0, i32 1
  %173 = call i64 @ixgbe_validate_eeprom_checksum(%struct.ixgbe_hw* %172, i32* null)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32, i32* @EIO, align 4
  store i32 %178, i32* %8, align 4
  br label %311

179:                                              ; preds = %170
  %180 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %181 = call i32 @ixgbe_start_hw(%struct.ixgbe_hw* %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  switch i32 %182, label %193 [
    i32 133, label %183
    i32 131, label %186
    i32 132, label %190
  ]

183:                                              ; preds = %179
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.6, i64 0, i64 0))
  br label %194

186:                                              ; preds = %179
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @device_printf(i32 %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %189 = load i32, i32* @EIO, align 4
  store i32 %189, i32* %8, align 4
  br label %311

190:                                              ; preds = %179
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @device_printf(i32 %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %193

193:                                              ; preds = %179, %190
  br label %194

194:                                              ; preds = %193, %183
  %195 = load i32, i32* %3, align 4
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %197 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @iflib_set_mac(i32 %195, i32 %199)
  %201 = load %struct.adapter*, %struct.adapter** %4, align 8
  %202 = getelementptr inbounds %struct.adapter, %struct.adapter* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  switch i32 %205, label %213 [
    i32 130, label %206
    i32 128, label %206
    i32 129, label %206
  ]

206:                                              ; preds = %194, %194, %194
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  store i32 512, i32* %208, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 2
  store i32 64, i32* %210, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  store i32 64, i32* %212, align 4
  br label %220

213:                                              ; preds = %194
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  store i32 128, i32* %215, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 2
  store i32 16, i32* %217, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  store i32 16, i32* %219, align 4
  br label %220

220:                                              ; preds = %213, %206
  %221 = load i32, i32* @ixgbe_intr, align 4
  store i32 %221, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ixgbe_txrx, i32 0, i32 0), align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 4
  %229 = add i64 %228, 4
  %230 = trunc i64 %229 to i32
  %231 = load i32, i32* @DBA_ALIGN, align 4
  %232 = call i8* @roundup2(i32 %230, i32 %231)
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 15
  %235 = load i8**, i8*** %234, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  store i8* %232, i8** %236, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 4
  %244 = trunc i64 %243 to i32
  %245 = load i32, i32* @DBA_ALIGN, align 4
  %246 = call i8* @roundup2(i32 %244, i32 %245)
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 14
  %249 = load i8**, i8*** %248, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 0
  store i8* %246, i8** %250, align 8
  %251 = load i32, i32* @CSUM_IP, align 4
  %252 = load i32, i32* @CSUM_TCP, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @CSUM_UDP, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @CSUM_TSO, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @CSUM_IP6_TCP, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @CSUM_IP6_UDP, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @CSUM_IP6_TSO, align 4
  %263 = or i32 %261, %262
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 5
  store i32 %263, i32* %265, align 8
  %266 = load %struct.adapter*, %struct.adapter** %4, align 8
  %267 = getelementptr inbounds %struct.adapter, %struct.adapter* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @ixgbe_mac_82598EB, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %220
  %274 = load i32, i32* @IXGBE_82598_SCATTER, align 4
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 11
  store i32 %274, i32* %276, align 8
  br label %288

277:                                              ; preds = %220
  %278 = load i32, i32* @CSUM_SCTP, align 4
  %279 = load i32, i32* @CSUM_IP6_SCTP, align 4
  %280 = or i32 %278, %279
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load i32, i32* @IXGBE_82599_SCATTER, align 4
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 11
  store i32 %285, i32* %287, align 8
  br label %288

288:                                              ; preds = %277, %273
  %289 = load i32, i32* %5, align 4
  %290 = call i32 @pci_msix_table_bar(i32 %289)
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 13
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 12
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* @IXGBE_TSO_SIZE, align 4
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 10
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* @PAGE_SIZE, align 4
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 9
  store i32 %301, i32* %303, align 8
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 8
  store %struct.TYPE_15__* @ixgbe_txrx, %struct.TYPE_15__** %305, align 8
  %306 = load i32, i32* @IXGBE_CAPS, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 6
  store i32 %306, i32* %308, align 4
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 7
  store i32 %306, i32* %310, align 8
  store i32 0, i32* %2, align 4
  br label %328

311:                                              ; preds = %186, %175, %164, %157, %77
  %312 = load %struct.adapter*, %struct.adapter** %4, align 8
  %313 = getelementptr inbounds %struct.adapter, %struct.adapter* %312, i32 0, i32 1
  %314 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %315 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %313, i32 %314)
  store i32 %315, i32* %9, align 4
  %316 = load i32, i32* @IXGBE_CTRL_EXT_DRV_LOAD, align 4
  %317 = xor i32 %316, -1
  %318 = load i32, i32* %9, align 4
  %319 = and i32 %318, %317
  store i32 %319, i32* %9, align 4
  %320 = load %struct.adapter*, %struct.adapter** %4, align 8
  %321 = getelementptr inbounds %struct.adapter, %struct.adapter* %320, i32 0, i32 1
  %322 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %323 = load i32, i32* %9, align 4
  %324 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %321, i32 %322, i32 %323)
  %325 = load i32, i32* %3, align 4
  %326 = call i32 @ixgbe_free_pci_resources(i32 %325)
  %327 = load i32, i32* %8, align 4
  store i32 %327, i32* %2, align 4
  br label %328

328:                                              ; preds = %311, %288, %59
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.TYPE_14__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @iflib_get_media(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i64 @ixgbe_allocate_pci_resources(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_init_shared_code(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_device_features(%struct.adapter*) #1

declare dso_local i32 @ixgbe_check_wol_support(%struct.adapter*) #1

declare dso_local i32 @ixgbe_check_fan_failure(%struct.adapter*, i32, i8*) #1

declare dso_local i32 @ixgbe_init_swfw_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_reset_hw(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_validate_eeprom_checksum(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ixgbe_start_hw(%struct.ixgbe_hw*) #1

declare dso_local i32 @iflib_set_mac(i32, i32) #1

declare dso_local i8* @roundup2(i32, i32) #1

declare dso_local i32 @pci_msix_table_bar(i32) #1

declare dso_local i32 @ixgbe_free_pci_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
