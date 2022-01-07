; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i64, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bio = type { i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.g_mirror_disk*, i32 }
%struct.g_mirror_disk = type { %struct.g_consumer*, %struct.g_mirror_disk_sync }
%struct.g_consumer = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.g_mirror_disk_sync = type { i64, i32, %struct.bio**, %struct.g_consumer*, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Sync BIO %p with unexpected origin\00", align 1
@DEBUG_FP = common dso_local global i32 0, align 4
@g_mirror_sync_request_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Synchronization request failed (error=%d).\00", align 1
@G_MIRROR_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_MIRROR_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Synchronization request half-finished.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Consumer %s not opened (r%dw%de%d).\00", align 1
@g_mirror_sync_request_write = common dso_local global i32 0, align 4
@G_MIRROR_BUMP_GENID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Synchronization request finished.\00", align 1
@G_MIRROR_DEVICE_FLAG_DESTROY = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Sending synchronization request.\00", align 1
@g_mirror_syncreqs = common dso_local global i32 0, align 4
@g_mirror_sync_period = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid I/O request %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*, %struct.bio*)* @g_mirror_sync_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_sync_request(%struct.g_mirror_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_mirror_disk*, align 8
  %6 = alloca %struct.g_mirror_disk_sync*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 129
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %21 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %14, %2
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %37 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br label %40

40:                                               ; preds = %30, %25
  %41 = phi i1 [ false, %25 ], [ %39, %30 ]
  br label %42

42:                                               ; preds = %40, %14
  %43 = phi i1 [ true, %14 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = bitcast %struct.bio* %45 to i8*
  %47 = call i32 @KASSERT(i32 %44, i8* %46)
  %48 = load %struct.bio*, %struct.bio** %4, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 5
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %57, align 8
  store %struct.g_mirror_disk* %58, %struct.g_mirror_disk** %5, align 8
  %59 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %60 = icmp eq %struct.g_mirror_disk* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %42
  %62 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %63 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %62, i32 0, i32 4
  %64 = call i32 @sx_xunlock(i32* %63)
  %65 = call i32 (...) @g_topology_lock()
  %66 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 5
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @g_mirror_kill_consumer(%struct.g_mirror_softc* %66, %struct.TYPE_6__* %69)
  %71 = call i32 (...) @g_topology_unlock()
  %72 = load %struct.bio*, %struct.bio** %4, align 8
  %73 = call i32 @g_mirror_sync_request_free(%struct.g_mirror_disk* null, %struct.bio* %72)
  %74 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %75 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %74, i32 0, i32 4
  %76 = call i32 @sx_xlock(i32* %75)
  br label %334

77:                                               ; preds = %42
  %78 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %79 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %78, i32 0, i32 1
  store %struct.g_mirror_disk_sync* %79, %struct.g_mirror_disk_sync** %6, align 8
  %80 = load %struct.bio*, %struct.bio** %4, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %331 [
    i32 129, label %83
    i32 128, label %158
  ]

83:                                               ; preds = %77
  %84 = load i32, i32* @DEBUG_FP, align 4
  %85 = load i32, i32* @g_mirror_sync_request_read, align 4
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @KFAIL_POINT_ERROR(i32 %84, i32 %85, i32 %88)
  %90 = load %struct.bio*, %struct.bio** %4, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %83
  %95 = load %struct.bio*, %struct.bio** %4, align 8
  %96 = load %struct.bio*, %struct.bio** %4, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, %struct.bio*, i8*, ...) @G_MIRROR_LOGREQ(i32 0, %struct.bio* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %101 = load %struct.bio*, %struct.bio** %4, align 8
  %102 = call i32 @g_mirror_sync_request_free(%struct.g_mirror_disk* %100, %struct.bio* %101)
  %103 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %104 = load i32, i32* @G_MIRROR_DISK_STATE_DISCONNECTED, align 4
  %105 = load i32, i32* @G_MIRROR_EVENT_DONTWAIT, align 4
  %106 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %103, i32 %104, i32 %105)
  br label %334

107:                                              ; preds = %83
  %108 = load %struct.bio*, %struct.bio** %4, align 8
  %109 = call i32 (i32, %struct.bio*, i8*, ...) @G_MIRROR_LOGREQ(i32 3, %struct.bio* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.bio*, %struct.bio** %4, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 0
  store i32 128, i32* %111, align 8
  %112 = load %struct.bio*, %struct.bio** %4, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 4
  store i32 0, i32* %113, align 8
  %114 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %115 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %114, i32 0, i32 0
  %116 = load %struct.g_consumer*, %struct.g_consumer** %115, align 8
  store %struct.g_consumer* %116, %struct.g_consumer** %7, align 8
  %117 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %118 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 1
  br i1 %120, label %121, label %131

121:                                              ; preds = %107
  %122 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %123 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %124, 1
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %128 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 1
  br label %131

131:                                              ; preds = %126, %121, %107
  %132 = phi i1 [ false, %121 ], [ false, %107 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %135 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %134, i32 0, i32 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %140 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %143 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %146 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @KASSERT(i32 %133, i8* %149)
  %151 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %152 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.bio*, %struct.bio** %4, align 8
  %156 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %157 = call i32 @g_io_request(%struct.bio* %155, %struct.g_consumer* %156)
  br label %334

158:                                              ; preds = %77
  %159 = load i32, i32* @DEBUG_FP, align 4
  %160 = load i32, i32* @g_mirror_sync_request_write, align 4
  %161 = load %struct.bio*, %struct.bio** %4, align 8
  %162 = getelementptr inbounds %struct.bio, %struct.bio* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @KFAIL_POINT_ERROR(i32 %159, i32 %160, i32 %163)
  %165 = load %struct.bio*, %struct.bio** %4, align 8
  %166 = getelementptr inbounds %struct.bio, %struct.bio* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %158
  %170 = load %struct.bio*, %struct.bio** %4, align 8
  %171 = load %struct.bio*, %struct.bio** %4, align 8
  %172 = getelementptr inbounds %struct.bio, %struct.bio* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, %struct.bio*, i8*, ...) @G_MIRROR_LOGREQ(i32 0, %struct.bio* %170, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  %175 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %176 = load %struct.bio*, %struct.bio** %4, align 8
  %177 = call i32 @g_mirror_sync_request_free(%struct.g_mirror_disk* %175, %struct.bio* %176)
  %178 = load i32, i32* @G_MIRROR_BUMP_GENID, align 4
  %179 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %180 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %184 = load i32, i32* @G_MIRROR_DISK_STATE_DISCONNECTED, align 4
  %185 = load i32, i32* @G_MIRROR_EVENT_DONTWAIT, align 4
  %186 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %183, i32 %184, i32 %185)
  br label %334

187:                                              ; preds = %158
  %188 = load %struct.bio*, %struct.bio** %4, align 8
  %189 = call i32 (i32, %struct.bio*, i8*, ...) @G_MIRROR_LOGREQ(i32 3, %struct.bio* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %190 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %191 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %194 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %192, %195
  br i1 %196, label %209, label %197

197:                                              ; preds = %187
  %198 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %199 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %198, i32 0, i32 3
  %200 = load %struct.g_consumer*, %struct.g_consumer** %199, align 8
  %201 = icmp eq %struct.g_consumer* %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %197
  %203 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %204 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @G_MIRROR_DEVICE_FLAG_DESTROY, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %240

209:                                              ; preds = %202, %197, %187
  %210 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %211 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %211, align 4
  %214 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %215 = load %struct.bio*, %struct.bio** %4, align 8
  %216 = call i32 @g_mirror_sync_request_free(%struct.g_mirror_disk* %214, %struct.bio* %215)
  %217 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %218 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %209
  br label %334

222:                                              ; preds = %209
  %223 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %224 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %223, i32 0, i32 3
  %225 = load %struct.g_consumer*, %struct.g_consumer** %224, align 8
  %226 = icmp eq %struct.g_consumer* %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %222
  %228 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %229 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @G_MIRROR_DEVICE_FLAG_DESTROY, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227, %222
  br label %334

235:                                              ; preds = %227
  %236 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %237 = load i32, i32* @G_MIRROR_DISK_STATE_ACTIVE, align 4
  %238 = load i32, i32* @G_MIRROR_EVENT_DONTWAIT, align 4
  %239 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %236, i32 %237, i32 %238)
  br label %334

240:                                              ; preds = %202
  %241 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %242 = load %struct.bio*, %struct.bio** %4, align 8
  %243 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %244 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @g_mirror_sync_reinit(%struct.g_mirror_disk* %241, %struct.bio* %242, i32 %245)
  %247 = load %struct.bio*, %struct.bio** %4, align 8
  %248 = getelementptr inbounds %struct.bio, %struct.bio* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %251 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load %struct.bio*, %struct.bio** %4, align 8
  %255 = call i32 (i32, %struct.bio*, i8*, ...) @G_MIRROR_LOGREQ(i32 3, %struct.bio* %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %256 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %257 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %256, i32 0, i32 3
  %258 = load %struct.g_consumer*, %struct.g_consumer** %257, align 8
  %259 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %263 = load %struct.bio*, %struct.bio** %4, align 8
  %264 = call i32 @g_mirror_regular_collision(%struct.g_mirror_softc* %262, %struct.bio* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %240
  %267 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %268 = load %struct.bio*, %struct.bio** %4, align 8
  %269 = call i32 @g_mirror_sync_delay(%struct.g_mirror_softc* %267, %struct.bio* %268)
  br label %276

270:                                              ; preds = %240
  %271 = load %struct.bio*, %struct.bio** %4, align 8
  %272 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %273 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %272, i32 0, i32 3
  %274 = load %struct.g_consumer*, %struct.g_consumer** %273, align 8
  %275 = call i32 @g_io_request(%struct.bio* %271, %struct.g_consumer* %274)
  br label %276

276:                                              ; preds = %270, %266
  %277 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %278 = call i32 @g_mirror_regular_release(%struct.g_mirror_softc* %277)
  %279 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %280 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %282

282:                                              ; preds = %307, %276
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @g_mirror_syncreqs, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %310

286:                                              ; preds = %282
  %287 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %288 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %287, i32 0, i32 2
  %289 = load %struct.bio**, %struct.bio*** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.bio*, %struct.bio** %289, i64 %291
  %293 = load %struct.bio*, %struct.bio** %292, align 8
  store %struct.bio* %293, %struct.bio** %4, align 8
  %294 = load %struct.bio*, %struct.bio** %4, align 8
  %295 = icmp ne %struct.bio* %294, null
  br i1 %295, label %296, label %306

296:                                              ; preds = %286
  %297 = load %struct.bio*, %struct.bio** %4, align 8
  %298 = getelementptr inbounds %struct.bio, %struct.bio* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %8, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load %struct.bio*, %struct.bio** %4, align 8
  %304 = getelementptr inbounds %struct.bio, %struct.bio* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %8, align 4
  br label %306

306:                                              ; preds = %302, %296, %286
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %282

310:                                              ; preds = %282
  %311 = load i64, i64* @g_mirror_sync_period, align 8
  %312 = icmp sgt i64 %311, 0
  br i1 %312, label %313, label %330

313:                                              ; preds = %310
  %314 = load i64, i64* @time_uptime, align 8
  %315 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %316 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = sub nsw i64 %314, %317
  %319 = load i64, i64* @g_mirror_sync_period, align 8
  %320 = icmp sgt i64 %318, %319
  br i1 %320, label %321, label %330

321:                                              ; preds = %313
  %322 = load i32, i32* %8, align 4
  %323 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %324 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 8
  %325 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %326 = call i32 @g_mirror_update_metadata(%struct.g_mirror_disk* %325)
  %327 = load i64, i64* @time_uptime, align 8
  %328 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %6, align 8
  %329 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %328, i32 0, i32 0
  store i64 %327, i64* %329, align 8
  br label %330

330:                                              ; preds = %321, %313, %310
  br label %334

331:                                              ; preds = %77
  %332 = load %struct.bio*, %struct.bio** %4, align 8
  %333 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.bio* %332)
  br label %334

334:                                              ; preds = %61, %94, %131, %169, %221, %234, %235, %330, %331
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_mirror_kill_consumer(%struct.g_mirror_softc*, %struct.TYPE_6__*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_mirror_sync_request_free(%struct.g_mirror_disk*, %struct.bio*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @KFAIL_POINT_ERROR(i32, i32, i32) #1

declare dso_local i32 @G_MIRROR_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @g_mirror_event_send(%struct.g_mirror_disk*, i32, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @g_mirror_sync_reinit(%struct.g_mirror_disk*, %struct.bio*, i32) #1

declare dso_local i32 @g_mirror_regular_collision(%struct.g_mirror_softc*, %struct.bio*) #1

declare dso_local i32 @g_mirror_sync_delay(%struct.g_mirror_softc*, %struct.bio*) #1

declare dso_local i32 @g_mirror_regular_release(%struct.g_mirror_softc*) #1

declare dso_local i32 @g_mirror_update_metadata(%struct.g_mirror_disk*) #1

declare dso_local i32 @panic(i8*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
