; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_iodone_raid1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_iodone_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_subdisk = type { i64, i64, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32, i64, i32, i64, i32, i32, i32, i64, i32, %struct.g_raid_subdisk*, %struct.g_raid_subdisk*, i32, %struct.bio* }
%struct.g_raid_tr_raid1_object = type { i64, i32, i64, i64, i64, %struct.g_raid_subdisk* }

@G_RAID_BIO_FLAG_SYNC = common dso_local global i32 0, align 4
@TR_RAID1_REBUILD = common dso_local global i64 0, align 8
@BIO_READ = common dso_local global i64 0, align 8
@TR_RAID1_F_ABORT = common dso_local global i32 0, align 4
@TR_RAID1_F_DOING_SOME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Read error during rebuild (%d), possible data loss!\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"rebuild read done. %d\00", align 1
@BIO_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Queueing rebuild write.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"rebuild write done. Error %d\00", align 1
@TR_RAID1_F_LOCKED = common dso_local global i32 0, align 4
@g_raid1_rebuild_meta_update = common dso_local global i64 0, align 8
@TR_RAID1_RESYNC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Somehow, we think we're doing a resync\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Read error (%d), %d read errors total\00", align 1
@g_raid_read_err_thresh = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Retrying read from %d\00", align 1
@G_RAID_BIO_FLAG_LOCKED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Couldn't retry read, failing it\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Recovered data from other drive\00", align 1
@G_RAID_BIO_FLAG_REMAP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"Attempting bad sector remap on failing drive.\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Remap write failed: failing subdisk.\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"REMAP done %d.\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Write failed: failing subdisk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.g_raid_subdisk*, %struct.bio*)* @g_raid_tr_iodone_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iodone_raid1(%struct.g_raid_tr_object* %0, %struct.g_raid_subdisk* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.g_raid_tr_object*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.g_raid_subdisk*, align 8
  %9 = alloca %struct.g_raid_volume*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.g_raid_tr_raid1_object*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %4, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %15 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %16 = bitcast %struct.g_raid_tr_object* %15 to %struct.g_raid_tr_raid1_object*
  store %struct.g_raid_tr_raid1_object* %16, %struct.g_raid_tr_raid1_object** %11, align 8
  %17 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %18 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %17, i32 0, i32 0
  %19 = load %struct.g_raid_volume*, %struct.g_raid_volume** %18, align 8
  store %struct.g_raid_volume* %19, %struct.g_raid_volume** %9, align 8
  %20 = load %struct.bio*, %struct.bio** %6, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @G_RAID_BIO_FLAG_SYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %227

26:                                               ; preds = %3
  %27 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %28 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TR_RAID1_REBUILD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %217

32:                                               ; preds = %26
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BIO_READ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %32
  %39 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %40 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TR_RAID1_F_ABORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %49 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %53 = call i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object* %52)
  br label %544

54:                                               ; preds = %38
  %55 = load %struct.bio*, %struct.bio** %6, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.bio*, %struct.bio** %6, align 8
  %61 = load %struct.bio*, %struct.bio** %6, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 0, %struct.bio* %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %130

65:                                               ; preds = %54
  %66 = load %struct.bio*, %struct.bio** %6, align 8
  %67 = load %struct.bio*, %struct.bio** %6, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 4, %struct.bio* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* @BIO_WRITE, align 8
  %72 = load %struct.bio*, %struct.bio** %6, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @G_RAID_BIO_FLAG_SYNC, align 4
  %75 = load %struct.bio*, %struct.bio** %6, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bio*, %struct.bio** %6, align 8
  %78 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 4, %struct.bio* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %80 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %79, i32 0, i32 5
  %81 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %80, align 8
  %82 = load %struct.bio*, %struct.bio** %6, align 8
  %83 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %81, %struct.bio* %82)
  br label %216

84:                                               ; preds = %32
  %85 = load %struct.bio*, %struct.bio** %6, align 8
  %86 = load %struct.bio*, %struct.bio** %6, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 4, %struct.bio* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %91 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %90, i32 0, i32 5
  %92 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %91, align 8
  store %struct.g_raid_subdisk* %92, %struct.g_raid_subdisk** %8, align 8
  %93 = load %struct.bio*, %struct.bio** %6, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %84
  %98 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %99 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TR_RAID1_F_ABORT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %97, %84
  %105 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %106 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TR_RAID1_F_ABORT, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %113 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %116 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %117 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = call i32 @g_raid_tr_raid1_fail_disk(i32 %114, %struct.g_raid_subdisk* %115, %struct.TYPE_3__* %118)
  br label %120

120:                                              ; preds = %111, %104
  %121 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %124 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %128 = call i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object* %127)
  br label %544

129:                                              ; preds = %97
  br label %130

130:                                              ; preds = %129, %59
  %131 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %132 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %131, i32 0, i32 5
  %133 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %132, align 8
  store %struct.g_raid_subdisk* %133, %struct.g_raid_subdisk** %8, align 8
  %134 = load i32, i32* @TR_RAID1_F_LOCKED, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %137 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %141 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.bio*, %struct.bio** %6, align 8
  %144 = getelementptr inbounds %struct.bio, %struct.bio* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.bio*, %struct.bio** %6, align 8
  %147 = getelementptr inbounds %struct.bio, %struct.bio* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @g_raid_unlock_range(i32 %142, i32 %145, i64 %148)
  %150 = load %struct.bio*, %struct.bio** %6, align 8
  %151 = getelementptr inbounds %struct.bio, %struct.bio* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %154 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, %152
  store i64 %156, i64* %154, align 8
  %157 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %158 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %161 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp sge i64 %159, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %130
  %165 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %166 = call i32 @g_raid_tr_raid1_rebuild_finish(%struct.g_raid_tr_object* %165)
  br label %544

167:                                              ; preds = %130
  %168 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %169 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %176 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %180 = call i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object* %179)
  br label %544

181:                                              ; preds = %167
  %182 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %183 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, -1
  store i64 %185, i64* %183, align 8
  %186 = icmp sle i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %181
  %188 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %189 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %192 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %193 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %194 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %193, i32 0, i32 3
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = call i32 @g_raid_write_metadata(i32 %190, %struct.g_raid_volume* %191, %struct.g_raid_subdisk* %192, %struct.TYPE_3__* %195)
  %197 = load i64, i64* @g_raid1_rebuild_meta_update, align 8
  %198 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %199 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %198, i32 0, i32 2
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %187, %181
  %201 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %204 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %208 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, -1
  store i64 %210, i64* %208, align 8
  %211 = icmp sle i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %200
  br label %544

213:                                              ; preds = %200
  %214 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %215 = call i32 @g_raid_tr_raid1_rebuild_some(%struct.g_raid_tr_object* %214)
  br label %216

216:                                              ; preds = %213, %65
  br label %226

217:                                              ; preds = %26
  %218 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %11, align 8
  %219 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @TR_RAID1_RESYNC, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %217
  br label %226

226:                                              ; preds = %225, %216
  br label %544

227:                                              ; preds = %3
  %228 = load %struct.bio*, %struct.bio** %6, align 8
  %229 = getelementptr inbounds %struct.bio, %struct.bio* %228, i32 0, i32 12
  %230 = load %struct.bio*, %struct.bio** %229, align 8
  store %struct.bio* %230, %struct.bio** %10, align 8
  %231 = load %struct.bio*, %struct.bio** %10, align 8
  %232 = getelementptr inbounds %struct.bio, %struct.bio* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 8
  %235 = load %struct.bio*, %struct.bio** %6, align 8
  %236 = getelementptr inbounds %struct.bio, %struct.bio* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @BIO_READ, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %369

240:                                              ; preds = %227
  %241 = load %struct.bio*, %struct.bio** %6, align 8
  %242 = getelementptr inbounds %struct.bio, %struct.bio* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %369

245:                                              ; preds = %240
  %246 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %247 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %246, i32 0, i32 3
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load %struct.bio*, %struct.bio** %6, align 8
  %253 = load %struct.bio*, %struct.bio** %6, align 8
  %254 = getelementptr inbounds %struct.bio, %struct.bio* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %257 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %256, i32 0, i32 3
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 0, %struct.bio* %252, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %255, i32 %260)
  store i32 1, i32* %14, align 4
  %262 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %263 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %262, i32 0, i32 3
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @g_raid_read_err_thresh, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %284

269:                                              ; preds = %245
  %270 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %271 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %274 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %275 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %274, i32 0, i32 3
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %275, align 8
  %277 = call i32 @g_raid_tr_raid1_fail_disk(i32 %272, %struct.g_raid_subdisk* %273, %struct.TYPE_3__* %276)
  %278 = load %struct.bio*, %struct.bio** %10, align 8
  %279 = getelementptr inbounds %struct.bio, %struct.bio* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %283

282:                                              ; preds = %269
  store i32 0, i32* %14, align 4
  br label %283

283:                                              ; preds = %282, %269
  br label %284

284:                                              ; preds = %283, %245
  %285 = load %struct.bio*, %struct.bio** %10, align 8
  %286 = getelementptr inbounds %struct.bio, %struct.bio* %285, i32 0, i32 11
  %287 = bitcast i32* %286 to i64*
  store i64* %287, i64** %12, align 8
  %288 = load %struct.bio*, %struct.bio** %10, align 8
  %289 = getelementptr inbounds %struct.bio, %struct.bio* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %303

292:                                              ; preds = %284
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  br label %298

297:                                              ; preds = %292
  br label %298

298:                                              ; preds = %297, %295
  %299 = phi %struct.g_raid_subdisk* [ %296, %295 ], [ null, %297 ]
  %300 = load %struct.bio*, %struct.bio** %10, align 8
  %301 = getelementptr inbounds %struct.bio, %struct.bio* %300, i32 0, i32 9
  store %struct.g_raid_subdisk* %299, %struct.g_raid_subdisk** %301, align 8
  %302 = load i64*, i64** %12, align 8
  store i64 0, i64* %302, align 8
  br label %303

303:                                              ; preds = %298, %284
  %304 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %305 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = shl i32 1, %306
  %308 = sext i32 %307 to i64
  %309 = load i64*, i64** %12, align 8
  %310 = load i64, i64* %309, align 8
  %311 = or i64 %310, %308
  store i64 %311, i64* %309, align 8
  %312 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %313 = load %struct.bio*, %struct.bio** %10, align 8
  %314 = load i64*, i64** %12, align 8
  %315 = load i64, i64* %314, align 8
  %316 = call %struct.g_raid_subdisk* @g_raid_tr_raid1_select_read_disk(%struct.g_raid_volume* %312, %struct.bio* %313, i64 %315)
  store %struct.g_raid_subdisk* %316, %struct.g_raid_subdisk** %8, align 8
  %317 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %318 = icmp ne %struct.g_raid_subdisk* %317, null
  br i1 %318, label %319, label %366

319:                                              ; preds = %303
  %320 = load %struct.bio*, %struct.bio** %10, align 8
  %321 = call %struct.bio* @g_clone_bio(%struct.bio* %320)
  store %struct.bio* %321, %struct.bio** %7, align 8
  %322 = icmp ne %struct.bio* %321, null
  br i1 %322, label %323, label %366

323:                                              ; preds = %319
  %324 = load %struct.bio*, %struct.bio** %6, align 8
  %325 = call i32 @g_destroy_bio(%struct.bio* %324)
  %326 = load %struct.bio*, %struct.bio** %7, align 8
  %327 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %328 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 2, %struct.bio* %326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %329)
  %331 = load %struct.bio*, %struct.bio** %10, align 8
  %332 = getelementptr inbounds %struct.bio, %struct.bio* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 2
  br i1 %334, label %335, label %361

335:                                              ; preds = %323
  %336 = load i32, i32* %14, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %361

338:                                              ; preds = %335
  %339 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %340 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 8
  %343 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %344 = load %struct.bio*, %struct.bio** %7, align 8
  %345 = getelementptr inbounds %struct.bio, %struct.bio* %344, i32 0, i32 10
  store %struct.g_raid_subdisk* %343, %struct.g_raid_subdisk** %345, align 8
  %346 = load i32, i32* @G_RAID_BIO_FLAG_LOCKED, align 4
  %347 = load %struct.bio*, %struct.bio** %10, align 8
  %348 = getelementptr inbounds %struct.bio, %struct.bio* %347, i32 0, i32 6
  store i32 %346, i32* %348, align 8
  %349 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %350 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.bio*, %struct.bio** %7, align 8
  %353 = getelementptr inbounds %struct.bio, %struct.bio* %352, i32 0, i32 8
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.bio*, %struct.bio** %7, align 8
  %356 = getelementptr inbounds %struct.bio, %struct.bio* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.bio*, %struct.bio** %10, align 8
  %359 = load %struct.bio*, %struct.bio** %7, align 8
  %360 = call i32 @g_raid_lock_range(i32 %351, i32 %354, i64 %357, %struct.bio* %358, %struct.bio* %359)
  br label %365

361:                                              ; preds = %335, %323
  %362 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %363 = load %struct.bio*, %struct.bio** %7, align 8
  %364 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %362, %struct.bio* %363)
  br label %365

365:                                              ; preds = %361, %338
  br label %544

366:                                              ; preds = %319, %303
  %367 = load %struct.bio*, %struct.bio** %6, align 8
  %368 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 2, %struct.bio* %367, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %369

369:                                              ; preds = %366, %240, %227
  %370 = load %struct.bio*, %struct.bio** %6, align 8
  %371 = getelementptr inbounds %struct.bio, %struct.bio* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @BIO_READ, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %414

375:                                              ; preds = %369
  %376 = load %struct.bio*, %struct.bio** %6, align 8
  %377 = getelementptr inbounds %struct.bio, %struct.bio* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %414

380:                                              ; preds = %375
  %381 = load %struct.bio*, %struct.bio** %10, align 8
  %382 = getelementptr inbounds %struct.bio, %struct.bio* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 4
  %384 = icmp sgt i32 %383, 1
  br i1 %384, label %385, label %414

385:                                              ; preds = %380
  %386 = load %struct.bio*, %struct.bio** %10, align 8
  %387 = getelementptr inbounds %struct.bio, %struct.bio* %386, i32 0, i32 9
  %388 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %387, align 8
  %389 = icmp ne %struct.g_raid_subdisk* %388, null
  br i1 %389, label %390, label %414

390:                                              ; preds = %385
  %391 = load %struct.bio*, %struct.bio** %6, align 8
  %392 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 3, %struct.bio* %391, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %393 = load %struct.bio*, %struct.bio** %10, align 8
  %394 = call %struct.bio* @g_clone_bio(%struct.bio* %393)
  store %struct.bio* %394, %struct.bio** %7, align 8
  %395 = load %struct.bio*, %struct.bio** %7, align 8
  %396 = icmp ne %struct.bio* %395, null
  br i1 %396, label %397, label %413

397:                                              ; preds = %390
  %398 = load %struct.bio*, %struct.bio** %6, align 8
  %399 = call i32 @g_destroy_bio(%struct.bio* %398)
  %400 = load i64, i64* @BIO_WRITE, align 8
  %401 = load %struct.bio*, %struct.bio** %7, align 8
  %402 = getelementptr inbounds %struct.bio, %struct.bio* %401, i32 0, i32 1
  store i64 %400, i64* %402, align 8
  %403 = load i32, i32* @G_RAID_BIO_FLAG_REMAP, align 4
  %404 = load %struct.bio*, %struct.bio** %7, align 8
  %405 = getelementptr inbounds %struct.bio, %struct.bio* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 8
  %406 = load %struct.bio*, %struct.bio** %7, align 8
  %407 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 2, %struct.bio* %406, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %408 = load %struct.bio*, %struct.bio** %10, align 8
  %409 = getelementptr inbounds %struct.bio, %struct.bio* %408, i32 0, i32 9
  %410 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %409, align 8
  %411 = load %struct.bio*, %struct.bio** %7, align 8
  %412 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %410, %struct.bio* %411)
  br label %544

413:                                              ; preds = %390
  br label %414

414:                                              ; preds = %413, %385, %380, %375, %369
  %415 = load %struct.bio*, %struct.bio** %10, align 8
  %416 = getelementptr inbounds %struct.bio, %struct.bio* %415, i32 0, i32 6
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @G_RAID_BIO_FLAG_LOCKED, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %473

421:                                              ; preds = %414
  %422 = load %struct.bio*, %struct.bio** %6, align 8
  %423 = getelementptr inbounds %struct.bio, %struct.bio* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @BIO_WRITE, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %445

427:                                              ; preds = %421
  %428 = load %struct.bio*, %struct.bio** %6, align 8
  %429 = getelementptr inbounds %struct.bio, %struct.bio* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %445

432:                                              ; preds = %427
  %433 = load %struct.bio*, %struct.bio** %6, align 8
  %434 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 0, %struct.bio* %433, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %435 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %436 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %435, i32 0, i32 4
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %439 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %440 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %439, i32 0, i32 3
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %440, align 8
  %442 = call i32 @g_raid_tr_raid1_fail_disk(i32 %437, %struct.g_raid_subdisk* %438, %struct.TYPE_3__* %441)
  %443 = load %struct.bio*, %struct.bio** %6, align 8
  %444 = getelementptr inbounds %struct.bio, %struct.bio* %443, i32 0, i32 2
  store i32 0, i32* %444, align 8
  br label %445

445:                                              ; preds = %432, %427, %421
  %446 = load %struct.bio*, %struct.bio** %10, align 8
  %447 = getelementptr inbounds %struct.bio, %struct.bio* %446, i32 0, i32 9
  %448 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %447, align 8
  %449 = icmp ne %struct.g_raid_subdisk* %448, null
  br i1 %449, label %450, label %457

450:                                              ; preds = %445
  %451 = load %struct.bio*, %struct.bio** %10, align 8
  %452 = getelementptr inbounds %struct.bio, %struct.bio* %451, i32 0, i32 9
  %453 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %452, align 8
  %454 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %453, i32 0, i32 6
  %455 = load i32, i32* %454, align 8
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %454, align 8
  br label %457

457:                                              ; preds = %450, %445
  %458 = load %struct.bio*, %struct.bio** %6, align 8
  %459 = load %struct.bio*, %struct.bio** %6, align 8
  %460 = getelementptr inbounds %struct.bio, %struct.bio* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 2, %struct.bio* %458, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %461)
  %463 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %464 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.bio*, %struct.bio** %6, align 8
  %467 = getelementptr inbounds %struct.bio, %struct.bio* %466, i32 0, i32 8
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.bio*, %struct.bio** %6, align 8
  %470 = getelementptr inbounds %struct.bio, %struct.bio* %469, i32 0, i32 3
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @g_raid_unlock_range(i32 %465, i32 %468, i64 %471)
  br label %473

473:                                              ; preds = %457, %414
  %474 = load %struct.bio*, %struct.bio** %10, align 8
  %475 = getelementptr inbounds %struct.bio, %struct.bio* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @BIO_READ, align 8
  %478 = icmp ne i64 %476, %477
  br i1 %478, label %479, label %521

479:                                              ; preds = %473
  %480 = load %struct.bio*, %struct.bio** %10, align 8
  %481 = getelementptr inbounds %struct.bio, %struct.bio* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 8
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %489, label %484

484:                                              ; preds = %479
  %485 = load %struct.bio*, %struct.bio** %10, align 8
  %486 = getelementptr inbounds %struct.bio, %struct.bio* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %484, %479
  %490 = load %struct.bio*, %struct.bio** %6, align 8
  %491 = getelementptr inbounds %struct.bio, %struct.bio* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.bio*, %struct.bio** %10, align 8
  %494 = getelementptr inbounds %struct.bio, %struct.bio* %493, i32 0, i32 2
  store i32 %492, i32* %494, align 8
  br label %495

495:                                              ; preds = %489, %484
  %496 = load %struct.bio*, %struct.bio** %10, align 8
  %497 = getelementptr inbounds %struct.bio, %struct.bio* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = load i64, i64* @BIO_WRITE, align 8
  %500 = icmp eq i64 %498, %499
  br i1 %500, label %501, label %517

501:                                              ; preds = %495
  %502 = load %struct.bio*, %struct.bio** %6, align 8
  %503 = getelementptr inbounds %struct.bio, %struct.bio* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %517

506:                                              ; preds = %501
  %507 = load %struct.bio*, %struct.bio** %6, align 8
  %508 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID_LOGREQ(i32 0, %struct.bio* %507, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %509 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %510 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %509, i32 0, i32 4
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %513 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %514 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %513, i32 0, i32 3
  %515 = load %struct.TYPE_3__*, %struct.TYPE_3__** %514, align 8
  %516 = call i32 @g_raid_tr_raid1_fail_disk(i32 %511, %struct.g_raid_subdisk* %512, %struct.TYPE_3__* %515)
  br label %517

517:                                              ; preds = %506, %501, %495
  %518 = load %struct.bio*, %struct.bio** %10, align 8
  %519 = getelementptr inbounds %struct.bio, %struct.bio* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 8
  store i32 %520, i32* %13, align 4
  br label %525

521:                                              ; preds = %473
  %522 = load %struct.bio*, %struct.bio** %6, align 8
  %523 = getelementptr inbounds %struct.bio, %struct.bio* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  store i32 %524, i32* %13, align 4
  br label %525

525:                                              ; preds = %521, %517
  %526 = load %struct.bio*, %struct.bio** %6, align 8
  %527 = call i32 @g_destroy_bio(%struct.bio* %526)
  %528 = load %struct.bio*, %struct.bio** %10, align 8
  %529 = getelementptr inbounds %struct.bio, %struct.bio* %528, i32 0, i32 5
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.bio*, %struct.bio** %10, align 8
  %532 = getelementptr inbounds %struct.bio, %struct.bio* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 8
  %534 = icmp eq i32 %530, %533
  br i1 %534, label %535, label %544

535:                                              ; preds = %525
  %536 = load %struct.bio*, %struct.bio** %10, align 8
  %537 = getelementptr inbounds %struct.bio, %struct.bio* %536, i32 0, i32 3
  %538 = load i64, i64* %537, align 8
  %539 = load %struct.bio*, %struct.bio** %10, align 8
  %540 = getelementptr inbounds %struct.bio, %struct.bio* %539, i32 0, i32 7
  store i64 %538, i64* %540, align 8
  %541 = load %struct.bio*, %struct.bio** %10, align 8
  %542 = load i32, i32* %13, align 4
  %543 = call i32 @g_raid_iodone(%struct.bio* %541, i32 %542)
  br label %544

544:                                              ; preds = %45, %120, %164, %172, %212, %226, %365, %397, %535, %525
  ret void
}

declare dso_local i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object*) #1

declare dso_local i32 @G_RAID_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk*, %struct.bio*) #1

declare dso_local i32 @g_raid_tr_raid1_fail_disk(i32, %struct.g_raid_subdisk*, %struct.TYPE_3__*) #1

declare dso_local i32 @g_raid_unlock_range(i32, i32, i64) #1

declare dso_local i32 @g_raid_tr_raid1_rebuild_finish(%struct.g_raid_tr_object*) #1

declare dso_local i32 @g_raid_write_metadata(i32, %struct.g_raid_volume*, %struct.g_raid_subdisk*, %struct.TYPE_3__*) #1

declare dso_local i32 @g_raid_tr_raid1_rebuild_some(%struct.g_raid_tr_object*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.g_raid_subdisk* @g_raid_tr_raid1_select_read_disk(%struct.g_raid_volume*, %struct.bio*, i64) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_raid_lock_range(i32, i32, i64, %struct.bio*, %struct.bio*) #1

declare dso_local i32 @g_raid_iodone(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
