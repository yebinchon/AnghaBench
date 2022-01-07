; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde.c_g_bde_create_geom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde.c_g_bde_create_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { i32, i32, i32, i64, i32 }
%struct.g_geom = type { %struct.g_bde_softc*, i32 }
%struct.g_bde_softc = type { i8*, i32, i32, i32, i32, i32, i32, i32, %struct.g_bde_key, %struct.g_consumer*, %struct.g_geom* }
%struct.g_bde_key = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"g_bde_create_geom(%s, %s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.bde\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not access consumer\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"No usable key presented\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid key presented\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@G_BDE_SKEYLEN = common dso_local global i32 0, align 4
@G_BDE_MAXKEYS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"g_bde_worklist\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@g_bde_worker = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"g_bde %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Lock was destroyed\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Lock was nuked\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Could not open lock\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Lock not found\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Could not open lock (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, %struct.g_provider*)* @g_bde_create_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_create_geom(%struct.gctl_req* %0, %struct.g_class* %1, %struct.g_provider* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca %struct.g_bde_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.g_bde_softc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store %struct.g_provider* %2, %struct.g_provider** %6, align 8
  %17 = load i32, i32* @G_T_TOPOLOGY, align 4
  %18 = load %struct.g_class*, %struct.g_class** %5, align 8
  %19 = getelementptr inbounds %struct.g_class, %struct.g_class* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @g_trace(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = call i32 (...) @g_topology_assert()
  store %struct.g_geom* null, %struct.g_geom** %7, align 8
  %26 = load %struct.g_class*, %struct.g_class** %5, align 8
  %27 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store %struct.g_geom* %30, %struct.g_geom** %7, align 8
  %31 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %32 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %31)
  store %struct.g_consumer* %32, %struct.g_consumer** %8, align 8
  %33 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = call i32 @g_attach(%struct.g_consumer* %33, %struct.g_provider* %34)
  %36 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %37 = call i32 @g_access(%struct.g_consumer* %36, i32 1, i32 1, i32 1)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %3
  %41 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %42 = call i32 @g_detach(%struct.g_consumer* %41)
  %43 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %44 = call i32 @g_destroy_consumer(%struct.g_consumer* %43)
  %45 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %46 = call i32 @g_destroy_geom(%struct.g_geom* %45)
  %47 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %48 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %264

49:                                               ; preds = %3
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %52 = call i8* @gctl_get_param(%struct.gctl_req* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %50
  %60 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %61 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %210

62:                                               ; preds = %55
  %63 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %64 = call i8* @gctl_get_param(%struct.gctl_req* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %11)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 16
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %72 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %210

73:                                               ; preds = %67, %62
  %74 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %75 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %80 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @M_WAITOK, align 4
  %85 = load i32, i32* @M_ZERO, align 4
  %86 = or i32 %84, %85
  %87 = call %struct.g_bde_softc* @g_malloc(i32 96, i32 %86)
  store %struct.g_bde_softc* %87, %struct.g_bde_softc** %14, align 8
  %88 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %89 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %90 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %89, i32 0, i32 0
  store %struct.g_bde_softc* %88, %struct.g_bde_softc** %90, align 8
  %91 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %92 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %93 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %92, i32 0, i32 10
  store %struct.g_geom* %91, %struct.g_geom** %93, align 8
  %94 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %95 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %96 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %95, i32 0, i32 9
  store %struct.g_consumer* %94, %struct.g_consumer** %96, align 8
  %97 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @g_bde_decrypt_lock(%struct.g_bde_softc* %97, i8* %98, i8* %99, i32 %100, i32 %101, i32* null)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %104 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @bzero(i8* %105, i32 8)
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %73
  br label %210

110:                                              ; preds = %73
  %111 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %112 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %111, i32 0, i32 8
  store %struct.g_bde_key* %112, %struct.g_bde_key** %9, align 8
  %113 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %114 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @G_BDE_SKEYLEN, align 4
  %117 = sdiv i32 %115, %116
  %118 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %119 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %121 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %124 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %128 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %130 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %133 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %131, %134
  %136 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %137 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %139 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %142 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = load i32, i32* @G_BDE_MAXKEYS, align 4
  %146 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %147 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = sub nsw i64 %144, %150
  %152 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %153 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %152, i32 0, i32 6
  store i64 %151, i64* %153, align 8
  %154 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %155 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %158 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %160 = call i32 @g_bde_max_sector(%struct.g_bde_key* %159)
  %161 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %162 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %164 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %167 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %169 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %168, i32 0, i32 7
  %170 = call i32 @TAILQ_INIT(i32* %169)
  %171 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %172 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %171, i32 0, i32 6
  %173 = call i32 @TAILQ_INIT(i32* %172)
  %174 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %175 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %174, i32 0, i32 5
  %176 = load i32, i32* @MTX_DEF, align 4
  %177 = call i32 @mtx_init(i32* %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %176)
  %178 = load i32, i32* @g_bde_worker, align 4
  %179 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %180 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %181 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %180, i32 0, i32 4
  %182 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %183 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @kproc_create(i32 %178, %struct.g_geom* %179, i32* %181, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %184)
  %186 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %187 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %188 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %189)
  store %struct.g_provider* %190, %struct.g_provider** %6, align 8
  %191 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %192 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %195 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %197 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  %198 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %199 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %202 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.g_bde_softc*, %struct.g_bde_softc** %14, align 8
  %204 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %207 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %209 = call i32 @g_error_provider(%struct.g_provider* %208, i32 0)
  br label %210

210:                                              ; preds = %110, %109, %70, %59
  %211 = load i8*, i8** %15, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i8*, i8** %15, align 8
  %215 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %216 = call i32 @bzero(i8* %214, i32 %215)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i8*, i8** %16, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i8*, i8** %16, align 8
  %222 = call i32 @bzero(i8* %221, i32 16)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %264

227:                                              ; preds = %223
  %228 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %229 = call i32 @g_access(%struct.g_consumer* %228, i32 -1, i32 -1, i32 -1)
  %230 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %231 = call i32 @g_detach(%struct.g_consumer* %230)
  %232 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %233 = call i32 @g_destroy_consumer(%struct.g_consumer* %232)
  %234 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %235 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %234, i32 0, i32 0
  %236 = load %struct.g_bde_softc*, %struct.g_bde_softc** %235, align 8
  %237 = icmp ne %struct.g_bde_softc* %236, null
  br i1 %237, label %238, label %243

238:                                              ; preds = %227
  %239 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %240 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %239, i32 0, i32 0
  %241 = load %struct.g_bde_softc*, %struct.g_bde_softc** %240, align 8
  %242 = call i32 @g_free(%struct.g_bde_softc* %241)
  br label %243

243:                                              ; preds = %238, %227
  %244 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %245 = call i32 @g_destroy_geom(%struct.g_geom* %244)
  %246 = load i32, i32* %10, align 4
  switch i32 %246, label %259 [
    i32 130, label %247
    i32 128, label %250
    i32 131, label %253
    i32 129, label %256
  ]

247:                                              ; preds = %243
  %248 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %249 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %263

250:                                              ; preds = %243
  %251 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %252 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %263

253:                                              ; preds = %243
  %254 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %255 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %254, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %263

256:                                              ; preds = %243
  %257 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %258 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %257, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %263

259:                                              ; preds = %243
  %260 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %261 = load i32, i32* %10, align 4
  %262 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %260, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %259, %256, %253, %250, %247
  br label %264

264:                                              ; preds = %263, %226, %40
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, i32, i32) #1

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i32) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local %struct.g_bde_softc* @g_malloc(i32, i32) #1

declare dso_local i32 @g_bde_decrypt_lock(%struct.g_bde_softc*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @g_bde_max_sector(%struct.g_bde_key*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.g_geom*, i32*, i32, i32, i8*, i32) #1

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i32) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @g_free(%struct.g_bde_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
