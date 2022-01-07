; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_ddf_start_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_ddf_start_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.g_raid_disk = type { i64, i32, i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i64 }
%struct.g_raid_volume = type { i32, i32, i64, %struct.g_raid_subdisk*, %struct.g_raid_md_ddf_pervolume* }
%struct.g_raid_subdisk = type { i64, i32, i32, i64, %struct.g_raid_disk* }
%struct.g_raid_md_ddf_pervolume = type { i32, %struct.ddf_vol_meta }
%struct.ddf_vol_meta = type { i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.g_raid_md_ddf_perdisk = type { %struct.ddf_vol_meta }
%struct.g_raid_md_ddf_object = type { %struct.ddf_vol_meta }
%struct.ddf_meta = type { i32, %struct.TYPE_9__*, i32* }
%struct.ddf_vdc_record = type { i32, i32*, i32 }
%struct.ddf_sa_record = type { i32, i32 }

@pdd = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Disk %s is not a present part of the volume %s\00", align 1
@pdr = common dso_local global %struct.TYPE_12__* null, align 8
@DDF_PDE_PFA = common dso_local global i32 0, align 4
@G_RAID_DISK_S_STALE_FAILED = common dso_local global i32 0, align 4
@hdr = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"No free partitions on disk %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"No free space on disk %s\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_NONE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_FAILED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_CONCAT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Disk %s free space is too small (%ju < %ju)\00", align 1
@vdc = common dso_local global %struct.TYPE_11__* null, align 8
@G_RAID_DISK_S_NONE = common dso_local global i64 0, align 8
@G_RAID_DISK_S_STALE = common dso_local global i32 0, align 4
@DDF_SAR_TYPE_REVERTIBLE = common dso_local global i32 0, align 4
@DDF_SAR_TYPE_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Disk %s takes pos %d in the volume %s\00", align 1
@sd_next = common dso_local global i32 0, align 4
@G_RAID_DISK_S_ACTIVE = common dso_local global i32 0, align 4
@G_RAID_DISK_S_FAILED = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_NEW = common dso_local global i64 0, align 8
@DDF_PDE_FAILED = common dso_local global i32 0, align 4
@DDF_PDE_REBUILD = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_REBUILD = common dso_local global i64 0, align 8
@vde = common dso_local global %struct.TYPE_10__* null, align 8
@DDF_VDE_DIRTY = common dso_local global i32 0, align 4
@DDF_VDE_INIT_MASK = common dso_local global i32 0, align 4
@DDF_VDE_INIT_FULL = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_STALE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_E_NEW = common dso_local global i32 0, align 4
@G_RAID_EVENT_SUBDISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_disk*, %struct.g_raid_volume*)* @g_raid_md_ddf_start_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_ddf_start_disk(%struct.g_raid_disk* %0, %struct.g_raid_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid_disk*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_softc*, align 8
  %7 = alloca %struct.g_raid_subdisk*, align 8
  %8 = alloca %struct.g_raid_md_ddf_perdisk*, align 8
  %9 = alloca %struct.g_raid_md_ddf_pervolume*, align 8
  %10 = alloca %struct.g_raid_md_ddf_object*, align 8
  %11 = alloca %struct.ddf_vol_meta*, align 8
  %12 = alloca %struct.ddf_meta*, align 8
  %13 = alloca %struct.ddf_meta*, align 8
  %14 = alloca %struct.ddf_vdc_record*, align 8
  %15 = alloca %struct.ddf_sa_record*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.g_raid_disk* %0, %struct.g_raid_disk** %4, align 8
  store %struct.g_raid_volume* %1, %struct.g_raid_volume** %5, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %25, align 4
  %27 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %28 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %27, i32 0, i32 3
  %29 = load %struct.g_raid_softc*, %struct.g_raid_softc** %28, align 8
  store %struct.g_raid_softc* %29, %struct.g_raid_softc** %6, align 8
  %30 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %31 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.g_raid_md_ddf_object*
  store %struct.g_raid_md_ddf_object* %33, %struct.g_raid_md_ddf_object** %10, align 8
  %34 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %35 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.g_raid_md_ddf_perdisk*
  store %struct.g_raid_md_ddf_perdisk* %37, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %38 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %39 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %38, i32 0, i32 0
  %40 = bitcast %struct.ddf_vol_meta* %39 to %struct.ddf_meta*
  store %struct.ddf_meta* %40, %struct.ddf_meta** %12, align 8
  %41 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %42 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pdd, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GET32(%struct.ddf_vol_meta* %42, i32 %45)
  store i32 %46, i32* %26, align 4
  %47 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %48 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %47, i32 0, i32 4
  %49 = load %struct.g_raid_md_ddf_pervolume*, %struct.g_raid_md_ddf_pervolume** %48, align 8
  store %struct.g_raid_md_ddf_pervolume* %49, %struct.g_raid_md_ddf_pervolume** %9, align 8
  %50 = load %struct.g_raid_md_ddf_pervolume*, %struct.g_raid_md_ddf_pervolume** %9, align 8
  %51 = getelementptr inbounds %struct.g_raid_md_ddf_pervolume, %struct.g_raid_md_ddf_pervolume* %50, i32 0, i32 1
  store %struct.ddf_vol_meta* %51, %struct.ddf_vol_meta** %11, align 8
  %52 = load %struct.g_raid_md_ddf_object*, %struct.g_raid_md_ddf_object** %10, align 8
  %53 = getelementptr inbounds %struct.g_raid_md_ddf_object, %struct.g_raid_md_ddf_object* %52, i32 0, i32 0
  %54 = bitcast %struct.ddf_vol_meta* %53 to %struct.ddf_meta*
  store %struct.ddf_meta* %54, %struct.ddf_meta** %13, align 8
  %55 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %56 = load i32, i32* %26, align 4
  %57 = call i32 @ddf_meta_find_disk(%struct.ddf_vol_meta* %55, i32 %56, i32* %21, i32* %22)
  store i32 %57, i32* %20, align 4
  %58 = load %struct.ddf_meta*, %struct.ddf_meta** %13, align 8
  %59 = bitcast %struct.ddf_meta* %58 to %struct.ddf_vol_meta*
  %60 = load i32, i32* %26, align 4
  %61 = call i32 @ddf_meta_find_pd(%struct.ddf_vol_meta* %59, i32* null, i32 %60)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %310

64:                                               ; preds = %2
  %65 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %66 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %67 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %66)
  %68 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %69 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.ddf_meta*, %struct.ddf_meta** %13, align 8
  %73 = bitcast %struct.ddf_meta* %72 to %struct.ddf_vol_meta*
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pdr, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load i32, i32* %23, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @GET16(%struct.ddf_vol_meta* %73, i32 %81)
  %83 = load i32, i32* @DDF_PDE_PFA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %64
  %87 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %88 = load i32, i32* @G_RAID_DISK_S_STALE_FAILED, align 4
  %89 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %87, i32 %88)
  store i32 0, i32* %3, align 4
  br label %524

90:                                               ; preds = %64
  %91 = load %struct.ddf_meta*, %struct.ddf_meta** %12, align 8
  %92 = bitcast %struct.ddf_meta* %91 to %struct.ddf_vol_meta*
  %93 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %94 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.ddf_vdc_record* @ddf_meta_find_vdc(%struct.ddf_vol_meta* %92, i32 %97)
  store %struct.ddf_vdc_record* %98, %struct.ddf_vdc_record** %14, align 8
  %99 = icmp ne %struct.ddf_vdc_record* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load %struct.ddf_meta*, %struct.ddf_meta** %12, align 8
  %102 = bitcast %struct.ddf_meta* %101 to %struct.ddf_vol_meta*
  %103 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %14, align 8
  %104 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @SET32D(%struct.ddf_vol_meta* %102, i32 %105, i32 -1)
  br label %107

107:                                              ; preds = %100, %90
  %108 = load %struct.g_raid_md_ddf_pervolume*, %struct.g_raid_md_ddf_pervolume** %9, align 8
  %109 = getelementptr inbounds %struct.g_raid_md_ddf_pervolume, %struct.g_raid_md_ddf_pervolume* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %251

113:                                              ; preds = %107
  %114 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %115 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %114, i32 0, i32 0
  %116 = call i32 @ddf_meta_count_vdc(%struct.ddf_vol_meta* %115, i32* null)
  %117 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %118 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hdr, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @GET16(%struct.ddf_vol_meta* %118, i32 %121)
  %123 = icmp sge i32 %116, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %126 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %127 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %126)
  %128 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %251

129:                                              ; preds = %113
  %130 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %131 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %130, i32 0, i32 0
  %132 = call i32 @ddf_meta_unused_range(%struct.ddf_vol_meta* %131, i32* %17, i32* %18)
  %133 = load i32, i32* %18, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %137 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %138 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %137)
  %139 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %251

140:                                              ; preds = %129
  %141 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %142 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = mul nsw i32 %145, %144
  store i32 %146, i32* %17, align 4
  %147 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %148 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = mul nsw i32 %151, %150
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* @INT64_MAX, align 4
  store i32 %153, i32* %16, align 4
  store i32 0, i32* %24, align 4
  br label %154

154:                                              ; preds = %201, %140
  %155 = load i32, i32* %24, align 4
  %156 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %157 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %204

160:                                              ; preds = %154
  %161 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %162 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %161, i32 0, i32 3
  %163 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %162, align 8
  %164 = load i32, i32* %24, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %163, i64 %165
  store %struct.g_raid_subdisk* %166, %struct.g_raid_subdisk** %7, align 8
  %167 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %168 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @G_RAID_SUBDISK_S_NONE, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %174 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %172, %160
  %177 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %178 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @G_RAID_SUBDISK_S_FAILED, align 8
  %181 = icmp sle i64 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %176
  %183 = load i32, i32* %20, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %198, label %185

185:                                              ; preds = %182
  %186 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %187 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %186, i32 0, i32 3
  %188 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %187, align 8
  %189 = load i32, i32* %24, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %188, i64 %190
  %192 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %195 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %193, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %185, %182
  %199 = load i32, i32* %24, align 4
  store i32 %199, i32* %20, align 4
  br label %200

200:                                              ; preds = %198, %185, %176
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %24, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %24, align 4
  br label %154

204:                                              ; preds = %154
  %205 = load i32, i32* %20, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %204
  %208 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %209 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @G_RAID_VOLUME_RL_CONCAT, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %16, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %219 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %220 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %219)
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %218, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %220, i32 %221, i32 %222)
  store i32 -1, i32* %20, align 4
  br label %224

224:                                              ; preds = %217, %213, %207, %204
  %225 = load i32, i32* %20, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %224
  %228 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %229 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @G_RAID_VOLUME_RL_CONCAT, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %16, align 4
  store i32 %234, i32* %18, align 4
  br label %235

235:                                              ; preds = %233, %227
  %236 = load i32, i32* %20, align 4
  %237 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vdc, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @GET16(%struct.ddf_vol_meta* %237, i32 %240)
  %242 = sdiv i32 %236, %241
  store i32 %242, i32* %21, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vdc, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @GET16(%struct.ddf_vol_meta* %244, i32 %247)
  %249 = srem i32 %243, %248
  store i32 %249, i32* %22, align 4
  br label %262

250:                                              ; preds = %224
  br label %251

251:                                              ; preds = %250, %135, %124, %112
  %252 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %253 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @G_RAID_DISK_S_NONE, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %251
  %258 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %259 = load i32, i32* @G_RAID_DISK_S_STALE, align 4
  %260 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %258, i32 %259)
  br label %261

261:                                              ; preds = %257, %251
  store i32 0, i32* %3, align 4
  br label %524

262:                                              ; preds = %235
  %263 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %264 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %263, i32 0, i32 0
  %265 = call %struct.ddf_sa_record* @ddf_meta_find_sa(%struct.ddf_vol_meta* %264, i32 0)
  store %struct.ddf_sa_record* %265, %struct.ddf_sa_record** %15, align 8
  %266 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %15, align 8
  %267 = icmp ne %struct.ddf_sa_record* %266, null
  br i1 %267, label %268, label %301

268:                                              ; preds = %262
  %269 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %270 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %269, i32 0, i32 0
  %271 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %15, align 8
  %272 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @GET8D(%struct.ddf_vol_meta* %270, i32 %273)
  %275 = load i32, i32* @DDF_SAR_TYPE_REVERTIBLE, align 4
  %276 = and i32 %274, %275
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %268
  %279 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %280 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %279, i32 0, i32 0
  %281 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %15, align 8
  %282 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @SET32D(%struct.ddf_vol_meta* %280, i32 %283, i32 -1)
  br label %300

285:                                              ; preds = %268
  %286 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %287 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %286, i32 0, i32 0
  %288 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %15, align 8
  %289 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %8, align 8
  %292 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %291, i32 0, i32 0
  %293 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %15, align 8
  %294 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @GET8D(%struct.ddf_vol_meta* %292, i32 %295)
  %297 = load i32, i32* @DDF_SAR_TYPE_ACTIVE, align 4
  %298 = or i32 %296, %297
  %299 = call i32 @SET8D(%struct.ddf_vol_meta* %287, i32 %290, i32 %298)
  br label %300

300:                                              ; preds = %285, %278
  br label %301

301:                                              ; preds = %300, %262
  %302 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %303 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %304 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %303)
  %305 = load i32, i32* %20, align 4
  %306 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %307 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 (i32, %struct.g_raid_softc*, i8*, i32, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %304, i32 %305, i32 %308)
  store i32 1, i32* %25, align 4
  br label %310

310:                                              ; preds = %301, %2
  %311 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %312 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %311, i32 0, i32 3
  %313 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %312, align 8
  %314 = load i32, i32* %20, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %313, i64 %315
  store %struct.g_raid_subdisk* %316, %struct.g_raid_subdisk** %7, align 8
  %317 = load i32, i32* %25, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %337

319:                                              ; preds = %310
  %320 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %321 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %320, i32 0, i32 4
  %322 = load %struct.g_raid_disk*, %struct.g_raid_disk** %321, align 8
  %323 = icmp ne %struct.g_raid_disk* %322, null
  br i1 %323, label %324, label %337

324:                                              ; preds = %319
  %325 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %326 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %325, i32 0, i32 4
  %327 = load %struct.g_raid_disk*, %struct.g_raid_disk** %326, align 8
  %328 = load i32, i32* @G_RAID_DISK_S_STALE_FAILED, align 4
  %329 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %327, i32 %328)
  %330 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %331 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %330, i32 0, i32 4
  %332 = load %struct.g_raid_disk*, %struct.g_raid_disk** %331, align 8
  %333 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %332, i32 0, i32 1
  %334 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %335 = load i32, i32* @sd_next, align 4
  %336 = call i32 @TAILQ_REMOVE(i32* %333, %struct.g_raid_subdisk* %334, i32 %335)
  br label %337

337:                                              ; preds = %324, %319, %310
  %338 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %339 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %340 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %339, i32 0, i32 3
  %341 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %340, align 8
  %342 = load i32, i32* %20, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %341, i64 %343
  %345 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %344, i32 0, i32 4
  store %struct.g_raid_disk* %338, %struct.g_raid_disk** %345, align 8
  %346 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %347 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %346, i32 0, i32 1
  %348 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %349 = load i32, i32* @sd_next, align 4
  %350 = call i32 @TAILQ_INSERT_TAIL(i32* %347, %struct.g_raid_subdisk* %348, i32 %349)
  %351 = load i32, i32* %25, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %337
  %354 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %355 = load i32, i32* @G_RAID_DISK_S_ACTIVE, align 4
  %356 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %354, i32 %355)
  br label %381

357:                                              ; preds = %337
  %358 = load %struct.ddf_meta*, %struct.ddf_meta** %13, align 8
  %359 = bitcast %struct.ddf_meta* %358 to %struct.ddf_vol_meta*
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pdr, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %361, align 8
  %363 = load i32, i32* %23, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @GET16(%struct.ddf_vol_meta* %359, i32 %367)
  %369 = load i32, i32* @DDF_PDE_PFA, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %357
  %373 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %374 = load i32, i32* @G_RAID_DISK_S_FAILED, align 4
  %375 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %373, i32 %374)
  br label %380

376:                                              ; preds = %357
  %377 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %378 = load i32, i32* @G_RAID_DISK_S_ACTIVE, align 4
  %379 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %377, i32 %378)
  br label %380

380:                                              ; preds = %376, %372
  br label %381

381:                                              ; preds = %380, %353
  %382 = load i32, i32* %25, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %381
  %385 = load i32, i32* %17, align 4
  %386 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %387 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %386, i32 0, i32 2
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %18, align 4
  %389 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %390 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %389, i32 0, i32 1
  store i32 %388, i32* %390, align 8
  br label %439

391:                                              ; preds = %381
  %392 = load %struct.ddf_meta*, %struct.ddf_meta** %12, align 8
  %393 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %392, i32 0, i32 2
  %394 = load i32*, i32** %393, align 8
  %395 = icmp ne i32* %394, null
  br i1 %395, label %396, label %438

396:                                              ; preds = %391
  %397 = load %struct.ddf_meta*, %struct.ddf_meta** %12, align 8
  %398 = bitcast %struct.ddf_meta* %397 to %struct.ddf_vol_meta*
  %399 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %400 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %399, i32 0, i32 1
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call %struct.ddf_vdc_record* @ddf_meta_find_vdc(%struct.ddf_vol_meta* %398, i32 %403)
  store %struct.ddf_vdc_record* %404, %struct.ddf_vdc_record** %14, align 8
  %405 = icmp ne %struct.ddf_vdc_record* %404, null
  br i1 %405, label %406, label %438

406:                                              ; preds = %396
  %407 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %14, align 8
  %408 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hdr, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @GET16(%struct.ddf_vol_meta* %410, i32 %413)
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %409, i64 %415
  store i32* %416, i32** %19, align 8
  %417 = load %struct.ddf_meta*, %struct.ddf_meta** %12, align 8
  %418 = bitcast %struct.ddf_meta* %417 to %struct.ddf_vol_meta*
  %419 = load i32*, i32** %19, align 8
  %420 = load i32, i32* %22, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = call i64 @GET64P(%struct.ddf_vol_meta* %418, i32* %422)
  %424 = trunc i64 %423 to i32
  %425 = mul nsw i32 %424, 512
  %426 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %427 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %426, i32 0, i32 2
  store i32 %425, i32* %427, align 4
  %428 = load %struct.ddf_meta*, %struct.ddf_meta** %12, align 8
  %429 = bitcast %struct.ddf_meta* %428 to %struct.ddf_vol_meta*
  %430 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %14, align 8
  %431 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = call i64 @GET64D(%struct.ddf_vol_meta* %429, i32 %432)
  %434 = trunc i64 %433 to i32
  %435 = mul nsw i32 %434, 512
  %436 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %437 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %436, i32 0, i32 1
  store i32 %435, i32* %437, align 8
  br label %438

438:                                              ; preds = %406, %396, %391
  br label %439

439:                                              ; preds = %438, %384
  %440 = load i32, i32* %25, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %439
  %443 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %444 = load i64, i64* @G_RAID_SUBDISK_S_NEW, align 8
  %445 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %443, i64 %444)
  br label %518

446:                                              ; preds = %439
  %447 = load %struct.ddf_meta*, %struct.ddf_meta** %13, align 8
  %448 = bitcast %struct.ddf_meta* %447 to %struct.ddf_vol_meta*
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pdr, align 8
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_8__*, %struct.TYPE_8__** %450, align 8
  %452 = load i32, i32* %23, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @GET16(%struct.ddf_vol_meta* %448, i32 %456)
  %458 = load i32, i32* @DDF_PDE_PFA, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %446
  %462 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %463 = load i64, i64* @G_RAID_SUBDISK_S_FAILED, align 8
  %464 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %462, i64 %463)
  br label %517

465:                                              ; preds = %446
  %466 = load %struct.ddf_meta*, %struct.ddf_meta** %13, align 8
  %467 = bitcast %struct.ddf_meta* %466 to %struct.ddf_vol_meta*
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pdr, align 8
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %469, align 8
  %471 = load i32, i32* %23, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @GET16(%struct.ddf_vol_meta* %467, i32 %475)
  %477 = load i32, i32* @DDF_PDE_FAILED, align 4
  %478 = load i32, i32* @DDF_PDE_REBUILD, align 4
  %479 = or i32 %477, %478
  %480 = and i32 %476, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %488

482:                                              ; preds = %465
  %483 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %484 = load i64, i64* @G_RAID_SUBDISK_S_REBUILD, align 8
  %485 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %483, i64 %484)
  %486 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %487 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %486, i32 0, i32 3
  store i64 0, i64* %487, align 8
  br label %516

488:                                              ; preds = %465
  %489 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %490 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vde, align 8
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @GET8(%struct.ddf_vol_meta* %489, i32 %492)
  %494 = load i32, i32* @DDF_VDE_DIRTY, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %507, label %497

497:                                              ; preds = %488
  %498 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %11, align 8
  %499 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vde, align 8
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @GET8(%struct.ddf_vol_meta* %498, i32 %501)
  %503 = load i32, i32* @DDF_VDE_INIT_MASK, align 4
  %504 = and i32 %502, %503
  %505 = load i32, i32* @DDF_VDE_INIT_FULL, align 4
  %506 = icmp ne i32 %504, %505
  br i1 %506, label %507, label %511

507:                                              ; preds = %497, %488
  %508 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %509 = load i64, i64* @G_RAID_SUBDISK_S_STALE, align 8
  %510 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %508, i64 %509)
  br label %515

511:                                              ; preds = %497
  %512 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %513 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %514 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %512, i64 %513)
  br label %515

515:                                              ; preds = %511, %507
  br label %516

516:                                              ; preds = %515, %482
  br label %517

517:                                              ; preds = %516, %461
  br label %518

518:                                              ; preds = %517, %442
  %519 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %520 = load i32, i32* @G_RAID_SUBDISK_E_NEW, align 4
  %521 = load i32, i32* @G_RAID_EVENT_SUBDISK, align 4
  %522 = call i32 @g_raid_event_send(%struct.g_raid_subdisk* %519, i32 %520, i32 %521)
  %523 = load i32, i32* %25, align 4
  store i32 %523, i32* %3, align 4
  br label %524

524:                                              ; preds = %518, %261, %86
  %525 = load i32, i32* %3, align 4
  ret i32 %525
}

declare dso_local i32 @GET32(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @ddf_meta_find_disk(%struct.ddf_vol_meta*, i32, i32*, i32*) #1

declare dso_local i32 @ddf_meta_find_pd(%struct.ddf_vol_meta*, i32*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, ...) #1

declare dso_local i32 @g_raid_get_diskname(%struct.g_raid_disk*) #1

declare dso_local i32 @GET16(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @g_raid_change_disk_state(%struct.g_raid_disk*, i32) #1

declare dso_local %struct.ddf_vdc_record* @ddf_meta_find_vdc(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @SET32D(%struct.ddf_vol_meta*, i32, i32) #1

declare dso_local i32 @ddf_meta_count_vdc(%struct.ddf_vol_meta*, i32*) #1

declare dso_local i32 @ddf_meta_unused_range(%struct.ddf_vol_meta*, i32*, i32*) #1

declare dso_local %struct.ddf_sa_record* @ddf_meta_find_sa(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @GET8D(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @SET8D(%struct.ddf_vol_meta*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_raid_subdisk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_raid_subdisk*, i32) #1

declare dso_local i64 @GET64P(%struct.ddf_vol_meta*, i32*) #1

declare dso_local i64 @GET64D(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk*, i64) #1

declare dso_local i32 @GET8(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_subdisk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
