; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/lots/extr_vhba_lots.c_vhbalots_act.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/lots/extr_vhba_lots.c_vhbalots_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ccb_scsiio = type { i8, i32, i8*, i32, i64, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32* }

@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@MAX_TGT = common dso_local global i64 0, align 8
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@sim_links = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
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
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i64 0, align 8
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.ccb_scsiio*)* @vhbalots_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhbalots_act(%struct.TYPE_9__* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %4, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* @SCSI_STATUS_OK, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %20 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %19, i32 0, i32 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 1)
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %27 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_TGT, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %42 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %41, i32 0, i32 5
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %44 = call i32 @TAILQ_INSERT_TAIL(i32* %40, %struct.TYPE_11__* %42, i32 %43)
  br label %604

45:                                               ; preds = %2
  %46 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %47 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAX_LUN, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @INQUIRY, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @REPORT_LUNS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @REQUEST_SENSE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %72 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %73 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %71, i32 %72, i32 37, i32 0)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %79 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %78, i32 0, i32 5
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %81 = call i32 @TAILQ_INSERT_TAIL(i32* %77, %struct.TYPE_11__* %79, i32 %80)
  br label %604

82:                                               ; preds = %64, %58, %52, %45
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %548 [
    i32 143, label %86
    i32 142, label %86
    i32 138, label %353
    i32 141, label %353
    i32 140, label %353
    i32 139, label %353
    i32 128, label %353
    i32 131, label %353
    i32 130, label %353
    i32 129, label %353
    i32 137, label %409
  ]

86:                                               ; preds = %82, %82
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SMS_PAGE_CODE, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SMS_PAGE_CTRL_MASK, align 4
  %96 = and i32 %94, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  switch i32 %97, label %99 [
    i32 133, label %98
    i32 132, label %98
    i32 135, label %98
    i32 134, label %98
    i32 136, label %98
  ]

98:                                               ; preds = %86, %86, %86, %86, %86
  br label %111

99:                                               ; preds = %86
  %100 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %101 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %102 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %100, i32 %101, i32 36, i32 0)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %108 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %107, i32 0, i32 5
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %110 = call i32 @TAILQ_INSERT_TAIL(i32* %106, %struct.TYPE_11__* %108, i32 %109)
  br label %604

111:                                              ; preds = %98
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %113 = call i32 @memset(i8* %112, i32 0, i32 128)
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SMS_DBD, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 4
  %122 = bitcast i8* %121 to i32*
  store i32* %122, i32** %7, align 8
  br label %172

123:                                              ; preds = %111
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %7, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  store i32 8, i32* %127, align 4
  %128 = load i32, i32* @DISK_SHIFT, align 4
  %129 = shl i32 1, %128
  %130 = ashr i32 %129, 24
  %131 = and i32 %130, 255
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @DISK_SHIFT, align 4
  %135 = shl i32 1, %134
  %136 = ashr i32 %135, 16
  %137 = and i32 %136, 255
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 5
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @DISK_SHIFT, align 4
  %141 = shl i32 1, %140
  %142 = ashr i32 %141, 8
  %143 = and i32 %142, 255
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @DISK_SHIFT, align 4
  %147 = shl i32 1, %146
  %148 = and i32 %147, 255
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 7
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @DISK_NBLKS, align 4
  %152 = ashr i32 %151, 24
  %153 = and i32 %152, 255
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @DISK_NBLKS, align 4
  %157 = ashr i32 %156, 16
  %158 = and i32 %157, 255
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 9
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @DISK_NBLKS, align 4
  %162 = ashr i32 %161, 8
  %163 = and i32 %162, 255
  %164 = load i32*, i32** %7, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 10
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @DISK_NBLKS, align 4
  %167 = and i32 %166, 255
  %168 = load i32*, i32** %7, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 11
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 12
  store i32* %171, i32** %7, align 8
  br label %172

172:                                              ; preds = %123, %120
  %173 = load i32, i32* %12, align 4
  %174 = icmp eq i32 %173, 136
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 133
  br i1 %177, label %178, label %210

178:                                              ; preds = %175, %172
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 133, i32* %180, align 4
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  store i32 24, i32* %182, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %178
  %187 = load i32, i32* @PSEUDO_SPT, align 4
  %188 = ashr i32 %187, 8
  %189 = and i32 %188, 255
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 10
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @PSEUDO_SPT, align 4
  %193 = and i32 %192, 255
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 11
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @DISK_SHIFT, align 4
  %197 = shl i32 1, %196
  %198 = ashr i32 %197, 8
  %199 = and i32 %198, 255
  %200 = load i32*, i32** %7, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 12
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @DISK_SHIFT, align 4
  %203 = shl i32 1, %202
  %204 = and i32 %203, 255
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 13
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %186, %178
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 26
  store i32* %209, i32** %7, align 8
  br label %210

210:                                              ; preds = %207, %175
  %211 = load i32, i32* %12, align 4
  %212 = icmp eq i32 %211, 136
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %12, align 4
  %215 = icmp eq i32 %214, 132
  br i1 %215, label %216, label %255

216:                                              ; preds = %213, %210
  %217 = load i32*, i32** %7, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 132, i32* %218, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 24, i32* %220, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %252

224:                                              ; preds = %216
  %225 = load i32, i32* @DISK_NBLKS, align 4
  %226 = load i32, i32* @PSEUDO_SPC, align 4
  %227 = sub nsw i32 %226, 1
  %228 = add nsw i32 %225, %227
  %229 = load i32, i32* @PSEUDO_SPC, align 4
  %230 = sdiv i32 %228, %229
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = ashr i32 %231, 24
  %233 = and i32 %232, 255
  %234 = load i32*, i32** %7, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %14, align 4
  %237 = ashr i32 %236, 16
  %238 = and i32 %237, 255
  %239 = load i32*, i32** %7, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %14, align 4
  %242 = and i32 %241, 255
  %243 = load i32*, i32** %7, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 4
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @PSEUDO_HDS, align 4
  %246 = load i32*, i32** %7, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 5
  store i32 %245, i32* %247, align 4
  %248 = load i32*, i32** %7, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 20
  store i32 28, i32* %249, align 4
  %250 = load i32*, i32** %7, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 21
  store i32 32, i32* %251, align 4
  br label %252

252:                                              ; preds = %224, %216
  %253 = load i32*, i32** %7, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 26
  store i32* %254, i32** %7, align 8
  br label %255

255:                                              ; preds = %252, %213
  %256 = load i32, i32* %12, align 4
  %257 = icmp eq i32 %256, 136
  br i1 %257, label %261, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %12, align 4
  %260 = icmp eq i32 %259, 135
  br i1 %260, label %261, label %270

261:                                              ; preds = %258, %255
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  store i32 135, i32* %263, align 4
  %264 = load i32*, i32** %7, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 18, i32* %265, align 4
  %266 = load i32*, i32** %7, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  store i32 4, i32* %267, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 20
  store i32* %269, i32** %7, align 8
  br label %270

270:                                              ; preds = %261, %258
  %271 = load i32, i32* %12, align 4
  %272 = icmp eq i32 %271, 136
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %12, align 4
  %275 = icmp eq i32 %274, 134
  br i1 %275, label %276, label %294

276:                                              ; preds = %273, %270
  %277 = load i32*, i32** %7, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 134, i32* %278, align 4
  %279 = load i32*, i32** %7, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  store i32 10, i32* %280, align 4
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %276
  %285 = load i32*, i32** %7, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 3
  store i32 16, i32* %286, align 4
  %287 = load i32*, i32** %7, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 8
  store i32 117, i32* %288, align 4
  %289 = load i32*, i32** %7, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 9
  store i32 48, i32* %290, align 4
  br label %291

291:                                              ; preds = %284, %276
  %292 = load i32*, i32** %7, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 12
  store i32* %293, i32** %7, align 8
  br label %294

294:                                              ; preds = %291, %273
  %295 = load i32*, i32** %7, align 8
  %296 = bitcast i32* %295 to i8*
  %297 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %298 = ptrtoint i8* %296 to i64
  %299 = ptrtoint i8* %297 to i64
  %300 = sub i64 %298, %299
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* %11, align 4
  %303 = sub i32 %302, 4
  %304 = load i32*, i32** %7, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 %303, i32* %305, align 4
  %306 = load i32*, i32** %6, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 143
  br i1 %309, label %310, label %318

310:                                              ; preds = %294
  %311 = load i32*, i32** %6, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 4
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %315 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @min(i32 %313, i32 %316)
  store i32 %317, i32* %9, align 4
  br label %332

318:                                              ; preds = %294
  %319 = load i32*, i32** %6, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 7
  %321 = load i32, i32* %320, align 4
  %322 = shl i32 %321, 8
  %323 = load i32*, i32** %6, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 8
  %325 = load i32, i32* %324, align 4
  %326 = or i32 %322, %325
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* %15, align 4
  %328 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %329 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @min(i32 %327, i32 %330)
  store i32 %331, i32* %9, align 4
  br label %332

332:                                              ; preds = %318, %310
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %11, align 4
  %335 = call i32 @min(i32 %333, i32 %334)
  store i32 %335, i32* %9, align 4
  %336 = load i32, i32* %9, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %332
  %339 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %340 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %339, i32 0, i32 2
  %341 = load i8*, i8** %340, align 8
  %342 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @memcpy(i8* %341, i8* %342, i32 %343)
  br label %345

345:                                              ; preds = %338, %332
  %346 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %347 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %9, align 4
  %350 = sub i32 %348, %349
  %351 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %352 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %351, i32 0, i32 3
  store i32 %350, i32* %352, align 8
  br label %552

353:                                              ; preds = %82, %82, %82, %82, %82, %82, %82, %82
  %354 = load i32*, i32** %6, align 8
  %355 = load i32, i32* @DISK_NBLKS, align 4
  %356 = load i32, i32* @DISK_SHIFT, align 4
  %357 = call i32 @vhba_rwparm(i32* %354, i64* %10, i32* %9, i32 %355, i32 %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %353
  %360 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %361 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %362 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %360, i32 %361, i32 36, i32 0)
  br label %552

363:                                              ; preds = %353
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %402

366:                                              ; preds = %363
  %367 = load i32*, i32** %6, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  %369 = load i32, i32* %368, align 4
  %370 = and i32 %369, 15
  %371 = icmp eq i32 %370, 8
  br i1 %371, label %372, label %383

372:                                              ; preds = %366
  %373 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %374 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %373, i32 0, i32 2
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = load i64, i64* %10, align 8
  %380 = getelementptr inbounds i8, i8* %378, i64 %379
  %381 = load i32, i32* %9, align 4
  %382 = call i32 @memcpy(i8* %375, i8* %380, i32 %381)
  br label %394

383:                                              ; preds = %366
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  %386 = load i8*, i8** %385, align 8
  %387 = load i64, i64* %10, align 8
  %388 = getelementptr inbounds i8, i8* %386, i64 %387
  %389 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %390 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %389, i32 0, i32 2
  %391 = load i8*, i8** %390, align 8
  %392 = load i32, i32* %9, align 4
  %393 = call i32 @memcpy(i8* %388, i8* %391, i32 %392)
  br label %394

394:                                              ; preds = %383, %372
  %395 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %396 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %9, align 4
  %399 = sub i32 %397, %398
  %400 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %401 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %400, i32 0, i32 3
  store i32 %399, i32* %401, align 8
  br label %408

402:                                              ; preds = %363
  %403 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %404 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %407 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %406, i32 0, i32 3
  store i32 %405, i32* %407, align 8
  br label %408

408:                                              ; preds = %402, %394
  br label %552

409:                                              ; preds = %82
  %410 = load i32*, i32** %6, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 2
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %429, label %414

414:                                              ; preds = %409
  %415 = load i32*, i32** %6, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 3
  %417 = load i32, i32* %416, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %429, label %419

419:                                              ; preds = %414
  %420 = load i32*, i32** %6, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 4
  %422 = load i32, i32* %421, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %429, label %424

424:                                              ; preds = %419
  %425 = load i32*, i32** %6, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 5
  %427 = load i32, i32* %426, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424, %419, %414, %409
  %430 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %431 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %432 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %430, i32 %431, i32 36, i32 0)
  br label %552

433:                                              ; preds = %424
  %434 = load i32*, i32** %6, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 8
  %436 = load i32, i32* %435, align 4
  %437 = and i32 %436, 1
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %456

439:                                              ; preds = %433
  %440 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %441 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %440, i32 0, i32 2
  %442 = load i8*, i8** %441, align 8
  %443 = getelementptr inbounds i8, i8* %442, i64 0
  store i8 -1, i8* %443, align 1
  %444 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %445 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %444, i32 0, i32 2
  %446 = load i8*, i8** %445, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 1
  store i8 -1, i8* %447, align 1
  %448 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %449 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %448, i32 0, i32 2
  %450 = load i8*, i8** %449, align 8
  %451 = getelementptr inbounds i8, i8* %450, i64 2
  store i8 -1, i8* %451, align 1
  %452 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %453 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %452, i32 0, i32 2
  %454 = load i8*, i8** %453, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 3
  store i8 -1, i8* %455, align 1
  br label %512

456:                                              ; preds = %433
  %457 = load i32, i32* @DISK_NBLKS, align 4
  %458 = sub nsw i32 %457, 1
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %16, align 8
  %460 = load i64, i64* %16, align 8
  %461 = icmp ult i64 %460, 4294967295
  br i1 %461, label %462, label %494

462:                                              ; preds = %456
  %463 = load i64, i64* %16, align 8
  %464 = lshr i64 %463, 24
  %465 = and i64 %464, 255
  %466 = trunc i64 %465 to i8
  %467 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %468 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %467, i32 0, i32 2
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 0
  store i8 %466, i8* %470, align 1
  %471 = load i64, i64* %16, align 8
  %472 = lshr i64 %471, 16
  %473 = and i64 %472, 255
  %474 = trunc i64 %473 to i8
  %475 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %476 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %475, i32 0, i32 2
  %477 = load i8*, i8** %476, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 1
  store i8 %474, i8* %478, align 1
  %479 = load i64, i64* %16, align 8
  %480 = lshr i64 %479, 8
  %481 = and i64 %480, 255
  %482 = trunc i64 %481 to i8
  %483 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %484 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %483, i32 0, i32 2
  %485 = load i8*, i8** %484, align 8
  %486 = getelementptr inbounds i8, i8* %485, i64 2
  store i8 %482, i8* %486, align 1
  %487 = load i64, i64* %16, align 8
  %488 = and i64 %487, 255
  %489 = trunc i64 %488 to i8
  %490 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %491 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %490, i32 0, i32 2
  %492 = load i8*, i8** %491, align 8
  %493 = getelementptr inbounds i8, i8* %492, i64 3
  store i8 %489, i8* %493, align 1
  br label %511

494:                                              ; preds = %456
  %495 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %496 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %495, i32 0, i32 2
  %497 = load i8*, i8** %496, align 8
  %498 = getelementptr inbounds i8, i8* %497, i64 0
  store i8 -1, i8* %498, align 1
  %499 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %500 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %499, i32 0, i32 2
  %501 = load i8*, i8** %500, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 1
  store i8 -1, i8* %502, align 1
  %503 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %504 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %503, i32 0, i32 2
  %505 = load i8*, i8** %504, align 8
  %506 = getelementptr inbounds i8, i8* %505, i64 2
  store i8 -1, i8* %506, align 1
  %507 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %508 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %507, i32 0, i32 2
  %509 = load i8*, i8** %508, align 8
  %510 = getelementptr inbounds i8, i8* %509, i64 3
  store i8 -1, i8* %510, align 1
  br label %511

511:                                              ; preds = %494, %462
  br label %512

512:                                              ; preds = %511, %439
  %513 = load i32, i32* @DISK_SHIFT, align 4
  %514 = shl i32 1, %513
  %515 = ashr i32 %514, 24
  %516 = and i32 %515, 255
  %517 = trunc i32 %516 to i8
  %518 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %519 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %518, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = getelementptr inbounds i8, i8* %520, i64 4
  store i8 %517, i8* %521, align 1
  %522 = load i32, i32* @DISK_SHIFT, align 4
  %523 = shl i32 1, %522
  %524 = ashr i32 %523, 16
  %525 = and i32 %524, 255
  %526 = trunc i32 %525 to i8
  %527 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %528 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %527, i32 0, i32 2
  %529 = load i8*, i8** %528, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 5
  store i8 %526, i8* %530, align 1
  %531 = load i32, i32* @DISK_SHIFT, align 4
  %532 = shl i32 1, %531
  %533 = ashr i32 %532, 8
  %534 = and i32 %533, 255
  %535 = trunc i32 %534 to i8
  %536 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %537 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %536, i32 0, i32 2
  %538 = load i8*, i8** %537, align 8
  %539 = getelementptr inbounds i8, i8* %538, i64 6
  store i8 %535, i8* %539, align 1
  %540 = load i32, i32* @DISK_SHIFT, align 4
  %541 = shl i32 1, %540
  %542 = and i32 %541, 255
  %543 = trunc i32 %542 to i8
  %544 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %545 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %544, i32 0, i32 2
  %546 = load i8*, i8** %545, align 8
  %547 = getelementptr inbounds i8, i8* %546, i64 7
  store i8 %543, i8* %547, align 1
  br label %552

548:                                              ; preds = %82
  %549 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %550 = load i64, i64* @MAX_LUN, align 8
  %551 = call i32 @vhba_default_cmd(%struct.ccb_scsiio* %549, i64 %550, i32* null)
  br label %552

552:                                              ; preds = %548, %512, %429, %408, %359, %345
  %553 = load i32, i32* @CAM_STATUS_MASK, align 4
  %554 = xor i32 %553, -1
  %555 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %556 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %555, i32 0, i32 5
  %557 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = and i32 %558, %554
  store i32 %559, i32* %557, align 8
  %560 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %561 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %560, i32 0, i32 4
  %562 = load i64, i64* %561, align 8
  %563 = load i64, i64* @SCSI_STATUS_OK, align 8
  %564 = icmp ne i64 %562, %563
  br i1 %564, label %565, label %585

565:                                              ; preds = %552
  %566 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %567 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %568 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 8
  %571 = or i32 %570, %566
  store i32 %571, i32* %569, align 8
  %572 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %573 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %572, i32 0, i32 4
  %574 = load i64, i64* %573, align 8
  %575 = load i64, i64* @SCSI_STATUS_CHECK_COND, align 8
  %576 = icmp eq i64 %574, %575
  br i1 %576, label %577, label %584

577:                                              ; preds = %565
  %578 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %579 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %580 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %579, i32 0, i32 5
  %581 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = or i32 %582, %578
  store i32 %583, i32* %581, align 8
  br label %584

584:                                              ; preds = %577, %565
  br label %595

585:                                              ; preds = %552
  %586 = load i64, i64* @SCSI_STATUS_OK, align 8
  %587 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %588 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %587, i32 0, i32 4
  store i64 %586, i64* %588, align 8
  %589 = load i32, i32* @CAM_REQ_CMP, align 4
  %590 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %591 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %590, i32 0, i32 5
  %592 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %591, i32 0, i32 2
  %593 = load i32, i32* %592, align 8
  %594 = or i32 %593, %589
  store i32 %594, i32* %592, align 8
  br label %595

595:                                              ; preds = %585, %584
  %596 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 1
  %598 = load %struct.TYPE_7__*, %struct.TYPE_7__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %598, i32 0, i32 0
  %600 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %601 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %600, i32 0, i32 5
  %602 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %603 = call i32 @TAILQ_INSERT_TAIL(i32* %599, %struct.TYPE_11__* %601, i32 %602)
  br label %604

604:                                              ; preds = %595, %99, %70, %32
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

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
