; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i32, i32, i32, i32, i32, %struct.g_cache_softc* }
%struct.g_cache_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.g_geom*, i32, i32*, i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { i32, i32, i32 }
%struct.g_cache_metadata = type { i32, i32, i32 }
%struct.g_consumer = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Creating device %s.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid size for device %s.\00", align 1
@MAXPHYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid blocksize for provider %s.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Provider %s already exists.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"gcache\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"GEOM CACHE mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@G_CACHE_BUCKETS = common dso_local global i32 0, align 4
@g_cache_start = common dso_local global i32 0, align 4
@g_cache_orphan = common dso_local global i32 0, align 4
@g_cache_access = common dso_local global i32 0, align 4
@g_cache_dumpconf = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"cache/%s\00", align 1
@G_CACHE_TYPE_AUTOMATIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Cannot attach to provider %s.\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Device %s created.\00", align 1
@g_cache_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@g_cache_go = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_geom* (%struct.g_class*, %struct.g_provider*, %struct.g_cache_metadata*, i32)* @g_cache_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_geom* @g_cache_create(%struct.g_class* %0, %struct.g_provider* %1, %struct.g_cache_metadata* %2, i32 %3) #0 {
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_class*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_cache_metadata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_cache_softc*, align 8
  %11 = alloca %struct.g_geom*, align 8
  %12 = alloca %struct.g_provider*, align 8
  %13 = alloca %struct.g_consumer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_class* %0, %struct.g_class** %6, align 8
  store %struct.g_provider* %1, %struct.g_provider** %7, align 8
  store %struct.g_cache_metadata* %2, %struct.g_cache_metadata** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = call i32 (...) @g_topology_assert()
  store %struct.g_geom* null, %struct.g_geom** %11, align 8
  store %struct.g_provider* null, %struct.g_provider** %12, align 8
  store %struct.g_consumer* null, %struct.g_consumer** %13, align 8
  %17 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %18 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @G_CACHE_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %22 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %27 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store %struct.g_geom* null, %struct.g_geom** %5, align 8
  br label %231

30:                                               ; preds = %4
  %31 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %32 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ffs(i32 %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  %36 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %37 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %30
  %41 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %42 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAXPHYS, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %40
  %47 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %48 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = shl i32 1, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %55 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %58 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53, %46, %40, %30
  %63 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %64 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store %struct.g_geom* null, %struct.g_geom** %5, align 8
  br label %231

67:                                               ; preds = %53
  %68 = load %struct.g_class*, %struct.g_class** %6, align 8
  %69 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %70 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %69, i32 0, i32 2
  %71 = bitcast i32* %70 to i8*
  %72 = call i32* @g_cache_find_device(%struct.g_class* %68, i8* %71)
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %76 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  store %struct.g_geom* null, %struct.g_geom** %5, align 8
  br label %231

79:                                               ; preds = %67
  %80 = load %struct.g_class*, %struct.g_class** %6, align 8
  %81 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %82 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  store %struct.g_geom* %84, %struct.g_geom** %11, align 8
  %85 = load i32, i32* @M_WAITOK, align 4
  %86 = load i32, i32* @M_ZERO, align 4
  %87 = or i32 %85, %86
  %88 = call %struct.g_cache_softc* @g_malloc(i32 64, i32 %87)
  store %struct.g_cache_softc* %88, %struct.g_cache_softc** %10, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %91 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %94 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 1, %95
  %97 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %98 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %100 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %103 = call i32 @uma_zcreate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32* null, i32* null, i32* null, i32* null, i32 %102, i32 0)
  %104 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %105 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %107 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %106, i32 0, i32 5
  %108 = load i32, i32* @MTX_DEF, align 4
  %109 = call i32 @mtx_init(i32* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %108)
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %122, %79
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @G_CACHE_BUCKETS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %116 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %115, i32 0, i32 9
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @LIST_INIT(i32* %120)
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %110

125:                                              ; preds = %110
  %126 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %127 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %126, i32 0, i32 8
  %128 = call i32 @TAILQ_INIT(i32* %127)
  %129 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %8, align 8
  %130 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %133 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %135 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %134, i32 0, i32 4
  %136 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %137 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %136, i32 0, i32 5
  %138 = call i32 @callout_init_mtx(i32* %135, i32* %137, i32 0)
  %139 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %140 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %141 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %140, i32 0, i32 5
  store %struct.g_cache_softc* %139, %struct.g_cache_softc** %141, align 8
  %142 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %143 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %144 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %143, i32 0, i32 7
  store %struct.g_geom* %142, %struct.g_geom** %144, align 8
  %145 = load i32, i32* @g_cache_start, align 4
  %146 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %147 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @g_cache_orphan, align 4
  %149 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %150 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @g_cache_access, align 4
  %152 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %153 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @g_cache_dumpconf, align 4
  %155 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %156 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %158 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %159 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %160)
  store %struct.g_provider* %161, %struct.g_provider** %12, align 8
  %162 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %163 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %166 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %168 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %171 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @G_CACHE_TYPE_AUTOMATIC, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %125
  %176 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %177 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %180 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %175, %125
  %184 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %185 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %188 = call i32 @OFF2BNO(i32 %186, %struct.g_cache_softc* %187)
  %189 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %190 = call i32 @BNO2OFF(i32 %188, %struct.g_cache_softc* %189)
  %191 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %192 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  %193 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %194 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %193)
  store %struct.g_consumer* %194, %struct.g_consumer** %13, align 8
  %195 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %196 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %197 = call i64 @g_attach(%struct.g_consumer* %195, %struct.g_provider* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %183
  %200 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %201 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %202)
  %204 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %205 = call i32 @g_destroy_consumer(%struct.g_consumer* %204)
  %206 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %207 = call i32 @g_destroy_provider(%struct.g_provider* %206)
  %208 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %209 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %208, i32 0, i32 5
  %210 = call i32 @mtx_destroy(i32* %209)
  %211 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %212 = call i32 @g_free(%struct.g_cache_softc* %211)
  %213 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %214 = call i32 @g_destroy_geom(%struct.g_geom* %213)
  store %struct.g_geom* null, %struct.g_geom** %5, align 8
  br label %231

215:                                              ; preds = %183
  %216 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %217 = call i32 @g_error_provider(%struct.g_provider* %216, i32 0)
  %218 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %219 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  %222 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %223 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %222, i32 0, i32 4
  %224 = load i32, i32* @g_cache_timeout, align 4
  %225 = load i32, i32* @hz, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* @g_cache_go, align 4
  %228 = load %struct.g_cache_softc*, %struct.g_cache_softc** %10, align 8
  %229 = call i32 @callout_reset(i32* %223, i32 %226, i32 %227, %struct.g_cache_softc* %228)
  %230 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  store %struct.g_geom* %230, %struct.g_geom** %5, align 8
  br label %231

231:                                              ; preds = %215, %199, %74, %62, %25
  %232 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  ret %struct.g_geom* %232
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_CACHE_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32* @g_cache_find_device(%struct.g_class*, i8*) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i32) #1

declare dso_local %struct.g_cache_softc* @g_malloc(i32, i32) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i32) #1

declare dso_local i32 @BNO2OFF(i32, %struct.g_cache_softc*) #1

declare dso_local i32 @OFF2BNO(i32, %struct.g_cache_softc*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i64 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_provider(%struct.g_provider*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @g_free(%struct.g_cache_softc*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.g_cache_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
