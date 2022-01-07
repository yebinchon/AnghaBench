; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { i64, i32, %struct.g_mirror_disk_sync, %struct.g_mirror_softc* }
%struct.g_mirror_disk_sync = type { i32, %struct.g_consumer*, %struct.bio**, i32 }
%struct.g_consumer = type { i32, i64, %struct.g_mirror_disk* }
%struct.bio = type { i64, i8*, i8* }
%struct.g_mirror_softc = type { i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Disk %s is not marked for synchronization.\00", align 1
@G_MIRROR_DEVICE_STATE_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Device not in RUNNING state (%s, %u).\00", align 1
@G_CF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot attach to %s (error=%d).\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot open %s (error=%d).\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Device %s: rebuilding provider %s.\00", align 1
@G_MIRROR_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Sync consumer already exists (device=%s, disk=%s).\00", align 1
@g_mirror_syncreqs = common dso_local global i32 0, align 4
@M_MIRROR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Sending synchronization request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_disk*)* @g_mirror_sync_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_sync_start(%struct.g_mirror_disk* %0) #0 {
  %2 = alloca %struct.g_mirror_disk*, align 8
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.g_mirror_disk_sync*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %2, align 8
  %9 = call i32 (...) @g_topology_assert_not()
  %10 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %11 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %10, i32 0, i32 3
  %12 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  store %struct.g_mirror_softc* %12, %struct.g_mirror_softc** %3, align 8
  %13 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %14 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %13, i32 0, i32 2
  store %struct.g_mirror_disk_sync* %14, %struct.g_mirror_disk_sync** %4, align 8
  %15 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %15, i32 0, i32 4
  %17 = load i32, i32* @SX_LOCKED, align 4
  %18 = call i32 @sx_assert(i32* %16, i32 %17)
  %19 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %20 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @G_MIRROR_DISK_STATE_SYNCHRONIZING, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %26 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %24, i8* %28)
  %30 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %31 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @G_MIRROR_DEVICE_STATE_RUNNING, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %37 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %40 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %35, i8* %42)
  %44 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %45 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %44, i32 0, i32 4
  %46 = call i32 @sx_xunlock(i32* %45)
  %47 = call i32 (...) @g_topology_lock()
  %48 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %49 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.g_consumer* @g_new_consumer(i32 %51)
  store %struct.g_consumer* %52, %struct.g_consumer** %5, align 8
  %53 = load i32, i32* @G_CF_DIRECT_SEND, align 4
  %54 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %57 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %61 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %62 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @g_attach(%struct.g_consumer* %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %69 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @KASSERT(i32 %67, i8* %73)
  %75 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %76 = call i32 @g_access(%struct.g_consumer* %75, i32 1, i32 0, i32 0)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %81 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %79, i8* %85)
  %87 = call i32 (...) @g_topology_unlock()
  %88 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %89 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %88, i32 0, i32 4
  %90 = call i32 @sx_xlock(i32* %89)
  %91 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %92 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %95 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %94)
  %96 = call i32 @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %95)
  %97 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %98 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOFAILSYNC, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %1
  %104 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %105 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %106 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %1
  %110 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %111 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %110, i32 0, i32 1
  %112 = load %struct.g_consumer*, %struct.g_consumer** %111, align 8
  %113 = icmp eq %struct.g_consumer* %112, null
  %114 = zext i1 %113 to i32
  %115 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %116 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %119 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %118)
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @KASSERT(i32 %114, i8* %121)
  %123 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %124 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %125 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %124, i32 0, i32 1
  store %struct.g_consumer* %123, %struct.g_consumer** %125, align 8
  %126 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %127 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %128 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %127, i32 0, i32 1
  %129 = load %struct.g_consumer*, %struct.g_consumer** %128, align 8
  %130 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %129, i32 0, i32 2
  store %struct.g_mirror_disk* %126, %struct.g_mirror_disk** %130, align 8
  %131 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %132 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %131, i32 0, i32 1
  %133 = load %struct.g_consumer*, %struct.g_consumer** %132, align 8
  %134 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @g_mirror_syncreqs, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 8, %136
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @M_MIRROR, align 4
  %140 = load i32, i32* @M_WAITOK, align 4
  %141 = call i8* @malloc(i32 %138, i32 %139, i32 %140)
  %142 = bitcast i8* %141 to %struct.bio**
  %143 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %144 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %143, i32 0, i32 2
  store %struct.bio** %142, %struct.bio*** %144, align 8
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %184, %109
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @g_mirror_syncreqs, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %145
  %150 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %150, %struct.bio** %6, align 8
  %151 = load %struct.bio*, %struct.bio** %6, align 8
  %152 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %153 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %152, i32 0, i32 2
  %154 = load %struct.bio**, %struct.bio*** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.bio*, %struct.bio** %154, i64 %156
  store %struct.bio* %151, %struct.bio** %157, align 8
  %158 = load i32, i32* @MAXPHYS, align 4
  %159 = load i32, i32* @M_MIRROR, align 4
  %160 = load i32, i32* @M_WAITOK, align 4
  %161 = call i8* @malloc(i32 %158, i32 %159, i32 %160)
  %162 = load %struct.bio*, %struct.bio** %6, align 8
  %163 = getelementptr inbounds %struct.bio, %struct.bio* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.bio*, %struct.bio** %6, align 8
  %168 = getelementptr inbounds %struct.bio, %struct.bio* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %170 = load %struct.bio*, %struct.bio** %6, align 8
  %171 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %172 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @g_mirror_sync_reinit(%struct.g_mirror_disk* %169, %struct.bio* %170, i32 %173)
  %175 = load %struct.bio*, %struct.bio** %6, align 8
  %176 = getelementptr inbounds %struct.bio, %struct.bio* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %179 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %177
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 8
  br label %184

184:                                              ; preds = %149
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %145

187:                                              ; preds = %145
  %188 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %189 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @g_mirror_syncreqs, align 4
  %194 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %195 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %231, %187
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @g_mirror_syncreqs, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %234

200:                                              ; preds = %196
  %201 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %202 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %201, i32 0, i32 2
  %203 = load %struct.bio**, %struct.bio*** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.bio*, %struct.bio** %203, i64 %205
  %207 = load %struct.bio*, %struct.bio** %206, align 8
  store %struct.bio* %207, %struct.bio** %6, align 8
  %208 = load %struct.bio*, %struct.bio** %6, align 8
  %209 = call i32 @G_MIRROR_LOGREQ(i32 3, %struct.bio* %208, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %210 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %211 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %210, i32 0, i32 1
  %212 = load %struct.g_consumer*, %struct.g_consumer** %211, align 8
  %213 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %213, align 8
  %216 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %217 = load %struct.bio*, %struct.bio** %6, align 8
  %218 = call i64 @g_mirror_regular_collision(%struct.g_mirror_softc* %216, %struct.bio* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %200
  %221 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %222 = load %struct.bio*, %struct.bio** %6, align 8
  %223 = call i32 @g_mirror_sync_delay(%struct.g_mirror_softc* %221, %struct.bio* %222)
  br label %230

224:                                              ; preds = %200
  %225 = load %struct.bio*, %struct.bio** %6, align 8
  %226 = load %struct.g_mirror_disk_sync*, %struct.g_mirror_disk_sync** %4, align 8
  %227 = getelementptr inbounds %struct.g_mirror_disk_sync, %struct.g_mirror_disk_sync* %226, i32 0, i32 1
  %228 = load %struct.g_consumer*, %struct.g_consumer** %227, align 8
  %229 = call i32 @g_io_request(%struct.bio* %225, %struct.g_consumer* %228)
  br label %230

230:                                              ; preds = %224, %220
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %196

234:                                              ; preds = %196
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_consumer* @g_new_consumer(i32) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, i32) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @g_mirror_sync_reinit(%struct.g_mirror_disk*, %struct.bio*, i32) #1

declare dso_local i32 @G_MIRROR_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i64 @g_mirror_regular_collision(%struct.g_mirror_softc*, %struct.bio*) #1

declare dso_local i32 @g_mirror_sync_delay(%struct.g_mirror_softc*, %struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
