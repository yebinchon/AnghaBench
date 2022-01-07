; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_start_stop_unit.c_sati_start_stop_unit_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_start_stop_unit.c_sati_start_stop_unit_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32 }

@ATA_STANDBY_IMMED = common dso_local global i8* null, align 8
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i8* null, align 8
@ATA_FLUSH_CACHE = common dso_local global i8* null, align 8
@SATI_DEVICE_CAP_REMOVABLE_MEDIA = common dso_local global i32 0, align 4
@ATA_MEDIA_EJECT = common dso_local global i8* null, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@ATA_READ_VERIFY_SECTORS = common dso_local global i8* null, align 8
@ATA_IDLE = common dso_local global i8* null, align 8
@ATA_IDLE_IMMED = common dso_local global i8* null, align 8
@ATA_STANDBY = common dso_local global i8* null, align 8
@SATI_SEQUENCE_START_STOP_UNIT = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_start_stop_unit_translate_command(%struct.TYPE_16__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @SATI_START_STOP_UNIT_POWER_CONDITION(i32* %11)
  switch i32 %12, label %258 [
    i32 128, label %13
    i32 133, label %132
    i32 131, label %158
    i32 129, label %197
    i32 132, label %227
    i32 130, label %257
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @SATI_START_STOP_UNIT_START_BIT(i32* %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @SATI_START_STOP_UNIT_LOEJ_BIT(i32* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @SATI_START_STOP_UNIT_NO_FLUSH_BIT(i32* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32 @sati_ata_standby_immediate_construct(i8* %26, %struct.TYPE_16__* %27)
  %29 = load i8*, i8** @ATA_STANDBY_IMMED, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  br label %59

33:                                               ; preds = %21
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = call i32 @sati_ata_flush_cache_construct(i8* %40, %struct.TYPE_16__* %41)
  %43 = load i8*, i8** @ATA_FLUSH_CACHE, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %58

50:                                               ; preds = %33
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = call i32 @sati_ata_standby_immediate_construct(i8* %51, %struct.TYPE_16__* %52)
  %54 = load i8*, i8** @ATA_STANDBY_IMMED, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  br label %58

58:                                               ; preds = %50, %39
  br label %59

59:                                               ; preds = %58, %25
  br label %131

60:                                               ; preds = %17, %13
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @SATI_START_STOP_UNIT_START_BIT(i32* %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @SATI_START_STOP_UNIT_LOEJ_BIT(i32* %65)
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SATI_DEVICE_CAP_REMOVABLE_MEDIA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %68
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = call i32 @sati_ata_media_eject_construct(i8* %78, %struct.TYPE_16__* %79)
  %81 = load i8*, i8** @ATA_MEDIA_EJECT, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  br label %94

85:                                               ; preds = %68
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %89 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %90 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %91 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %92 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_16__* %86, i8* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %93, i32* %4, align 4
  br label %277

94:                                               ; preds = %77
  br label %130

95:                                               ; preds = %64, %60
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @SATI_START_STOP_UNIT_START_BIT(i32* %96)
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @SATI_START_STOP_UNIT_LOEJ_BIT(i32* %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = call i32 @sati_ata_read_verify_sectors_construct(i8* %104, %struct.TYPE_16__* %105)
  %107 = load i8*, i8** @ATA_READ_VERIFY_SECTORS, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  br label %129

111:                                              ; preds = %99, %95
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @SATI_START_STOP_UNIT_START_BIT(i32* %112)
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @SATI_START_STOP_UNIT_LOEJ_BIT(i32* %116)
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %123 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %124 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %125 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %126 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_16__* %120, i8* %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %127, i32* %4, align 4
  br label %277

128:                                              ; preds = %115, %111
  br label %129

129:                                              ; preds = %128, %103
  br label %130

130:                                              ; preds = %129, %94
  br label %131

131:                                              ; preds = %130, %59
  br label %267

132:                                              ; preds = %3
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %137 = icmp ne i8* %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load i8*, i8** %7, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = call i32 @sati_ata_idle_construct(i8* %139, %struct.TYPE_16__* %140)
  %142 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @ATA_IDLE, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  br label %157

149:                                              ; preds = %132
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = call i32 @sati_ata_read_verify_sectors_construct(i8* %150, %struct.TYPE_16__* %151)
  %153 = load i8*, i8** @ATA_READ_VERIFY_SECTORS, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  br label %157

157:                                              ; preds = %149, %138
  br label %267

158:                                              ; preds = %3
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @SATI_START_STOP_UNIT_NO_FLUSH_BIT(i32* %159)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %158
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %167 = icmp ne i8* %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = call i32 @sati_ata_flush_cache_construct(i8* %169, %struct.TYPE_16__* %170)
  %172 = load i8*, i8** @ATA_FLUSH_CACHE, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  store i8* %172, i8** %175, align 8
  %176 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  br label %196

179:                                              ; preds = %162, %158
  %180 = load i32*, i32** %8, align 8
  %181 = call i32 @SATI_START_STOP_UNIT_POWER_CONDITION_MODIFIER(i32* %180)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i8*, i8** %7, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %186 = call i32 @sati_ata_idle_immediate_construct(i8* %184, %struct.TYPE_16__* %185)
  br label %191

187:                                              ; preds = %179
  %188 = load i8*, i8** %7, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = call i32 @sati_ata_idle_immediate_unload_construct(i8* %188, %struct.TYPE_16__* %189)
  br label %191

191:                                              ; preds = %187, %183
  %192 = load i8*, i8** @ATA_IDLE_IMMED, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  store i8* %192, i8** %195, align 8
  br label %196

196:                                              ; preds = %191, %168
  br label %267

197:                                              ; preds = %3
  %198 = load i32*, i32** %8, align 8
  %199 = call i32 @SATI_START_STOP_UNIT_NO_FLUSH_BIT(i32* %198)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %197
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %206 = icmp ne i8* %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %201
  %208 = load i8*, i8** %7, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %210 = call i32 @sati_ata_flush_cache_construct(i8* %208, %struct.TYPE_16__* %209)
  %211 = load i8*, i8** @ATA_FLUSH_CACHE, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  store i8* %211, i8** %214, align 8
  %215 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  br label %226

218:                                              ; preds = %201, %197
  %219 = load i8*, i8** %7, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %221 = call i32 @sati_ata_standby_immediate_construct(i8* %219, %struct.TYPE_16__* %220)
  %222 = load i8*, i8** @ATA_STANDBY_IMMED, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  store i8* %222, i8** %225, align 8
  br label %226

226:                                              ; preds = %218, %207
  br label %267

227:                                              ; preds = %3
  %228 = load i32*, i32** %8, align 8
  %229 = call i32 @SATI_START_STOP_UNIT_NO_FLUSH_BIT(i32* %228)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %227
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %236 = icmp ne i8* %234, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %231
  %238 = load i8*, i8** %7, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %240 = call i32 @sati_ata_flush_cache_construct(i8* %238, %struct.TYPE_16__* %239)
  %241 = load i8*, i8** @ATA_FLUSH_CACHE, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  store i8* %241, i8** %244, align 8
  %245 = load i8*, i8** @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  store i8* %245, i8** %247, align 8
  br label %256

248:                                              ; preds = %231, %227
  %249 = load i8*, i8** %7, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %251 = call i32 @sati_ata_standby_construct(i8* %249, %struct.TYPE_16__* %250, i32 0)
  %252 = load i8*, i8** @ATA_STANDBY, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  store i8* %252, i8** %255, align 8
  br label %256

256:                                              ; preds = %248, %237
  br label %267

257:                                              ; preds = %3
  br label %258

258:                                              ; preds = %3, %257
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %260 = load i8*, i8** %6, align 8
  %261 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %262 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %263 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %264 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %265 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_16__* %259, i8* %260, i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %266, i32* %4, align 4
  br label %277

267:                                              ; preds = %256, %226, %196, %157, %131
  %268 = load i32*, i32** %8, align 8
  %269 = call i32 @SATI_START_STOP_UNIT_IMMED_BIT(i32* %268)
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %271, %267
  %273 = load i32, i32* @SATI_SEQUENCE_START_STOP_UNIT, align 4
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %272, %258, %119, %85
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @SATI_START_STOP_UNIT_POWER_CONDITION(i32*) #1

declare dso_local i32 @SATI_START_STOP_UNIT_START_BIT(i32*) #1

declare dso_local i32 @SATI_START_STOP_UNIT_LOEJ_BIT(i32*) #1

declare dso_local i32 @SATI_START_STOP_UNIT_NO_FLUSH_BIT(i32*) #1

declare dso_local i32 @sati_ata_standby_immediate_construct(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @sati_ata_flush_cache_construct(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @sati_ata_media_eject_construct(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_16__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_ata_read_verify_sectors_construct(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @sati_ata_idle_construct(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @SATI_START_STOP_UNIT_POWER_CONDITION_MODIFIER(i32*) #1

declare dso_local i32 @sati_ata_idle_immediate_construct(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @sati_ata_idle_immediate_unload_construct(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @sati_ata_standby_construct(i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @SATI_START_STOP_UNIT_IMMED_BIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
