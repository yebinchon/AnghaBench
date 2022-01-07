; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/rptluns/extr_vhba_rptluns.c_vhbarptluns_act.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/rptluns/extr_vhba_rptluns.c_vhbarptluns_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ccb_scsiio = type { i8, i32, i8*, i32, i64, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@MAX_TGT = common dso_local global i64 0, align 8
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@sim_links = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MAX_LUN = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.ccb_scsiio*)* @vhbarptluns_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhbarptluns_act(%struct.TYPE_9__* %0, %struct.ccb_scsiio* %1) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %19 = load i64, i64* @SCSI_STATUS_OK, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %22 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %21, i32 0, i32 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 1)
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %25 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %29 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_TGT, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %2
  %35 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %36 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %37 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %44 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %43, i32 0, i32 5
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %46 = call i32 @TAILQ_INSERT_TAIL(i32* %42, %struct.TYPE_11__* %44, i32 %45)
  br label %635

47:                                               ; preds = %2
  %48 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %49 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MAX_LUN, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %47
  %55 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %56 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 7
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %64 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @INQUIRY, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @REPORT_LUNS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @REQUEST_SENSE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %100 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %101 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %99, i32 %100, i32 37, i32 0)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %107 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %106, i32 0, i32 5
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %109 = call i32 @TAILQ_INSERT_TAIL(i32* %105, %struct.TYPE_11__* %107, i32 %108)
  br label %635

110:                                              ; preds = %92, %86, %80, %77
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %576 [
    i32 143, label %114
    i32 142, label %114
    i32 138, label %381
    i32 141, label %381
    i32 140, label %381
    i32 139, label %381
    i32 128, label %381
    i32 131, label %381
    i32 130, label %381
    i32 129, label %381
    i32 137, label %437
  ]

114:                                              ; preds = %110, %110
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SMS_PAGE_CODE, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %14, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SMS_PAGE_CTRL_MASK, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  switch i32 %125, label %127 [
    i32 133, label %126
    i32 132, label %126
    i32 135, label %126
    i32 134, label %126
    i32 136, label %126
  ]

126:                                              ; preds = %114, %114, %114, %114, %114
  br label %139

127:                                              ; preds = %114
  %128 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %129 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %130 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %128, i32 %129, i32 36, i32 0)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %136 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %135, i32 0, i32 5
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %138 = call i32 @TAILQ_INSERT_TAIL(i32* %134, %struct.TYPE_11__* %136, i32 %137)
  br label %635

139:                                              ; preds = %126
  %140 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %141 = call i32 @memset(i8* %140, i32 0, i32 128)
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SMS_DBD, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 4
  %150 = bitcast i8* %149 to i32*
  store i32* %150, i32** %7, align 8
  br label %200

151:                                              ; preds = %139
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %153 = bitcast i8* %152 to i32*
  store i32* %153, i32** %7, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  store i32 8, i32* %155, align 4
  %156 = load i32, i32* @DISK_SHIFT, align 4
  %157 = shl i32 1, %156
  %158 = ashr i32 %157, 24
  %159 = and i32 %158, 255
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @DISK_SHIFT, align 4
  %163 = shl i32 1, %162
  %164 = ashr i32 %163, 16
  %165 = and i32 %164, 255
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 5
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @DISK_SHIFT, align 4
  %169 = shl i32 1, %168
  %170 = ashr i32 %169, 8
  %171 = and i32 %170, 255
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 6
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @DISK_SHIFT, align 4
  %175 = shl i32 1, %174
  %176 = and i32 %175, 255
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 7
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @DISK_NBLKS, align 4
  %180 = ashr i32 %179, 24
  %181 = and i32 %180, 255
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 8
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @DISK_NBLKS, align 4
  %185 = ashr i32 %184, 16
  %186 = and i32 %185, 255
  %187 = load i32*, i32** %7, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 9
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @DISK_NBLKS, align 4
  %190 = ashr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 10
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @DISK_NBLKS, align 4
  %195 = and i32 %194, 255
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 11
  store i32 %195, i32* %197, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 12
  store i32* %199, i32** %7, align 8
  br label %200

200:                                              ; preds = %151, %148
  %201 = load i32, i32* %14, align 4
  %202 = icmp eq i32 %201, 136
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %14, align 4
  %205 = icmp eq i32 %204, 133
  br i1 %205, label %206, label %238

206:                                              ; preds = %203, %200
  %207 = load i32*, i32** %7, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 133, i32* %208, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  store i32 24, i32* %210, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %206
  %215 = load i32, i32* @PSEUDO_SPT, align 4
  %216 = ashr i32 %215, 8
  %217 = and i32 %216, 255
  %218 = load i32*, i32** %7, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 10
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @PSEUDO_SPT, align 4
  %221 = and i32 %220, 255
  %222 = load i32*, i32** %7, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 11
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @DISK_SHIFT, align 4
  %225 = shl i32 1, %224
  %226 = ashr i32 %225, 8
  %227 = and i32 %226, 255
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 12
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @DISK_SHIFT, align 4
  %231 = shl i32 1, %230
  %232 = and i32 %231, 255
  %233 = load i32*, i32** %7, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 13
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %214, %206
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 26
  store i32* %237, i32** %7, align 8
  br label %238

238:                                              ; preds = %235, %203
  %239 = load i32, i32* %14, align 4
  %240 = icmp eq i32 %239, 136
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %14, align 4
  %243 = icmp eq i32 %242, 132
  br i1 %243, label %244, label %283

244:                                              ; preds = %241, %238
  %245 = load i32*, i32** %7, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 132, i32* %246, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 24, i32* %248, align 4
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %280

252:                                              ; preds = %244
  %253 = load i32, i32* @DISK_NBLKS, align 4
  %254 = load i32, i32* @PSEUDO_SPC, align 4
  %255 = sub nsw i32 %254, 1
  %256 = add nsw i32 %253, %255
  %257 = load i32, i32* @PSEUDO_SPC, align 4
  %258 = sdiv i32 %256, %257
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = ashr i32 %259, 24
  %261 = and i32 %260, 255
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %16, align 4
  %265 = ashr i32 %264, 16
  %266 = and i32 %265, 255
  %267 = load i32*, i32** %7, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 3
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %16, align 4
  %270 = and i32 %269, 255
  %271 = load i32*, i32** %7, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* @PSEUDO_HDS, align 4
  %274 = load i32*, i32** %7, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  store i32 %273, i32* %275, align 4
  %276 = load i32*, i32** %7, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 20
  store i32 28, i32* %277, align 4
  %278 = load i32*, i32** %7, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 21
  store i32 32, i32* %279, align 4
  br label %280

280:                                              ; preds = %252, %244
  %281 = load i32*, i32** %7, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 26
  store i32* %282, i32** %7, align 8
  br label %283

283:                                              ; preds = %280, %241
  %284 = load i32, i32* %14, align 4
  %285 = icmp eq i32 %284, 136
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %14, align 4
  %288 = icmp eq i32 %287, 135
  br i1 %288, label %289, label %298

289:                                              ; preds = %286, %283
  %290 = load i32*, i32** %7, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  store i32 135, i32* %291, align 4
  %292 = load i32*, i32** %7, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  store i32 18, i32* %293, align 4
  %294 = load i32*, i32** %7, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  store i32 4, i32* %295, align 4
  %296 = load i32*, i32** %7, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 20
  store i32* %297, i32** %7, align 8
  br label %298

298:                                              ; preds = %289, %286
  %299 = load i32, i32* %14, align 4
  %300 = icmp eq i32 %299, 136
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  %302 = load i32, i32* %14, align 4
  %303 = icmp eq i32 %302, 134
  br i1 %303, label %304, label %322

304:                                              ; preds = %301, %298
  %305 = load i32*, i32** %7, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  store i32 134, i32* %306, align 4
  %307 = load i32*, i32** %7, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  store i32 10, i32* %308, align 4
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* @SMS_PAGE_CTRL_CHANGEABLE, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %319

312:                                              ; preds = %304
  %313 = load i32*, i32** %7, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 3
  store i32 16, i32* %314, align 4
  %315 = load i32*, i32** %7, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 8
  store i32 117, i32* %316, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 9
  store i32 48, i32* %318, align 4
  br label %319

319:                                              ; preds = %312, %304
  %320 = load i32*, i32** %7, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 12
  store i32* %321, i32** %7, align 8
  br label %322

322:                                              ; preds = %319, %301
  %323 = load i32*, i32** %7, align 8
  %324 = bitcast i32* %323 to i8*
  %325 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %326 = ptrtoint i8* %324 to i64
  %327 = ptrtoint i8* %325 to i64
  %328 = sub i64 %326, %327
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %13, align 4
  %330 = load i32, i32* %13, align 4
  %331 = sub i32 %330, 4
  %332 = load i32*, i32** %7, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  store i32 %331, i32* %333, align 4
  %334 = load i32*, i32** %6, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 143
  br i1 %337, label %338, label %346

338:                                              ; preds = %322
  %339 = load i32*, i32** %6, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %343 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @min(i32 %341, i32 %344)
  store i32 %345, i32* %9, align 4
  br label %360

346:                                              ; preds = %322
  %347 = load i32*, i32** %6, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 7
  %349 = load i32, i32* %348, align 4
  %350 = shl i32 %349, 8
  %351 = load i32*, i32** %6, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 8
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %350, %353
  store i32 %354, i32* %17, align 4
  %355 = load i32, i32* %17, align 4
  %356 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %357 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @min(i32 %355, i32 %358)
  store i32 %359, i32* %9, align 4
  br label %360

360:                                              ; preds = %346, %338
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* %13, align 4
  %363 = call i32 @min(i32 %361, i32 %362)
  store i32 %363, i32* %9, align 4
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %368 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %367, i32 0, i32 2
  %369 = load i8*, i8** %368, align 8
  %370 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %371 = load i32, i32* %9, align 4
  %372 = call i32 @memcpy(i8* %369, i8* %370, i32 %371)
  br label %373

373:                                              ; preds = %366, %360
  %374 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %375 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %9, align 4
  %378 = sub i32 %376, %377
  %379 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %380 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %379, i32 0, i32 3
  store i32 %378, i32* %380, align 8
  br label %583

381:                                              ; preds = %110, %110, %110, %110, %110, %110, %110, %110
  %382 = load i32*, i32** %6, align 8
  %383 = load i32, i32* @DISK_NBLKS, align 4
  %384 = load i32, i32* @DISK_SHIFT, align 4
  %385 = call i32 @vhba_rwparm(i32* %382, i64* %10, i32* %9, i32 %383, i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %381
  %388 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %389 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %390 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %388, i32 %389, i32 36, i32 0)
  br label %583

391:                                              ; preds = %381
  %392 = load i32, i32* %9, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %430

394:                                              ; preds = %391
  %395 = load i32*, i32** %6, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = and i32 %397, 15
  %399 = icmp eq i32 %398, 8
  br i1 %399, label %400, label %411

400:                                              ; preds = %394
  %401 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %402 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %401, i32 0, i32 2
  %403 = load i8*, i8** %402, align 8
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = load i64, i64* %10, align 8
  %408 = getelementptr inbounds i8, i8* %406, i64 %407
  %409 = load i32, i32* %9, align 4
  %410 = call i32 @memcpy(i8* %403, i8* %408, i32 %409)
  br label %422

411:                                              ; preds = %394
  %412 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 1
  %414 = load i8*, i8** %413, align 8
  %415 = load i64, i64* %10, align 8
  %416 = getelementptr inbounds i8, i8* %414, i64 %415
  %417 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %418 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %417, i32 0, i32 2
  %419 = load i8*, i8** %418, align 8
  %420 = load i32, i32* %9, align 4
  %421 = call i32 @memcpy(i8* %416, i8* %419, i32 %420)
  br label %422

422:                                              ; preds = %411, %400
  %423 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %424 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %9, align 4
  %427 = sub i32 %425, %426
  %428 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %429 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %428, i32 0, i32 3
  store i32 %427, i32* %429, align 8
  br label %436

430:                                              ; preds = %391
  %431 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %432 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %435 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %434, i32 0, i32 3
  store i32 %433, i32* %435, align 8
  br label %436

436:                                              ; preds = %430, %422
  br label %583

437:                                              ; preds = %110
  %438 = load i32*, i32** %6, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 2
  %440 = load i32, i32* %439, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %457, label %442

442:                                              ; preds = %437
  %443 = load i32*, i32** %6, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 3
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %457, label %447

447:                                              ; preds = %442
  %448 = load i32*, i32** %6, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 4
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %447
  %453 = load i32*, i32** %6, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 5
  %455 = load i32, i32* %454, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %452, %447, %442, %437
  %458 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %459 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %460 = call i32 @vhba_fill_sense(%struct.ccb_scsiio* %458, i32 %459, i32 36, i32 0)
  br label %583

461:                                              ; preds = %452
  %462 = load i32*, i32** %6, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 8
  %464 = load i32, i32* %463, align 4
  %465 = and i32 %464, 1
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %484

467:                                              ; preds = %461
  %468 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %469 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %468, i32 0, i32 2
  %470 = load i8*, i8** %469, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 0
  store i8 -1, i8* %471, align 1
  %472 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %473 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %472, i32 0, i32 2
  %474 = load i8*, i8** %473, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 1
  store i8 -1, i8* %475, align 1
  %476 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %477 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %476, i32 0, i32 2
  %478 = load i8*, i8** %477, align 8
  %479 = getelementptr inbounds i8, i8* %478, i64 2
  store i8 -1, i8* %479, align 1
  %480 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %481 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %480, i32 0, i32 2
  %482 = load i8*, i8** %481, align 8
  %483 = getelementptr inbounds i8, i8* %482, i64 3
  store i8 -1, i8* %483, align 1
  br label %540

484:                                              ; preds = %461
  %485 = load i32, i32* @DISK_NBLKS, align 4
  %486 = sub nsw i32 %485, 1
  %487 = sext i32 %486 to i64
  store i64 %487, i64* %18, align 8
  %488 = load i64, i64* %18, align 8
  %489 = icmp ult i64 %488, 4294967295
  br i1 %489, label %490, label %522

490:                                              ; preds = %484
  %491 = load i64, i64* %18, align 8
  %492 = lshr i64 %491, 24
  %493 = and i64 %492, 255
  %494 = trunc i64 %493 to i8
  %495 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %496 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %495, i32 0, i32 2
  %497 = load i8*, i8** %496, align 8
  %498 = getelementptr inbounds i8, i8* %497, i64 0
  store i8 %494, i8* %498, align 1
  %499 = load i64, i64* %18, align 8
  %500 = lshr i64 %499, 16
  %501 = and i64 %500, 255
  %502 = trunc i64 %501 to i8
  %503 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %504 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %503, i32 0, i32 2
  %505 = load i8*, i8** %504, align 8
  %506 = getelementptr inbounds i8, i8* %505, i64 1
  store i8 %502, i8* %506, align 1
  %507 = load i64, i64* %18, align 8
  %508 = lshr i64 %507, 8
  %509 = and i64 %508, 255
  %510 = trunc i64 %509 to i8
  %511 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %512 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %511, i32 0, i32 2
  %513 = load i8*, i8** %512, align 8
  %514 = getelementptr inbounds i8, i8* %513, i64 2
  store i8 %510, i8* %514, align 1
  %515 = load i64, i64* %18, align 8
  %516 = and i64 %515, 255
  %517 = trunc i64 %516 to i8
  %518 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %519 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %518, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = getelementptr inbounds i8, i8* %520, i64 3
  store i8 %517, i8* %521, align 1
  br label %539

522:                                              ; preds = %484
  %523 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %524 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %523, i32 0, i32 2
  %525 = load i8*, i8** %524, align 8
  %526 = getelementptr inbounds i8, i8* %525, i64 0
  store i8 -1, i8* %526, align 1
  %527 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %528 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %527, i32 0, i32 2
  %529 = load i8*, i8** %528, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 1
  store i8 -1, i8* %530, align 1
  %531 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %532 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %531, i32 0, i32 2
  %533 = load i8*, i8** %532, align 8
  %534 = getelementptr inbounds i8, i8* %533, i64 2
  store i8 -1, i8* %534, align 1
  %535 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %536 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %535, i32 0, i32 2
  %537 = load i8*, i8** %536, align 8
  %538 = getelementptr inbounds i8, i8* %537, i64 3
  store i8 -1, i8* %538, align 1
  br label %539

539:                                              ; preds = %522, %490
  br label %540

540:                                              ; preds = %539, %467
  %541 = load i32, i32* @DISK_SHIFT, align 4
  %542 = shl i32 1, %541
  %543 = ashr i32 %542, 24
  %544 = and i32 %543, 255
  %545 = trunc i32 %544 to i8
  %546 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %547 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %546, i32 0, i32 2
  %548 = load i8*, i8** %547, align 8
  %549 = getelementptr inbounds i8, i8* %548, i64 4
  store i8 %545, i8* %549, align 1
  %550 = load i32, i32* @DISK_SHIFT, align 4
  %551 = shl i32 1, %550
  %552 = ashr i32 %551, 16
  %553 = and i32 %552, 255
  %554 = trunc i32 %553 to i8
  %555 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %556 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %555, i32 0, i32 2
  %557 = load i8*, i8** %556, align 8
  %558 = getelementptr inbounds i8, i8* %557, i64 5
  store i8 %554, i8* %558, align 1
  %559 = load i32, i32* @DISK_SHIFT, align 4
  %560 = shl i32 1, %559
  %561 = ashr i32 %560, 8
  %562 = and i32 %561, 255
  %563 = trunc i32 %562 to i8
  %564 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %565 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %564, i32 0, i32 2
  %566 = load i8*, i8** %565, align 8
  %567 = getelementptr inbounds i8, i8* %566, i64 6
  store i8 %563, i8* %567, align 1
  %568 = load i32, i32* @DISK_SHIFT, align 4
  %569 = shl i32 1, %568
  %570 = and i32 %569, 255
  %571 = trunc i32 %570 to i8
  %572 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %573 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %572, i32 0, i32 2
  %574 = load i8*, i8** %573, align 8
  %575 = getelementptr inbounds i8, i8* %574, i64 7
  store i8 %571, i8* %575, align 1
  br label %583

576:                                              ; preds = %110
  %577 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %578 = load i32, i32* @MAX_LUN, align 4
  %579 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %580 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %579, i32 0, i32 0
  %581 = load i32*, i32** %580, align 8
  %582 = call i32 @vhba_default_cmd(%struct.ccb_scsiio* %577, i32 %578, i32* %581)
  br label %583

583:                                              ; preds = %576, %540, %457, %436, %387, %373
  %584 = load i32, i32* @CAM_STATUS_MASK, align 4
  %585 = xor i32 %584, -1
  %586 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %587 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %586, i32 0, i32 5
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 2
  %589 = load i32, i32* %588, align 4
  %590 = and i32 %589, %585
  store i32 %590, i32* %588, align 4
  %591 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %592 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %591, i32 0, i32 4
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* @SCSI_STATUS_OK, align 8
  %595 = icmp ne i64 %593, %594
  br i1 %595, label %596, label %616

596:                                              ; preds = %583
  %597 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %598 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %599 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %598, i32 0, i32 5
  %600 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 4
  %602 = or i32 %601, %597
  store i32 %602, i32* %600, align 4
  %603 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %604 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %603, i32 0, i32 4
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* @SCSI_STATUS_CHECK_COND, align 8
  %607 = icmp eq i64 %605, %606
  br i1 %607, label %608, label %615

608:                                              ; preds = %596
  %609 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %610 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %611 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %610, i32 0, i32 5
  %612 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %611, i32 0, i32 2
  %613 = load i32, i32* %612, align 4
  %614 = or i32 %613, %609
  store i32 %614, i32* %612, align 4
  br label %615

615:                                              ; preds = %608, %596
  br label %626

616:                                              ; preds = %583
  %617 = load i64, i64* @SCSI_STATUS_OK, align 8
  %618 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %619 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %618, i32 0, i32 4
  store i64 %617, i64* %619, align 8
  %620 = load i32, i32* @CAM_REQ_CMP, align 4
  %621 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %622 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %621, i32 0, i32 5
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 2
  %624 = load i32, i32* %623, align 4
  %625 = or i32 %624, %620
  store i32 %625, i32* %623, align 4
  br label %626

626:                                              ; preds = %616, %615
  %627 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %628 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %627, i32 0, i32 2
  %629 = load %struct.TYPE_8__*, %struct.TYPE_8__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %629, i32 0, i32 0
  %631 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %632 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %631, i32 0, i32 5
  %633 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %634 = call i32 @TAILQ_INSERT_TAIL(i32* %630, %struct.TYPE_11__* %632, i32 %633)
  br label %635

635:                                              ; preds = %626, %127, %98, %34
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @vhba_fill_sense(%struct.ccb_scsiio*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vhba_rwparm(i32*, i64*, i32*, i32, i32) #1

declare dso_local i32 @vhba_default_cmd(%struct.ccb_scsiio*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
