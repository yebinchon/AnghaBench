; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_command_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_command_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_25__, i32, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@SATI_COMPLETE = common dso_local global i32 0, align 4
@ATA_STATUS_REG_DEVICE_FAULT_BIT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_HARDWARE_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_INTERNAL_TARGET_FAILURE = common dso_local global i32 0, align 4
@SCSI_ASCQ_INTERNAL_TARGET_FAILURE = common dso_local global i32 0, align 4
@SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SATI_FAILURE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_SENSE_MEDIUM_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_ASCQ_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INCOMPLETE = common dso_local global i32 0, align 4
@SATI_FAILURE_INVALID_SEQUENCE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_translate_command_response(%struct.TYPE_26__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @sati_get_ata_status(i32* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @ATA_STATUS_REG_DEVICE_FAULT_BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %31 = load i32, i32* @SCSI_SENSE_HARDWARE_ERROR, align 4
  %32 = load i32, i32* @SCSI_ASC_INTERNAL_TARGET_FAILURE, align 4
  %33 = load i32, i32* @SCSI_ASCQ_INTERNAL_TARGET_FAILURE, align 4
  %34 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_26__* %28, i8* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED, align 4
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @sati_sequence_terminate(%struct.TYPE_26__* %40, i8* %41, i8* %42)
  %44 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %44, i32* %4, align 4
  br label %289

45:                                               ; preds = %3
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %285 [
    i32 140, label %49
    i32 177, label %54
    i32 175, label %76
    i32 174, label %76
    i32 176, label %76
    i32 179, label %76
    i32 180, label %76
    i32 178, label %76
    i32 147, label %76
    i32 146, label %76
    i32 158, label %76
    i32 155, label %76
    i32 153, label %76
    i32 156, label %76
    i32 157, label %76
    i32 154, label %76
    i32 159, label %76
    i32 165, label %76
    i32 162, label %76
    i32 160, label %76
    i32 164, label %76
    i32 161, label %76
    i32 163, label %76
    i32 166, label %76
    i32 168, label %106
    i32 167, label %118
    i32 169, label %118
    i32 131, label %136
    i32 149, label %156
    i32 152, label %156
    i32 151, label %156
    i32 150, label %156
    i32 132, label %156
    i32 135, label %156
    i32 134, label %156
    i32 133, label %156
    i32 138, label %156
    i32 137, label %156
    i32 136, label %156
    i32 141, label %156
    i32 148, label %198
    i32 130, label %210
    i32 129, label %210
    i32 145, label %215
    i32 142, label %227
    i32 143, label %239
    i32 144, label %239
    i32 128, label %251
    i32 170, label %263
    i32 171, label %263
    i32 173, label %263
    i32 172, label %263
    i32 139, label %275
    i32 182, label %280
    i32 181, label %280
  ]

49:                                               ; preds = %45
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @sati_test_unit_ready_translate_response(%struct.TYPE_26__* %50, i8* %51, i8* %52)
  store i32 %53, i32* %8, align 4
  br label %287

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @sati_get_ata_error(i32* %60)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @sati_translate_error(%struct.TYPE_26__* %64, i8* %65, i32 %66)
  br label %75

68:                                               ; preds = %54
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @sati_inquiry_ata_information_finish_translation(%struct.TYPE_26__* %69, i8* %70, i8* %71)
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %74 = call i32 @sati_check_data_io(%struct.TYPE_26__* %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %68, %59
  br label %287

76:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = call i64 @sati_get_ata_error(i32* %82)
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %85, i32* %8, align 4
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @sati_translate_error(%struct.TYPE_26__* %86, i8* %87, i32 %88)
  br label %105

90:                                               ; preds = %76
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* @sati_cb_get_ata_data_address(i8* %91)
  store i8* %92, i8** %13, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %96, i32* %8, align 4
  br label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @sati_translate_data(%struct.TYPE_26__* %98, i8* %99, i8* %100)
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %103 = call i32 @sati_check_data_io(%struct.TYPE_26__* %102)
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %97, %95
  br label %105

105:                                              ; preds = %104, %81
  br label %287

106:                                              ; preds = %45
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @sati_mode_select_translate_response(%struct.TYPE_26__* %107, i8* %108, i8* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @SATI_COMPLETE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = call i32 @sati_check_data_io(%struct.TYPE_26__* %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %106
  br label %287

118:                                              ; preds = %45, %45
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load i32*, i32** %9, align 8
  %125 = call i64 @sati_get_ata_error(i32* %124)
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %127, i32* %8, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @sati_translate_error(%struct.TYPE_26__* %128, i8* %129, i32 %130)
  br label %135

132:                                              ; preds = %118
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %134 = call i32 @sati_check_data_io(%struct.TYPE_26__* %133)
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %132, %123
  br label %287

136:                                              ; preds = %45
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i32*, i32** %9, align 8
  %143 = call i64 @sati_get_ata_error(i32* %142)
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %15, align 4
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @sati_translate_error(%struct.TYPE_26__* %145, i8* %146, i32 %147)
  %149 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %149, i32* %4, align 4
  br label %289

150:                                              ; preds = %136
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @sati_write_and_verify_translate_response(%struct.TYPE_26__* %151, i8* %152, i8* %153)
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %150
  br label %287

156:                                              ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %188

161:                                              ; preds = %156
  %162 = load i32*, i32** %9, align 8
  %163 = call i64 @sati_get_ata_error(i32* %162)
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %165, i32* %8, align 4
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @sati_translate_error(%struct.TYPE_26__* %166, i8* %167, i32 %168)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SATI_SEQUENCE_STATE_READ_ERROR, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %161
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %180 = load i32, i32* @SCSI_SENSE_MEDIUM_ERROR, align 4
  %181 = load i32, i32* @SCSI_ASC_UNRECOVERED_READ_ERROR, align 4
  %182 = load i32, i32* @SCSI_ASCQ_UNRECOVERED_READ_ERROR, align 4
  %183 = call i32 @sati_scsi_read_error_sense_construct(%struct.TYPE_26__* %176, i8* %177, i8* %178, i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* @SATI_SEQUENCE_STATE_FINAL, align 4
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %175, %161
  br label %197

188:                                              ; preds = %156
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @SATI_SEQUENCE_INCOMPLETE, align 4
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %194, %188
  br label %197

197:                                              ; preds = %196, %187
  br label %287

198:                                              ; preds = %45
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 @sati_read_buffer_translate_response(%struct.TYPE_26__* %199, i8* %200, i8* %201)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @SATI_COMPLETE, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %198
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %208 = call i32 @sati_check_data_io(%struct.TYPE_26__* %207)
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %206, %198
  br label %287

210:                                              ; preds = %45, %45
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 @sati_write_buffer_translate_response(%struct.TYPE_26__* %211, i8* %212, i8* %213)
  store i32 %214, i32* %8, align 4
  br label %287

215:                                              ; preds = %45
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %217 = load i8*, i8** %6, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @sati_reassign_blocks_translate_response(%struct.TYPE_26__* %216, i8* %217, i8* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @SATI_COMPLETE, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %225 = call i32 @sati_check_data_io(%struct.TYPE_26__* %224)
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %223, %215
  br label %287

227:                                              ; preds = %45
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = call i32 @sati_start_stop_unit_translate_response(%struct.TYPE_26__* %228, i8* %229, i8* %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @SATI_COMPLETE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %237 = call i32 @sati_check_data_io(%struct.TYPE_26__* %236)
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %235, %227
  br label %287

239:                                              ; preds = %45, %45
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %241 = load i8*, i8** %6, align 8
  %242 = load i8*, i8** %7, align 8
  %243 = call i32 @sati_request_sense_translate_response(%struct.TYPE_26__* %240, i8* %241, i8* %242)
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @SATI_COMPLETE, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %239
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %249 = call i32 @sati_check_data_io(%struct.TYPE_26__* %248)
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %247, %239
  br label %287

251:                                              ; preds = %45
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = load i8*, i8** %7, align 8
  %255 = call i32 @sati_write_long_translate_response(%struct.TYPE_26__* %252, i8* %253, i8* %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @SATI_COMPLETE, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %251
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %261 = call i32 @sati_check_data_io(%struct.TYPE_26__* %260)
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %259, %251
  br label %287

263:                                              ; preds = %45, %45, %45, %45
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %265 = load i8*, i8** %6, align 8
  %266 = load i8*, i8** %7, align 8
  %267 = call i32 @sati_log_sense_translate_response(%struct.TYPE_26__* %264, i8* %265, i8* %266)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @SATI_COMPLETE, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %263
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %273 = call i32 @sati_check_data_io(%struct.TYPE_26__* %272)
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %271, %263
  br label %287

275:                                              ; preds = %45
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 @sati_unmap_translate_response(%struct.TYPE_26__* %276, i8* %277, i8* %278)
  store i32 %279, i32* %8, align 4
  br label %287

280:                                              ; preds = %45, %45
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %282 = load i8*, i8** %6, align 8
  %283 = load i8*, i8** %7, align 8
  %284 = call i32 @sati_passthrough_translate_response(%struct.TYPE_26__* %281, i8* %282, i8* %283)
  store i32 %284, i32* %8, align 4
  br label %287

285:                                              ; preds = %45
  %286 = load i32, i32* @SATI_FAILURE_INVALID_SEQUENCE_TYPE, align 4
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %285, %280, %275, %274, %262, %250, %238, %226, %210, %209, %197, %155, %135, %117, %105, %75, %49
  %288 = load i32, i32* %8, align 4
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %287, %141, %27
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i64 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_26__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_sequence_terminate(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_test_unit_ready_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i64 @sati_get_ata_error(i32*) #1

declare dso_local i32 @sati_translate_error(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @sati_inquiry_ata_information_finish_translation(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_check_data_io(%struct.TYPE_26__*) #1

declare dso_local i8* @sati_cb_get_ata_data_address(i8*) #1

declare dso_local i32 @sati_translate_data(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_select_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_write_and_verify_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_scsi_read_error_sense_construct(%struct.TYPE_26__*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_read_buffer_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_write_buffer_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_reassign_blocks_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_start_stop_unit_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_request_sense_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_write_long_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_log_sense_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_unmap_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sati_passthrough_translate_response(%struct.TYPE_26__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
