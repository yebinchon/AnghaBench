; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i64, i32, i32, i8*, i8*, i32*, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.cam_devq = type { i32 }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"FSL SATA channel lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pm_level\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sata_rev\00", align 1
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bs_le_tag = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to map interrupt\0A\00", align 1
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@fsl_sata_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to setup interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to allocate simq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fsl_sataaction = common dso_local global i32 0, align 4
@fsl_satapoll = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"fslsata\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"unable to allocate sim\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"unable to register xpt bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"unable to create path\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@fsl_sata_pm = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_sata_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_sata_channel*, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.fsl_sata_channel* @device_get_softc(i32 %10)
  store %struct.fsl_sata_channel* %11, %struct.fsl_sata_channel** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %14 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @device_get_ivars(i32 %15)
  %17 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %18 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %20 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %19, i32 0, i32 2
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null, i32 %21)
  %23 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %24 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_name(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  %29 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %30 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %29, i32 0, i32 1
  %31 = call i32 @resource_int_value(i32 %26, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %33 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %32, i32 0, i32 11
  %34 = call i32 @STAILQ_INIT(i32* %33)
  %35 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %36 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %41 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %40, i32 0, i32 6
  %42 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %43 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %42, i32 0, i32 2
  %44 = call i32 @callout_init_mtx(i32* %41, i32* %43, i32 0)
  br label %45

45:                                               ; preds = %39, %1
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_get_name(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_get_unit(i32 %48)
  %50 = call i32 @resource_int_value(i32 %47, i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %132, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %135

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %57 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %56, i32 0, i32 9
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  %63 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %64 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %63, i32 0, i32 9
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %71 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %70, i32 0, i32 9
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 8192, i32* %76, align 4
  %77 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %78 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %79 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %78, i32 0, i32 9
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 %77, i32* %84, align 4
  %85 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %86 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %85, i32 0, i32 9
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  %92 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %93 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %92, i32 0, i32 10
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %99 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %98, i32 0, i32 9
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = bitcast %struct.TYPE_2__* %97 to i8*
  %105 = bitcast %struct.TYPE_2__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 24, i1 false)
  %106 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %107 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %54
  %111 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %112 = load i32, i32* @CTS_SATA_CAPS_D_PMREQ, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %115 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %114, i32 0, i32 9
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i32 %113, i32* %120, align 8
  br label %121

121:                                              ; preds = %110, %54
  %122 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %123 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %124 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %123, i32 0, i32 9
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %122
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %51

135:                                              ; preds = %51
  store i32 0, i32* %6, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @SYS_RES_MEMORY, align 4
  %138 = load i32, i32* @RF_ACTIVE, align 4
  %139 = call i8* @bus_alloc_resource_any(i32 %136, i32 %137, i32* %6, i32 %138)
  %140 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %141 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = icmp ne i8* %139, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %2, align 4
  br label %315

145:                                              ; preds = %135
  %146 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %147 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @rman_set_bustag(i8* %148, i32* @bs_le_tag)
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @fsl_sata_dmainit(i32 %150)
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @fsl_sata_slotsalloc(i32 %152)
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @fsl_sata_init(i32 %154)
  %156 = load i32, i32* @ATA_IRQ_RID, align 4
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @SYS_RES_IRQ, align 4
  %159 = load i32, i32* @RF_SHAREABLE, align 4
  %160 = load i32, i32* @RF_ACTIVE, align 4
  %161 = or i32 %159, %160
  %162 = call i8* @bus_alloc_resource_any(i32 %157, i32 %158, i32* %6, i32 %161)
  %163 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %164 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  %165 = icmp ne i8* %162, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %145
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @device_printf(i32 %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i32, i32* @ENXIO, align 4
  store i32 %169, i32* %7, align 4
  br label %300

170:                                              ; preds = %145
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %173 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %176 = load i32, i32* @fsl_sata_intr, align 4
  %177 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %178 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %179 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %178, i32 0, i32 8
  %180 = call i64 @bus_setup_intr(i32 %171, i8* %174, i32 %175, i32* null, i32 %176, %struct.fsl_sata_channel* %177, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %170
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %185 = load i32, i32* @ENXIO, align 4
  store i32 %185, i32* %7, align 4
  br label %289

186:                                              ; preds = %170
  %187 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %188 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %187, i32 0, i32 2
  %189 = call i32 @mtx_lock(i32* %188)
  %190 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %191 = call %struct.cam_devq* @cam_simq_alloc(i32 %190)
  store %struct.cam_devq* %191, %struct.cam_devq** %5, align 8
  %192 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %193 = icmp eq %struct.cam_devq* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @device_printf(i32 %195, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %197 = load i32, i32* @ENOMEM, align 4
  store i32 %197, i32* %7, align 4
  br label %289

198:                                              ; preds = %186
  %199 = load i32, i32* @fsl_sataaction, align 4
  %200 = load i32, i32* @fsl_satapoll, align 4
  %201 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @device_get_unit(i32 %202)
  %204 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %205 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %204, i32 0, i32 2
  %206 = bitcast i32* %205 to %struct.mtx*
  %207 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %208 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %209 = call i32* @cam_sim_alloc(i32 %199, i32 %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.fsl_sata_channel* %201, i32 %203, %struct.mtx* %206, i32 2, i32 %207, %struct.cam_devq* %208)
  %210 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %211 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %210, i32 0, i32 5
  store i32* %209, i32** %211, align 8
  %212 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %213 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %198
  %217 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %218 = call i32 @cam_simq_free(%struct.cam_devq* %217)
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @device_printf(i32 %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %221 = load i32, i32* @ENOMEM, align 4
  store i32 %221, i32* %7, align 4
  br label %289

222:                                              ; preds = %198
  %223 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %224 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %3, align 4
  %227 = call i64 @xpt_bus_register(i32* %225, i32 %226, i32 0)
  %228 = load i64, i64* @CAM_SUCCESS, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %222
  %231 = load i32, i32* %3, align 4
  %232 = call i32 @device_printf(i32 %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %233 = load i32, i32* @ENXIO, align 4
  store i32 %233, i32* %7, align 4
  br label %283

234:                                              ; preds = %222
  %235 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %236 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %235, i32 0, i32 7
  %237 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %238 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %237, i32 0, i32 5
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @cam_sim_path(i32* %239)
  %241 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %242 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %243 = call i64 @xpt_create_path(i32* %236, i32* null, i32 %240, i32 %241, i32 %242)
  %244 = load i64, i64* @CAM_REQ_CMP, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %234
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @device_printf(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %249 = load i32, i32* @ENXIO, align 4
  store i32 %249, i32* %7, align 4
  br label %277

250:                                              ; preds = %234
  %251 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %252 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = icmp sgt i32 %253, 3
  br i1 %254, label %255, label %273

255:                                              ; preds = %250
  %256 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %257 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %256, i32 0, i32 6
  %258 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %259 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 4
  br i1 %261, label %262, label %265

262:                                              ; preds = %255
  %263 = load i32, i32* @hz, align 4
  %264 = sdiv i32 %263, 1000
  br label %268

265:                                              ; preds = %255
  %266 = load i32, i32* @hz, align 4
  %267 = sdiv i32 %266, 8
  br label %268

268:                                              ; preds = %265, %262
  %269 = phi i32 [ %264, %262 ], [ %267, %265 ]
  %270 = load i32, i32* @fsl_sata_pm, align 4
  %271 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %272 = call i32 @callout_reset(i32* %257, i32 %269, i32 %270, %struct.fsl_sata_channel* %271)
  br label %273

273:                                              ; preds = %268, %250
  %274 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %275 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %274, i32 0, i32 2
  %276 = call i32 @mtx_unlock(i32* %275)
  store i32 0, i32* %2, align 4
  br label %315

277:                                              ; preds = %246
  %278 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %279 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %278, i32 0, i32 5
  %280 = load i32*, i32** %279, align 8
  %281 = call i32 @cam_sim_path(i32* %280)
  %282 = call i32 @xpt_bus_deregister(i32 %281)
  br label %283

283:                                              ; preds = %277, %230
  %284 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %285 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %284, i32 0, i32 5
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* @TRUE, align 4
  %288 = call i32 @cam_sim_free(i32* %286, i32 %287)
  br label %289

289:                                              ; preds = %283, %216, %194, %182
  %290 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %291 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %290, i32 0, i32 2
  %292 = call i32 @mtx_unlock(i32* %291)
  %293 = load i32, i32* %3, align 4
  %294 = load i32, i32* @SYS_RES_IRQ, align 4
  %295 = load i32, i32* @ATA_IRQ_RID, align 4
  %296 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %297 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %296, i32 0, i32 4
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @bus_release_resource(i32 %293, i32 %294, i32 %295, i8* %298)
  br label %300

300:                                              ; preds = %289, %166
  %301 = load i32, i32* %3, align 4
  %302 = load i32, i32* @SYS_RES_MEMORY, align 4
  %303 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %304 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  %307 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %308 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %307, i32 0, i32 3
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @bus_release_resource(i32 %301, i32 %302, i32 %306, i8* %309)
  %311 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %312 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %311, i32 0, i32 2
  %313 = call i32 @mtx_destroy(i32* %312)
  %314 = load i32, i32* %7, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %300, %273, %143
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local %struct.fsl_sata_channel* @device_get_softc(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_set_bustag(i8*, i32*) #1

declare dso_local i32 @fsl_sata_dmainit(i32) #1

declare dso_local i32 @fsl_sata_slotsalloc(i32) #1

declare dso_local i32 @fsl_sata_init(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.fsl_sata_channel*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.fsl_sata_channel*, i32, %struct.mtx*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.fsl_sata_channel*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

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
