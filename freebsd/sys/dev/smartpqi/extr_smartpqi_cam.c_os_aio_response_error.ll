; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_os_aio_response_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_os_aio_response_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__*, i32*, %struct.TYPE_11__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i32*, i32, i32 }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rcb is null\00", align 1
@REQUEST_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"csio is null\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"IO aborted\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"AIO Path Disabled\0A\00", align 1
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"IO Error/Invalid/No device\0A\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"TMF rejected/Incorrect Lun\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Scsi Status Error\0A\00", align 1
@DATA_PRESENT_SENSE_DATA = common dso_local global i64 0, align 8
@PQI_AIO_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"SCSI_STATUS_CHECK_COND  sense size %u\0A\00", align 1
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_aio_response_error(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %9 = call i32 @DBG_IO(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = icmp eq %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @REQUEST_SUCCESS, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %22, %struct.ccb_scsiio** %5, align 8
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %24 = icmp eq %struct.ccb_scsiio* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %14
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %117 [
    i32 140, label %34
    i32 139, label %41
    i32 138, label %100
    i32 135, label %100
    i32 136, label %106
    i32 137, label %106
  ]

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %39 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %128

41:                                               ; preds = %27
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %88 [
    i32 132, label %45
    i32 128, label %54
    i32 129, label %66
    i32 134, label %72
    i32 131, label %87
    i32 130, label %87
    i32 133, label %87
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %47 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %48 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = call i32 @DBG_WARN_BTL(%struct.TYPE_15__* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %99

54:                                               ; preds = %41
  %55 = load i8*, i8** @CAM_REQ_CMP, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %58 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @LE_32(i32 %62)
  %64 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %65 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  br label %99

66:                                               ; preds = %41
  %67 = load i8*, i8** @CAM_REQ_CMP, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %70 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %99

72:                                               ; preds = %41
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = call i32 @DBG_WARN_BTL(%struct.TYPE_15__* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %82 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %83 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 4
  br label %99

87:                                               ; preds = %41, %41, %41
  br label %88

88:                                               ; preds = %41, %87
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = call i32 @DBG_WARN_BTL(%struct.TYPE_15__* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %94 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %95 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %88, %72, %66, %54, %45
  br label %128

100:                                              ; preds = %27, %27
  %101 = load i8*, i8** @CAM_REQ_CMP, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %104 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  br label %128

106:                                              ; preds = %27, %27
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = call i32 @DBG_WARN_BTL(%struct.TYPE_15__* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %112 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %113 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %128

117:                                              ; preds = %27
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = call i32 @DBG_WARN_BTL(%struct.TYPE_15__* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %123 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %124 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %117, %106, %100, %99, %34
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DATA_PRESENT_SENSE_DATA, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %204

134:                                              ; preds = %128
  %135 = load i32, i32* @PQI_AIO_STATUS_CHECK_CONDITION, align 4
  %136 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %137 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  store i32* null, i32** %7, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @LE_16(i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %7, align 8
  br label %148

148:                                              ; preds = %144, %134
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @DBG_ERR_BTL(%struct.TYPE_15__* %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %152)
  %154 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %155 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %154, i32 0, i32 3
  %156 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %157 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @memset(i32* %155, i32 0, i32 %158)
  %160 = load i32*, i32** %7, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %180

162:                                              ; preds = %148
  %163 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %164 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %163, i32 0, i32 3
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %168 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ugt i32 %166, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %162
  %172 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %173 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  br label %177

175:                                              ; preds = %162
  %176 = load i32, i32* %8, align 4
  br label %177

177:                                              ; preds = %175, %171
  %178 = phi i32 [ %174, %171 ], [ %176, %175 ]
  %179 = call i32 @memcpy(i32* %164, i32* %165, i32 %178)
  br label %180

180:                                              ; preds = %177, %148
  %181 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %182 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ugt i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %188 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = sub i32 %189, %190
  %192 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %193 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  br label %197

194:                                              ; preds = %180
  %195 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %196 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %186
  %198 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %199 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %202 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 4
  br label %204

204:                                              ; preds = %197, %128
  %205 = load i32*, i32** %6, align 8
  %206 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %207 = call i32 @smartpqi_fix_ld_inquiry(i32* %205, %struct.ccb_scsiio* %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = call i32 @pqi_release_camq(%struct.TYPE_13__* %208)
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %211 = call i32 @pqi_unmap_request(%struct.TYPE_13__* %210)
  %212 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %213 = bitcast %struct.ccb_scsiio* %212 to %union.ccb*
  %214 = call i32 @xpt_done(%union.ccb* %213)
  %215 = call i32 @DBG_IO(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_IO(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @DBG_WARN_BTL(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @LE_32(i32) #1

declare dso_local i32 @LE_16(i32) #1

declare dso_local i32 @DBG_ERR_BTL(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @smartpqi_fix_ld_inquiry(i32*, %struct.ccb_scsiio*) #1

declare dso_local i32 @pqi_release_camq(%struct.TYPE_13__*) #1

declare dso_local i32 @pqi_unmap_request(%struct.TYPE_13__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
