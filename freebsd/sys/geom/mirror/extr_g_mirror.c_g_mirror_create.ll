; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i8*, %struct.g_mirror_softc*, i32, i32, i32 }
%struct.g_mirror_softc = type { i32, i32, %struct.g_geom*, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.g_geom*, i64 }
%struct.g_class = type { i32 }
%struct.g_mirror_metadata = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Creating device %s (id=%u).\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_MIRROR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@g_mirror_start = common dso_local global i32 0, align 4
@g_mirror_orphan = common dso_local global i8* null, align 8
@g_mirror_access = common dso_local global i32 0, align 4
@g_mirror_dumpconf = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"gmirror:lock\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gmirror:queue\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"gmirror:events\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"gmirror:done\00", align 1
@G_MIRROR_DEVICE_STATE_STARTING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%s.sync\00", align 1
@g_mirror_worker = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"g_mirror %s\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Cannot create kernel thread for %s.\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Device %s created (%u components, id=%u).\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"GMIRROR\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"root_mount_hold %p\00", align 1
@g_mirror_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@g_mirror_go = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_geom* @g_mirror_create(%struct.g_class* %0, %struct.g_mirror_metadata* %1, i32 %2) #0 {
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca %struct.g_mirror_metadata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.g_mirror_softc*, align 8
  %9 = alloca %struct.g_geom*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.g_class* %0, %struct.g_class** %5, align 8
  store %struct.g_mirror_metadata* %1, %struct.g_mirror_metadata** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @g_topology_assert()
  %13 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %14 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %17 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %21 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store %struct.g_geom* null, %struct.g_geom** %4, align 8
  br label %198

25:                                               ; preds = %3
  %26 = load %struct.g_class*, %struct.g_class** %5, align 8
  %27 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %28 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store %struct.g_geom* %30, %struct.g_geom** %9, align 8
  %31 = load i32, i32* @M_MIRROR, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.g_mirror_softc* @malloc(i32 160, i32 %31, i32 %34)
  store %struct.g_mirror_softc* %35, %struct.g_mirror_softc** %8, align 8
  %36 = load i32, i32* @g_mirror_start, align 4
  %37 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %38 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** @g_mirror_orphan, align 8
  %40 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %41 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @g_mirror_access, align 4
  %43 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %44 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @g_mirror_dumpconf, align 4
  %46 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %47 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %50 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %49, i32 0, i32 27
  store i32 %48, i32* %50, align 4
  %51 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %52 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %55 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %57 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %58 = call i32 @g_mirror_reinit_from_metadata(%struct.g_mirror_softc* %56, %struct.g_mirror_metadata* %57)
  %59 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %60 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %63 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %62, i32 0, i32 26
  store i32 %61, i32* %63, align 8
  %64 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %65 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %64, i32 0, i32 25
  store i64 0, i64* %65, align 8
  %66 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %67 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* @time_uptime, align 4
  %69 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %70 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %69, i32 0, i32 24
  store i32 %68, i32* %70, align 8
  %71 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %72 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %71, i32 0, i32 23
  store i64 0, i64* %72, align 8
  %73 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %74 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %76 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %75, i32 0, i32 22
  %77 = call i32 @sx_init(i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %79 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %78, i32 0, i32 21
  %80 = call i32 @TAILQ_INIT(i32* %79)
  %81 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %82 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %81, i32 0, i32 20
  %83 = load i32, i32* @MTX_DEF, align 4
  %84 = call i32 @mtx_init(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %83)
  %85 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %86 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %85, i32 0, i32 19
  %87 = call i32 @TAILQ_INIT(i32* %86)
  %88 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %89 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %88, i32 0, i32 18
  %90 = call i32 @TAILQ_INIT(i32* %89)
  %91 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %92 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %91, i32 0, i32 17
  %93 = call i32 @TAILQ_INIT(i32* %92)
  %94 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %95 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %94, i32 0, i32 16
  %96 = call i32 @LIST_INIT(i32* %95)
  %97 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %98 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %97, i32 0, i32 15
  %99 = call i32 @TAILQ_INIT(i32* %98)
  %100 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %101 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %100, i32 0, i32 14
  %102 = load i32, i32* @MTX_DEF, align 4
  %103 = call i32 @mtx_init(i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %102)
  %104 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %105 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %104, i32 0, i32 3
  %106 = call i32 @callout_init(i32* %105, i32 1)
  %107 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %108 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %107, i32 0, i32 13
  %109 = load i32, i32* @MTX_DEF, align 4
  %110 = call i32 @mtx_init(i32* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %109)
  %111 = load i32, i32* @G_MIRROR_DEVICE_STATE_STARTING, align 4
  %112 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %113 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %112, i32 0, i32 12
  store i32 %111, i32* %113, align 8
  %114 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %115 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %116 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %115, i32 0, i32 1
  store %struct.g_mirror_softc* %114, %struct.g_mirror_softc** %116, align 8
  %117 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %118 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %119 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %118, i32 0, i32 2
  store %struct.g_geom* %117, %struct.g_geom** %119, align 8
  %120 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %121 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %120, i32 0, i32 11
  store i32* null, i32** %121, align 8
  %122 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %123 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %122, i32 0, i32 10
  store i64 0, i64* %123, align 8
  %124 = load %struct.g_class*, %struct.g_class** %5, align 8
  %125 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %126 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  store %struct.g_geom* %128, %struct.g_geom** %9, align 8
  %129 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %130 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %131 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %130, i32 0, i32 1
  store %struct.g_mirror_softc* %129, %struct.g_mirror_softc** %131, align 8
  %132 = load i8*, i8** @g_mirror_orphan, align 8
  %133 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %134 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %136 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %137 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store %struct.g_geom* %135, %struct.g_geom** %138, align 8
  %139 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %140 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @g_mirror_worker, align 4
  %143 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %144 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %145 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %144, i32 0, i32 9
  %146 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %147 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @kproc_create(i32 %142, %struct.g_mirror_softc* %143, i32* %145, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %25
  %153 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %154 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  %157 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %158 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load %struct.g_geom*, %struct.g_geom** %159, align 8
  %161 = call i32 @g_destroy_geom(%struct.g_geom* %160)
  %162 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %163 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %162, i32 0, i32 2
  %164 = load %struct.g_geom*, %struct.g_geom** %163, align 8
  %165 = call i32 @g_destroy_geom(%struct.g_geom* %164)
  %166 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %167 = call i32 @g_mirror_free_device(%struct.g_mirror_softc* %166)
  store %struct.g_geom* null, %struct.g_geom** %4, align 8
  br label %198

168:                                              ; preds = %25
  %169 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %170 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %173 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %176 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %171, i32 %174, i32 %177)
  %179 = call i32 @root_mount_hold(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %180 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %181 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %183 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @g_mirror_timeout, align 4
  %187 = load i32, i32* @hz, align 4
  %188 = mul nsw i32 %186, %187
  store i32 %188, i32* %11, align 4
  %189 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %190 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %189, i32 0, i32 3
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @g_mirror_go, align 4
  %193 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %194 = call i32 @callout_reset(i32* %190, i32 %191, i32 %192, %struct.g_mirror_softc* %193)
  %195 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  %196 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %195, i32 0, i32 2
  %197 = load %struct.g_geom*, %struct.g_geom** %196, align 8
  store %struct.g_geom* %197, %struct.g_geom** %4, align 8
  br label %198

198:                                              ; preds = %168, %152, %24
  %199 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  ret %struct.g_geom* %199
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, ...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i32) #1

declare dso_local %struct.g_mirror_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @g_mirror_reinit_from_metadata(%struct.g_mirror_softc*, %struct.g_mirror_metadata*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.g_mirror_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

declare dso_local i32 @g_mirror_free_device(%struct.g_mirror_softc*) #1

declare dso_local i32 @root_mount_hold(i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.g_mirror_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
