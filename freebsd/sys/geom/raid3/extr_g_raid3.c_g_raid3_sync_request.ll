; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, %struct.g_consumer*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.g_consumer = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.g_raid3_disk*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.g_raid3_disk = type { i32, %struct.g_raid3_disk_sync, %struct.g_consumer* }
%struct.g_raid3_disk_sync = type { i32, i32, %struct.bio**, %struct.g_consumer*, i32 }
%struct.TYPE_3__ = type { %struct.g_raid3_softc* }
%struct.g_raid3_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@M_RAID3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Synchronization request failed (error=%d).\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Synchronization request finished.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Consumer %s not opened (r%dw%de%d).\00", align 1
@G_RAID3_BUMP_GENID = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_RAID3_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_DESTROY = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@g_raid3_sync_done = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Sending synchronization request.\00", align 1
@g_raid3_syncreqs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Invalid command here: %u (device=%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_raid3_sync_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_sync_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca %struct.g_raid3_disk*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.g_raid3_disk_sync*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 4
  %18 = load %struct.g_consumer*, %struct.g_consumer** %17, align 8
  %19 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 4
  %24 = load %struct.g_consumer*, %struct.g_consumer** %23, align 8
  %25 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %27, align 8
  store %struct.g_raid3_softc* %28, %struct.g_raid3_softc** %3, align 8
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 4
  %31 = load %struct.g_consumer*, %struct.g_consumer** %30, align 8
  %32 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %31, i32 0, i32 5
  %33 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %32, align 8
  store %struct.g_raid3_disk* %33, %struct.g_raid3_disk** %4, align 8
  %34 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %35 = icmp eq %struct.g_raid3_disk* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %1
  %37 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %38 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %37, i32 0, i32 7
  %39 = call i32 @sx_xunlock(i32* %38)
  %40 = call i32 (...) @g_topology_lock()
  %41 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 4
  %44 = load %struct.g_consumer*, %struct.g_consumer** %43, align 8
  %45 = call i32 @g_raid3_kill_consumer(%struct.g_raid3_softc* %41, %struct.g_consumer* %44)
  %46 = call i32 (...) @g_topology_unlock()
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @M_RAID3, align 4
  %51 = call i32 @free(i32* %49, i32 %50)
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = call i32 @g_destroy_bio(%struct.bio* %52)
  %54 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %55 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %54, i32 0, i32 7
  %56 = call i32 @sx_xlock(i32* %55)
  br label %507

57:                                               ; preds = %1
  %58 = load %struct.bio*, %struct.bio** %2, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %497 [
    i32 129, label %61
    i32 128, label %255
  ]

61:                                               ; preds = %57
  %62 = load %struct.bio*, %struct.bio** %2, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.bio*, %struct.bio** %2, align 8
  %68 = load %struct.bio*, %struct.bio** %2, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 0, %struct.bio* %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.bio*, %struct.bio** %2, align 8
  %73 = call i32 @g_destroy_bio(%struct.bio* %72)
  br label %507

74:                                               ; preds = %61
  %75 = load %struct.bio*, %struct.bio** %2, align 8
  %76 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 3, %struct.bio* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %78 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %81 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sdiv i32 %79, %83
  store i32 %84, i32* %9, align 4
  %85 = load %struct.bio*, %struct.bio** %2, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %7, align 8
  store i32* %87, i32** %6, align 8
  %88 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %89 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %92 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %96, label %143

96:                                               ; preds = %74
  %97 = load %struct.bio*, %struct.bio** %2, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %136, %96
  %101 = load i32, i32* %8, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %142

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @bcopy(i32* %104, i32* %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %7, align 8
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %128, %103
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %115 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load i32*, i32** %7, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @g_raid3_xor(i32* %120, i32* %121, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %7, align 8
  br label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %112

131:                                              ; preds = %112
  %132 = load i32, i32* %9, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %6, align 8
  br label %136

136:                                              ; preds = %131
  %137 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %138 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %8, align 4
  br label %100

142:                                              ; preds = %100
  br label %180

143:                                              ; preds = %74
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %146 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %144, %147
  %149 = load i32*, i32** %7, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %7, align 8
  %152 = load %struct.bio*, %struct.bio** %2, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %173, %143
  %156 = load i32, i32* %8, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %155
  %159 = load i32*, i32** %7, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @bcopy(i32* %159, i32* %160, i32 %161)
  %163 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %164 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %6, align 8
  br label %173

173:                                              ; preds = %158
  %174 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %175 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %8, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %8, align 4
  br label %155

179:                                              ; preds = %155
  br label %180

180:                                              ; preds = %179, %142
  %181 = load %struct.bio*, %struct.bio** %2, align 8
  %182 = getelementptr inbounds %struct.bio, %struct.bio* %181, i32 0, i32 13
  store i32* null, i32** %182, align 8
  %183 = load %struct.bio*, %struct.bio** %2, align 8
  %184 = getelementptr inbounds %struct.bio, %struct.bio* %183, i32 0, i32 14
  store i32 0, i32* %184, align 8
  %185 = load %struct.bio*, %struct.bio** %2, align 8
  %186 = getelementptr inbounds %struct.bio, %struct.bio* %185, i32 0, i32 12
  store i32 0, i32* %186, align 8
  %187 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %188 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %189, 1
  %191 = load %struct.bio*, %struct.bio** %2, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %196 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load %struct.bio*, %struct.bio** %2, align 8
  %200 = getelementptr inbounds %struct.bio, %struct.bio* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sdiv i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load %struct.bio*, %struct.bio** %2, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 0
  store i32 128, i32* %204, align 8
  %205 = load %struct.bio*, %struct.bio** %2, align 8
  %206 = getelementptr inbounds %struct.bio, %struct.bio* %205, i32 0, i32 11
  store i32 0, i32* %206, align 4
  %207 = load %struct.bio*, %struct.bio** %2, align 8
  %208 = getelementptr inbounds %struct.bio, %struct.bio* %207, i32 0, i32 9
  store i32 0, i32* %208, align 4
  %209 = load %struct.bio*, %struct.bio** %2, align 8
  %210 = getelementptr inbounds %struct.bio, %struct.bio* %209, i32 0, i32 10
  store i32 0, i32* %210, align 8
  %211 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %212 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %211, i32 0, i32 2
  %213 = load %struct.g_consumer*, %struct.g_consumer** %212, align 8
  store %struct.g_consumer* %213, %struct.g_consumer** %5, align 8
  %214 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %215 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp sge i32 %216, 1
  br i1 %217, label %218, label %228

218:                                              ; preds = %180
  %219 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %220 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp sge i32 %221, 1
  br i1 %222, label %223, label %228

223:                                              ; preds = %218
  %224 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %225 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp sge i32 %226, 1
  br label %228

228:                                              ; preds = %223, %218, %180
  %229 = phi i1 [ false, %218 ], [ false, %180 ], [ %227, %223 ]
  %230 = zext i1 %229 to i32
  %231 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %232 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %231, i32 0, i32 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %237 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %240 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %243 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = call i32 @KASSERT(i32 %230, i8* %246)
  %248 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %249 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load %struct.bio*, %struct.bio** %2, align 8
  %253 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %254 = call i32 @g_io_request(%struct.bio* %252, %struct.g_consumer* %253)
  br label %507

255:                                              ; preds = %57
  %256 = load %struct.bio*, %struct.bio** %2, align 8
  %257 = getelementptr inbounds %struct.bio, %struct.bio* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %255
  %261 = load %struct.bio*, %struct.bio** %2, align 8
  %262 = load %struct.bio*, %struct.bio** %2, align 8
  %263 = getelementptr inbounds %struct.bio, %struct.bio* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 0, %struct.bio* %261, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %264)
  %266 = load %struct.bio*, %struct.bio** %2, align 8
  %267 = call i32 @g_destroy_bio(%struct.bio* %266)
  %268 = load i32, i32* @G_RAID3_BUMP_GENID, align 4
  %269 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %270 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %274 = load i32, i32* @G_RAID3_DISK_STATE_DISCONNECTED, align 4
  %275 = load i32, i32* @G_RAID3_EVENT_DONTWAIT, align 4
  %276 = call i32 @g_raid3_event_send(%struct.g_raid3_disk* %273, i32 %274, i32 %275)
  br label %507

277:                                              ; preds = %255
  %278 = load %struct.bio*, %struct.bio** %2, align 8
  %279 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 3, %struct.bio* %278, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %280 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %281 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %280, i32 0, i32 1
  store %struct.g_raid3_disk_sync* %281, %struct.g_raid3_disk_sync** %11, align 8
  %282 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %283 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %286 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %289 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sdiv i32 %287, %291
  %293 = icmp eq i32 %284, %292
  br i1 %293, label %306, label %294

294:                                              ; preds = %277
  %295 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %296 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %295, i32 0, i32 3
  %297 = load %struct.g_consumer*, %struct.g_consumer** %296, align 8
  %298 = icmp eq %struct.g_consumer* %297, null
  br i1 %298, label %306, label %299

299:                                              ; preds = %294
  %300 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %301 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @G_RAID3_DEVICE_FLAG_DESTROY, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %358

306:                                              ; preds = %299, %294, %277
  %307 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %308 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, -1
  store i32 %310, i32* %308, align 8
  %311 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %312 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %311, i32 0, i32 2
  %313 = load %struct.bio**, %struct.bio*** %312, align 8
  %314 = icmp ne %struct.bio** %313, null
  br i1 %314, label %315, label %327

315:                                              ; preds = %306
  %316 = load %struct.bio*, %struct.bio** %2, align 8
  %317 = getelementptr inbounds %struct.bio, %struct.bio* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %15, align 4
  %321 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %322 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %321, i32 0, i32 2
  %323 = load %struct.bio**, %struct.bio*** %322, align 8
  %324 = load i32, i32* %15, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.bio*, %struct.bio** %323, i64 %325
  store %struct.bio* null, %struct.bio** %326, align 8
  br label %327

327:                                              ; preds = %315, %306
  %328 = load %struct.bio*, %struct.bio** %2, align 8
  %329 = getelementptr inbounds %struct.bio, %struct.bio* %328, i32 0, i32 5
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* @M_RAID3, align 4
  %332 = call i32 @free(i32* %330, i32 %331)
  %333 = load %struct.bio*, %struct.bio** %2, align 8
  %334 = call i32 @g_destroy_bio(%struct.bio* %333)
  %335 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %336 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %327
  br label %507

340:                                              ; preds = %327
  %341 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %342 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %341, i32 0, i32 3
  %343 = load %struct.g_consumer*, %struct.g_consumer** %342, align 8
  %344 = icmp eq %struct.g_consumer* %343, null
  br i1 %344, label %352, label %345

345:                                              ; preds = %340
  %346 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %347 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @G_RAID3_DEVICE_FLAG_DESTROY, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %345, %340
  br label %507

353:                                              ; preds = %345
  %354 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %355 = load i32, i32* @G_RAID3_DISK_STATE_ACTIVE, align 4
  %356 = load i32, i32* @G_RAID3_EVENT_DONTWAIT, align 4
  %357 = call i32 @g_raid3_event_send(%struct.g_raid3_disk* %354, i32 %355, i32 %356)
  br label %507

358:                                              ; preds = %299
  %359 = load %struct.bio*, %struct.bio** %2, align 8
  %360 = getelementptr inbounds %struct.bio, %struct.bio* %359, i32 0, i32 5
  %361 = load i32*, i32** %360, align 8
  %362 = bitcast i32* %361 to i8*
  store i8* %362, i8** %14, align 8
  %363 = load %struct.bio*, %struct.bio** %2, align 8
  %364 = call i32 @g_reset_bio(%struct.bio* %363)
  %365 = load %struct.bio*, %struct.bio** %2, align 8
  %366 = getelementptr inbounds %struct.bio, %struct.bio* %365, i32 0, i32 0
  store i32 129, i32* %366, align 8
  %367 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %368 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %371 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = sub nsw i32 %372, 1
  %374 = mul nsw i32 %369, %373
  %375 = load %struct.bio*, %struct.bio** %2, align 8
  %376 = getelementptr inbounds %struct.bio, %struct.bio* %375, i32 0, i32 2
  store i32 %374, i32* %376, align 8
  %377 = load i32, i32* @MAXPHYS, align 4
  %378 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %379 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.bio*, %struct.bio** %2, align 8
  %382 = getelementptr inbounds %struct.bio, %struct.bio* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = sub nsw i32 %380, %383
  %385 = call i32 @MIN(i32 %377, i32 %384)
  %386 = load %struct.bio*, %struct.bio** %2, align 8
  %387 = getelementptr inbounds %struct.bio, %struct.bio* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  %388 = load %struct.bio*, %struct.bio** %2, align 8
  %389 = getelementptr inbounds %struct.bio, %struct.bio* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %392 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 4
  %394 = sub nsw i32 %393, 1
  %395 = sdiv i32 %390, %394
  %396 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %397 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = add nsw i32 %398, %395
  store i32 %399, i32* %397, align 8
  %400 = load i32, i32* @g_raid3_sync_done, align 4
  %401 = load %struct.bio*, %struct.bio** %2, align 8
  %402 = getelementptr inbounds %struct.bio, %struct.bio* %401, i32 0, i32 6
  store i32 %400, i32* %402, align 8
  %403 = load i8*, i8** %14, align 8
  %404 = bitcast i8* %403 to i32*
  %405 = load %struct.bio*, %struct.bio** %2, align 8
  %406 = getelementptr inbounds %struct.bio, %struct.bio* %405, i32 0, i32 5
  store i32* %404, i32** %406, align 8
  %407 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %408 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %407, i32 0, i32 3
  %409 = load %struct.g_consumer*, %struct.g_consumer** %408, align 8
  %410 = load %struct.bio*, %struct.bio** %2, align 8
  %411 = getelementptr inbounds %struct.bio, %struct.bio* %410, i32 0, i32 4
  store %struct.g_consumer* %409, %struct.g_consumer** %411, align 8
  %412 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %413 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.bio*, %struct.bio** %2, align 8
  %416 = getelementptr inbounds %struct.bio, %struct.bio* %415, i32 0, i32 3
  store i32 %414, i32* %416, align 4
  %417 = load %struct.bio*, %struct.bio** %2, align 8
  %418 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 3, %struct.bio* %417, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %419 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %420 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %419, i32 0, i32 3
  %421 = load %struct.g_consumer*, %struct.g_consumer** %420, align 8
  %422 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %422, align 4
  %425 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %426 = load %struct.bio*, %struct.bio** %2, align 8
  %427 = call i32 @g_raid3_regular_collision(%struct.g_raid3_softc* %425, %struct.bio* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %358
  %430 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %431 = load %struct.bio*, %struct.bio** %2, align 8
  %432 = call i32 @g_raid3_sync_delay(%struct.g_raid3_softc* %430, %struct.bio* %431)
  br label %439

433:                                              ; preds = %358
  %434 = load %struct.bio*, %struct.bio** %2, align 8
  %435 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %436 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %435, i32 0, i32 3
  %437 = load %struct.g_consumer*, %struct.g_consumer** %436, align 8
  %438 = call i32 @g_io_request(%struct.bio* %434, %struct.g_consumer* %437)
  br label %439

439:                                              ; preds = %433, %429
  %440 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %441 = call i32 @g_raid3_regular_release(%struct.g_raid3_softc* %440)
  %442 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %443 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %445

445:                                              ; preds = %478, %439
  %446 = load i32, i32* %15, align 4
  %447 = load i32, i32* @g_raid3_syncreqs, align 4
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %449, label %481

449:                                              ; preds = %445
  %450 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %451 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %450, i32 0, i32 2
  %452 = load %struct.bio**, %struct.bio*** %451, align 8
  %453 = load i32, i32* %15, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.bio*, %struct.bio** %452, i64 %454
  %456 = load %struct.bio*, %struct.bio** %455, align 8
  store %struct.bio* %456, %struct.bio** %2, align 8
  %457 = load %struct.bio*, %struct.bio** %2, align 8
  %458 = getelementptr inbounds %struct.bio, %struct.bio* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  store i32 %459, i32* %12, align 4
  %460 = load %struct.bio*, %struct.bio** %2, align 8
  %461 = getelementptr inbounds %struct.bio, %struct.bio* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = icmp eq i32 %462, 128
  br i1 %463, label %464, label %471

464:                                              ; preds = %449
  %465 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %466 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 4
  %468 = sub nsw i32 %467, 1
  %469 = load i32, i32* %12, align 4
  %470 = mul nsw i32 %469, %468
  store i32 %470, i32* %12, align 4
  br label %471

471:                                              ; preds = %464, %449
  %472 = load i32, i32* %12, align 4
  %473 = load i32, i32* %13, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %477

475:                                              ; preds = %471
  %476 = load i32, i32* %12, align 4
  store i32 %476, i32* %13, align 4
  br label %477

477:                                              ; preds = %475, %471
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %15, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %15, align 4
  br label %445

481:                                              ; preds = %445
  %482 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %483 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @MAXPHYS, align 4
  %486 = mul nsw i32 %485, 100
  %487 = add nsw i32 %484, %486
  %488 = load i32, i32* %13, align 4
  %489 = icmp slt i32 %487, %488
  br i1 %489, label %490, label %496

490:                                              ; preds = %481
  %491 = load i32, i32* %13, align 4
  %492 = load %struct.g_raid3_disk_sync*, %struct.g_raid3_disk_sync** %11, align 8
  %493 = getelementptr inbounds %struct.g_raid3_disk_sync, %struct.g_raid3_disk_sync* %492, i32 0, i32 1
  store i32 %491, i32* %493, align 4
  %494 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %495 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %494)
  br label %496

496:                                              ; preds = %490, %481
  br label %507

497:                                              ; preds = %57
  %498 = load %struct.bio*, %struct.bio** %2, align 8
  %499 = getelementptr inbounds %struct.bio, %struct.bio* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %502 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 4
  %504 = sext i32 %503 to i64
  %505 = inttoptr i64 %504 to i8*
  %506 = call i32 @KASSERT(i32 0, i8* %505)
  br label %507

507:                                              ; preds = %36, %66, %228, %260, %339, %352, %353, %496, %497
  ret void
}

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_raid3_kill_consumer(%struct.g_raid3_softc*, %struct.g_consumer*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @G_RAID3_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @g_raid3_xor(i32*, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @g_raid3_event_send(%struct.g_raid3_disk*, i32, i32) #1

declare dso_local i32 @g_reset_bio(%struct.bio*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @g_raid3_regular_collision(%struct.g_raid3_softc*, %struct.bio*) #1

declare dso_local i32 @g_raid3_sync_delay(%struct.g_raid3_softc*, %struct.bio*) #1

declare dso_local i32 @g_raid3_regular_release(%struct.g_raid3_softc*) #1

declare dso_local i32 @g_raid3_update_metadata(%struct.g_raid3_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
