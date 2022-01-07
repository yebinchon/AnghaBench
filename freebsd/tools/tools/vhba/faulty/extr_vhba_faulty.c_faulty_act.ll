; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/faulty/extr_vhba_faulty.c_faulty_act.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/faulty/extr_vhba_faulty.c_faulty_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.ccb_scsiio = type { i8, i32, i8*, i32, i64, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32* }

@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@MAX_TGT = common dso_local global i64 0, align 8
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@sim_links = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@MAX_LUN = common dso_local global i64 0, align 8
@INQUIRY = common dso_local global i32 0, align 4
@REPORT_LUNS = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SMS_PAGE_CODE = common dso_local global i32 0, align 4
@SMS_PAGE_CTRL_MASK = common dso_local global i32 0, align 4
@SMS_DBD = common dso_local global i32 0, align 4
@DISK_SHIFT = common dso_local global i32 0, align 4
@DISK_NBLKS = common dso_local global i32 0, align 4
@SMS_PAGE_CTRL_CHANGEABLE = common dso_local global i32 0, align 4
@PSEUDO_SPT = common dso_local global i32 0, align 4
@PSEUDO_SPC = common dso_local global i32 0, align 4
@PSEUDO_HDS = common dso_local global i32 0, align 4
@SSD_KEY_UNIT_ATTENTION = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i64 0, align 8
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.ccb_scsiio*)* @faulty_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @faulty_act(%struct.TYPE_10__* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %4, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* @SCSI_STATUS_OK, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %21 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %20, i32 0, i32 0
  %22 = call i32 @memset(i8* %21, i32 0, i32 1)
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %24 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_TGT, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 5
  %36 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %37 = call i32 @vhba_set_status(%struct.TYPE_11__* %35, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %43 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %42, i32 0, i32 5
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sim_links, i32 0, i32 0), align 4
  %45 = call i32 @TAILQ_INSERT_TAIL(i32* %41, %struct.TYPE_11__* %43, i32 %44)
  br label %609

46:                                               ; preds = %2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %55 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %54, i32 0, i32 5
  %56 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %57 = call i32 @vhba_set_status(%struct.TYPE_11__* %55, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %63 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %62, i32 0, i32 5
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sim_links, i32 0, i32 0), align 4
  %65 = call i32 @TAILQ_INSERT_TAIL(i32* %61, %struct.TYPE_11__* %63, i32 %64)
  br label %609

66:                                               ; preds = %46
  %67 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %68 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MAX_LUN, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %66
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @INQUIRY, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %73
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @REPORT_LUNS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %79
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @REQUEST_SENSE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %93 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %94 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %92, i32 %93, i32 37, i32 0)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %100 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %99, i32 0, i32 5
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sim_links, i32 0, i32 0), align 4
  %102 = call i32 @TAILQ_INSERT_TAIL(i32* %98, %struct.TYPE_11__* %100, i32 %101)
  br label %609

103:                                              ; preds = %85, %79, %73, %66
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %569 [
    i32 143, label %107
    i32 142, label %107
    i32 138, label %374
    i32 141, label %374
    i32 140, label %374
    i32 139, label %374
    i32 128, label %374
    i32 131, label %374
    i32 130, label %374
    i32 129, label %374
    i32 137, label %430
  ]

107:                                              ; preds = %103, %103
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SMS_PAGE_CODE, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %13, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SMS_PAGE_CTRL_MASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  switch i32 %118, label %120 [
    i32 133, label %119
    i32 132, label %119
    i32 135, label %119
    i32 134, label %119
    i32 136, label %119
  ]

119:                                              ; preds = %107, %107, %107, %107, %107
  br label %132

120:                                              ; preds = %107
  %121 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %122 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %123 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %121, i32 %122, i32 36, i32 0)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %129 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %128, i32 0, i32 5
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sim_links, i32 0, i32 0), align 4
  %131 = call i32 @TAILQ_INSERT_TAIL(i32* %127, %struct.TYPE_11__* %129, i32 %130)
  br label %609

132:                                              ; preds = %119
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %134 = call i32 @memset(i8* %133, i32 0, i32 128)
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SMS_DBD, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 4
  %143 = bitcast i8* %142 to i32*
  store i32* %143, i32** %8, align 8
  br label %193

144:                                              ; preds = %132
  %145 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %146 = bitcast i8* %145 to i32*
  store i32* %146, i32** %8, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  store i32 8, i32* %148, align 4
  %149 = load i32, i32* @DISK_SHIFT, align 4
  %150 = shl i32 1, %149
  %151 = ashr i32 %150, 24
  %152 = and i32 %151, 255
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @DISK_SHIFT, align 4
  %156 = shl i32 1, %155
  %157 = ashr i32 %156, 16
  %158 = and i32 %157, 255
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 5
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @DISK_SHIFT, align 4
  %162 = shl i32 1, %161
  %163 = ashr i32 %162, 8
  %164 = and i32 %163, 255
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 6
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @DISK_SHIFT, align 4
  %168 = shl i32 1, %167
  %169 = and i32 %168, 255
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @DISK_NBLKS, align 4
  %173 = ashr i32 %172, 24
  %174 = and i32 %173, 255
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 8
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @DISK_NBLKS, align 4
  %178 = ashr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 9
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @DISK_NBLKS, align 4
  %183 = ashr i32 %182, 8
  %184 = and i32 %183, 255
  %185 = load i32*, i32** %8, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 10
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @DISK_NBLKS, align 4
  %188 = and i32 %187, 255
  %189 = load i32*, i32** %8, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 11
  store i32 %188, i32* %190, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 12
  store i32* %192, i32** %8, align 8
  br label %193

193:                                              ; preds = %144, %141
  %194 = load i32, i32* %13, align 4
  %195 = icmp eq i32 %194, 136
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 133
  br i1 %198, label %199, label %231

199:                                              ; preds = %196, %193
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 133, i32* %201, align 4
  %202 = load i32*, i32** %8, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 24, i32* %203, align 4
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %199
  %208 = load i32, i32* @PSEUDO_SPT, align 4
  %209 = ashr i32 %208, 8
  %210 = and i32 %209, 255
  %211 = load i32*, i32** %8, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 10
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @PSEUDO_SPT, align 4
  %214 = and i32 %213, 255
  %215 = load i32*, i32** %8, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 11
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @DISK_SHIFT, align 4
  %218 = shl i32 1, %217
  %219 = ashr i32 %218, 8
  %220 = and i32 %219, 255
  %221 = load i32*, i32** %8, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 12
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* @DISK_SHIFT, align 4
  %224 = shl i32 1, %223
  %225 = and i32 %224, 255
  %226 = load i32*, i32** %8, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 13
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %207, %199
  %229 = load i32*, i32** %8, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 26
  store i32* %230, i32** %8, align 8
  br label %231

231:                                              ; preds = %228, %196
  %232 = load i32, i32* %13, align 4
  %233 = icmp eq i32 %232, 136
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %13, align 4
  %236 = icmp eq i32 %235, 132
  br i1 %236, label %237, label %276

237:                                              ; preds = %234, %231
  %238 = load i32*, i32** %8, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  store i32 132, i32* %239, align 4
  %240 = load i32*, i32** %8, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 24, i32* %241, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %273

245:                                              ; preds = %237
  %246 = load i32, i32* @DISK_NBLKS, align 4
  %247 = load i32, i32* @PSEUDO_SPC, align 4
  %248 = sub nsw i32 %247, 1
  %249 = add nsw i32 %246, %248
  %250 = load i32, i32* @PSEUDO_SPC, align 4
  %251 = sdiv i32 %249, %250
  store i32 %251, i32* %15, align 4
  %252 = load i32, i32* %15, align 4
  %253 = ashr i32 %252, 24
  %254 = and i32 %253, 255
  %255 = load i32*, i32** %8, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %15, align 4
  %258 = ashr i32 %257, 16
  %259 = and i32 %258, 255
  %260 = load i32*, i32** %8, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 3
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %15, align 4
  %263 = and i32 %262, 255
  %264 = load i32*, i32** %8, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 4
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* @PSEUDO_HDS, align 4
  %267 = load i32*, i32** %8, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 5
  store i32 %266, i32* %268, align 4
  %269 = load i32*, i32** %8, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 20
  store i32 28, i32* %270, align 4
  %271 = load i32*, i32** %8, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 21
  store i32 32, i32* %272, align 4
  br label %273

273:                                              ; preds = %245, %237
  %274 = load i32*, i32** %8, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 26
  store i32* %275, i32** %8, align 8
  br label %276

276:                                              ; preds = %273, %234
  %277 = load i32, i32* %13, align 4
  %278 = icmp eq i32 %277, 136
  br i1 %278, label %282, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %13, align 4
  %281 = icmp eq i32 %280, 135
  br i1 %281, label %282, label %291

282:                                              ; preds = %279, %276
  %283 = load i32*, i32** %8, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  store i32 135, i32* %284, align 4
  %285 = load i32*, i32** %8, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 18, i32* %286, align 4
  %287 = load i32*, i32** %8, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  store i32 4, i32* %288, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 20
  store i32* %290, i32** %8, align 8
  br label %291

291:                                              ; preds = %282, %279
  %292 = load i32, i32* %13, align 4
  %293 = icmp eq i32 %292, 136
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %13, align 4
  %296 = icmp eq i32 %295, 134
  br i1 %296, label %297, label %315

297:                                              ; preds = %294, %291
  %298 = load i32*, i32** %8, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  store i32 134, i32* %299, align 4
  %300 = load i32*, i32** %8, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  store i32 10, i32* %301, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %297
  %306 = load i32*, i32** %8, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 3
  store i32 16, i32* %307, align 4
  %308 = load i32*, i32** %8, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 8
  store i32 117, i32* %309, align 4
  %310 = load i32*, i32** %8, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 9
  store i32 48, i32* %311, align 4
  br label %312

312:                                              ; preds = %305, %297
  %313 = load i32*, i32** %8, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 12
  store i32* %314, i32** %8, align 8
  br label %315

315:                                              ; preds = %312, %294
  %316 = load i32*, i32** %8, align 8
  %317 = bitcast i32* %316 to i8*
  %318 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %319 = ptrtoint i8* %317 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %12, align 4
  %323 = load i32, i32* %12, align 4
  %324 = sub i32 %323, 4
  %325 = load i32*, i32** %8, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  store i32 %324, i32* %326, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 143
  br i1 %330, label %331, label %339

331:                                              ; preds = %315
  %332 = load i32*, i32** %7, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 4
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %336 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @min(i32 %334, i32 %337)
  store i32 %338, i32* %10, align 4
  br label %353

339:                                              ; preds = %315
  %340 = load i32*, i32** %7, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 7
  %342 = load i32, i32* %341, align 4
  %343 = shl i32 %342, 8
  %344 = load i32*, i32** %7, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 8
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %343, %346
  store i32 %347, i32* %16, align 4
  %348 = load i32, i32* %16, align 4
  %349 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %350 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @min(i32 %348, i32 %351)
  store i32 %352, i32* %10, align 4
  br label %353

353:                                              ; preds = %339, %331
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* %12, align 4
  %356 = call i32 @min(i32 %354, i32 %355)
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %10, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %353
  %360 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %361 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %364 = load i32, i32* %10, align 4
  %365 = call i32 @memcpy(i8* %362, i8* %363, i32 %364)
  br label %366

366:                                              ; preds = %359, %353
  %367 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %368 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %10, align 4
  %371 = sub i32 %369, %370
  %372 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %373 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %372, i32 0, i32 3
  store i32 %371, i32* %373, align 8
  br label %573

374:                                              ; preds = %103, %103, %103, %103, %103, %103, %103, %103
  %375 = load i32*, i32** %7, align 8
  %376 = load i32, i32* @DISK_NBLKS, align 4
  %377 = load i32, i32* @DISK_SHIFT, align 4
  %378 = call i32 @vhba_rwparm(i32* %375, i64* %11, i32* %10, i32 %376, i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %374
  %381 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %382 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %383 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %381, i32 %382, i32 36, i32 0)
  br label %573

384:                                              ; preds = %374
  %385 = load i32, i32* %10, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %423

387:                                              ; preds = %384
  %388 = load i32*, i32** %7, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 0
  %390 = load i32, i32* %389, align 4
  %391 = and i32 %390, 15
  %392 = icmp eq i32 %391, 8
  br i1 %392, label %393, label %404

393:                                              ; preds = %387
  %394 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %395 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %394, i32 0, i32 2
  %396 = load i8*, i8** %395, align 8
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = load i64, i64* %11, align 8
  %401 = getelementptr inbounds i8, i8* %399, i64 %400
  %402 = load i32, i32* %10, align 4
  %403 = call i32 @memcpy(i8* %396, i8* %401, i32 %402)
  br label %415

404:                                              ; preds = %387
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 0
  %407 = load i8*, i8** %406, align 8
  %408 = load i64, i64* %11, align 8
  %409 = getelementptr inbounds i8, i8* %407, i64 %408
  %410 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %411 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %410, i32 0, i32 2
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* %10, align 4
  %414 = call i32 @memcpy(i8* %409, i8* %412, i32 %413)
  br label %415

415:                                              ; preds = %404, %393
  %416 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %417 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %10, align 4
  %420 = sub i32 %418, %419
  %421 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %422 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %421, i32 0, i32 3
  store i32 %420, i32* %422, align 8
  br label %429

423:                                              ; preds = %384
  %424 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %425 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %428 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %427, i32 0, i32 3
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %423, %415
  br label %573

430:                                              ; preds = %103
  %431 = load i32*, i32** %7, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 2
  %433 = load i32, i32* %432, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %450, label %435

435:                                              ; preds = %430
  %436 = load i32*, i32** %7, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 3
  %438 = load i32, i32* %437, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %450, label %440

440:                                              ; preds = %435
  %441 = load i32*, i32** %7, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 4
  %443 = load i32, i32* %442, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %440
  %446 = load i32*, i32** %7, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 5
  %448 = load i32, i32* %447, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %445, %440, %435, %430
  %451 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %452 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %453 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %451, i32 %452, i32 36, i32 0)
  br label %573

454:                                              ; preds = %445
  %455 = load i32*, i32** %7, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 8
  %457 = load i32, i32* %456, align 4
  %458 = and i32 %457, 1
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %477

460:                                              ; preds = %454
  %461 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %462 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %461, i32 0, i32 2
  %463 = load i8*, i8** %462, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 0
  store i8 -1, i8* %464, align 1
  %465 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %466 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %465, i32 0, i32 2
  %467 = load i8*, i8** %466, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 1
  store i8 -1, i8* %468, align 1
  %469 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %470 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %469, i32 0, i32 2
  %471 = load i8*, i8** %470, align 8
  %472 = getelementptr inbounds i8, i8* %471, i64 2
  store i8 -1, i8* %472, align 1
  %473 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %474 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %473, i32 0, i32 2
  %475 = load i8*, i8** %474, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 3
  store i8 -1, i8* %476, align 1
  br label %533

477:                                              ; preds = %454
  %478 = load i32, i32* @DISK_NBLKS, align 4
  %479 = sub nsw i32 %478, 1
  %480 = sext i32 %479 to i64
  store i64 %480, i64* %17, align 8
  %481 = load i64, i64* %17, align 8
  %482 = icmp ult i64 %481, 4294967295
  br i1 %482, label %483, label %515

483:                                              ; preds = %477
  %484 = load i64, i64* %17, align 8
  %485 = lshr i64 %484, 24
  %486 = and i64 %485, 255
  %487 = trunc i64 %486 to i8
  %488 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %489 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %488, i32 0, i32 2
  %490 = load i8*, i8** %489, align 8
  %491 = getelementptr inbounds i8, i8* %490, i64 0
  store i8 %487, i8* %491, align 1
  %492 = load i64, i64* %17, align 8
  %493 = lshr i64 %492, 16
  %494 = and i64 %493, 255
  %495 = trunc i64 %494 to i8
  %496 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %497 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %496, i32 0, i32 2
  %498 = load i8*, i8** %497, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 1
  store i8 %495, i8* %499, align 1
  %500 = load i64, i64* %17, align 8
  %501 = lshr i64 %500, 8
  %502 = and i64 %501, 255
  %503 = trunc i64 %502 to i8
  %504 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %505 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %504, i32 0, i32 2
  %506 = load i8*, i8** %505, align 8
  %507 = getelementptr inbounds i8, i8* %506, i64 2
  store i8 %503, i8* %507, align 1
  %508 = load i64, i64* %17, align 8
  %509 = and i64 %508, 255
  %510 = trunc i64 %509 to i8
  %511 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %512 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %511, i32 0, i32 2
  %513 = load i8*, i8** %512, align 8
  %514 = getelementptr inbounds i8, i8* %513, i64 3
  store i8 %510, i8* %514, align 1
  br label %532

515:                                              ; preds = %477
  %516 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %517 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %516, i32 0, i32 2
  %518 = load i8*, i8** %517, align 8
  %519 = getelementptr inbounds i8, i8* %518, i64 0
  store i8 -1, i8* %519, align 1
  %520 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %521 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %520, i32 0, i32 2
  %522 = load i8*, i8** %521, align 8
  %523 = getelementptr inbounds i8, i8* %522, i64 1
  store i8 -1, i8* %523, align 1
  %524 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %525 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %524, i32 0, i32 2
  %526 = load i8*, i8** %525, align 8
  %527 = getelementptr inbounds i8, i8* %526, i64 2
  store i8 -1, i8* %527, align 1
  %528 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %529 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %528, i32 0, i32 2
  %530 = load i8*, i8** %529, align 8
  %531 = getelementptr inbounds i8, i8* %530, i64 3
  store i8 -1, i8* %531, align 1
  br label %532

532:                                              ; preds = %515, %483
  br label %533

533:                                              ; preds = %532, %460
  %534 = load i32, i32* @DISK_SHIFT, align 4
  %535 = shl i32 1, %534
  %536 = ashr i32 %535, 24
  %537 = and i32 %536, 255
  %538 = trunc i32 %537 to i8
  %539 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %540 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %539, i32 0, i32 2
  %541 = load i8*, i8** %540, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 4
  store i8 %538, i8* %542, align 1
  %543 = load i32, i32* @DISK_SHIFT, align 4
  %544 = shl i32 1, %543
  %545 = ashr i32 %544, 16
  %546 = and i32 %545, 255
  %547 = trunc i32 %546 to i8
  %548 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %549 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %548, i32 0, i32 2
  %550 = load i8*, i8** %549, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 5
  store i8 %547, i8* %551, align 1
  %552 = load i32, i32* @DISK_SHIFT, align 4
  %553 = shl i32 1, %552
  %554 = ashr i32 %553, 8
  %555 = and i32 %554, 255
  %556 = trunc i32 %555 to i8
  %557 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %558 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %557, i32 0, i32 2
  %559 = load i8*, i8** %558, align 8
  %560 = getelementptr inbounds i8, i8* %559, i64 6
  store i8 %556, i8* %560, align 1
  %561 = load i32, i32* @DISK_SHIFT, align 4
  %562 = shl i32 1, %561
  %563 = and i32 %562, 255
  %564 = trunc i32 %563 to i8
  %565 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %566 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %565, i32 0, i32 2
  %567 = load i8*, i8** %566, align 8
  %568 = getelementptr inbounds i8, i8* %567, i64 7
  store i8 %564, i8* %568, align 1
  br label %573

569:                                              ; preds = %103
  %570 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %571 = load i64, i64* @MAX_LUN, align 8
  %572 = call i32 @vhba_default_cmd(%struct.ccb_scsiio* %570, i64 %571, i32* null)
  br label %573

573:                                              ; preds = %569, %533, %450, %429, %380, %366
  %574 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %575 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %574, i32 0, i32 4
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @SCSI_STATUS_OK, align 8
  %578 = icmp ne i64 %576, %577
  br i1 %578, label %579, label %591

579:                                              ; preds = %573
  %580 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  store i32 %580, i32* %6, align 4
  %581 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %582 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %581, i32 0, i32 4
  %583 = load i64, i64* %582, align 8
  %584 = load i64, i64* @SCSI_STATUS_CHECK_COND, align 8
  %585 = icmp eq i64 %583, %584
  br i1 %585, label %586, label %590

586:                                              ; preds = %579
  %587 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %588 = load i32, i32* %6, align 4
  %589 = or i32 %588, %587
  store i32 %589, i32* %6, align 4
  br label %590

590:                                              ; preds = %586, %579
  br label %596

591:                                              ; preds = %573
  %592 = load i64, i64* @SCSI_STATUS_OK, align 8
  %593 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %594 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %593, i32 0, i32 4
  store i64 %592, i64* %594, align 8
  %595 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %595, i32* %6, align 4
  br label %596

596:                                              ; preds = %591, %590
  %597 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %598 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %597, i32 0, i32 5
  %599 = load i32, i32* %6, align 4
  %600 = call i32 @vhba_set_status(%struct.TYPE_11__* %598, i32 %599)
  %601 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %601, i32 0, i32 1
  %603 = load %struct.TYPE_9__*, %struct.TYPE_9__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %603, i32 0, i32 0
  %605 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %606 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %605, i32 0, i32 5
  %607 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sim_links, i32 0, i32 0), align 4
  %608 = call i32 @TAILQ_INSERT_TAIL(i32* %604, %struct.TYPE_11__* %606, i32 %607)
  br label %609

609:                                              ; preds = %596, %120, %91, %51, %33
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vhba_set_status(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @vhba_fill_sense(%struct.ccb_scsiio*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vhba_rwparm(i32*, i64*, i32*, i32, i32) #1

declare dso_local i32 @vhba_default_cmd(%struct.ccb_scsiio*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
