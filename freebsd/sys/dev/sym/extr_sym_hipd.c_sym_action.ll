; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, %struct.TYPE_43__, %struct.ccb_hdr }
%struct.TYPE_43__ = type { i32*, i32* }
%struct.ccb_hdr = type { i32, i64, i64, i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_40__, i32, %struct.TYPE_46__ }
%struct.TYPE_40__ = type { i32, i32, i32 }
%struct.TYPE_46__ = type { %struct.TYPE_45__, %struct.TYPE_44__ }
%struct.TYPE_45__ = type { i64, i64, i64, i64 }
%struct.TYPE_44__ = type { i64, i64, i64, i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_38__ = type { i32, i32, i32*, i32, i64, i64, i64, i64, i32, i64, i32, i32, %struct.TYPE_34__, i32, %union.ccb* }
%struct.TYPE_34__ = type { %struct.TYPE_41__, %struct.TYPE_39__, %struct.TYPE_33__ }
%struct.TYPE_41__ = type { i8*, i8* }
%struct.TYPE_39__ = type { i32, i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i8*, i8* }
%struct.TYPE_42__ = type { i64, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sym_action\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TARGET = common dso_local global i64 0, align 8
@SYM_CONF_MAX_LUN = common dso_local global i64 0, align 8
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@SYM_SCAN_BOOT_DISABLED = common dso_local global i32 0, align 4
@SYM_SCAN_LUNS_DISABLED = common dso_local global i32 0, align 4
@CAM_TAG_ACTION_VALID = common dso_local global i32 0, align 4
@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4
@M_IDENTIFY = common dso_local global i32 0, align 4
@NO_TAG = common dso_local global i32 0, align 4
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@M_SIMPLE_TAG = common dso_local global i32 0, align 4
@select = common dso_local global i32 0, align 4
@resel_dsa = common dso_local global i32 0, align 4
@scsi_smsg = common dso_local global i32 0, align 4
@SYM_QUIRK_AUTOSAVE = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@S_ILLEGAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @sym_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccb_scsiio*, align 8
  %14 = alloca %struct.ccb_hdr*, align 8
  %15 = alloca i32, align 4
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_42__*
  %18 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %21 = call i32 @CAM_DEBUG(i32 %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %23 = call i64 @cam_sim_softc(%struct.cam_sim* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %24, %struct.TYPE_37__** %5, align 8
  %25 = load i32, i32* @MA_OWNED, align 4
  %26 = call i32 @SYM_LOCK_ASSERT(i32 %25)
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_42__*
  %29 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XPT_SCSI_IO, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = call i32 @sym_action2(%struct.cam_sim* %34, %union.ccb* %35)
  br label %422

37:                                               ; preds = %2
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %39, %struct.ccb_scsiio** %13, align 8
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %41 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %40, i32 0, i32 2
  store %struct.ccb_hdr* %41, %struct.ccb_hdr** %14, align 8
  %42 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %43 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CAM_STATUS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CAM_REQ_INPROG, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = call i32 @xpt_done(%union.ccb* %50)
  br label %422

52:                                               ; preds = %37
  %53 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %54 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %52
  %61 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %62 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SYM_CONF_MAX_TARGET, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %68 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SYM_CONF_MAX_LUN, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66, %60, %52
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %74 = load %union.ccb*, %union.ccb** %4, align 8
  %75 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %76 = call i32 @sym_xpt_done2(%struct.TYPE_37__* %73, %union.ccb* %74, i32 %75)
  br label %422

77:                                               ; preds = %66
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %79, align 8
  %81 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %82 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %80, i64 %83
  store %struct.TYPE_35__* %84, %struct.TYPE_35__** %6, align 8
  %85 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %86 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %87 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.TYPE_36__* @sym_lp(%struct.TYPE_35__* %85, i64 %88)
  store %struct.TYPE_36__* %89, %struct.TYPE_36__** %7, align 8
  %90 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %91 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CAM_CDB_PHYS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %151, label %96

96:                                               ; preds = %77
  %97 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %98 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CAM_CDB_POINTER, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %105 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  br label %117

110:                                              ; preds = %96
  %111 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %112 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  br label %117

117:                                              ; preds = %110, %103
  %118 = phi i32 [ %109, %103 ], [ %116, %110 ]
  %119 = icmp eq i32 18, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %117
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SYM_SCAN_BOOT_DISABLED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %120
  %128 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SYM_SCAN_LUNS_DISABLED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %127
  %135 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %136 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %134, %120
  %140 = load i32, i32* @SYM_SCAN_BOOT_DISABLED, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %147 = load %union.ccb*, %union.ccb** %4, align 8
  %148 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %149 = call i32 @sym_xpt_done2(%struct.TYPE_37__* %146, %union.ccb* %147, i32 %148)
  br label %422

150:                                              ; preds = %134, %127
  br label %151

151:                                              ; preds = %150, %117, %77
  %152 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %153 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %9, align 4
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %160 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %161 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.ccb_hdr*, %struct.ccb_hdr** %14, align 8
  %164 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call %struct.TYPE_38__* @sym_get_ccb(%struct.TYPE_37__* %159, i64 %162, i64 %165, i32 %166)
  store %struct.TYPE_38__* %167, %struct.TYPE_38__** %8, align 8
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %169 = icmp ne %struct.TYPE_38__* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %151
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %172 = load %union.ccb*, %union.ccb** %4, align 8
  %173 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %174 = call i32 @sym_xpt_done2(%struct.TYPE_37__* %171, %union.ccb* %172, i32 %173)
  br label %422

175:                                              ; preds = %151
  %176 = load %union.ccb*, %union.ccb** %4, align 8
  %177 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %177, i32 0, i32 14
  store %union.ccb* %176, %union.ccb** %178, align 8
  %179 = load i32, i32* @M_IDENTIFY, align 4
  %180 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %179, %182
  store i32 %183, i32* %10, align 4
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NO_TAG, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %175
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %191 = icmp ne %struct.TYPE_36__* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %192, %175
  %200 = load i32, i32* %10, align 4
  %201 = or i32 %200, 64
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %199, %192, %189
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32*, i32** %11, align 8
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 %206, i32* %211, align 4
  %212 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @NO_TAG, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %243

217:                                              ; preds = %202
  %218 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %219 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  switch i32 %221, label %224 [
    i32 128, label %222
    i32 129, label %223
  ]

222:                                              ; preds = %217
  br label %226

223:                                              ; preds = %217
  br label %226

224:                                              ; preds = %217
  %225 = load i32, i32* @M_SIMPLE_TAG, align 4
  store i32 %225, i32* %15, align 4
  br label %226

226:                                              ; preds = %224, %223, %222
  %227 = load i32, i32* %15, align 4
  %228 = load i32*, i32** %11, align 8
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 %227, i32* %232, align 4
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 1
  %237 = add nsw i32 %236, 1
  %238 = load i32*, i32** %11, align 8
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  store i32 %237, i32* %242, align 4
  br label %243

243:                                              ; preds = %226, %202
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i32 0, i32 9
  store i64 0, i64* %245, align 8
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %250, %255
  br i1 %256, label %293, label %257

257:                                              ; preds = %243
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %262, %267
  br i1 %268, label %293, label %269

269:                                              ; preds = %257
  %270 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %274, %279
  br i1 %280, label %293, label %281

281:                                              ; preds = %269
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %286, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %281, %269, %257, %243
  %294 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %311, label %298

298:                                              ; preds = %293
  %299 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %300 = icmp ne %struct.TYPE_36__* %299, null
  br i1 %300, label %301, label %311

301:                                              ; preds = %298
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %303 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %304 = load i32*, i32** %11, align 8
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = call i32 @sym_prepare_nego(%struct.TYPE_37__* %302, %struct.TYPE_38__* %303, i32 0, i32* %307)
  %309 = load i32, i32* %12, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %12, align 4
  br label %311

311:                                              ; preds = %301, %298, %293
  br label %312

312:                                              ; preds = %311, %281
  %313 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %314 = load i32, i32* @select, align 4
  %315 = call i32 @SCRIPTA_BA(%struct.TYPE_37__* %313, i32 %314)
  %316 = call i8* @cpu_to_scr(i32 %315)
  %317 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 12
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %320, i32 0, i32 1
  store i8* %316, i8** %321, align 8
  %322 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %323 = load i32, i32* @resel_dsa, align 4
  %324 = call i32 @SCRIPTA_BA(%struct.TYPE_37__* %322, i32 %323)
  %325 = call i8* @cpu_to_scr(i32 %324)
  %326 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %326, i32 0, i32 12
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %329, i32 0, i32 0
  store i8* %325, i8** %330, align 8
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %331, i32 0, i32 13
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %334, i32 0, i32 12
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %336, i32 0, i32 3
  store i32 %333, i32* %337, align 4
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %342, i32 0, i32 12
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %344, i32 0, i32 2
  store i32 %341, i32* %345, align 8
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %350, i32 0, i32 12
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %352, i32 0, i32 1
  store i32 %349, i32* %353, align 4
  %354 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 12
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %360, i32 0, i32 0
  store i32 %357, i32* %361, align 8
  %362 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %363 = load i32, i32* @scsi_smsg, align 4
  %364 = call i32 @CCB_BA(%struct.TYPE_38__* %362, i32 %363)
  %365 = call i8* @cpu_to_scr(i32 %364)
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %366, i32 0, i32 12
  %368 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %368, i32 0, i32 1
  store i8* %365, i8** %369, align 8
  %370 = load i32, i32* %12, align 4
  %371 = call i8* @cpu_to_scr(i32 %370)
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %372, i32 0, i32 12
  %374 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %374, i32 0, i32 0
  store i8* %371, i8** %375, align 8
  %376 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %377 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %378 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %379 = call i64 @sym_setup_cdb(%struct.TYPE_37__* %376, %struct.ccb_scsiio* %377, %struct.TYPE_38__* %378)
  %380 = icmp slt i64 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %312
  %382 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %383 = load %union.ccb*, %union.ccb** %4, align 8
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %385 = call i32 @sym_xpt_done(%struct.TYPE_37__* %382, %union.ccb* %383, %struct.TYPE_38__* %384)
  %386 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %387 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %388 = call i32 @sym_free_ccb(%struct.TYPE_37__* %386, %struct.TYPE_38__* %387)
  br label %422

389:                                              ; preds = %312
  %390 = load i32, i32* @SYM_QUIRK_AUTOSAVE, align 4
  %391 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %391, i32 0, i32 11
  store i32 %390, i32* %392, align 4
  %393 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %393, i32 0, i32 9
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %389
  %398 = load i32, i32* @HS_NEGOTIATE, align 4
  br label %401

399:                                              ; preds = %389
  %400 = load i32, i32* @HS_BUSY, align 4
  br label %401

401:                                              ; preds = %399, %397
  %402 = phi i32 [ %398, %397 ], [ %400, %399 ]
  %403 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %403, i32 0, i32 10
  store i32 %402, i32* %404, align 8
  %405 = load i32, i32* @S_ILLEGAL, align 4
  %406 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %406, i32 0, i32 8
  store i32 %405, i32* %407, align 8
  %408 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %408, i32 0, i32 7
  store i64 0, i64* %409, align 8
  %410 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %410, i32 0, i32 6
  store i64 0, i64* %411, align 8
  %412 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %412, i32 0, i32 5
  store i64 0, i64* %413, align 8
  %414 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %414, i32 0, i32 3
  store i32 -1, i32* %415, align 8
  %416 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %416, i32 0, i32 4
  store i64 0, i64* %417, align 8
  %418 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %419 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %420 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %421 = call i32 @sym_setup_data_and_start(%struct.TYPE_37__* %418, %struct.ccb_scsiio* %419, %struct.TYPE_38__* %420)
  br label %422

422:                                              ; preds = %401, %381, %170, %139, %72, %49, %33
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @sym_action2(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @sym_xpt_done2(%struct.TYPE_37__*, %union.ccb*, i32) #1

declare dso_local %struct.TYPE_36__* @sym_lp(%struct.TYPE_35__*, i64) #1

declare dso_local %struct.TYPE_38__* @sym_get_ccb(%struct.TYPE_37__*, i64, i64, i32) #1

declare dso_local i32 @sym_prepare_nego(%struct.TYPE_37__*, %struct.TYPE_38__*, i32, i32*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @CCB_BA(%struct.TYPE_38__*, i32) #1

declare dso_local i64 @sym_setup_cdb(%struct.TYPE_37__*, %struct.ccb_scsiio*, %struct.TYPE_38__*) #1

declare dso_local i32 @sym_xpt_done(%struct.TYPE_37__*, %union.ccb*, %struct.TYPE_38__*) #1

declare dso_local i32 @sym_free_ccb(%struct.TYPE_37__*, %struct.TYPE_38__*) #1

declare dso_local i32 @sym_setup_data_and_start(%struct.TYPE_37__*, %struct.ccb_scsiio*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
