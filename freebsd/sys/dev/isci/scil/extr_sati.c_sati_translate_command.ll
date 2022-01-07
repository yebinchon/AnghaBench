; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64, i8*, i64, %struct.TYPE_41__, %struct.TYPE_43__*, i8* }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_43__ = type { i64 }

@SATI_FAILURE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_LOGICAL_UNIT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SCSI_CONTROL_BYTE_NACA_BIT_ENABLE = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED = common dso_local global i64 0, align 8
@SCSI_SENSE_HARDWARE_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_INTERNAL_TARGET_FAILURE = common dso_local global i32 0, align 4
@SCSI_ASCQ_INTERNAL_TARGET_FAILURE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INITIAL = common dso_local global i64 0, align 8
@SCSI_SERVICE_ACTION_MASK = common dso_local global i32 0, align 4
@SCSI_SERVICE_ACTION_IN_CODES_READ_CAPACITY_16 = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_COMMAND_OPERATION_CODE = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE = common dso_local global i32 0, align 4
@SATA_FIS_TYPE_REGH2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_translate_command(%struct.TYPE_42__* %0, %struct.TYPE_43__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_43__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %6, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* @SATI_FAILURE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32* @sati_cb_get_cdb_address(i8* %13)
  store i32* %14, i32** %11, align 8
  %15 = load i8*, i8** @FALSE, align 8
  %16 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %22 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %22, i32 0, i32 4
  store %struct.TYPE_43__* %21, %struct.TYPE_43__** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @sati_cb_get_lun(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %31 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %32 = load i32, i32* @SCSI_ASC_LOGICAL_UNIT_NOT_SUPPORTED, align 4
  %33 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_42__* %28, i8* %29, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %34, i64* %5, align 8
  br label %293

35:                                               ; preds = %4
  %36 = load i32*, i32** %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @sati_cb_get_cdb_length(i8* %37)
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @sati_get_cdb_byte(i32* %36, i32 %39)
  %41 = load i32, i32* @SCSI_CONTROL_BYTE_NACA_BIT_ENABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %48 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %49 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %50 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %51 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_42__* %45, i8* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %52, i64* %5, align 8
  br label %293

53:                                               ; preds = %35
  %54 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %63 = load i32, i32* @SCSI_SENSE_HARDWARE_ERROR, align 4
  %64 = load i32, i32* @SCSI_ASC_INTERNAL_TARGET_FAILURE, align 4
  %65 = load i32, i32* @SCSI_ASCQ_INTERNAL_TARGET_FAILURE, align 4
  %66 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_42__* %60, i8* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %67, i64* %5, align 8
  br label %293

68:                                               ; preds = %53
  %69 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SATI_SEQUENCE_STATE_INITIAL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @sati_get_cdb_byte(i32* %81, i32 0)
  switch i32 %82, label %272 [
    i32 148, label %83
    i32 163, label %88
    i32 158, label %93
    i32 159, label %98
    i32 160, label %103
    i32 161, label %108
    i32 142, label %113
    i32 150, label %118
    i32 146, label %123
    i32 147, label %138
    i32 152, label %143
    i32 155, label %148
    i32 154, label %153
    i32 153, label %158
    i32 134, label %163
    i32 137, label %168
    i32 136, label %173
    i32 135, label %178
    i32 140, label %183
    i32 139, label %188
    i32 138, label %193
    i32 133, label %198
    i32 132, label %203
    i32 131, label %208
    i32 149, label %213
    i32 144, label %218
    i32 143, label %218
    i32 145, label %223
    i32 129, label %228
    i32 128, label %228
    i32 162, label %233
    i32 157, label %238
    i32 156, label %238
    i32 141, label %247
    i32 165, label %252
    i32 164, label %257
    i32 151, label %262
    i32 130, label %267
  ]

83:                                               ; preds = %80
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @sati_report_luns_translate_command(%struct.TYPE_42__* %84, i8* %85, i8* %86)
  store i64 %87, i64* %10, align 8
  br label %274

88:                                               ; preds = %80
  %89 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i64 @sati_inquiry_translate_command(%struct.TYPE_42__* %89, i8* %90, i8* %91)
  store i64 %92, i64* %10, align 8
  br label %274

93:                                               ; preds = %80
  %94 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i64 @sati_mode_sense_6_translate_command(%struct.TYPE_42__* %94, i8* %95, i8* %96)
  store i64 %97, i64* %10, align 8
  br label %274

98:                                               ; preds = %80
  %99 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i64 @sati_mode_sense_10_translate_command(%struct.TYPE_42__* %99, i8* %100, i8* %101)
  store i64 %102, i64* %10, align 8
  br label %274

103:                                              ; preds = %80
  %104 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i64 @sati_mode_select_6_translate_command(%struct.TYPE_42__* %104, i8* %105, i8* %106)
  store i64 %107, i64* %10, align 8
  br label %274

108:                                              ; preds = %80
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = call i64 @sati_mode_select_10_translate_command(%struct.TYPE_42__* %109, i8* %110, i8* %111)
  store i64 %112, i64* %10, align 8
  br label %274

113:                                              ; preds = %80
  %114 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i64 @sati_test_unit_ready_translate_command(%struct.TYPE_42__* %114, i8* %115, i8* %116)
  store i64 %117, i64* %10, align 8
  br label %274

118:                                              ; preds = %80
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i64 @sati_read_capacity_10_translate_command(%struct.TYPE_42__* %119, i8* %120, i8* %121)
  store i64 %122, i64* %10, align 8
  br label %274

123:                                              ; preds = %80
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @sati_get_cdb_byte(i32* %124, i32 1)
  %126 = load i32, i32* @SCSI_SERVICE_ACTION_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @SCSI_SERVICE_ACTION_IN_CODES_READ_CAPACITY_16, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i64 @sati_read_capacity_16_translate_command(%struct.TYPE_42__* %131, i8* %132, i8* %133)
  store i64 %134, i64* %10, align 8
  br label %137

135:                                              ; preds = %123
  %136 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %135, %130
  br label %274

138:                                              ; preds = %80
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = call i64 @sati_request_sense_translate_command(%struct.TYPE_42__* %139, i8* %140, i8* %141)
  store i64 %142, i64* %10, align 8
  br label %274

143:                                              ; preds = %80
  %144 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = call i64 @sati_read_6_translate_command(%struct.TYPE_42__* %144, i8* %145, i8* %146)
  store i64 %147, i64* %10, align 8
  br label %274

148:                                              ; preds = %80
  %149 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = call i64 @sati_read_10_translate_command(%struct.TYPE_42__* %149, i8* %150, i8* %151)
  store i64 %152, i64* %10, align 8
  br label %274

153:                                              ; preds = %80
  %154 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = call i64 @sati_read_12_translate_command(%struct.TYPE_42__* %154, i8* %155, i8* %156)
  store i64 %157, i64* %10, align 8
  br label %274

158:                                              ; preds = %80
  %159 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = call i64 @sati_read_16_translate_command(%struct.TYPE_42__* %159, i8* %160, i8* %161)
  store i64 %162, i64* %10, align 8
  br label %274

163:                                              ; preds = %80
  %164 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i64 @sati_write_6_translate_command(%struct.TYPE_42__* %164, i8* %165, i8* %166)
  store i64 %167, i64* %10, align 8
  br label %274

168:                                              ; preds = %80
  %169 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = call i64 @sati_write_10_translate_command(%struct.TYPE_42__* %169, i8* %170, i8* %171)
  store i64 %172, i64* %10, align 8
  br label %274

173:                                              ; preds = %80
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = call i64 @sati_write_12_translate_command(%struct.TYPE_42__* %174, i8* %175, i8* %176)
  store i64 %177, i64* %10, align 8
  br label %274

178:                                              ; preds = %80
  %179 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = call i64 @sati_write_16_translate_command(%struct.TYPE_42__* %179, i8* %180, i8* %181)
  store i64 %182, i64* %10, align 8
  br label %274

183:                                              ; preds = %80
  %184 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %185 = load i8*, i8** %8, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = call i64 @sati_verify_10_translate_command(%struct.TYPE_42__* %184, i8* %185, i8* %186)
  store i64 %187, i64* %10, align 8
  br label %274

188:                                              ; preds = %80
  %189 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = call i64 @sati_verify_12_translate_command(%struct.TYPE_42__* %189, i8* %190, i8* %191)
  store i64 %192, i64* %10, align 8
  br label %274

193:                                              ; preds = %80
  %194 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = call i64 @sati_verify_16_translate_command(%struct.TYPE_42__* %194, i8* %195, i8* %196)
  store i64 %197, i64* %10, align 8
  br label %274

198:                                              ; preds = %80
  %199 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = call i64 @sati_write_and_verify_10_translate_command(%struct.TYPE_42__* %199, i8* %200, i8* %201)
  store i64 %202, i64* %10, align 8
  br label %274

203:                                              ; preds = %80
  %204 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = call i64 @sati_write_and_verify_12_translate_command(%struct.TYPE_42__* %204, i8* %205, i8* %206)
  store i64 %207, i64* %10, align 8
  br label %274

208:                                              ; preds = %80
  %209 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = call i64 @sati_write_and_verify_16_translate_command(%struct.TYPE_42__* %209, i8* %210, i8* %211)
  store i64 %212, i64* %10, align 8
  br label %274

213:                                              ; preds = %80
  %214 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = call i64 @sati_reassign_blocks_translate_command(%struct.TYPE_42__* %214, i8* %215, i8* %216)
  store i64 %217, i64* %10, align 8
  br label %274

218:                                              ; preds = %80, %80
  %219 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = load i8*, i8** %9, align 8
  %222 = call i64 @sati_synchronize_cache_translate_command(%struct.TYPE_42__* %219, i8* %220, i8* %221)
  store i64 %222, i64* %10, align 8
  br label %274

223:                                              ; preds = %80
  %224 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = load i8*, i8** %9, align 8
  %227 = call i64 @sati_start_stop_unit_translate_command(%struct.TYPE_42__* %224, i8* %225, i8* %226)
  store i64 %227, i64* %10, align 8
  br label %274

228:                                              ; preds = %80, %80
  %229 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = load i8*, i8** %9, align 8
  %232 = call i64 @sati_write_long_translate_command(%struct.TYPE_42__* %229, i8* %230, i8* %231)
  store i64 %232, i64* %10, align 8
  br label %274

233:                                              ; preds = %80
  %234 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %235 = load i8*, i8** %8, align 8
  %236 = load i8*, i8** %9, align 8
  %237 = call i64 @sati_log_sense_translate_command(%struct.TYPE_42__* %234, i8* %235, i8* %236)
  store i64 %237, i64* %10, align 8
  br label %274

238:                                              ; preds = %80, %80
  %239 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %242 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %243 = load i32, i32* @SCSI_ASC_INVALID_COMMAND_OPERATION_CODE, align 4
  %244 = load i32, i32* @SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE, align 4
  %245 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_42__* %239, i8* %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %246, i64* %5, align 8
  br label %293

247:                                              ; preds = %80
  %248 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %249 = load i8*, i8** %8, align 8
  %250 = load i8*, i8** %9, align 8
  %251 = call i64 @sati_unmap_translate_command(%struct.TYPE_42__* %248, i8* %249, i8* %250)
  store i64 %251, i64* %10, align 8
  br label %274

252:                                              ; preds = %80
  %253 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %254 = load i8*, i8** %8, align 8
  %255 = load i8*, i8** %9, align 8
  %256 = call i64 @sati_passthrough_12_translate_command(%struct.TYPE_42__* %253, i8* %254, i8* %255)
  store i64 %256, i64* %10, align 8
  br label %274

257:                                              ; preds = %80
  %258 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %259 = load i8*, i8** %8, align 8
  %260 = load i8*, i8** %9, align 8
  %261 = call i64 @sati_passthrough_16_translate_command(%struct.TYPE_42__* %258, i8* %259, i8* %260)
  store i64 %261, i64* %10, align 8
  br label %274

262:                                              ; preds = %80
  %263 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %264 = load i8*, i8** %8, align 8
  %265 = load i8*, i8** %9, align 8
  %266 = call i64 @sati_read_buffer_translate_command(%struct.TYPE_42__* %263, i8* %264, i8* %265)
  store i64 %266, i64* %10, align 8
  br label %274

267:                                              ; preds = %80
  %268 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %269 = load i8*, i8** %8, align 8
  %270 = load i8*, i8** %9, align 8
  %271 = call i64 @sati_write_buffer_translate_command(%struct.TYPE_42__* %268, i8* %269, i8* %270)
  store i64 %271, i64* %10, align 8
  br label %274

272:                                              ; preds = %80
  %273 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %273, i64* %10, align 8
  br label %274

274:                                              ; preds = %272, %267, %262, %257, %252, %247, %233, %228, %223, %218, %213, %208, %203, %198, %193, %188, %183, %178, %173, %168, %163, %158, %153, %148, %143, %138, %137, %118, %113, %108, %103, %98, %93, %88, %83
  %275 = load i64, i64* %10, align 8
  %276 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %291

278:                                              ; preds = %274
  %279 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %285 = load i8*, i8** %8, align 8
  %286 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %287 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %288 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %289 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %290 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_42__* %284, i8* %285, i32 %286, i32 %287, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %283, %278, %274
  %292 = load i64, i64* %10, align 8
  store i64 %292, i64* %5, align 8
  br label %293

293:                                              ; preds = %291, %238, %59, %44, %27
  %294 = load i64, i64* %5, align 8
  ret i64 %294
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i64 @sati_cb_get_lun(i8*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_42__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_cb_get_cdb_length(i8*) #1

declare dso_local i64 @sati_report_luns_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_inquiry_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_mode_sense_6_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_mode_sense_10_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_mode_select_6_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_mode_select_10_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_test_unit_ready_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_read_capacity_10_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_read_capacity_16_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_request_sense_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_read_6_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_read_10_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_read_12_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_read_16_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_6_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_10_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_12_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_16_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_verify_10_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_verify_12_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_verify_16_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_and_verify_10_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_and_verify_12_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_and_verify_16_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_reassign_blocks_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_synchronize_cache_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_start_stop_unit_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_long_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_log_sense_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_unmap_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_passthrough_12_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_passthrough_16_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_read_buffer_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @sati_write_buffer_translate_command(%struct.TYPE_42__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
