; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i8*, %struct.g_raid3_softc*, i32, i32, i32 }
%struct.g_raid3_softc = type { i64, i32, i64, %struct.g_geom*, i32, i32, i32, i32, %struct.g_raid3_softc*, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.g_raid3_softc*, i64, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.g_geom* }
%struct.TYPE_3__ = type { i8*, i64, i64, i32, i64 }
%struct.g_class = type { i32 }
%struct.g_raid3_metadata = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Creating device %s (id=%u).\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_RAID3 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@g_raid3_start = common dso_local global i32 0, align 4
@g_raid3_orphan = common dso_local global i8* null, align 8
@g_raid3_access = common dso_local global i32 0, align 4
@g_raid3_dumpconf = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_NODISK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"graid3:lock\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"graid3:queue\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"graid3:events\00", align 1
@G_RAID3_DEVICE_STATE_STARTING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s.sync\00", align 1
@g_raid3_use_malloc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"gr3:64k\00", align 1
@g_raid3_uma_ctor = common dso_local global i32 0, align 4
@g_raid3_uma_dtor = common dso_local global i32 0, align 4
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@G_RAID3_ZONE_64K = common dso_local global i64 0, align 8
@g_raid3_n64k = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"gr3:16k\00", align 1
@G_RAID3_ZONE_16K = common dso_local global i64 0, align 8
@g_raid3_n16k = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"gr3:4k\00", align 1
@G_RAID3_ZONE_4K = common dso_local global i64 0, align 8
@g_raid3_n4k = common dso_local global i32 0, align 4
@g_raid3_worker = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"g_raid3 %s\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Cannot create kernel thread for %s.\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Device %s created (%u components, id=%u).\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"GRAID3\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"root_mount_hold %p\00", align 1
@g_raid3_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@g_raid3_go = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_geom* (%struct.g_class*, %struct.g_raid3_metadata*)* @g_raid3_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_geom* @g_raid3_create(%struct.g_class* %0, %struct.g_raid3_metadata* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_raid3_metadata*, align 8
  %6 = alloca %struct.g_raid3_softc*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.g_class* %0, %struct.g_class** %4, align 8
  store %struct.g_raid3_metadata* %1, %struct.g_raid3_metadata** %5, align 8
  %11 = call i32 (...) @g_topology_assert()
  %12 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %13 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %16 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %20 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.g_geom* null, %struct.g_geom** %3, align 8
  br label %394

24:                                               ; preds = %2
  %25 = load %struct.g_class*, %struct.g_class** %4, align 8
  %26 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %27 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store %struct.g_geom* %29, %struct.g_geom** %7, align 8
  %30 = load i32, i32* @M_RAID3, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @malloc(i32 192, i32 %30, i32 %33)
  %35 = bitcast i8* %34 to %struct.g_raid3_softc*
  store %struct.g_raid3_softc* %35, %struct.g_raid3_softc** %6, align 8
  %36 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %37 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @M_RAID3, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = or i32 %43, %44
  %46 = call i8* @malloc(i32 %41, i32 %42, i32 %45)
  %47 = bitcast i8* %46 to %struct.g_raid3_softc*
  %48 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %49 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %48, i32 0, i32 8
  store %struct.g_raid3_softc* %47, %struct.g_raid3_softc** %49, align 8
  %50 = load i32, i32* @g_raid3_start, align 4
  %51 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %52 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @g_raid3_orphan, align 8
  %54 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %55 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @g_raid3_access, align 4
  %57 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %58 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @g_raid3_dumpconf, align 4
  %60 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %61 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %63 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %66 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %68 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %71 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %70, i32 0, i32 30
  store i32 %69, i32* %71, align 4
  %72 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %73 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %76 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %75, i32 0, i32 29
  store i32 %74, i32* %76, align 8
  %77 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %78 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %82 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %84 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %83, i32 0, i32 28
  store i64 0, i64* %84, align 8
  %85 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %86 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %89 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %88, i32 0, i32 27
  store i32 %87, i32* %89, align 8
  %90 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %91 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %90, i32 0, i32 26
  store i64 0, i64* %91, align 8
  %92 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %93 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  %94 = load i32, i32* @time_uptime, align 4
  %95 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %96 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %95, i32 0, i32 25
  store i32 %94, i32* %96, align 8
  %97 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %98 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %97, i32 0, i32 24
  store i64 0, i64* %98, align 8
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %127, %24
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %102 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %99
  %106 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %107 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %108 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %107, i32 0, i32 8
  %109 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %109, i64 %110
  %112 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %111, i32 0, i32 23
  store %struct.g_raid3_softc* %106, %struct.g_raid3_softc** %112, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %115 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %114, i32 0, i32 8
  %116 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %116, i64 %117
  %119 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %118, i32 0, i32 2
  store i64 %113, i64* %119, align 8
  %120 = load i32, i32* @G_RAID3_DISK_STATE_NODISK, align 4
  %121 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %122 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %121, i32 0, i32 8
  %123 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %123, i64 %124
  %126 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %125, i32 0, i32 22
  store i32 %120, i32* %126, align 8
  br label %127

127:                                              ; preds = %105
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %99

130:                                              ; preds = %99
  %131 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %132 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %131, i32 0, i32 9
  %133 = call i32 @sx_init(i32* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %134 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %135 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %134, i32 0, i32 21
  %136 = call i32 @bioq_init(i32* %135)
  %137 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %138 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %137, i32 0, i32 10
  %139 = load i32, i32* @MTX_DEF, align 4
  %140 = call i32 @mtx_init(i32* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %139)
  %141 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %142 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %141, i32 0, i32 20
  %143 = call i32 @bioq_init(i32* %142)
  %144 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %145 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %144, i32 0, i32 19
  %146 = call i32 @bioq_init(i32* %145)
  %147 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %148 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %147, i32 0, i32 18
  %149 = call i32 @bioq_init(i32* %148)
  %150 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %151 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %150, i32 0, i32 17
  %152 = call i32 @TAILQ_INIT(i32* %151)
  %153 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %154 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %153, i32 0, i32 11
  %155 = load i32, i32* @MTX_DEF, align 4
  %156 = call i32 @mtx_init(i32* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %155)
  %157 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %158 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %157, i32 0, i32 4
  %159 = call i32 @callout_init(i32* %158, i32 1)
  %160 = load i32, i32* @G_RAID3_DEVICE_STATE_STARTING, align 4
  %161 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %162 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %161, i32 0, i32 16
  store i32 %160, i32* %162, align 8
  %163 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %164 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %165 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %164, i32 0, i32 1
  store %struct.g_raid3_softc* %163, %struct.g_raid3_softc** %165, align 8
  %166 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %167 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %168 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %167, i32 0, i32 3
  store %struct.g_geom* %166, %struct.g_geom** %168, align 8
  %169 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %170 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %169, i32 0, i32 15
  store i32* null, i32** %170, align 8
  %171 = load %struct.g_class*, %struct.g_class** %4, align 8
  %172 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %173 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  store %struct.g_geom* %175, %struct.g_geom** %7, align 8
  %176 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %177 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %178 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %177, i32 0, i32 1
  store %struct.g_raid3_softc* %176, %struct.g_raid3_softc** %178, align 8
  %179 = load i8*, i8** @g_raid3_orphan, align 8
  %180 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %181 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %183 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %184 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %183, i32 0, i32 12
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store %struct.g_geom* %182, %struct.g_geom** %185, align 8
  %186 = load i32, i32* @g_raid3_use_malloc, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %294, label %188

188:                                              ; preds = %130
  %189 = load i32, i32* @g_raid3_uma_ctor, align 4
  %190 = load i32, i32* @g_raid3_uma_dtor, align 4
  %191 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %192 = call i8* @uma_zcreate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 65536, i32 %189, i32 %190, i32* null, i32* null, i32 %191, i32 0)
  %193 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %194 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %193, i32 0, i32 13
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i64, i64* @G_RAID3_ZONE_64K, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  store i8* %192, i8** %198, align 8
  %199 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %200 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %199, i32 0, i32 13
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = load i64, i64* @G_RAID3_ZONE_64K, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  store i64 0, i64* %204, align 8
  %205 = load i32, i32* @g_raid3_n64k, align 4
  %206 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %207 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %206, i32 0, i32 13
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = load i64, i64* @G_RAID3_ZONE_64K, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  store i32 %205, i32* %211, align 8
  %212 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %213 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %212, i32 0, i32 13
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = load i64, i64* @G_RAID3_ZONE_64K, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  %218 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %219 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %218, i32 0, i32 13
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = load i64, i64* @G_RAID3_ZONE_64K, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* @g_raid3_uma_ctor, align 4
  %225 = load i32, i32* @g_raid3_uma_dtor, align 4
  %226 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %227 = call i8* @uma_zcreate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 16384, i32 %224, i32 %225, i32* null, i32* null, i32 %226, i32 0)
  %228 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %229 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %228, i32 0, i32 13
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = load i64, i64* @G_RAID3_ZONE_16K, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  store i8* %227, i8** %233, align 8
  %234 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %235 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %234, i32 0, i32 13
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = load i64, i64* @G_RAID3_ZONE_16K, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  store i64 0, i64* %239, align 8
  %240 = load i32, i32* @g_raid3_n16k, align 4
  %241 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %242 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %241, i32 0, i32 13
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = load i64, i64* @G_RAID3_ZONE_16K, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 3
  store i32 %240, i32* %246, align 8
  %247 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %248 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %247, i32 0, i32 13
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = load i64, i64* @G_RAID3_ZONE_16K, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 1
  store i64 0, i64* %252, align 8
  %253 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %254 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %253, i32 0, i32 13
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = load i64, i64* @G_RAID3_ZONE_16K, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 2
  store i64 0, i64* %258, align 8
  %259 = load i32, i32* @g_raid3_uma_ctor, align 4
  %260 = load i32, i32* @g_raid3_uma_dtor, align 4
  %261 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %262 = call i8* @uma_zcreate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 4096, i32 %259, i32 %260, i32* null, i32* null, i32 %261, i32 0)
  %263 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %264 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %263, i32 0, i32 13
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %264, align 8
  %266 = load i64, i64* @G_RAID3_ZONE_4K, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  store i8* %262, i8** %268, align 8
  %269 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %270 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %269, i32 0, i32 13
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %270, align 8
  %272 = load i64, i64* @G_RAID3_ZONE_4K, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 4
  store i64 0, i64* %274, align 8
  %275 = load i32, i32* @g_raid3_n4k, align 4
  %276 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %277 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %276, i32 0, i32 13
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %277, align 8
  %279 = load i64, i64* @G_RAID3_ZONE_4K, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  store i32 %275, i32* %281, align 8
  %282 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %283 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %282, i32 0, i32 13
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %283, align 8
  %285 = load i64, i64* @G_RAID3_ZONE_4K, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  store i64 0, i64* %287, align 8
  %288 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %289 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %288, i32 0, i32 13
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %289, align 8
  %291 = load i64, i64* @G_RAID3_ZONE_4K, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 2
  store i64 0, i64* %293, align 8
  br label %294

294:                                              ; preds = %188, %130
  %295 = load i32, i32* @g_raid3_worker, align 4
  %296 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %297 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %298 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %297, i32 0, i32 14
  %299 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %300 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @kproc_create(i32 %295, %struct.g_raid3_softc* %296, i32* %298, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %301)
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %364

305:                                              ; preds = %294
  %306 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %307 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %308)
  %310 = load i32, i32* @g_raid3_use_malloc, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %337, label %312

312:                                              ; preds = %305
  %313 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %314 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %313, i32 0, i32 13
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %314, align 8
  %316 = load i64, i64* @G_RAID3_ZONE_64K, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @uma_zdestroy(i8* %319)
  %321 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %322 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %321, i32 0, i32 13
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %322, align 8
  %324 = load i64, i64* @G_RAID3_ZONE_16K, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 @uma_zdestroy(i8* %327)
  %329 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %330 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %329, i32 0, i32 13
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %330, align 8
  %332 = load i64, i64* @G_RAID3_ZONE_4K, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @uma_zdestroy(i8* %335)
  br label %337

337:                                              ; preds = %312, %305
  %338 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %339 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %338, i32 0, i32 12
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  %341 = load %struct.g_geom*, %struct.g_geom** %340, align 8
  %342 = call i32 @g_destroy_geom(%struct.g_geom* %341)
  %343 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %344 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %343, i32 0, i32 11
  %345 = call i32 @mtx_destroy(i32* %344)
  %346 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %347 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %346, i32 0, i32 10
  %348 = call i32 @mtx_destroy(i32* %347)
  %349 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %350 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %349, i32 0, i32 9
  %351 = call i32 @sx_destroy(i32* %350)
  %352 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %353 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %352, i32 0, i32 3
  %354 = load %struct.g_geom*, %struct.g_geom** %353, align 8
  %355 = call i32 @g_destroy_geom(%struct.g_geom* %354)
  %356 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %357 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %356, i32 0, i32 8
  %358 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %357, align 8
  %359 = load i32, i32* @M_RAID3, align 4
  %360 = call i32 @free(%struct.g_raid3_softc* %358, i32 %359)
  %361 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %362 = load i32, i32* @M_RAID3, align 4
  %363 = call i32 @free(%struct.g_raid3_softc* %361, i32 %362)
  store %struct.g_geom* null, %struct.g_geom** %3, align 8
  br label %394

364:                                              ; preds = %294
  %365 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %366 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %365, i32 0, i32 7
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %369 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %372 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %371, i32 0, i32 6
  %373 = load i32, i32* %372, align 8
  %374 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %367, i64 %370, i32 %373)
  %375 = call i32 @root_mount_hold(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %376 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %377 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %376, i32 0, i32 5
  store i32 %375, i32* %377, align 4
  %378 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %379 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %380)
  %382 = call i32 @atomic_load_acq_int(i32* @g_raid3_timeout)
  store i32 %382, i32* %9, align 4
  %383 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %384 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %383, i32 0, i32 4
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* @hz, align 4
  %387 = mul nsw i32 %385, %386
  %388 = load i32, i32* @g_raid3_go, align 4
  %389 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %390 = call i32 @callout_reset(i32* %384, i32 %387, i32 %388, %struct.g_raid3_softc* %389)
  %391 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %392 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %391, i32 0, i32 3
  %393 = load %struct.g_geom*, %struct.g_geom** %392, align 8
  store %struct.g_geom* %393, %struct.g_geom** %3, align 8
  br label %394

394:                                              ; preds = %364, %337, %23
  %395 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  ret %struct.g_geom* %395
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, ...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i8* @uma_zcreate(i8*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.g_raid3_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @uma_zdestroy(i8*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @free(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @root_mount_hold(i8*) #1

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.g_raid3_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
