; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i32, i32, i32, i64, i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.cam_devq = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@ATA_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ATA state lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ata_conn_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"dev%d.sata_rev\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sata_rev\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dev%d.mode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@ATA_SATA = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_PMREQ = common dso_local global i32 0, align 4
@ATA_NO_48BIT_DMA = common dso_local global i32 0, align 4
@CTS_ATA_CAPS_H_DMA48 = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"unable to allocate interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@ata_interrupt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@ATA_PERIODIC_POLL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ata_periodic_poll = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Unable to allocate simq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ataaction = common dso_local global i32 0, align 4
@atapoll = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"ata\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"unable to allocate sim\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"unable to register xpt bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"unable to create path\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_devq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.ata_channel* @device_get_softc(i32 %12)
  store %struct.ata_channel* %13, %struct.ata_channel** %4, align 8
  %14 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EEXIST, align 4
  store i32 %19, i32* %2, align 4
  br label %406

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %23 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %22, i32 0, i32 13
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @ATA_IDLE, align 4
  %25 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 12
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %27, i32 0, i32 3
  %29 = call i32 @bzero(i32* %28, i32 4)
  %30 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %31 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %30, i32 0, i32 3
  %32 = load i32, i32* @MTX_DEF, align 4
  %33 = call i32 @mtx_init(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %32)
  %34 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %35 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %34, i32 0, i32 11
  %36 = load i32, i32* @ata_conn_event, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @TASK_INIT(i32* %35, i32 0, i32 %36, i32 %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %230, %20
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %233

42:                                               ; preds = %39
  %43 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %44 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %43, i32 0, i32 9
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @snprintf(i8* %50, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_get_name(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_get_unit(i32 %55)
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %58 = call i64 @resource_int_value(i32 %54, i32 %56, i8* %57, i32* %11)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %42
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_get_name(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_get_unit(i32 %63)
  %65 = call i64 @resource_int_value(i32 %62, i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 -1, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %60, %42
  %69 = load i32, i32* %11, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %74 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %73, i32 0, i32 9
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %71, %68
  %81 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %82 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %81, i32 0, i32 9
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @snprintf(i8* %88, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @device_get_name(i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @device_get_unit(i32 %93)
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %96 = call i64 @resource_string_value(i32 %92, i32 %94, i8* %95, i8** %8)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %80
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @ata_str2mode(i8* %99)
  store i32 %100, i32* %11, align 4
  br label %113

101:                                              ; preds = %80
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @device_get_name(i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @device_get_unit(i32 %104)
  %106 = call i64 @resource_string_value(i32 %103, i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @ata_str2mode(i8* %109)
  store i32 %110, i32* %11, align 4
  br label %112

111:                                              ; preds = %101
  store i32 -1, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %108
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i32, i32* %11, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %119 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %118, i32 0, i32 9
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %113
  %126 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %127 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ATA_SATA, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %134 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %133, i32 0, i32 9
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32 8192, i32* %139, align 4
  br label %149

140:                                              ; preds = %125
  %141 = load i32, i32* @MAXPHYS, align 4
  %142 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %143 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %142, i32 0, i32 9
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  store i32 %141, i32* %148, align 4
  br label %149

149:                                              ; preds = %140, %132
  %150 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %151 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %150, i32 0, i32 9
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  store i32 0, i32* %156, align 4
  %157 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %158 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %157, i32 0, i32 10
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %164 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %163, i32 0, i32 9
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = bitcast %struct.TYPE_3__* %162 to i8*
  %170 = bitcast %struct.TYPE_3__* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 4 %170, i64 16, i1 false)
  %171 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %172 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ATA_SATA, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %149
  %178 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %179 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %177
  %183 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %184 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %185 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %184, i32 0, i32 9
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %183
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %182, %177
  %194 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %195 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load i32, i32* @CTS_SATA_CAPS_D_PMREQ, align 4
  %200 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %201 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %200, i32 0, i32 9
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %199
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %198, %193
  br label %229

210:                                              ; preds = %149
  %211 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %212 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ATA_NO_48BIT_DMA, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %210
  %218 = load i32, i32* @CTS_ATA_CAPS_H_DMA48, align 4
  %219 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %220 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %219, i32 0, i32 9
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %218
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %217, %210
  br label %229

229:                                              ; preds = %228, %209
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %39

233:                                              ; preds = %39
  %234 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %235 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %234, i32 0, i32 2
  %236 = call i32 @callout_init(i32* %235, i32 1)
  %237 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %238 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32 (i32)*, i32 (i32)** %239, align 8
  %241 = icmp ne i32 (i32)* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %233
  %243 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %244 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %243, i32 0, i32 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32 (i32)*, i32 (i32)** %245, align 8
  %247 = load i32, i32* %3, align 4
  %248 = call i32 %246(i32 %247)
  br label %249

249:                                              ; preds = %242, %233
  %250 = load i32, i32* @ATA_IRQ_RID, align 4
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %3, align 4
  %252 = load i32, i32* @SYS_RES_IRQ, align 4
  %253 = load i32, i32* @RF_SHAREABLE, align 4
  %254 = load i32, i32* @RF_ACTIVE, align 4
  %255 = or i32 %253, %254
  %256 = call i64 @bus_alloc_resource_any(i32 %251, i32 %252, i32* %6, i32 %255)
  %257 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %258 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %257, i32 0, i32 4
  store i64 %256, i64* %258, align 8
  %259 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %260 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %249
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @device_printf(i32 %264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* @ENXIO, align 4
  store i32 %266, i32* %2, align 4
  br label %406

267:                                              ; preds = %249
  %268 = load i32, i32* %3, align 4
  %269 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %270 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %273 = load i32, i32* @ata_interrupt, align 4
  %274 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %275 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %276 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %275, i32 0, i32 7
  %277 = call i32 @bus_setup_intr(i32 %268, i64 %271, i32 %272, i32* null, i32 %273, %struct.ata_channel* %274, i32* %276)
  store i32 %277, i32* %5, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %267
  %280 = load i32, i32* %3, align 4
  %281 = load i32, i32* @SYS_RES_IRQ, align 4
  %282 = load i32, i32* %6, align 4
  %283 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %284 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @bus_release_resource(i32 %280, i32 %281, i32 %282, i64 %285)
  %287 = load i32, i32* %3, align 4
  %288 = call i32 @device_printf(i32 %287, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %289 = load i32, i32* %5, align 4
  store i32 %289, i32* %2, align 4
  br label %406

290:                                              ; preds = %267
  %291 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %292 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %290
  %298 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %299 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %298, i32 0, i32 2
  %300 = load i32, i32* @hz, align 4
  %301 = load i32, i32* @ata_periodic_poll, align 4
  %302 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %303 = call i32 @callout_reset(i32* %299, i32 %300, i32 %301, %struct.ata_channel* %302)
  br label %304

304:                                              ; preds = %297, %290
  %305 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %306 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %305, i32 0, i32 3
  %307 = call i32 @mtx_lock(i32* %306)
  %308 = call %struct.cam_devq* @cam_simq_alloc(i32 1)
  store %struct.cam_devq* %308, %struct.cam_devq** %7, align 8
  %309 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %310 = icmp eq %struct.cam_devq* %309, null
  br i1 %310, label %311, label %315

311:                                              ; preds = %304
  %312 = load i32, i32* %3, align 4
  %313 = call i32 @device_printf(i32 %312, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %314 = load i32, i32* @ENOMEM, align 4
  store i32 %314, i32* %5, align 4
  br label %383

315:                                              ; preds = %304
  %316 = load i32, i32* @ataaction, align 4
  %317 = load i32, i32* @atapoll, align 4
  %318 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %319 = load i32, i32* %3, align 4
  %320 = call i32 @device_get_unit(i32 %319)
  %321 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %322 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %321, i32 0, i32 3
  %323 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %324 = call i32* @cam_sim_alloc(i32 %316, i32 %317, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %struct.ata_channel* %318, i32 %320, i32* %322, i32 1, i32 0, %struct.cam_devq* %323)
  %325 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %326 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %325, i32 0, i32 5
  store i32* %324, i32** %326, align 8
  %327 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %328 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %327, i32 0, i32 5
  %329 = load i32*, i32** %328, align 8
  %330 = icmp eq i32* %329, null
  br i1 %330, label %331, label %337

331:                                              ; preds = %315
  %332 = load i32, i32* %3, align 4
  %333 = call i32 @device_printf(i32 %332, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %334 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %335 = call i32 @cam_simq_free(%struct.cam_devq* %334)
  %336 = load i32, i32* @ENOMEM, align 4
  store i32 %336, i32* %5, align 4
  br label %383

337:                                              ; preds = %315
  %338 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %339 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %338, i32 0, i32 5
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %3, align 4
  %342 = call i64 @xpt_bus_register(i32* %340, i32 %341, i32 0)
  %343 = load i64, i64* @CAM_SUCCESS, align 8
  %344 = icmp ne i64 %342, %343
  br i1 %344, label %345, label %349

345:                                              ; preds = %337
  %346 = load i32, i32* %3, align 4
  %347 = call i32 @device_printf(i32 %346, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %348 = load i32, i32* @ENXIO, align 4
  store i32 %348, i32* %5, align 4
  br label %375

349:                                              ; preds = %337
  %350 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %351 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %350, i32 0, i32 6
  %352 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %353 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %352, i32 0, i32 5
  %354 = load i32*, i32** %353, align 8
  %355 = call i32 @cam_sim_path(i32* %354)
  %356 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %357 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %358 = call i64 @xpt_create_path(i32* %351, i32* null, i32 %355, i32 %356, i32 %357)
  %359 = load i64, i64* @CAM_REQ_CMP, align 8
  %360 = icmp ne i64 %358, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %349
  %362 = load i32, i32* %3, align 4
  %363 = call i32 @device_printf(i32 %362, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %364 = load i32, i32* @ENXIO, align 4
  store i32 %364, i32* %5, align 4
  br label %369

365:                                              ; preds = %349
  %366 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %367 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %366, i32 0, i32 3
  %368 = call i32 @mtx_unlock(i32* %367)
  store i32 0, i32* %2, align 4
  br label %406

369:                                              ; preds = %361
  %370 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %371 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %370, i32 0, i32 5
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @cam_sim_path(i32* %372)
  %374 = call i32 @xpt_bus_deregister(i32 %373)
  br label %375

375:                                              ; preds = %369, %345
  %376 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %377 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %376, i32 0, i32 5
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* @TRUE, align 4
  %380 = call i32 @cam_sim_free(i32* %378, i32 %379)
  %381 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %382 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %381, i32 0, i32 5
  store i32* null, i32** %382, align 8
  br label %383

383:                                              ; preds = %375, %331, %311
  %384 = load i32, i32* %3, align 4
  %385 = load i32, i32* @SYS_RES_IRQ, align 4
  %386 = load i32, i32* %6, align 4
  %387 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %388 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %387, i32 0, i32 4
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @bus_release_resource(i32 %384, i32 %385, i32 %386, i64 %389)
  %391 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %392 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %391, i32 0, i32 3
  %393 = call i32 @mtx_unlock(i32* %392)
  %394 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %395 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %383
  %401 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %402 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %401, i32 0, i32 2
  %403 = call i32 @callout_drain(i32* %402)
  br label %404

404:                                              ; preds = %400, %383
  %405 = load i32, i32* %5, align 4
  store i32 %405, i32* %2, align 4
  br label %406

406:                                              ; preds = %404, %365, %279, %263, %18
  %407 = load i32, i32* %2, align 4
  ret i32 %407
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @ata_str2mode(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i64 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i64, i32, i32*, i32, %struct.ata_channel*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ata_channel*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.ata_channel*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
