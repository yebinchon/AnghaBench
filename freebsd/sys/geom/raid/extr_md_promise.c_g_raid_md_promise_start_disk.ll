; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_start_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_start_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i32, %struct.TYPE_10__*, i64, %struct.g_raid_softc* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_volume = type { i32, i32, i64, %struct.g_raid_subdisk*, %struct.g_raid_md_promise_pervolume* }
%struct.g_raid_subdisk = type { i64, i32, i32, i32, %struct.g_raid_disk* }
%struct.g_raid_md_promise_pervolume = type { i32, %struct.promise_raid_conf* }
%struct.promise_raid_conf = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.g_raid_md_promise_perdisk = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Disk %s is not part of the volume %s\00", align 1
@PROMISE_F_DOWN = common dso_local global i32 0, align 4
@G_RAID_DISK_S_STALE_FAILED = common dso_local global i32 0, align 4
@M_MD_PROMISE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No free space on disk %s\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_NONE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_FAILED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_CONCAT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Disk %s free space is too small (%ju < %ju)\00", align 1
@G_RAID_DISK_S_SPARE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Disk %s takes pos %d in the volume %s\00", align 1
@sd_next = common dso_local global i32 0, align 4
@G_RAID_DISK_S_ACTIVE = common dso_local global i32 0, align 4
@G_RAID_DISK_S_FAILED = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_NEW = common dso_local global i64 0, align 8
@PROMISE_F_REDIR = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_REBUILD = common dso_local global i64 0, align 8
@PROMISE_F_ONLINE = common dso_local global i32 0, align 4
@PROMISE_S_MARKED = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_STALE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_E_NEW = common dso_local global i32 0, align 4
@G_RAID_EVENT_SUBDISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_disk*, i32, %struct.g_raid_volume*)* @g_raid_md_promise_start_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_promise_start_disk(%struct.g_raid_disk* %0, i32 %1, %struct.g_raid_volume* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_disk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_raid_volume*, align 8
  %8 = alloca %struct.g_raid_softc*, align 8
  %9 = alloca %struct.g_raid_subdisk*, align 8
  %10 = alloca %struct.g_raid_md_promise_perdisk*, align 8
  %11 = alloca %struct.g_raid_md_promise_pervolume*, align 8
  %12 = alloca %struct.promise_raid_conf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.g_raid_disk* %0, %struct.g_raid_disk** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.g_raid_volume* %2, %struct.g_raid_volume** %7, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %21 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %20, i32 0, i32 3
  %22 = load %struct.g_raid_softc*, %struct.g_raid_softc** %21, align 8
  store %struct.g_raid_softc* %22, %struct.g_raid_softc** %8, align 8
  %23 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %24 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.g_raid_md_promise_perdisk*
  store %struct.g_raid_md_promise_perdisk* %26, %struct.g_raid_md_promise_perdisk** %10, align 8
  %27 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %28 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %27, i32 0, i32 4
  %29 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %28, align 8
  store %struct.g_raid_md_promise_pervolume* %29, %struct.g_raid_md_promise_pervolume** %11, align 8
  %30 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %11, align 8
  %31 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %30, i32 0, i32 1
  %32 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %31, align 8
  store %struct.promise_raid_conf* %32, %struct.promise_raid_conf** %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %3
  %36 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %37 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %38 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @promise_meta_find_disk(%struct.promise_raid_conf* %36, i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @promise_meta_translate_disk(%struct.g_raid_volume* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  br label %52

51:                                               ; preds = %3
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %16, align 4
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %282

55:                                               ; preds = %52
  %56 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %57 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %58 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %57)
  %59 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %60 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %67 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PROMISE_F_DOWN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %81 = load i32, i32* @G_RAID_DISK_S_STALE_FAILED, align 4
  %82 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %547

83:                                               ; preds = %65, %55
  %84 = load i32, i32* %6, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %136

86:                                               ; preds = %83
  %87 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %88 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %89, i64 %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* @M_MD_PROMISE, align 4
  %95 = call i32 @free(%struct.TYPE_11__* %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %119, %86
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %100 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %97
  %105 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %106 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %106, align 8
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %107, i64 %110
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %114 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %115, i64 %117
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %118, align 8
  br label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %97

122:                                              ; preds = %97
  %123 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %124 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %124, align 8
  %126 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %127 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %125, i64 %130
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %131, align 8
  %132 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %133 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %122, %83
  %137 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %11, align 8
  %138 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  br label %263

142:                                              ; preds = %136
  %143 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %144 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %143, i32 0, i32 1
  %145 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %144, align 8
  %146 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %147 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %150 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %149, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %157 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %156, i32 0, i32 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sdiv i32 %155, %162
  %164 = call i32 @promise_meta_unused_range(%struct.TYPE_11__** %145, i32 %148, i32 %163, i32* %13, i32* %14)
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %142
  %168 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %169 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %170 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %169)
  %171 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  br label %263

172:                                              ; preds = %142
  %173 = load i32, i32* @INT64_MAX, align 4
  store i32 %173, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %174

174:                                              ; preds = %221, %172
  %175 = load i32, i32* %18, align 4
  %176 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %177 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %224

180:                                              ; preds = %174
  %181 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %182 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %181, i32 0, i32 3
  %183 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %182, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %183, i64 %185
  store %struct.g_raid_subdisk* %186, %struct.g_raid_subdisk** %9, align 8
  %187 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %188 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @G_RAID_SUBDISK_S_NONE, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %180
  %193 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %194 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %192, %180
  %197 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %198 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @G_RAID_SUBDISK_S_FAILED, align 8
  %201 = icmp sle i64 %199, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %196
  %203 = load i32, i32* %16, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %218, label %205

205:                                              ; preds = %202
  %206 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %207 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %206, i32 0, i32 3
  %208 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %208, i64 %210
  %212 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %215 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %213, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %205, %202
  %219 = load i32, i32* %18, align 4
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %218, %205, %196
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %18, align 4
  br label %174

224:                                              ; preds = %174
  %225 = load i32, i32* %16, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %224
  %228 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %229 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @G_RAID_VOLUME_RL_CONCAT, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %246

233:                                              ; preds = %227
  %234 = load i32, i32* %14, align 4
  %235 = mul nsw i32 %234, 512
  %236 = load i32, i32* %15, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %240 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %241 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %240)
  %242 = load i32, i32* %14, align 4
  %243 = mul nsw i32 %242, 512
  %244 = load i32, i32* %15, align 4
  %245 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %239, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %241, i32 %243, i32 %244)
  store i32 -1, i32* %16, align 4
  br label %246

246:                                              ; preds = %238, %233, %227, %224
  %247 = load i32, i32* %16, align 4
  %248 = icmp sge i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %246
  %250 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %251 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @G_RAID_VOLUME_RL_CONCAT, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load i32, i32* %15, align 4
  %257 = sdiv i32 %256, 512
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %255, %249
  %259 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %260 = load i32, i32* %16, align 4
  %261 = call i32 @promise_meta_translate_disk(%struct.g_raid_volume* %259, i32 %260)
  store i32 %261, i32* %17, align 4
  br label %273

262:                                              ; preds = %246
  br label %263

263:                                              ; preds = %262, %167, %141
  %264 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %265 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %270 = load i32, i32* @G_RAID_DISK_S_SPARE, align 4
  %271 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %269, i32 %270)
  br label %272

272:                                              ; preds = %268, %263
  store i32 0, i32* %4, align 4
  br label %547

273:                                              ; preds = %258
  %274 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %275 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %276 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %275)
  %277 = load i32, i32* %16, align 4
  %278 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %279 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %274, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %276, i32 %277, i32 %280)
  store i32 1, i32* %19, align 4
  br label %282

282:                                              ; preds = %273, %52
  %283 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %284 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %283, i32 0, i32 3
  %285 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %284, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %285, i64 %287
  store %struct.g_raid_subdisk* %288, %struct.g_raid_subdisk** %9, align 8
  %289 = load i32, i32* %19, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %309

291:                                              ; preds = %282
  %292 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %293 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %292, i32 0, i32 4
  %294 = load %struct.g_raid_disk*, %struct.g_raid_disk** %293, align 8
  %295 = icmp ne %struct.g_raid_disk* %294, null
  br i1 %295, label %296, label %309

296:                                              ; preds = %291
  %297 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %298 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %297, i32 0, i32 4
  %299 = load %struct.g_raid_disk*, %struct.g_raid_disk** %298, align 8
  %300 = load i32, i32* @G_RAID_DISK_S_STALE_FAILED, align 4
  %301 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %299, i32 %300)
  %302 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %303 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %302, i32 0, i32 4
  %304 = load %struct.g_raid_disk*, %struct.g_raid_disk** %303, align 8
  %305 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %304, i32 0, i32 0
  %306 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %307 = load i32, i32* @sd_next, align 4
  %308 = call i32 @TAILQ_REMOVE(i32* %305, %struct.g_raid_subdisk* %306, i32 %307)
  br label %309

309:                                              ; preds = %296, %291, %282
  %310 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %311 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %312 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %311, i32 0, i32 3
  %313 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %312, align 8
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %313, i64 %315
  %317 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %316, i32 0, i32 4
  store %struct.g_raid_disk* %310, %struct.g_raid_disk** %317, align 8
  %318 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %319 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %318, i32 0, i32 0
  %320 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %321 = load i32, i32* @sd_next, align 4
  %322 = call i32 @TAILQ_INSERT_TAIL(i32* %319, %struct.g_raid_subdisk* %320, i32 %321)
  %323 = load i32, i32* %19, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %309
  %326 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %327 = load i32, i32* @G_RAID_DISK_S_ACTIVE, align 4
  %328 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %326, i32 %327)
  br label %350

329:                                              ; preds = %309
  %330 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %331 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %330, i32 0, i32 2
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = load i32, i32* %17, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @PROMISE_F_DOWN, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %329
  %342 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %343 = load i32, i32* @G_RAID_DISK_S_FAILED, align 4
  %344 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %342, i32 %343)
  br label %349

345:                                              ; preds = %329
  %346 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %347 = load i32, i32* @G_RAID_DISK_S_ACTIVE, align 4
  %348 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %346, i32 %347)
  br label %349

349:                                              ; preds = %345, %341
  br label %350

350:                                              ; preds = %349, %325
  %351 = load i32, i32* %19, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %350
  %354 = load i32, i32* %13, align 4
  %355 = mul nsw i32 %354, 512
  %356 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %357 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %356, i32 0, i32 2
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* %14, align 4
  %359 = mul nsw i32 %358, 512
  %360 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %361 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 8
  br label %411

362:                                              ; preds = %350
  %363 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %364 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %363, i32 0, i32 1
  %365 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %364, align 8
  %366 = load i32, i32* %6, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %365, i64 %367
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 6
  %371 = load i64, i64* %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = shl i32 %372, 32
  %374 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %375 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %374, i32 0, i32 1
  %376 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %375, align 8
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %376, i64 %378
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %373, %382
  %384 = mul nsw i32 %383, 512
  %385 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %386 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 4
  %387 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %388 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %387, i32 0, i32 1
  %389 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %388, align 8
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %389, i64 %391
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 5
  %395 = load i64, i64* %394, align 8
  %396 = trunc i64 %395 to i32
  %397 = shl i32 %396, 32
  %398 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %399 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %398, i32 0, i32 1
  %400 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %399, align 8
  %401 = load i32, i32* %6, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %400, i64 %402
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %397, %406
  %408 = mul nsw i32 %407, 512
  %409 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %410 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %409, i32 0, i32 1
  store i32 %408, i32* %410, align 8
  br label %411

411:                                              ; preds = %362, %353
  %412 = load i32, i32* %19, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %411
  %415 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %416 = load i64, i64* @G_RAID_SUBDISK_S_NEW, align 8
  %417 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %415, i64 %416)
  br label %541

418:                                              ; preds = %411
  %419 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %420 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %419, i32 0, i32 2
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %420, align 8
  %422 = load i32, i32* %17, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @PROMISE_F_DOWN, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %418
  %431 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %432 = load i64, i64* @G_RAID_SUBDISK_S_FAILED, align 8
  %433 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %431, i64 %432)
  br label %540

434:                                              ; preds = %418
  %435 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %436 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %435, i32 0, i32 2
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %436, align 8
  %438 = load i32, i32* %17, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @PROMISE_F_REDIR, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %492

446:                                              ; preds = %434
  %447 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %448 = load i64, i64* @G_RAID_SUBDISK_S_REBUILD, align 8
  %449 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %447, i64 %448)
  %450 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %451 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %450, i32 0, i32 1
  %452 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %451, align 8
  %453 = load i32, i32* %6, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %452, i64 %454
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %456, i32 0, i32 2
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %460 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %458, %461
  br i1 %462, label %463, label %466

463:                                              ; preds = %446
  %464 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %465 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %464, i32 0, i32 3
  store i32 0, i32* %465, align 8
  br label %491

466:                                              ; preds = %446
  %467 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %468 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %467, i32 0, i32 1
  %469 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %468, align 8
  %470 = load i32, i32* %6, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %469, i64 %471
  %473 = load %struct.TYPE_11__*, %struct.TYPE_11__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i32 0, i32 4
  %475 = load i64, i64* %474, align 8
  %476 = trunc i64 %475 to i32
  %477 = shl i32 %476, 32
  %478 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %479 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %478, i32 0, i32 1
  %480 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %479, align 8
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %480, i64 %482
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 8
  %487 = add nsw i32 %477, %486
  %488 = mul nsw i32 %487, 512
  %489 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %490 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %489, i32 0, i32 3
  store i32 %488, i32* %490, align 8
  br label %491

491:                                              ; preds = %466, %463
  br label %539

492:                                              ; preds = %434
  %493 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %494 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %493, i32 0, i32 2
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %494, align 8
  %496 = load i32, i32* %17, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @PROMISE_F_ONLINE, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %508, label %504

504:                                              ; preds = %492
  %505 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %506 = load i64, i64* @G_RAID_SUBDISK_S_NEW, align 8
  %507 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %505, i64 %506)
  br label %538

508:                                              ; preds = %492
  %509 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %10, align 8
  %510 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %509, i32 0, i32 1
  %511 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %510, align 8
  %512 = load i32, i32* %6, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %511, i64 %513
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 2
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %519 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = icmp ne i64 %517, %520
  br i1 %521, label %529, label %522

522:                                              ; preds = %508
  %523 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %12, align 8
  %524 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* @PROMISE_S_MARKED, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %533

529:                                              ; preds = %522, %508
  %530 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %531 = load i64, i64* @G_RAID_SUBDISK_S_STALE, align 8
  %532 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %530, i64 %531)
  br label %537

533:                                              ; preds = %522
  %534 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %535 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %536 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %534, i64 %535)
  br label %537

537:                                              ; preds = %533, %529
  br label %538

538:                                              ; preds = %537, %504
  br label %539

539:                                              ; preds = %538, %491
  br label %540

540:                                              ; preds = %539, %430
  br label %541

541:                                              ; preds = %540, %414
  %542 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %9, align 8
  %543 = load i32, i32* @G_RAID_SUBDISK_E_NEW, align 4
  %544 = load i32, i32* @G_RAID_EVENT_SUBDISK, align 4
  %545 = call i32 @g_raid_event_send(%struct.g_raid_subdisk* %542, i32 %543, i32 %544)
  %546 = load i32, i32* %19, align 4
  store i32 %546, i32* %4, align 4
  br label %547

547:                                              ; preds = %541, %272, %79
  %548 = load i32, i32* %4, align 4
  ret i32 %548
}

declare dso_local i32 @promise_meta_find_disk(%struct.promise_raid_conf*, i32) #1

declare dso_local i32 @promise_meta_translate_disk(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, ...) #1

declare dso_local i32 @g_raid_get_diskname(%struct.g_raid_disk*) #1

declare dso_local i32 @g_raid_change_disk_state(%struct.g_raid_disk*, i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @promise_meta_unused_range(%struct.TYPE_11__**, i32, i32, i32*, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_raid_subdisk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_raid_subdisk*, i32) #1

declare dso_local i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk*, i64) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_subdisk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
