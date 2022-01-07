; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { i32 }
%struct.mvs_channel = type { i64, i32, i32, i32, i8*, i8*, i32*, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"MVS channel lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pm_level\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sata_rev\00", align 1
@MVS_Q_GENIIE = common dso_local global i32 0, align 4
@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_APST = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_APST = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to map interrupt\0A\00", align 1
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@mvs_ch_intr_locked = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to setup interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to allocate simq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mvsaction = common dso_local global i32 0, align 4
@mvspoll = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"mvsch\00", align 1
@MVS_Q_GENI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"unable to allocate sim\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"unable to register xpt bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"unable to create path\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@mvs_ch_pm = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_controller*, align 8
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca %struct.cam_devq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.mvs_controller*
  store %struct.mvs_controller* %14, %struct.mvs_controller** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.mvs_channel*
  store %struct.mvs_channel* %17, %struct.mvs_channel** %5, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %20 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @device_get_ivars(i32 %21)
  %23 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %24 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %26 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %31 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %30, i32 0, i32 3
  %32 = load i32, i32* @MTX_DEF, align 4
  %33 = call i32 @mtx_init(i32* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32 %32)
  %34 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %35 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %34, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_get_name(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_unit(i32 %38)
  %40 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %41 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %40, i32 0, i32 2
  %42 = call i32 @resource_int_value(i32 %37, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  %43 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %44 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %49 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %48, i32 0, i32 7
  %50 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %51 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %50, i32 0, i32 3
  %52 = call i32 @callout_init_mtx(i32* %49, i32* %51, i32 0)
  br label %53

53:                                               ; preds = %47, %1
  %54 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %55 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %54, i32 0, i32 12
  %56 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %57 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %56, i32 0, i32 3
  %58 = call i32 @callout_init_mtx(i32* %55, i32* %57, i32 0)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_get_name(i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_get_unit(i32 %61)
  %63 = call i32 @resource_int_value(i32 %60, i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %150, %53
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %153

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %70 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %69, i32 0, i32 10
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  %76 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %77 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %76, i32 0, i32 10
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %84 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MVS_Q_GENIIE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 8192, i32 2048
  %91 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %92 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %91, i32 0, i32 10
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 4
  %98 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %99 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %100 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %99, i32 0, i32 10
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i32 %98, i32* %105, align 8
  %106 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %107 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %106, i32 0, i32 11
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %113 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %112, i32 0, i32 10
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = bitcast %struct.TYPE_2__* %111 to i8*
  %119 = bitcast %struct.TYPE_2__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 24, i1 false)
  %120 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %121 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %67
  %125 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %126 = load i32, i32* @CTS_SATA_CAPS_H_APST, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @CTS_SATA_CAPS_D_PMREQ, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @CTS_SATA_CAPS_D_APST, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %133 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %132, i32 0, i32 10
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  store i32 %131, i32* %138, align 4
  br label %139

139:                                              ; preds = %124, %67
  %140 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %141 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %142 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %141, i32 0, i32 10
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %140
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %64

153:                                              ; preds = %64
  %154 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %155 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @SYS_RES_MEMORY, align 4
  %160 = load i32, i32* @RF_ACTIVE, align 4
  %161 = call i8* @bus_alloc_resource_any(i32 %158, i32 %159, i32* %7, i32 %160)
  %162 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %163 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  %164 = icmp ne i8* %161, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %153
  %166 = load i32, i32* @ENXIO, align 4
  store i32 %166, i32* %2, align 4
  br label %344

167:                                              ; preds = %153
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @mvs_dmainit(i32 %168)
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @mvs_slotsalloc(i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @mvs_ch_init(i32 %172)
  %174 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %175 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %174, i32 0, i32 3
  %176 = call i32 @mtx_lock(i32* %175)
  %177 = load i32, i32* @ATA_IRQ_RID, align 4
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @SYS_RES_IRQ, align 4
  %180 = load i32, i32* @RF_SHAREABLE, align 4
  %181 = load i32, i32* @RF_ACTIVE, align 4
  %182 = or i32 %180, %181
  %183 = call i8* @bus_alloc_resource_any(i32 %178, i32 %179, i32* %7, i32 %182)
  %184 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %185 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %184, i32 0, i32 5
  store i8* %183, i8** %185, align 8
  %186 = icmp ne i8* %183, null
  br i1 %186, label %191, label %187

187:                                              ; preds = %167
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @device_printf(i32 %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %190 = load i32, i32* @ENXIO, align 4
  store i32 %190, i32* %8, align 4
  br label %326

191:                                              ; preds = %167
  %192 = load i32, i32* %3, align 4
  %193 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %194 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %193, i32 0, i32 5
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %197 = load i32, i32* @mvs_ch_intr_locked, align 4
  %198 = load i32, i32* %3, align 4
  %199 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %200 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %199, i32 0, i32 9
  %201 = call i64 @bus_setup_intr(i32 %192, i8* %195, i32 %196, i32* null, i32 %197, i32 %198, i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %191
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @device_printf(i32 %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %206 = load i32, i32* @ENXIO, align 4
  store i32 %206, i32* %8, align 4
  br label %318

207:                                              ; preds = %191
  %208 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %209 = sub nsw i32 %208, 1
  %210 = call %struct.cam_devq* @cam_simq_alloc(i32 %209)
  store %struct.cam_devq* %210, %struct.cam_devq** %6, align 8
  %211 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %212 = icmp eq %struct.cam_devq* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @device_printf(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %216 = load i32, i32* @ENOMEM, align 4
  store i32 %216, i32* %8, align 4
  br label %318

217:                                              ; preds = %207
  %218 = load i32, i32* @mvsaction, align 4
  %219 = load i32, i32* @mvspoll, align 4
  %220 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @device_get_unit(i32 %221)
  %223 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %224 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %223, i32 0, i32 3
  %225 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %226 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @MVS_Q_GENI, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %217
  br label %235

232:                                              ; preds = %217
  %233 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %234 = sub nsw i32 %233, 1
  br label %235

235:                                              ; preds = %232, %231
  %236 = phi i32 [ 0, %231 ], [ %234, %232 ]
  %237 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %238 = call i32* @cam_sim_alloc(i32 %218, i32 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.mvs_channel* %220, i32 %222, i32* %224, i32 2, i32 %236, %struct.cam_devq* %237)
  %239 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %240 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %239, i32 0, i32 6
  store i32* %238, i32** %240, align 8
  %241 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %242 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %241, i32 0, i32 6
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %235
  %246 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %247 = call i32 @cam_simq_free(%struct.cam_devq* %246)
  %248 = load i32, i32* %3, align 4
  %249 = call i32 @device_printf(i32 %248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %250 = load i32, i32* @ENOMEM, align 4
  store i32 %250, i32* %8, align 4
  br label %318

251:                                              ; preds = %235
  %252 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %253 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %252, i32 0, i32 6
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %3, align 4
  %256 = call i64 @xpt_bus_register(i32* %254, i32 %255, i32 0)
  %257 = load i64, i64* @CAM_SUCCESS, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load i32, i32* %3, align 4
  %261 = call i32 @device_printf(i32 %260, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %262 = load i32, i32* @ENXIO, align 4
  store i32 %262, i32* %8, align 4
  br label %312

263:                                              ; preds = %251
  %264 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %265 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %264, i32 0, i32 8
  %266 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %267 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %266, i32 0, i32 6
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @cam_sim_path(i32* %268)
  %270 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %271 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %272 = call i64 @xpt_create_path(i32* %265, i32* null, i32 %269, i32 %270, i32 %271)
  %273 = load i64, i64* @CAM_REQ_CMP, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %263
  %276 = load i32, i32* %3, align 4
  %277 = call i32 @device_printf(i32 %276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %278 = load i32, i32* @ENXIO, align 4
  store i32 %278, i32* %8, align 4
  br label %306

279:                                              ; preds = %263
  %280 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %281 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = icmp sgt i32 %282, 3
  br i1 %283, label %284, label %302

284:                                              ; preds = %279
  %285 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %286 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %285, i32 0, i32 7
  %287 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %288 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 4
  br i1 %290, label %291, label %294

291:                                              ; preds = %284
  %292 = load i32, i32* @hz, align 4
  %293 = sdiv i32 %292, 1000
  br label %297

294:                                              ; preds = %284
  %295 = load i32, i32* @hz, align 4
  %296 = sdiv i32 %295, 8
  br label %297

297:                                              ; preds = %294, %291
  %298 = phi i32 [ %293, %291 ], [ %296, %294 ]
  %299 = load i32, i32* @mvs_ch_pm, align 4
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @callout_reset(i32* %286, i32 %298, i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %297, %279
  %303 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %304 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %303, i32 0, i32 3
  %305 = call i32 @mtx_unlock(i32* %304)
  store i32 0, i32* %2, align 4
  br label %344

306:                                              ; preds = %275
  %307 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %308 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %307, i32 0, i32 6
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 @cam_sim_path(i32* %309)
  %311 = call i32 @xpt_bus_deregister(i32 %310)
  br label %312

312:                                              ; preds = %306, %259
  %313 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %314 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %313, i32 0, i32 6
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* @TRUE, align 4
  %317 = call i32 @cam_sim_free(i32* %315, i32 %316)
  br label %318

318:                                              ; preds = %312, %245, %213, %203
  %319 = load i32, i32* %3, align 4
  %320 = load i32, i32* @SYS_RES_IRQ, align 4
  %321 = load i32, i32* @ATA_IRQ_RID, align 4
  %322 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %323 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %322, i32 0, i32 5
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @bus_release_resource(i32 %319, i32 %320, i32 %321, i8* %324)
  br label %326

326:                                              ; preds = %318, %187
  %327 = load i32, i32* %3, align 4
  %328 = load i32, i32* @SYS_RES_MEMORY, align 4
  %329 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %330 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = trunc i64 %331 to i32
  %333 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %334 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %333, i32 0, i32 4
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @bus_release_resource(i32 %327, i32 %328, i32 %332, i8* %335)
  %337 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %338 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %337, i32 0, i32 3
  %339 = call i32 @mtx_unlock(i32* %338)
  %340 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %341 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %340, i32 0, i32 3
  %342 = call i32 @mtx_destroy(i32* %341)
  %343 = load i32, i32* %8, align 4
  store i32 %343, i32* %2, align 4
  br label %344

344:                                              ; preds = %326, %302, %165
  %345 = load i32, i32* %2, align 4
  ret i32 %345
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @mvs_dmainit(i32) #1

declare dso_local i32 @mvs_slotsalloc(i32) #1

declare dso_local i32 @mvs_ch_init(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.mvs_channel*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32) #1

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
