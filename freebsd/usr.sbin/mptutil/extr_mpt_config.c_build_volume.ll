; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_build_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_build_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_17__*, i32, %struct.TYPE_14__, %struct.TYPE_13__, i64, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.volume_info = type { i32, %struct.drive_info* }
%struct.drive_info = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }
%struct.config_id_state = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@MPI_CONFIG_PAGETYPE_RAID_VOLUME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MPI_RAIDVOLPAGE0_PAGEVERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unsupported RAID volume page 0 version %d\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_STATUS_FLAG_ENABLED = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_STATUS_STATE_OPTIMAL = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_SETTING_USE_DEFAULTS = common dso_local global i32 0, align 4
@MPI_RAID_HOT_SPARE_POOL_0 = common dso_local global i32 0, align 4
@MPI_RAID_VOL_TYPE_IS = common dso_local global i32 0, align 4
@MPI_RAID_VOL_TYPE_IM = common dso_local global i32 0, align 4
@MPI_RAID_VOL_TYPE_IME = common dso_local global i32 0, align 4
@MPI_IOCPAGE2_CAP_FLAGS_RAID_64_BIT_ADDRESSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Controller does not support volumes > 2TB, truncating volume.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Adding drive %u (%u:%u) to volume %u:%u\0A\00", align 1
@MPI_RAIDVOL0_PHYSDISK_PRIMARY = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_PHYSDISK_SECONDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i32, %struct.volume_info*, i32, i64, %struct.config_id_state*, i32)* @build_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @build_volume(i32 %0, %struct.volume_info* %1, i32 %2, i64 %3, %struct.config_id_state* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.volume_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.config_id_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.drive_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.volume_info* %1, %struct.volume_info** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store %struct.config_id_state* %4, %struct.config_id_state** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_VOLUME, align 4
  %25 = call i32 @mpt_read_config_page_header(i32 %23, i32 %24, i32 0, i32 0, %struct.TYPE_19__* %14, i32* null)
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %21, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %21, align 4
  store i32 %29, i32* @errno, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  br label %280

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MPI_RAIDVOLPAGE0_PAGEVERSION, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %39, i32* @errno, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  br label %280

40:                                               ; preds = %30
  %41 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %42 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = add i64 96, %46
  store i64 %47, i64* %20, align 8
  %48 = load i64, i64* %20, align 8
  %49 = call %struct.TYPE_18__* @calloc(i32 1, i64 %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %15, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %51 = icmp eq %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  br label %280

53:                                               ; preds = %40
  %54 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_VOLUME, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 11
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %20, align 8
  %62 = udiv i64 %61, 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 11
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.config_id_state*, %struct.config_id_state** %12, align 8
  %67 = call i32 @find_next_volume(%struct.config_id_state* %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @MPI_RAIDVOL0_STATUS_FLAG_ENABLED, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @MPI_RAIDVOL0_STATUS_STATE_OPTIMAL, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @MPI_RAIDVOL0_SETTING_USE_DEFAULTS, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @MPI_RAID_HOT_SPARE_POOL_0, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %91 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %96 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %95, i32 0, i32 1
  %97 = load %struct.drive_info*, %struct.drive_info** %96, align 8
  %98 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %97, i64 0
  %99 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %18, align 8
  store i32 1, i32* %22, align 4
  br label %103

103:                                              ; preds = %134, %53
  %104 = load i32, i32* %22, align 4
  %105 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %106 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %111 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %110, i32 0, i32 1
  %112 = load %struct.drive_info*, %struct.drive_info** %111, align 8
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %112, i64 %114
  %116 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %18, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %109
  %123 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %124 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %123, i32 0, i32 1
  %125 = load %struct.drive_info*, %struct.drive_info** %124, align 8
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %125, i64 %127
  %129 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %18, align 8
  br label %133

133:                                              ; preds = %122, %109
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %22, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %22, align 4
  br label %103

137:                                              ; preds = %103
  %138 = load i64, i64* %18, align 8
  %139 = sub nsw i64 %138, 1048576
  store i64 %139, i64* %18, align 8
  %140 = load i32, i32* %10, align 4
  switch i32 %140, label %181 [
    i32 130, label %141
    i32 129, label %155
    i32 128, label %166
  ]

141:                                              ; preds = %137
  %142 = load i32, i32* @MPI_RAID_VOL_TYPE_IS, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 8
  %145 = load i64, i64* %11, align 8
  %146 = sdiv i64 %145, 512
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 3
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %18, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %152 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %150, %153
  store i32 %154, i32* %19, align 4
  br label %183

155:                                              ; preds = %137
  %156 = load i32, i32* @MPI_RAID_VOL_TYPE_IM, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  %159 = load i64, i64* %18, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %162 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %163, 2
  %165 = mul nsw i32 %160, %164
  store i32 %165, i32* %19, align 4
  br label %183

166:                                              ; preds = %137
  %167 = load i32, i32* @MPI_RAID_VOL_TYPE_IME, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 8
  %170 = load i64, i64* %11, align 8
  %171 = sdiv i64 %170, 512
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* %18, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %177 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  %180 = sdiv i32 %179, 2
  store i32 %180, i32* %19, align 4
  br label %183

181:                                              ; preds = %137
  %182 = call i32 (...) @abort() #3
  unreachable

183:                                              ; preds = %166, %155, %141
  %184 = load i32, i32* %19, align 4
  %185 = ashr i32 %184, 32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = load %struct.config_id_state*, %struct.config_id_state** %12, align 8
  %189 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %188, i32 0, i32 0
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_RAID_64_BIT_ADDRESSING, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %187
  %197 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %19, align 4
  br label %198

198:                                              ; preds = %196, %187, %183
  %199 = load i32, i32* %19, align 4
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %19, align 4
  %203 = ashr i32 %202, 32
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  store i32 0, i32* %22, align 4
  %206 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %207 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %206, i32 0, i32 1
  %208 = load %struct.drive_info*, %struct.drive_info** %207, align 8
  store %struct.drive_info* %208, %struct.drive_info** %17, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 6
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  store %struct.TYPE_17__* %211, %struct.TYPE_17__** %16, align 8
  br label %212

212:                                              ; preds = %271, %198
  %213 = load i32, i32* %22, align 4
  %214 = load %struct.volume_info*, %struct.volume_info** %9, align 8
  %215 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %278

218:                                              ; preds = %212
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %244

221:                                              ; preds = %218
  %222 = load %struct.drive_info*, %struct.drive_info** %17, align 8
  %223 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %222, i32 0, i32 0
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.drive_info*, %struct.drive_info** %17, align 8
  %228 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %227, i32 0, i32 0
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.drive_info*, %struct.drive_info** %17, align 8
  %233 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %232, i32 0, i32 0
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %226, i32 %231, i32 %236, i32 %239, i32 %242)
  br label %244

244:                                              ; preds = %221, %218
  %245 = load i32, i32* %10, align 4
  %246 = icmp eq i32 %245, 129
  br i1 %246, label %247, label %259

247:                                              ; preds = %244
  %248 = load i32, i32* %22, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32, i32* @MPI_RAIDVOL0_PHYSDISK_PRIMARY, align 4
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 4
  br label %258

254:                                              ; preds = %247
  %255 = load i32, i32* @MPI_RAIDVOL0_PHYSDISK_SECONDARY, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %250
  br label %263

259:                                              ; preds = %244
  %260 = load i32, i32* %22, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %259, %258
  %264 = load %struct.drive_info*, %struct.drive_info** %17, align 8
  %265 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %264, i32 0, i32 0
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  br label %271

271:                                              ; preds = %263
  %272 = load i32, i32* %22, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %22, align 4
  %274 = load %struct.drive_info*, %struct.drive_info** %17, align 8
  %275 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %274, i32 1
  store %struct.drive_info* %275, %struct.drive_info** %17, align 8
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 1
  store %struct.TYPE_17__* %277, %struct.TYPE_17__** %16, align 8
  br label %212

278:                                              ; preds = %212
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %279, %struct.TYPE_18__** %7, align 8
  br label %280

280:                                              ; preds = %278, %52, %35, %28
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  ret %struct.TYPE_18__* %281
}

declare dso_local i32 @mpt_read_config_page_header(i32, i32, i32, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.TYPE_18__* @calloc(i32, i64) #1

declare dso_local i32 @find_next_volume(%struct.config_id_state*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
