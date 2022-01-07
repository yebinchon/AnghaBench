; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_command = type { i32, i32, i32, i32, i64, %struct.mly_softc* }
%struct.mly_softc = type { i64, %struct.mly_btl** }
%struct.mly_btl = type { i32, i32, i32 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.scsi_inquiry_data = type { i32, i32, i32 }
%union.ccb = type { i32 }

@MLY_BTL_LOGICAL = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@mly_table_device_type = common dso_local global i32 0, align 4
@mly_table_device_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SCSI_STATUS_OK\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"SCSI_STATUS_CHECK_COND  sense %d  resid %d\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SCSI_STATUS_BUSY\00", align 1
@CAM_SCSI_BUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown status 0x%x\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_command*)* @mly_cam_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_cam_complete(%struct.mly_command* %0) #0 {
  %2 = alloca %struct.mly_command*, align 8
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca %struct.mly_btl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mly_command* %0, %struct.mly_command** %2, align 8
  %10 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %11 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %10, i32 0, i32 5
  %12 = load %struct.mly_softc*, %struct.mly_softc** %11, align 8
  store %struct.mly_softc* %12, %struct.mly_softc** %3, align 8
  %13 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %14 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %16, %struct.ccb_scsiio** %4, align 8
  %17 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %18 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %20, %struct.scsi_inquiry_data** %5, align 8
  %21 = call i32 @debug_called(i32 2)
  %22 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %23 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %26 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %28 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %170 [
    i32 128, label %30
    i32 129, label %123
    i32 130, label %164
  ]

30:                                               ; preds = %1
  %31 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %32 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %40 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %43, i32 0, i32 1
  %45 = load %struct.mly_btl**, %struct.mly_btl*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mly_btl*, %struct.mly_btl** %45, i64 %47
  %49 = load %struct.mly_btl*, %struct.mly_btl** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %49, i64 %51
  %53 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MLY_BTL_LOGICAL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %117

58:                                               ; preds = %30
  %59 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %60 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CAM_CDB_POINTER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %68 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %79

72:                                               ; preds = %58
  %73 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %74 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @INQUIRY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %85 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %84, i32 0, i32 1
  %86 = load %struct.mly_btl**, %struct.mly_btl*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mly_btl*, %struct.mly_btl** %86, i64 %88
  %90 = load %struct.mly_btl*, %struct.mly_btl** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %90, i64 %92
  store %struct.mly_btl* %93, %struct.mly_btl** %6, align 8
  %94 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %95 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @mly_table_device_type, align 4
  %98 = load %struct.mly_btl*, %struct.mly_btl** %6, align 8
  %99 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @mly_describe_code(i32 %97, i32 %100)
  %102 = call i32 @padstr(i32 %96, i8* %101, i32 8)
  %103 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @mly_table_device_state, align 4
  %107 = load %struct.mly_btl*, %struct.mly_btl** %6, align 8
  %108 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @mly_describe_code(i32 %106, i32 %109)
  %111 = call i32 @padstr(i32 %105, i8* %110, i32 16)
  %112 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %113 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @padstr(i32 %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %116

116:                                              ; preds = %83, %79
  br label %117

117:                                              ; preds = %116, %30
  %118 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @CAM_REQ_CMP, align 4
  %120 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %121 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  br label %179

123:                                              ; preds = %1
  %124 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %125 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %128 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %132 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %133 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %136 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %135, i32 0, i32 4
  %137 = load i32, i32* @SSD_FULL_SIZE, align 4
  %138 = call i32 @bzero(i32* %136, i32 %137)
  %139 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %140 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %143 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %142, i32 0, i32 4
  %144 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %145 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @bcopy(i32 %141, i32* %143, i32 %146)
  %148 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %149 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %152 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %154 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %155 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 8
  %159 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %160 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %163 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %179

164:                                              ; preds = %1
  %165 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* @CAM_SCSI_BUSY, align 4
  %167 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %168 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  store i32 %166, i32* %169, align 8
  br label %179

170:                                              ; preds = %1
  %171 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %172 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %176 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %177 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 8
  br label %179

179:                                              ; preds = %170, %164, %123, %117
  %180 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %181 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %186 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %187 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 8
  %191 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %192 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, -1
  store i64 %194, i64* %192, align 8
  br label %195

195:                                              ; preds = %184, %179
  %196 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %197 = bitcast %struct.ccb_scsiio* %196 to %union.ccb*
  %198 = call i32 @xpt_done(%union.ccb* %197)
  %199 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %200 = call i32 @mly_release_command(%struct.mly_command* %199)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @padstr(i32, i8*, i32) #1

declare dso_local i8* @mly_describe_code(i32, i32) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
