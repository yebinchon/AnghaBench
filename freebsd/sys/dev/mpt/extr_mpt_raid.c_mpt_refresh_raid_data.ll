; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_refresh_raid_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_refresh_raid_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, %struct.mpt_raid_disk*, %struct.TYPE_16__*, %struct.mpt_raid_volume*, %struct.TYPE_15__* }
%struct.mpt_raid_disk = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_24__*, %struct.TYPE_14__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.mpt_raid_volume = type { i32, %struct.TYPE_17__, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_18__, %struct.TYPE_20__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_14__ }
%struct.TYPE_21__ = type { i32 }

@MPT_RDF_REFERENCED = common dso_local global i32 0, align 4
@MPT_RVF_REFERENCED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"mpt_refresh_raid_data: Failed to read IOC Page 3\0A\00", align 1
@MPT_RDF_ACTIVE = common dso_local global i32 0, align 4
@MPT_RDF_UP2DATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"mpt_refresh_raid_data: Failed to read IOC Page 2\0A\00", align 1
@MPT_RVF_ACTIVE = common dso_local global i32 0, align 4
@MPT_RVF_UP2DATE = common dso_local global i32 0, align 4
@MPT_RVF_ANNOUNCED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"No longer configured\0A\00", align 1
@MPI_RAIDVOL0_STATUS_STATE_OPTIMAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%s - %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Status (\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" Enabled\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" Quiesced\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" Re-Syncing\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" Inactive\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Rate %d.%d%%\0A\00", align 1
@MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"%s Priority Re-Sync\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%ju of %ju blocks remaining\0A\00", align 1
@MPT_RDF_ANNOUNCED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c" Out-Of-Sync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_refresh_raid_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_refresh_raid_data(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mpt_raid_disk*, align 8
  %14 = alloca %struct.mpt_raid_volume*, align 8
  %15 = alloca %struct.mpt_raid_volume*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mpt_raid_disk*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = icmp eq %struct.TYPE_16__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %28, i32 0, i32 5
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %584

33:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 3
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load i32, i32* @MPT_RDF_REFERENCED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 2
  %47 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %47, i64 %49
  %51 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %44
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %34

57:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %61 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %60, i32 0, i32 3
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %59, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load i32, i32* @MPT_RVF_REFERENCED, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %70 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %69, i32 0, i32 4
  %71 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %71, i64 %73
  %75 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %68
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %82, i32 0, i32 5
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  store i64 %89, i64* %9, align 8
  %90 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %92 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %91, i32 0, i32 5
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %90, i32 0, %struct.TYPE_14__* %94, i64 %95, i32 %96, i32 5000)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %81
  %101 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %102 = call i32 @mpt_prt(%struct.mpt_softc* %101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %584

103:                                              ; preds = %81
  %104 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %105 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %104, i32 0, i32 5
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = call i32 @mpt2host_config_page_ioc3(%struct.TYPE_15__* %106)
  %108 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %109 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %108, i32 0, i32 5
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  store %struct.TYPE_21__* %112, %struct.TYPE_21__** %6, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %115 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %114, i32 0, i32 5
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i64 %119
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %7, align 8
  br label %121

121:                                              ; preds = %165, %103
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = icmp ne %struct.TYPE_21__* %122, %123
  br i1 %124, label %125, label %168

125:                                              ; preds = %121
  %126 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %127 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %126, i32 0, i32 2
  %128 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %128, i64 %132
  store %struct.mpt_raid_disk* %133, %struct.mpt_raid_disk** %13, align 8
  %134 = load i32, i32* @MPT_RDF_REFERENCED, align 4
  %135 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %13, align 8
  %136 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %13, align 8
  %140 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MPT_RDF_ACTIVE, align 4
  %143 = load i32, i32* @MPT_RDF_UP2DATE, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = load i32, i32* @MPT_RDF_ACTIVE, align 4
  %147 = load i32, i32* @MPT_RDF_UP2DATE, align 4
  %148 = or i32 %146, %147
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %125
  %151 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %152 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %13, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = call i32 @mpt_refresh_raid_disk(%struct.mpt_softc* %151, %struct.mpt_raid_disk* %152, %struct.TYPE_21__* %153)
  br label %155

155:                                              ; preds = %150, %125
  %156 = load i32, i32* @MPT_RDF_ACTIVE, align 4
  %157 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %13, align 8
  %158 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %162 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %155
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 1
  store %struct.TYPE_21__* %167, %struct.TYPE_21__** %6, align 8
  br label %121

168:                                              ; preds = %121
  %169 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %170 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %169, i32 0, i32 3
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 4
  store i64 %176, i64* %9, align 8
  %177 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %178 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %179 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %178, i32 0, i32 3
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 4
  %182 = load i64, i64* %9, align 8
  %183 = load i32, i32* @TRUE, align 4
  %184 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %177, i32 0, %struct.TYPE_14__* %181, i64 %182, i32 %183, i32 5000)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %168
  %188 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %189 = call i32 @mpt_prt(%struct.mpt_softc* %188, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %584

190:                                              ; preds = %168
  %191 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %192 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %191, i32 0, i32 3
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = call i32 @mpt2host_config_page_ioc2(%struct.TYPE_16__* %193)
  %195 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %196 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %195, i32 0, i32 3
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %198, align 8
  store %struct.TYPE_24__* %199, %struct.TYPE_24__** %4, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %201 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %202 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %201, i32 0, i32 3
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i64 %206
  store %struct.TYPE_24__* %207, %struct.TYPE_24__** %5, align 8
  br label %208

208:                                              ; preds = %262, %190
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %211 = icmp ne %struct.TYPE_24__* %209, %210
  br i1 %211, label %212, label %265

212:                                              ; preds = %208
  %213 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %214 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %213, i32 0, i32 4
  %215 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %214, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %215, i64 %219
  store %struct.mpt_raid_volume* %220, %struct.mpt_raid_volume** %14, align 8
  %221 = load i32, i32* @MPT_RVF_REFERENCED, align 4
  %222 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %14, align 8
  %223 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %14, align 8
  %227 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %226, i32 0, i32 2
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %227, align 8
  store %struct.TYPE_22__* %228, %struct.TYPE_22__** %8, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %230 = icmp eq %struct.TYPE_22__* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %212
  br label %262

232:                                              ; preds = %212
  %233 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %14, align 8
  %234 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @MPT_RVF_ACTIVE, align 4
  %237 = load i32, i32* @MPT_RVF_UP2DATE, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %235, %238
  %240 = load i32, i32* @MPT_RVF_ACTIVE, align 4
  %241 = load i32, i32* @MPT_RVF_UP2DATE, align 4
  %242 = or i32 %240, %241
  %243 = icmp ne i32 %239, %242
  br i1 %243, label %251, label %244

244:                                              ; preds = %232
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 129
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %244, %232
  %252 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %253 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %14, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %255 = call i32 @mpt_refresh_raid_vol(%struct.mpt_softc* %252, %struct.mpt_raid_volume* %253, %struct.TYPE_24__* %254)
  br label %256

256:                                              ; preds = %251, %244
  %257 = load i32, i32* @MPT_RVF_ACTIVE, align 4
  %258 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %14, align 8
  %259 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %256, %231
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 1
  store %struct.TYPE_24__* %264, %struct.TYPE_24__** %4, align 8
  br label %208

265:                                              ; preds = %208
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %266

266:                                              ; preds = %460, %265
  %267 = load i32, i32* %11, align 4
  %268 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %269 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %268, i32 0, i32 3
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %267, %272
  br i1 %273, label %274, label %463

274:                                              ; preds = %266
  %275 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %276 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %275, i32 0, i32 4
  %277 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %277, i64 %279
  store %struct.mpt_raid_volume* %280, %struct.mpt_raid_volume** %15, align 8
  %281 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %282 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @MPT_RVF_ACTIVE, align 4
  %285 = and i32 %283, %284
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %274
  br label %460

288:                                              ; preds = %274
  %289 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %290 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %289, i32 0, i32 2
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %290, align 8
  store %struct.TYPE_22__* %291, %struct.TYPE_22__** %8, align 8
  %292 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %293 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @MPT_RVF_REFERENCED, align 4
  %296 = load i32, i32* @MPT_RVF_ANNOUNCED, align 4
  %297 = or i32 %295, %296
  %298 = and i32 %294, %297
  %299 = load i32, i32* @MPT_RVF_ANNOUNCED, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %288
  %302 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %303 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %304 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %302, %struct.mpt_raid_volume* %303, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %305 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %306 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %305, i32 0, i32 0
  store i32 0, i32* %306, align 8
  br label %460

307:                                              ; preds = %288
  %308 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %309 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @MPT_RVF_ANNOUNCED, align 4
  %312 = and i32 %310, %311
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %307
  %315 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %316 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %317 = call i32 @mpt_announce_vol(%struct.mpt_softc* %315, %struct.mpt_raid_volume* %316)
  %318 = load i32, i32* @MPT_RVF_ANNOUNCED, align 4
  %319 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %320 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %314, %307
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @MPI_RAIDVOL0_STATUS_STATE_OPTIMAL, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %323
  %331 = load i32, i32* %12, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %330, %323
  %334 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %335 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @MPT_RVF_UP2DATE, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %333
  br label %460

341:                                              ; preds = %333
  %342 = load i32, i32* @MPT_RVF_UP2DATE, align 4
  %343 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %344 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %348 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %349 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %350 = call i32 @mpt_vol_type(%struct.mpt_raid_volume* %349)
  %351 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %352 = call i32 @mpt_vol_state(%struct.mpt_raid_volume* %351)
  %353 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %347, %struct.mpt_raid_volume* %348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %350, i32 %352)
  %354 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %355 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %356 = call i32 @mpt_verify_mwce(%struct.mpt_softc* %354, %struct.mpt_raid_volume* %355)
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %341
  br label %460

363:                                              ; preds = %341
  %364 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %365 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %366 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %364, %struct.mpt_raid_volume* %365, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %367

367:                                              ; preds = %391, %363
  %368 = load i32, i32* %18, align 4
  %369 = icmp sle i32 %368, 128
  br i1 %369, label %370, label %394

370:                                              ; preds = %367
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* %18, align 4
  %376 = and i32 %374, %375
  switch i32 %376, label %389 [
    i32 131, label %377
    i32 130, label %380
    i32 129, label %383
    i32 128, label %386
  ]

377:                                              ; preds = %370
  %378 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %379 = call i32 @mpt_prtc(%struct.mpt_softc* %378, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %390

380:                                              ; preds = %370
  %381 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %382 = call i32 @mpt_prtc(%struct.mpt_softc* %381, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %390

383:                                              ; preds = %370
  %384 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %385 = call i32 @mpt_prtc(%struct.mpt_softc* %384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %390

386:                                              ; preds = %370
  %387 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %388 = call i32 @mpt_prtc(%struct.mpt_softc* %387, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %390

389:                                              ; preds = %370
  br label %390

390:                                              ; preds = %389, %386, %383, %380, %377
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %18, align 4
  %393 = shl i32 %392, 1
  store i32 %393, i32* %18, align 4
  br label %367

394:                                              ; preds = %367
  %395 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %396 = call i32 @mpt_prtc(%struct.mpt_softc* %395, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = and i32 %400, 129
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %394
  br label %460

404:                                              ; preds = %394
  %405 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %406 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %407 = call i32 @mpt_verify_resync_rate(%struct.mpt_softc* %405, %struct.mpt_raid_volume* %406)
  %408 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %409 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = call i64 @MPT_U64_2_SCALAR(i32 %411)
  store i64 %412, i64* %17, align 8
  %413 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %414 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call i64 @MPT_U64_2_SCALAR(i32 %416)
  store i64 %417, i64* %16, align 8
  %418 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %436

422:                                              ; preds = %404
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = trunc i64 %425 to i32
  %427 = mul nsw i32 %426, 100000
  %428 = sdiv i32 %427, 255
  store i32 %428, i32* %19, align 4
  %429 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %430 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %431 = load i32, i32* %19, align 4
  %432 = sdiv i32 %431, 1000
  %433 = load i32, i32* %19, align 4
  %434 = srem i32 %433, 1000
  %435 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %429, %struct.mpt_raid_volume* %430, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %432, i32 %434)
  br label %450

436:                                              ; preds = %404
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC, align 4
  %442 = and i32 %440, %441
  store i32 %442, i32* %19, align 4
  %443 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %444 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %445 = load i32, i32* %19, align 4
  %446 = icmp ne i32 %445, 0
  %447 = zext i1 %446 to i64
  %448 = select i1 %446, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %449 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %443, %struct.mpt_raid_volume* %444, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %448)
  br label %450

450:                                              ; preds = %436, %422
  %451 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %452 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %15, align 8
  %453 = load i64, i64* %17, align 8
  %454 = trunc i64 %453 to i32
  %455 = load i64, i64* %16, align 8
  %456 = trunc i64 %455 to i32
  %457 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %451, %struct.mpt_raid_volume* %452, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %454, i32 %456)
  %458 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %459 = call i32 @mpt_schedule_raid_refresh(%struct.mpt_softc* %458)
  br label %460

460:                                              ; preds = %450, %403, %362, %340, %301, %287
  %461 = load i32, i32* %11, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %11, align 4
  br label %266

463:                                              ; preds = %266
  store i32 0, i32* %11, align 4
  br label %464

464:                                              ; preds = %577, %463
  %465 = load i32, i32* %11, align 4
  %466 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %467 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %466, i32 0, i32 3
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp slt i32 %465, %470
  br i1 %471, label %472, label %580

472:                                              ; preds = %464
  %473 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %474 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %473, i32 0, i32 2
  %475 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %474, align 8
  %476 = load i32, i32* %11, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %475, i64 %477
  store %struct.mpt_raid_disk* %478, %struct.mpt_raid_disk** %20, align 8
  %479 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %480 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %479, i32 0, i32 1
  store %struct.TYPE_23__* %480, %struct.TYPE_23__** %21, align 8
  %481 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %482 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @MPT_RDF_ACTIVE, align 4
  %485 = and i32 %483, %484
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %472
  br label %577

488:                                              ; preds = %472
  %489 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %490 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* @MPT_RDF_REFERENCED, align 4
  %493 = load i32, i32* @MPT_RDF_ANNOUNCED, align 4
  %494 = or i32 %492, %493
  %495 = and i32 %491, %494
  %496 = load i32, i32* @MPT_RDF_ANNOUNCED, align 4
  %497 = icmp eq i32 %495, %496
  br i1 %497, label %498, label %508

498:                                              ; preds = %488
  %499 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %500 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %501 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_disk*, i8*, ...) @mpt_disk_prt(%struct.mpt_softc* %499, %struct.mpt_raid_disk* %500, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %502 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %503 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %502, i32 0, i32 0
  store i32 0, i32* %503, align 4
  %504 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %505 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %505, align 4
  br label %577

508:                                              ; preds = %488
  %509 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %510 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* @MPT_RDF_ANNOUNCED, align 4
  %513 = and i32 %511, %512
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %524

515:                                              ; preds = %508
  %516 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %517 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %518 = call i32 @mpt_announce_disk(%struct.mpt_softc* %516, %struct.mpt_raid_disk* %517)
  %519 = load i32, i32* @MPT_RVF_ANNOUNCED, align 4
  %520 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %521 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = or i32 %522, %519
  store i32 %523, i32* %521, align 4
  br label %524

524:                                              ; preds = %515, %508
  %525 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %526 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @MPT_RDF_UP2DATE, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %524
  br label %577

532:                                              ; preds = %524
  %533 = load i32, i32* @MPT_RDF_UP2DATE, align 4
  %534 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %535 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = or i32 %536, %533
  store i32 %537, i32* %535, align 4
  %538 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %539 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %540 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %541 = call i32 @mpt_disk_state(%struct.mpt_raid_disk* %540)
  %542 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_disk*, i8*, ...) @mpt_disk_prt(%struct.mpt_softc* %538, %struct.mpt_raid_disk* %539, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %541)
  %543 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %544 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %532
  br label %577

549:                                              ; preds = %532
  %550 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %551 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %20, align 8
  %552 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_disk*, i8*, ...) @mpt_disk_prt(%struct.mpt_softc* %550, %struct.mpt_raid_disk* %551, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %22, align 4
  br label %553

553:                                              ; preds = %571, %549
  %554 = load i32, i32* %22, align 4
  %555 = icmp sle i32 %554, 128
  br i1 %555, label %556, label %574

556:                                              ; preds = %553
  %557 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %558 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* %22, align 4
  %562 = and i32 %560, %561
  switch i32 %562, label %569 [
    i32 133, label %563
    i32 132, label %566
  ]

563:                                              ; preds = %556
  %564 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %565 = call i32 @mpt_prtc(%struct.mpt_softc* %564, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  br label %570

566:                                              ; preds = %556
  %567 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %568 = call i32 @mpt_prtc(%struct.mpt_softc* %567, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %570

569:                                              ; preds = %556
  br label %570

570:                                              ; preds = %569, %566, %563
  br label %571

571:                                              ; preds = %570
  %572 = load i32, i32* %22, align 4
  %573 = shl i32 %572, 1
  store i32 %573, i32* %22, align 4
  br label %553

574:                                              ; preds = %553
  %575 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %576 = call i32 @mpt_prtc(%struct.mpt_softc* %575, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %577

577:                                              ; preds = %574, %548, %531, %498, %487
  %578 = load i32, i32* %11, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %11, align 4
  br label %464

580:                                              ; preds = %464
  %581 = load i32, i32* %12, align 4
  %582 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %583 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %582, i32 0, i32 0
  store i32 %581, i32* %583, align 8
  store i32 0, i32* %2, align 4
  br label %584

584:                                              ; preds = %580, %187, %100, %32
  %585 = load i32, i32* %2, align 4
  ret i32 %585
}

declare dso_local i32 @mpt_read_cur_cfg_page(%struct.mpt_softc*, i32, %struct.TYPE_14__*, i64, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @mpt2host_config_page_ioc3(%struct.TYPE_15__*) #1

declare dso_local i32 @mpt_refresh_raid_disk(%struct.mpt_softc*, %struct.mpt_raid_disk*, %struct.TYPE_21__*) #1

declare dso_local i32 @mpt2host_config_page_ioc2(%struct.TYPE_16__*) #1

declare dso_local i32 @mpt_refresh_raid_vol(%struct.mpt_softc*, %struct.mpt_raid_volume*, %struct.TYPE_24__*) #1

declare dso_local i32 @mpt_vol_prt(%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) #1

declare dso_local i32 @mpt_announce_vol(%struct.mpt_softc*, %struct.mpt_raid_volume*) #1

declare dso_local i32 @mpt_vol_type(%struct.mpt_raid_volume*) #1

declare dso_local i32 @mpt_vol_state(%struct.mpt_raid_volume*) #1

declare dso_local i32 @mpt_verify_mwce(%struct.mpt_softc*, %struct.mpt_raid_volume*) #1

declare dso_local i32 @mpt_prtc(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @mpt_verify_resync_rate(%struct.mpt_softc*, %struct.mpt_raid_volume*) #1

declare dso_local i64 @MPT_U64_2_SCALAR(i32) #1

declare dso_local i32 @mpt_schedule_raid_refresh(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_disk_prt(%struct.mpt_softc*, %struct.mpt_raid_disk*, i8*, ...) #1

declare dso_local i32 @mpt_announce_disk(%struct.mpt_softc*, %struct.mpt_raid_disk*) #1

declare dso_local i32 @mpt_disk_state(%struct.mpt_raid_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
