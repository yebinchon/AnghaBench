; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.gdt_softc = type { i32, i64, i64, i32, i32 (%struct.gdt_softc*)*, i32, %struct.TYPE_4__*, i32, i64 (%struct.gdt_softc*)*, i32 }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i32, i32, i32, i64 }
%struct.cam_sim = type { i32 }
%struct.ccb_scsiio = type { i32 }
%struct.gdt_ccb = type { i32 }

@GDT_D_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gdt_next(%p)\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@GDT_POLLING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@sim_links = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@gdt_stat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"XPT_SCSI_IO flags 0x%x)\0A\00", align 1
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GDT_MAX_HDRIVES = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i64 0, align 8
@READ_10 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@GDT_POLL_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdt_next(%struct.gdt_softc* %0) #0 {
  %2 = alloca %struct.gdt_softc*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.ccb_hdr*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca %struct.ccb_hdr*, align 8
  %12 = alloca %struct.gdt_ccb*, align 8
  %13 = alloca i64, align 8
  store %struct.gdt_softc* %0, %struct.gdt_softc** %2, align 8
  store %struct.gdt_ccb* null, %struct.gdt_ccb** %12, align 8
  %14 = load i32, i32* @GDT_D_QUEUE, align 4
  %15 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %16 = bitcast %struct.gdt_softc* %15 to i8*
  %17 = call i32 @GDT_DPRINTF(i32 %14, i8* %16)
  %18 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %19 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %18, i32 0, i32 9
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @mtx_assert(i32* %19, i32 %20)
  %22 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %22, i32 0, i32 8
  %24 = load i64 (%struct.gdt_softc*)*, i64 (%struct.gdt_softc*)** %23, align 8
  %25 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %26 = call i64 %24(%struct.gdt_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %30 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GDT_POLLING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %288

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %44, %36
  %38 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %39 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %38, i32 0, i32 8
  %40 = load i64 (%struct.gdt_softc*)*, i64 (%struct.gdt_softc*)** %39, align 8
  %41 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %42 = call i64 %40(%struct.gdt_softc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @DELAY(i32 1)
  br label %37

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %49 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %51 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %259, %47
  %54 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %55 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %54, i32 0, i32 7
  %56 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %55)
  %57 = icmp ne %struct.ccb_hdr* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %60 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %59, i32 0, i32 5
  %61 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %60)
  %62 = icmp ne %struct.ccb_hdr* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %260

64:                                               ; preds = %58, %53
  %65 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %66 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %65, i32 0, i32 7
  %67 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %66)
  store %struct.ccb_hdr* %67, %struct.ccb_hdr** %4, align 8
  %68 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %69 = icmp ne %struct.ccb_hdr* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %72 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %71, i32 0, i32 7
  %73 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %74 = load i32, i32* @links, align 4
  %75 = call i32 @TAILQ_REMOVE(i32* %72, %struct.ccb_hdr* %73, i32 %74)
  %76 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %77 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %78 = call %struct.gdt_ccb* @gdt_ioctl_cmd(%struct.gdt_softc* %76, %struct.ccb_hdr* %77)
  store %struct.gdt_ccb* %78, %struct.gdt_ccb** %12, align 8
  %79 = icmp eq %struct.gdt_ccb* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %82 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %81, i32 0, i32 7
  %83 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %84 = load i32, i32* @links, align 4
  %85 = call i32 @TAILQ_INSERT_HEAD(i32* %82, %struct.ccb_hdr* %83, i32 %84)
  br label %260

86:                                               ; preds = %70
  br label %260

87:                                               ; preds = %64
  %88 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %89 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %88, i32 0, i32 5
  %90 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %89)
  %91 = bitcast %struct.ccb_hdr* %90 to %union.ccb*
  store %union.ccb* %91, %union.ccb** %3, align 8
  %92 = load %union.ccb*, %union.ccb** %3, align 8
  %93 = bitcast %union.ccb* %92 to %struct.ccb_hdr*
  %94 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.cam_sim*
  store %struct.cam_sim* %96, %struct.cam_sim** %5, align 8
  %97 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %98 = call i32 @cam_sim_bus(%struct.cam_sim* %97)
  store i32 %98, i32* %6, align 4
  %99 = load %union.ccb*, %union.ccb** %3, align 8
  %100 = bitcast %union.ccb* %99 to %struct.ccb_hdr*
  %101 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %7, align 4
  %103 = load %union.ccb*, %union.ccb** %3, align 8
  %104 = bitcast %union.ccb* %103 to %struct.ccb_hdr*
  %105 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %8, align 4
  %107 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %108 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %107, i32 0, i32 5
  %109 = load %union.ccb*, %union.ccb** %3, align 8
  %110 = bitcast %union.ccb* %109 to %struct.ccb_hdr*
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sim_links, i32 0, i32 0), align 4
  %112 = call i32 @TAILQ_REMOVE(i32* %108, %struct.ccb_hdr* %110, i32 %111)
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %115 = load i32, i32* @GDT_D_QUEUE, align 4
  %116 = load %union.ccb*, %union.ccb** %3, align 8
  %117 = bitcast %union.ccb* %116 to %struct.ccb_hdr*
  %118 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @GDT_DPRINTF(i32 %115, i8* %121)
  %123 = load %union.ccb*, %union.ccb** %3, align 8
  %124 = bitcast %union.ccb* %123 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %124, %struct.ccb_scsiio** %10, align 8
  %125 = load %union.ccb*, %union.ccb** %3, align 8
  %126 = bitcast %union.ccb* %125 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %126, %struct.ccb_hdr** %11, align 8
  %127 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %128 = call i64* @scsiio_cdb_ptr(%struct.ccb_scsiio* %127)
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %13, align 8
  %131 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %132 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %133, 12
  br i1 %134, label %142, label %135

135:                                              ; preds = %87
  %136 = load %struct.ccb_hdr*, %struct.ccb_hdr** %11, align 8
  %137 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CAM_CDB_PHYS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %135, %87
  %143 = load i32, i32* @CAM_REQ_INVALID, align 4
  %144 = load %struct.ccb_hdr*, %struct.ccb_hdr** %11, align 8
  %145 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 2), align 8
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 2), align 8
  %148 = load %union.ccb*, %union.ccb** %3, align 8
  %149 = call i32 @xpt_done(%union.ccb* %148)
  br label %248

150:                                              ; preds = %135
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %153 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %151, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %150
  %157 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %158 = load %union.ccb*, %union.ccb** %3, align 8
  %159 = call %struct.gdt_ccb* @gdt_raw_cmd(%struct.gdt_softc* %157, %union.ccb* %158)
  store %struct.gdt_ccb* %159, %struct.gdt_ccb** %12, align 8
  %160 = icmp eq %struct.gdt_ccb* %159, null
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %163 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %162, i32 0, i32 5
  %164 = load %union.ccb*, %union.ccb** %3, align 8
  %165 = bitcast %union.ccb* %164 to %struct.ccb_hdr*
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sim_links, i32 0, i32 0), align 4
  %167 = call i32 @TAILQ_INSERT_HEAD(i32* %163, %struct.ccb_hdr* %165, i32 %166)
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 1), align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %161
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  store i64 %174, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 1), align 8
  br label %175

175:                                              ; preds = %173, %161
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %175, %156
  br label %247

178:                                              ; preds = %150
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @GDT_MAX_HDRIVES, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %195, label %182

182:                                              ; preds = %178
  %183 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %184 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %183, i32 0, i32 6
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %182
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %192, %182, %178
  %196 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %197 = load %struct.ccb_hdr*, %struct.ccb_hdr** %11, align 8
  %198 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 2), align 8
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 2), align 8
  %201 = load %union.ccb*, %union.ccb** %3, align 8
  %202 = call i32 @xpt_done(%union.ccb* %201)
  br label %246

203:                                              ; preds = %192
  %204 = load i64, i64* %13, align 8
  %205 = load i64, i64* @READ_6, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %219, label %207

207:                                              ; preds = %203
  %208 = load i64, i64* %13, align 8
  %209 = load i64, i64* @WRITE_6, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* @READ_10, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i64, i64* %13, align 8
  %217 = load i64, i64* @WRITE_10, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %241

219:                                              ; preds = %215, %211, %207, %203
  %220 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %221 = load %union.ccb*, %union.ccb** %3, align 8
  %222 = call %struct.gdt_ccb* @gdt_cache_cmd(%struct.gdt_softc* %220, %union.ccb* %221)
  store %struct.gdt_ccb* %222, %struct.gdt_ccb** %12, align 8
  %223 = icmp eq %struct.gdt_ccb* %222, null
  br i1 %223, label %224, label %240

224:                                              ; preds = %219
  %225 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %226 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %225, i32 0, i32 5
  %227 = load %union.ccb*, %union.ccb** %3, align 8
  %228 = bitcast %union.ccb* %227 to %struct.ccb_hdr*
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sim_links, i32 0, i32 0), align 4
  %230 = call i32 @TAILQ_INSERT_HEAD(i32* %226, %struct.ccb_hdr* %228, i32 %229)
  %231 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 1), align 8
  %235 = icmp sgt i64 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %224
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 0), align 8
  store i64 %237, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdt_stat, i32 0, i32 1), align 8
  br label %238

238:                                              ; preds = %236, %224
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %9, align 4
  br label %240

240:                                              ; preds = %238, %219
  br label %245

241:                                              ; preds = %215
  %242 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %243 = load %union.ccb*, %union.ccb** %3, align 8
  %244 = call i32 @gdt_internal_cache_cmd(%struct.gdt_softc* %242, %union.ccb* %243)
  br label %245

245:                                              ; preds = %241, %240
  br label %246

246:                                              ; preds = %245, %195
  br label %247

247:                                              ; preds = %246, %177
  br label %248

248:                                              ; preds = %247, %142
  %249 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %250 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @GDT_POLLING, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %248
  %256 = load i32, i32* %9, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255, %248
  br label %260

259:                                              ; preds = %255
  br label %53

260:                                              ; preds = %258, %86, %80, %63
  %261 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %262 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %267 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %266, i32 0, i32 4
  %268 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %267, align 8
  %269 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %270 = call i32 %268(%struct.gdt_softc* %269)
  br label %271

271:                                              ; preds = %265, %260
  %272 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %273 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @GDT_POLLING, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %271
  %279 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %280 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp sgt i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %285 = load %struct.gdt_ccb*, %struct.gdt_ccb** %12, align 8
  %286 = load i32, i32* @GDT_POLL_TIMEOUT, align 4
  %287 = call i32 @gdt_wait(%struct.gdt_softc* %284, %struct.gdt_ccb* %285, i32 %286)
  br label %288

288:                                              ; preds = %35, %283, %278, %271
  ret void
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local %struct.gdt_ccb* @gdt_ioctl_cmd(%struct.gdt_softc*, %struct.ccb_hdr*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i64* @scsiio_cdb_ptr(%struct.ccb_scsiio*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %struct.gdt_ccb* @gdt_raw_cmd(%struct.gdt_softc*, %union.ccb*) #1

declare dso_local %struct.gdt_ccb* @gdt_cache_cmd(%struct.gdt_softc*, %union.ccb*) #1

declare dso_local i32 @gdt_internal_cache_cmd(%struct.gdt_softc*, %union.ccb*) #1

declare dso_local i32 @gdt_wait(%struct.gdt_softc*, %struct.gdt_ccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
