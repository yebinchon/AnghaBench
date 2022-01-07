; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i64, i64, i32, i32, i64, %struct.g_raid3_disk*, i32, i32, %struct.TYPE_3__, %struct.g_raid3_disk* }
%struct.TYPE_3__ = type { i32 }
%struct.g_raid3_disk = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.g_consumer*, %struct.bio** }
%struct.g_consumer = type { i64, %struct.g_raid3_disk* }
%struct.bio = type { i32, i32, i8*, i32, %struct.g_consumer*, i32, i64, i8*, i32, i32* }

@SX_XLOCKED = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_STATE_DEGRADED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Device not in DEGRADED state (%s, %u).\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Syncdisk is not NULL (%s, %u).\00", align 1
@G_RAID3_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot attach to %s (error=%d).\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot open %s (error=%d).\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Device %s: rebuilding provider %s.\00", align 1
@G_RAID3_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Sync consumer already exists (device=%s, disk=%s).\00", align 1
@g_raid3_syncreqs = common dso_local global i32 0, align 4
@M_RAID3 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@g_raid3_sync_done = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Sending synchronization request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*)* @g_raid3_sync_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_sync_start(%struct.g_raid3_softc* %0) #0 {
  %2 = alloca %struct.g_raid3_softc*, align 8
  %3 = alloca %struct.g_raid3_disk*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %2, align 8
  %8 = call i32 (...) @g_topology_assert_not()
  %9 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %10 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %9, i32 0, i32 7
  %11 = load i32, i32* @SX_XLOCKED, align 4
  %12 = call i32 @sx_assert(i32* %10, i32 %11)
  %13 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %14 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @G_RAID3_DEVICE_STATE_DEGRADED, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %20 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %18, i8* %25)
  %27 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %28 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %27, i32 0, i32 5
  %29 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %28, align 8
  %30 = icmp eq %struct.g_raid3_disk* %29, null
  %31 = zext i1 %30 to i32
  %32 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %33 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %36 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %31, i8* %38)
  store %struct.g_raid3_disk* null, %struct.g_raid3_disk** %3, align 8
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %63, %1
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %43 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %48 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %47, i32 0, i32 9
  %49 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %49, i64 %50
  %52 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @G_RAID3_DISK_STATE_SYNCHRONIZING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %63

57:                                               ; preds = %46
  %58 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %59 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %58, i32 0, i32 9
  %60 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %60, i64 %61
  store %struct.g_raid3_disk* %62, %struct.g_raid3_disk** %3, align 8
  br label %66

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %7, align 8
  br label %40

66:                                               ; preds = %57, %40
  %67 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %68 = icmp eq %struct.g_raid3_disk* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %308

70:                                               ; preds = %66
  %71 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %72 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %71, i32 0, i32 7
  %73 = call i32 @sx_xunlock(i32* %72)
  %74 = call i32 (...) @g_topology_lock()
  %75 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %76 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.g_consumer* @g_new_consumer(i32 %78)
  store %struct.g_consumer* %79, %struct.g_consumer** %4, align 8
  %80 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %81 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %82 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @g_attach(%struct.g_consumer* %80, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %89 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @KASSERT(i32 %87, i8* %93)
  %95 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %96 = call i32 @g_access(%struct.g_consumer* %95, i32 1, i32 0, i32 0)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %101 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @KASSERT(i32 %99, i8* %105)
  %107 = call i32 (...) @g_topology_unlock()
  %108 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %109 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %108, i32 0, i32 7
  %110 = call i32 @sx_xlock(i32* %109)
  %111 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %112 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %115 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %114)
  %116 = call i32 @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %115)
  %117 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %118 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOFAILSYNC, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %70
  %124 = load i32, i32* @G_RAID3_DISK_FLAG_DIRTY, align 4
  %125 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %126 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %70
  %130 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %131 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load %struct.g_consumer*, %struct.g_consumer** %132, align 8
  %134 = icmp eq %struct.g_consumer* %133, null
  %135 = zext i1 %134 to i32
  %136 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %137 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %140 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %139)
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @KASSERT(i32 %135, i8* %142)
  %144 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %145 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %146 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store %struct.g_consumer* %144, %struct.g_consumer** %147, align 8
  %148 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %149 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %150 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load %struct.g_consumer*, %struct.g_consumer** %151, align 8
  %153 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %152, i32 0, i32 1
  store %struct.g_raid3_disk* %148, %struct.g_raid3_disk** %153, align 8
  %154 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %155 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load %struct.g_consumer*, %struct.g_consumer** %156, align 8
  %158 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %160 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %161 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %160, i32 0, i32 5
  store %struct.g_raid3_disk* %159, %struct.g_raid3_disk** %161, align 8
  %162 = load i32, i32* @g_raid3_syncreqs, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 8, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* @M_RAID3, align 4
  %167 = load i32, i32* @M_WAITOK, align 4
  %168 = call i8* @malloc(i32 %165, i32 %166, i32 %167)
  %169 = bitcast i8* %168 to %struct.bio**
  %170 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %171 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  store %struct.bio** %169, %struct.bio*** %172, align 8
  store i64 0, i64* %7, align 8
  br label %173

173:                                              ; preds = %259, %129
  %174 = load i64, i64* %7, align 8
  %175 = load i32, i32* @g_raid3_syncreqs, align 4
  %176 = sext i32 %175 to i64
  %177 = icmp ult i64 %174, %176
  br i1 %177, label %178, label %262

178:                                              ; preds = %173
  %179 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %179, %struct.bio** %5, align 8
  %180 = load %struct.bio*, %struct.bio** %5, align 8
  %181 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %182 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  %184 = load %struct.bio**, %struct.bio*** %183, align 8
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds %struct.bio*, %struct.bio** %184, i64 %185
  store %struct.bio* %180, %struct.bio** %186, align 8
  %187 = load %struct.bio*, %struct.bio** %5, align 8
  %188 = getelementptr inbounds %struct.bio, %struct.bio* %187, i32 0, i32 9
  store i32* null, i32** %188, align 8
  %189 = load i32, i32* @BIO_READ, align 4
  %190 = load %struct.bio*, %struct.bio** %5, align 8
  %191 = getelementptr inbounds %struct.bio, %struct.bio* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @MAXPHYS, align 4
  %193 = load i32, i32* @M_RAID3, align 4
  %194 = load i32, i32* @M_WAITOK, align 4
  %195 = call i8* @malloc(i32 %192, i32 %193, i32 %194)
  %196 = load %struct.bio*, %struct.bio** %5, align 8
  %197 = getelementptr inbounds %struct.bio, %struct.bio* %196, i32 0, i32 7
  store i8* %195, i8** %197, align 8
  %198 = load %struct.bio*, %struct.bio** %5, align 8
  %199 = getelementptr inbounds %struct.bio, %struct.bio* %198, i32 0, i32 6
  store i64 0, i64* %199, align 8
  %200 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %201 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %206 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sub i64 %207, 1
  %209 = mul i64 %204, %208
  %210 = trunc i64 %209 to i32
  %211 = load %struct.bio*, %struct.bio** %5, align 8
  %212 = getelementptr inbounds %struct.bio, %struct.bio* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* @MAXPHYS, align 4
  %214 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %215 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.bio*, %struct.bio** %5, align 8
  %218 = getelementptr inbounds %struct.bio, %struct.bio* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = sub nsw i64 %216, %220
  %222 = call i32 @MIN(i32 %213, i64 %221)
  %223 = load %struct.bio*, %struct.bio** %5, align 8
  %224 = getelementptr inbounds %struct.bio, %struct.bio* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.bio*, %struct.bio** %5, align 8
  %226 = getelementptr inbounds %struct.bio, %struct.bio* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %230 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = sub i64 %231, 1
  %233 = udiv i64 %228, %232
  %234 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %235 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = add i64 %238, %233
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 8
  %241 = load i32, i32* @g_raid3_sync_done, align 4
  %242 = load %struct.bio*, %struct.bio** %5, align 8
  %243 = getelementptr inbounds %struct.bio, %struct.bio* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 8
  %244 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %245 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 2
  %247 = load %struct.g_consumer*, %struct.g_consumer** %246, align 8
  %248 = load %struct.bio*, %struct.bio** %5, align 8
  %249 = getelementptr inbounds %struct.bio, %struct.bio* %248, i32 0, i32 4
  store %struct.g_consumer* %247, %struct.g_consumer** %249, align 8
  %250 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %251 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.bio*, %struct.bio** %5, align 8
  %254 = getelementptr inbounds %struct.bio, %struct.bio* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 8
  %255 = load i64, i64* %7, align 8
  %256 = inttoptr i64 %255 to i8*
  %257 = load %struct.bio*, %struct.bio** %5, align 8
  %258 = getelementptr inbounds %struct.bio, %struct.bio* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  br label %259

259:                                              ; preds = %178
  %260 = load i64, i64* %7, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %7, align 8
  br label %173

262:                                              ; preds = %173
  %263 = load i32, i32* @g_raid3_syncreqs, align 4
  %264 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %265 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  store i64 0, i64* %7, align 8
  br label %267

267:                                              ; preds = %305, %262
  %268 = load i64, i64* %7, align 8
  %269 = load i32, i32* @g_raid3_syncreqs, align 4
  %270 = sext i32 %269 to i64
  %271 = icmp ult i64 %268, %270
  br i1 %271, label %272, label %308

272:                                              ; preds = %267
  %273 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %274 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 3
  %276 = load %struct.bio**, %struct.bio*** %275, align 8
  %277 = load i64, i64* %7, align 8
  %278 = getelementptr inbounds %struct.bio*, %struct.bio** %276, i64 %277
  %279 = load %struct.bio*, %struct.bio** %278, align 8
  store %struct.bio* %279, %struct.bio** %5, align 8
  %280 = load %struct.bio*, %struct.bio** %5, align 8
  %281 = call i32 @G_RAID3_LOGREQ(i32 3, %struct.bio* %280, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %282 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %283 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  %285 = load %struct.g_consumer*, %struct.g_consumer** %284, align 8
  %286 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, 1
  store i64 %288, i64* %286, align 8
  %289 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %290 = load %struct.bio*, %struct.bio** %5, align 8
  %291 = call i64 @g_raid3_regular_collision(%struct.g_raid3_softc* %289, %struct.bio* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %272
  %294 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %295 = load %struct.bio*, %struct.bio** %5, align 8
  %296 = call i32 @g_raid3_sync_delay(%struct.g_raid3_softc* %294, %struct.bio* %295)
  br label %304

297:                                              ; preds = %272
  %298 = load %struct.bio*, %struct.bio** %5, align 8
  %299 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %300 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 2
  %302 = load %struct.g_consumer*, %struct.g_consumer** %301, align 8
  %303 = call i32 @g_io_request(%struct.bio* %298, %struct.g_consumer* %302)
  br label %304

304:                                              ; preds = %297, %293
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %7, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %7, align 8
  br label %267

308:                                              ; preds = %69, %267
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_consumer* @g_new_consumer(i32) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, i32) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @G_RAID3_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i64 @g_raid3_regular_collision(%struct.g_raid3_softc*, %struct.bio*) #1

declare dso_local i32 @g_raid3_sync_delay(%struct.g_raid3_softc*, %struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
