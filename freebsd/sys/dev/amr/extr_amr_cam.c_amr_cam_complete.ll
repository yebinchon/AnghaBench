; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.amr_ext_passthrough, %struct.amr_passthrough }
%struct.amr_ext_passthrough = type { i32, i32*, i32 }
%struct.amr_passthrough = type { i32, i32*, i32 }
%struct.ccb_scsiio = type { i64, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.scsi_inquiry_data = type { i32 }
%union.ccb = type { i32 }

@AMR_CMD_EXTPASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"status 0x%x  AP scsi_status 0x%x\00", align 1
@AMR_STATUS_SUCCESS = common dso_local global i64 0, align 8
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@T_NODEVICE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@AMR_MAX_REQ_SENSE_LEN = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_SCSI_BUSY = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%*D\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_command*)* @amr_cam_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_cam_complete(%struct.amr_command* %0) #0 {
  %2 = alloca %struct.amr_command*, align 8
  %3 = alloca %struct.amr_passthrough*, align 8
  %4 = alloca %struct.amr_ext_passthrough*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.scsi_inquiry_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amr_command* %0, %struct.amr_command** %2, align 8
  %9 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %10 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store %struct.amr_passthrough* %12, %struct.amr_passthrough** %3, align 8
  %13 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %14 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.amr_ext_passthrough* %16, %struct.amr_ext_passthrough** %4, align 8
  %17 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %18 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %20, %struct.ccb_scsiio** %5, align 8
  %21 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %22 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %24, %struct.scsi_inquiry_data** %6, align 8
  %25 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %26 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AMR_CMD_EXTPASS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %4, align 8
  %33 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.amr_passthrough*, %struct.amr_passthrough** %3, align 8
  %37 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %41 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, i64, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %43)
  %45 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %46 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AMR_STATUS_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %55 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %56 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  br label %154

58:                                               ; preds = %50, %39
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %148 [
    i32 0, label %60
    i32 2, label %102
    i32 8, label %142
    i32 240, label %147
    i32 244, label %147
  ]

60:                                               ; preds = %58
  %61 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %62 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AMR_CMD_EXTPASS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %4, align 8
  %69 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %79

73:                                               ; preds = %60
  %74 = load %struct.amr_passthrough*, %struct.amr_passthrough** %3, align 8
  %75 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @INQUIRY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %85 = call i32 @SID_TYPE(%struct.scsi_inquiry_data* %84)
  %86 = load i32, i32* @T_DIRECT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %90 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 224
  %93 = load i32, i32* @T_NODEVICE, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %96 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %83, %79
  %98 = load i32, i32* @CAM_REQ_CMP, align 4
  %99 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %100 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  br label %153

102:                                              ; preds = %58
  %103 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %104 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %105 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %108 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %109 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %111 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AMR_CMD_EXTPASS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %102
  %117 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %4, align 8
  %118 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %121 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %120, i32 0, i32 4
  %122 = load i32, i32* @AMR_MAX_REQ_SENSE_LEN, align 4
  %123 = call i32 @bcopy(i32 %119, i32* %121, i32 %122)
  br label %132

124:                                              ; preds = %102
  %125 = load %struct.amr_passthrough*, %struct.amr_passthrough** %3, align 8
  %126 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %129 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %128, i32 0, i32 4
  %130 = load i32, i32* @AMR_MAX_REQ_SENSE_LEN, align 4
  %131 = call i32 @bcopy(i32 %127, i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %116
  %133 = load i32, i32* @AMR_MAX_REQ_SENSE_LEN, align 4
  %134 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %135 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %137 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %138 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 4
  br label %153

142:                                              ; preds = %58
  %143 = load i32, i32* @CAM_SCSI_BUSY, align 4
  %144 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %145 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  br label %153

147:                                              ; preds = %58, %58
  br label %148

148:                                              ; preds = %58, %147
  %149 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %150 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %151 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %148, %142, %132, %97
  br label %154

154:                                              ; preds = %153, %53
  %155 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %156 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @CAM_DIR_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @CAM_DIR_NONE, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %154
  %164 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %165 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @imin(i32 %166, i32 16)
  %168 = sext i32 %167 to i64
  %169 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %170 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 (i32, i8*, i64, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %168, i32 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %174

174:                                              ; preds = %163, %154
  %175 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %176 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = call i32 @mtx_lock(i32* %178)
  %180 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %181 = bitcast %struct.ccb_scsiio* %180 to %union.ccb*
  %182 = call i32 @xpt_done(%union.ccb* %181)
  %183 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %184 = call i32 @amr_releasecmd(%struct.amr_command* %183)
  %185 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %186 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = call i32 @mtx_unlock(i32* %188)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @amr_releasecmd(%struct.amr_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
