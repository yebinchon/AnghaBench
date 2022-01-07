; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_controller = type { i32 }
%struct.siis_channel = type { i64, i32, i32, i8*, i8*, i32*, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"pm_level\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sata_rev\00", align 1
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"SIIS channel lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to map interrupt\0A\00", align 1
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@siis_ch_intr_locked = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to setup interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to allocate simq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@siisaction = common dso_local global i32 0, align 4
@siispoll = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"siisch\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"unable to allocate sim\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"unable to register xpt bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"unable to create path\0A\00", align 1
@siis_ch_led = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @siis_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.siis_controller*, align 8
  %5 = alloca %struct.siis_channel*, align 8
  %6 = alloca %struct.cam_devq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.siis_controller*
  store %struct.siis_controller* %14, %struct.siis_controller** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.siis_channel*
  store %struct.siis_channel* %17, %struct.siis_channel** %5, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %20 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @device_get_ivars(i32 %21)
  %23 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %24 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %26 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %29 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %31 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_name(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_get_unit(i32 %34)
  %36 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %37 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %36, i32 0, i32 1
  %38 = call i32 @resource_int_value(i32 %33, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_name(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = call i32 @resource_int_value(i32 %40, i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %116, %1
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %119

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %50 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %49, i32 0, i32 9
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %57 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %56, i32 0, i32 9
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %64 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %63, i32 0, i32 9
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 8192, i32* %69, align 4
  %70 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %71 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %72 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %71, i32 0, i32 9
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i32 %70, i32* %77, align 4
  %78 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %79 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %78, i32 0, i32 10
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %85 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %84, i32 0, i32 9
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = bitcast %struct.TYPE_2__* %83 to i8*
  %91 = bitcast %struct.TYPE_2__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 24, i1 false)
  %92 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %93 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %47
  %97 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %98 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %99 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %98, i32 0, i32 9
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %97, i32* %104, align 8
  br label %105

105:                                              ; preds = %96, %47
  %106 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %107 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %108 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %107, i32 0, i32 9
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %106
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %44

119:                                              ; preds = %44
  %120 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %121 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %120, i32 0, i32 2
  %122 = load i32, i32* @MTX_DEF, align 4
  %123 = call i32 @mtx_init(i32* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %122)
  %124 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %125 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @SYS_RES_MEMORY, align 4
  %130 = load i32, i32* @RF_ACTIVE, align 4
  %131 = call i8* @bus_alloc_resource_any(i32 %128, i32 %129, i32* %7, i32 %130)
  %132 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %133 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = icmp ne i8* %131, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %119
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %2, align 4
  br label %286

137:                                              ; preds = %119
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @siis_dmainit(i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @siis_slotsalloc(i32 %140)
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @siis_ch_init(i32 %142)
  %144 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %145 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %144, i32 0, i32 2
  %146 = call i32 @mtx_lock(i32* %145)
  %147 = load i32, i32* @ATA_IRQ_RID, align 4
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @SYS_RES_IRQ, align 4
  %150 = load i32, i32* @RF_SHAREABLE, align 4
  %151 = load i32, i32* @RF_ACTIVE, align 4
  %152 = or i32 %150, %151
  %153 = call i8* @bus_alloc_resource_any(i32 %148, i32 %149, i32* %7, i32 %152)
  %154 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %155 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %154, i32 0, i32 4
  store i8* %153, i8** %155, align 8
  %156 = icmp ne i8* %153, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %137
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @ENXIO, align 4
  store i32 %160, i32* %8, align 4
  br label %268

161:                                              ; preds = %137
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %164 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %167 = load i32, i32* @siis_ch_intr_locked, align 4
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %170 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %169, i32 0, i32 8
  %171 = call i64 @bus_setup_intr(i32 %162, i8* %165, i32 %166, i32* null, i32 %167, i32 %168, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %161
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @device_printf(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i32, i32* @ENXIO, align 4
  store i32 %176, i32* %8, align 4
  br label %260

177:                                              ; preds = %161
  %178 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %179 = call %struct.cam_devq* @cam_simq_alloc(i32 %178)
  store %struct.cam_devq* %179, %struct.cam_devq** %6, align 8
  %180 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %181 = icmp eq %struct.cam_devq* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i32, i32* @ENOMEM, align 4
  store i32 %185, i32* %8, align 4
  br label %260

186:                                              ; preds = %177
  %187 = load i32, i32* @siisaction, align 4
  %188 = load i32, i32* @siispoll, align 4
  %189 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @device_get_unit(i32 %190)
  %192 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %193 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %192, i32 0, i32 2
  %194 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %195 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %196 = call i32* @cam_sim_alloc(i32 %187, i32 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.siis_channel* %189, i32 %191, i32* %193, i32 2, i32 %194, %struct.cam_devq* %195)
  %197 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %198 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %197, i32 0, i32 5
  store i32* %196, i32** %198, align 8
  %199 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %200 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %186
  %204 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %205 = call i32 @cam_simq_free(%struct.cam_devq* %204)
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @device_printf(i32 %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %208 = load i32, i32* @ENOMEM, align 4
  store i32 %208, i32* %8, align 4
  br label %260

209:                                              ; preds = %186
  %210 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %211 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %3, align 4
  %214 = call i64 @xpt_bus_register(i32* %212, i32 %213, i32 0)
  %215 = load i64, i64* @CAM_SUCCESS, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %209
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @device_printf(i32 %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %220 = load i32, i32* @ENXIO, align 4
  store i32 %220, i32* %8, align 4
  br label %254

221:                                              ; preds = %209
  %222 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %223 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %222, i32 0, i32 7
  %224 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %225 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @cam_sim_path(i32* %226)
  %228 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %229 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %230 = call i64 @xpt_create_path(i32* %223, i32* null, i32 %227, i32 %228, i32 %229)
  %231 = load i64, i64* @CAM_REQ_CMP, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %221
  %234 = load i32, i32* %3, align 4
  %235 = call i32 @device_printf(i32 %234, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %236 = load i32, i32* @ENXIO, align 4
  store i32 %236, i32* %8, align 4
  br label %248

237:                                              ; preds = %221
  %238 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %239 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %238, i32 0, i32 2
  %240 = call i32 @mtx_unlock(i32* %239)
  %241 = load i32, i32* @siis_ch_led, align 4
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @device_get_nameunit(i32 %243)
  %245 = call i32 @led_create(i32 %241, i32 %242, i32 %244)
  %246 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %247 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 8
  store i32 0, i32* %2, align 4
  br label %286

248:                                              ; preds = %233
  %249 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %250 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %249, i32 0, i32 5
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @cam_sim_path(i32* %251)
  %253 = call i32 @xpt_bus_deregister(i32 %252)
  br label %254

254:                                              ; preds = %248, %217
  %255 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %256 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* @TRUE, align 4
  %259 = call i32 @cam_sim_free(i32* %257, i32 %258)
  br label %260

260:                                              ; preds = %254, %203, %182, %173
  %261 = load i32, i32* %3, align 4
  %262 = load i32, i32* @SYS_RES_IRQ, align 4
  %263 = load i32, i32* @ATA_IRQ_RID, align 4
  %264 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %265 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %264, i32 0, i32 4
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @bus_release_resource(i32 %261, i32 %262, i32 %263, i8* %266)
  br label %268

268:                                              ; preds = %260, %157
  %269 = load i32, i32* %3, align 4
  %270 = load i32, i32* @SYS_RES_MEMORY, align 4
  %271 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %272 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = trunc i64 %273 to i32
  %275 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %276 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %275, i32 0, i32 3
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @bus_release_resource(i32 %269, i32 %270, i32 %274, i8* %277)
  %279 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %280 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %279, i32 0, i32 2
  %281 = call i32 @mtx_unlock(i32* %280)
  %282 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %283 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %282, i32 0, i32 2
  %284 = call i32 @mtx_destroy(i32* %283)
  %285 = load i32, i32* %8, align 4
  store i32 %285, i32* %2, align 4
  br label %286

286:                                              ; preds = %268, %237, %135
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @siis_dmainit(i32) #1

declare dso_local i32 @siis_slotsalloc(i32) #1

declare dso_local i32 @siis_ch_init(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.siis_channel*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @led_create(i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
