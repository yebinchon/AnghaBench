; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_nvme_trans_status_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_nvme_trans_status_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_command = type { %union.ccb* }
%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MPI2_SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@MPI2_SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@SSD_KEY_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SSD_KEY_MEDIUM_ERROR = common dso_local global i32 0, align 4
@MPI2_SCSI_STATUS_TASK_ABORTED = common dso_local global i32 0, align 4
@SSD_KEY_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_WARNING = common dso_local global i32 0, align 4
@SCSI_ASCQ_POWER_LOSS_EXPECTED = common dso_local global i32 0, align 4
@SSD_KEY_HARDWARE_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_INTERNAL_TARGET_FAILURE = common dso_local global i32 0, align 4
@SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_LUN_ID = common dso_local global i32 0, align 4
@SCSI_ASC_ILLEGAL_BLOCK = common dso_local global i32 0, align 4
@SSD_KEY_NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_LUN_NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_FORMAT_COMMAND_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_FORMAT_COMMAND_FAILED = common dso_local global i32 0, align 4
@SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT = common dso_local global i32 0, align 4
@SCSI_ASC_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@SSD_KEY_MISCOMPARE = common dso_local global i32 0, align 4
@SCSI_ASC_MISCOMPARE_DURING_VERIFY = common dso_local global i32 0, align 4
@SSD_TYPE_FIXED = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mpr_command*)* @mprsas_nvme_trans_status_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mprsas_nvme_trans_status_code(i32 %0, %struct.mpr_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ccb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mpr_command* %1, %struct.mpr_command** %4, align 8
  %13 = load i32, i32* @MPI2_SCSI_STATUS_GOOD, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %15 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %14, i32 0, i32 0
  %16 = load %union.ccb*, %union.ccb** %15, align 8
  store %union.ccb* %16, %union.ccb** %9, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @NVME_STATUS_GET_SCT(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @NVME_STATUS_GET_SC(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %135 [
    i32 152, label %26
    i32 153, label %84
    i32 151, label %97
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %83 [
    i32 130, label %28
    i32 134, label %33
    i32 137, label %38
    i32 140, label %43
    i32 147, label %48
    i32 138, label %53
    i32 150, label %58
    i32 146, label %58
    i32 149, label %58
    i32 148, label %58
    i32 135, label %63
    i32 133, label %68
    i32 143, label %73
    i32 132, label %78
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @MPI2_SCSI_STATUS_GOOD, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @SSD_KEY_NO_SENSE, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %32, i32* %8, align 4
  br label %83

33:                                               ; preds = %26
  %34 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @SCSI_ASC_ILLEGAL_COMMAND, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %37, i32* %8, align 4
  br label %83

38:                                               ; preds = %26
  %39 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %42, i32* %8, align 4
  br label %83

43:                                               ; preds = %26
  %44 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %47, i32* %8, align 4
  br label %83

48:                                               ; preds = %26
  %49 = load i32, i32* @MPI2_SCSI_STATUS_TASK_ABORTED, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @SSD_KEY_ABORTED_COMMAND, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @SCSI_ASC_WARNING, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @SCSI_ASCQ_POWER_LOSS_EXPECTED, align 4
  store i32 %52, i32* %8, align 4
  br label %83

53:                                               ; preds = %26
  %54 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @SSD_KEY_HARDWARE_ERROR, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @SCSI_ASC_INTERNAL_TARGET_FAILURE, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %57, i32* %8, align 4
  br label %83

58:                                               ; preds = %26, %26, %26, %26
  %59 = load i32, i32* @MPI2_SCSI_STATUS_TASK_ABORTED, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @SSD_KEY_ABORTED_COMMAND, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %62, i32* %8, align 4
  br label %83

63:                                               ; preds = %26
  %64 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @SCSI_ASCQ_INVALID_LUN_ID, align 4
  store i32 %67, i32* %8, align 4
  br label %83

68:                                               ; preds = %26
  %69 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @SCSI_ASC_ILLEGAL_BLOCK, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %72, i32* %8, align 4
  br label %83

73:                                               ; preds = %26
  %74 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %77, i32* %8, align 4
  br label %83

78:                                               ; preds = %26
  %79 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @SSD_KEY_NOT_READY, align 4
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @SCSI_ASC_LUN_NOT_READY, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %26, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28
  br label %135

84:                                               ; preds = %2
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %96 [
    i32 136, label %86
    i32 141, label %91
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @SCSI_ASC_FORMAT_COMMAND_FAILED, align 4
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @SCSI_ASCQ_FORMAT_COMMAND_FAILED, align 4
  store i32 %90, i32* %8, align 4
  br label %96

91:                                               ; preds = %84
  %92 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %84, %91, %86
  br label %135

97:                                               ; preds = %2
  %98 = load i32, i32* %12, align 4
  switch i32 %98, label %134 [
    i32 128, label %99
    i32 129, label %104
    i32 139, label %109
    i32 144, label %114
    i32 131, label %119
    i32 142, label %124
    i32 145, label %129
  ]

99:                                               ; preds = %97
  %100 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %103, i32* %8, align 4
  br label %134

104:                                              ; preds = %97
  %105 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @SCSI_ASC_UNRECOVERED_READ_ERROR, align 4
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %108, i32* %8, align 4
  br label %134

109:                                              ; preds = %97
  %110 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED, align 4
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED, align 4
  store i32 %113, i32* %8, align 4
  br label %134

114:                                              ; preds = %97
  %115 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* @SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* @SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED, align 4
  store i32 %118, i32* %8, align 4
  br label %134

119:                                              ; preds = %97
  %120 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @SSD_KEY_MEDIUM_ERROR, align 4
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* @SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED, align 4
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED, align 4
  store i32 %123, i32* %8, align 4
  br label %134

124:                                              ; preds = %97
  %125 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* @SSD_KEY_MISCOMPARE, align 4
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @SCSI_ASC_MISCOMPARE_DURING_VERIFY, align 4
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %128, i32* %8, align 4
  br label %134

129:                                              ; preds = %97
  %130 = load i32, i32* @MPI2_SCSI_STATUS_CHECK_CONDITION, align 4
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* @SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID, align 4
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* @SCSI_ASCQ_INVALID_LUN_ID, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %97, %129, %124, %119, %114, %109, %104, %99
  br label %135

135:                                              ; preds = %2, %134, %96, %83
  store i32 4, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load %union.ccb*, %union.ccb** %9, align 8
  %138 = bitcast %union.ccb* %137 to %struct.TYPE_3__*
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %135
  %143 = load %union.ccb*, %union.ccb** %9, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_3__*
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %union.ccb*, %union.ccb** %9, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_3__*
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  br label %156

152:                                              ; preds = %135
  %153 = load %union.ccb*, %union.ccb** %9, align 8
  %154 = bitcast %union.ccb* %153 to %struct.TYPE_3__*
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %152, %142
  %157 = load %union.ccb*, %union.ccb** %9, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_3__*
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* @SSD_TYPE_FIXED, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @SSD_ELEM_NONE, align 4
  %165 = call i32 @scsi_set_sense_data(i32* %159, i32 %160, i32 1, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %167 = load %union.ccb*, %union.ccb** %9, align 8
  %168 = bitcast %union.ccb* %167 to %struct.TYPE_4__*
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @NVME_STATUS_GET_SCT(i32) #1

declare dso_local i32 @NVME_STATUS_GET_SC(i32) #1

declare dso_local i32 @scsi_set_sense_data(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
