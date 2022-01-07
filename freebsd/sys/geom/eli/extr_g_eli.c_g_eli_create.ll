; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_eli_worker*, i32, i32, i32, i8*, i8*, i32 }
%struct.g_eli_worker = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.g_eli_worker*, i32, i32, %struct.g_geom* }
%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { i8*, i32, i32 }
%struct.g_eli_metadata = type { i32 }
%struct.g_eli_softc = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.g_eli_softc*, i32, i32, %struct.g_geom* }
%struct.g_consumer = type { i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"Creating device %s%s.\00", align 1
@G_ELI_SUFFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@g_eli_start = common dso_local global i32 0, align 4
@g_eli_orphan = common dso_local global i8* null, align 8
@g_eli_resize = common dso_local global i32 0, align 4
@g_eli_dumpconf = common dso_local global i32 0, align 4
@G_ELI_FLAG_WO_DETACH = common dso_local global i32 0, align 4
@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@g_eli_access = common dso_local global i32 0, align 4
@g_std_access = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"geli:queue\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"geli:ekeys\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot attach to %s (error=%d).\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot access %s (error=%d).\00", align 1
@g_eli_threads = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: CPU %u disabled, skipping.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Cannot set up crypto session for %s (error=%d).\00", align 1
@g_eli_worker = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"g_eli[%u] %s\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Cannot create kernel thread for %s (error=%d).\00", align 1
@w_next = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Device %s created.\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Encryption: %s %u\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"support for GEOM_ELI volumes encrypted with 3des\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"support for GEOM_ELI volumes encrypted with blowfish\00", align 1
@G_ELI_FLAG_AUTH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c" Integrity: %s\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"support for GEOM_ELI volumes authenticated with hmac/md5\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"    Crypto: %s\00", align 1
@G_ELI_CRYPTO_SW = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@G_ELI_FLAG_DESTROY = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"geli:destroy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_geom* @g_eli_create(%struct.gctl_req* %0, %struct.g_class* %1, %struct.g_provider* %2, %struct.g_eli_metadata* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca %struct.gctl_req*, align 8
  %9 = alloca %struct.g_class*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_eli_metadata*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.g_eli_softc*, align 8
  %15 = alloca %struct.g_eli_worker*, align 8
  %16 = alloca %struct.g_geom*, align 8
  %17 = alloca %struct.g_provider*, align 8
  %18 = alloca %struct.g_consumer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %8, align 8
  store %struct.g_class* %1, %struct.g_class** %9, align 8
  store %struct.g_provider* %2, %struct.g_provider** %10, align 8
  store %struct.g_eli_metadata* %3, %struct.g_eli_metadata** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @G_ELI_SUFFIX, align 4
  %27 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load %struct.g_class*, %struct.g_class** %9, align 8
  %29 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @G_ELI_SUFFIX, align 4
  %33 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  store %struct.g_geom* %33, %struct.g_geom** %16, align 8
  %34 = load i32, i32* @M_ELI, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.g_eli_worker* @malloc(i32 88, i32 %34, i32 %37)
  %39 = bitcast %struct.g_eli_worker* %38 to %struct.g_eli_softc*
  store %struct.g_eli_softc* %39, %struct.g_eli_softc** %14, align 8
  %40 = load i32, i32* @g_eli_start, align 4
  %41 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %42 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @g_eli_orphan, align 8
  %44 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %45 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @g_eli_orphan, align 8
  %47 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %48 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @g_eli_resize, align 4
  %50 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %51 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @g_eli_dumpconf, align 4
  %53 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %54 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %56 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @G_ELI_FLAG_WO_DETACH, align 4
  %59 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %6
  %64 = load i32, i32* @g_eli_access, align 4
  %65 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %66 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %71

67:                                               ; preds = %6
  %68 = load i32, i32* @g_std_access, align 4
  %69 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %70 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %73 = bitcast %struct.g_eli_softc* %72 to %struct.g_eli_worker*
  %74 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %75 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %76 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %79 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @eli_metadata_softc(%struct.g_eli_worker* %73, %struct.g_eli_metadata* %74, i32 %77, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %84 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %86 = bitcast %struct.g_eli_softc* %85 to %struct.g_eli_worker*
  %87 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %88 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %87, i32 0, i32 0
  store %struct.g_eli_worker* %86, %struct.g_eli_worker** %88, align 8
  %89 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %90 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %91 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %90, i32 0, i32 17
  store %struct.g_geom* %89, %struct.g_geom** %91, align 8
  %92 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %93 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %92, i32 0, i32 16
  %94 = call i32 @bioq_init(i32* %93)
  %95 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %96 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %95, i32 0, i32 7
  %97 = load i32, i32* @MTX_DEF, align 4
  %98 = call i32 @mtx_init(i32* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %97)
  %99 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %100 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %99, i32 0, i32 15
  %101 = load i32, i32* @MTX_DEF, align 4
  %102 = call i32 @mtx_init(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %101)
  store %struct.g_provider* null, %struct.g_provider** %17, align 8
  %103 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %104 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %103)
  store %struct.g_consumer* %104, %struct.g_consumer** %18, align 8
  %105 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %106 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %107 = call i32 @g_attach(%struct.g_consumer* %105, %struct.g_provider* %106)
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %71
  %111 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %112 = icmp ne %struct.gctl_req* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %115 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %116 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %22, align 4
  %119 = call i32 @gctl_error(%struct.gctl_req* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %117, i32 %118)
  br label %126

120:                                              ; preds = %110
  %121 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %122 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %22, align 4
  %125 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %113
  br label %347

127:                                              ; preds = %71
  %128 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %129 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 0, i32 1
  store i32 %135, i32* %21, align 4
  %136 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %137 = load i32, i32* %21, align 4
  %138 = call i32 @g_access(%struct.g_consumer* %136, i32 1, i32 %137, i32 1)
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %127
  %142 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %143 = icmp ne %struct.gctl_req* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %146 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %147 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %22, align 4
  %150 = call i32 @gctl_error(%struct.gctl_req* %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %148, i32 %149)
  br label %157

151:                                              ; preds = %141
  %152 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %153 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %22, align 4
  %156 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %144
  br label %347

158:                                              ; preds = %127
  %159 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %160 = bitcast %struct.g_eli_softc* %159 to %struct.g_eli_worker*
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @g_eli_mkey_propagate(%struct.g_eli_worker* %160, i32* %161)
  %163 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %164 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %163, i32 0, i32 8
  %165 = call i32 @LIST_INIT(i32* %164)
  %166 = load i32, i32* @g_eli_threads, align 4
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = load i32, i32* @mp_ncpus, align 4
  store i32 %170, i32* %20, align 4
  br label %171

171:                                              ; preds = %169, %158
  %172 = load i32, i32* @mp_ncpus, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* @mp_ncpus, align 4
  %177 = icmp eq i32 %175, %176
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i1 [ false, %171 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %182 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  store i32 0, i32* %19, align 4
  br label %183

183:                                              ; preds = %277, %178
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %20, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %280

187:                                              ; preds = %183
  %188 = load i32, i32* %19, align 4
  %189 = call i64 @g_eli_cpu_is_disabled(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %193 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %19, align 4
  %196 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %194, i32 %195)
  br label %277

197:                                              ; preds = %187
  %198 = load i32, i32* @M_ELI, align 4
  %199 = load i32, i32* @M_WAITOK, align 4
  %200 = load i32, i32* @M_ZERO, align 4
  %201 = or i32 %199, %200
  %202 = call %struct.g_eli_worker* @malloc(i32 88, i32 %198, i32 %201)
  store %struct.g_eli_worker* %202, %struct.g_eli_worker** %15, align 8
  %203 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %204 = bitcast %struct.g_eli_softc* %203 to %struct.g_eli_worker*
  %205 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %206 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %205, i32 0, i32 14
  store %struct.g_eli_worker* %204, %struct.g_eli_worker** %206, align 8
  %207 = load i32, i32* %19, align 4
  %208 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %209 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @TRUE, align 4
  %211 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %212 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %211, i32 0, i32 13
  store i32 %210, i32* %212, align 8
  %213 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %214 = call i32 @g_eli_newsession(%struct.g_eli_worker* %213)
  store i32 %214, i32* %22, align 4
  %215 = load i32, i32* %22, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %237

217:                                              ; preds = %197
  %218 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %219 = load i32, i32* @M_ELI, align 4
  %220 = call i32 @free(%struct.g_eli_worker* %218, i32 %219)
  %221 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %222 = icmp ne %struct.gctl_req* %221, null
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %225 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %226 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load i32, i32* %22, align 4
  %229 = call i32 @gctl_error(%struct.gctl_req* %224, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %227, i32 %228)
  br label %236

230:                                              ; preds = %217
  %231 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %232 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load i32, i32* %22, align 4
  %235 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %233, i32 %234)
  br label %236

236:                                              ; preds = %230, %223
  br label %347

237:                                              ; preds = %197
  %238 = load i32, i32* @g_eli_worker, align 4
  %239 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %240 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %241 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %240, i32 0, i32 12
  %242 = load i32, i32* %19, align 4
  %243 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %244 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @kproc_create(i32 %238, %struct.g_eli_worker* %239, i32* %241, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %242, i8* %245)
  store i32 %246, i32* %22, align 4
  %247 = load i32, i32* %22, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %237
  %250 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %251 = call i32 @g_eli_freesession(%struct.g_eli_worker* %250)
  %252 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %253 = load i32, i32* @M_ELI, align 4
  %254 = call i32 @free(%struct.g_eli_worker* %252, i32 %253)
  %255 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %256 = icmp ne %struct.gctl_req* %255, null
  br i1 %256, label %257, label %264

257:                                              ; preds = %249
  %258 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %259 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %260 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %22, align 4
  %263 = call i32 @gctl_error(%struct.gctl_req* %258, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %261, i32 %262)
  br label %270

264:                                              ; preds = %249
  %265 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %266 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %22, align 4
  %269 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %267, i32 %268)
  br label %270

270:                                              ; preds = %264, %257
  br label %347

271:                                              ; preds = %237
  %272 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %273 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %272, i32 0, i32 8
  %274 = load %struct.g_eli_worker*, %struct.g_eli_worker** %15, align 8
  %275 = load i32, i32* @w_next, align 4
  %276 = call i32 @LIST_INSERT_HEAD(i32* %273, %struct.g_eli_worker* %274, i32 %275)
  br label %277

277:                                              ; preds = %271, %191
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %19, align 4
  br label %183

280:                                              ; preds = %183
  %281 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %282 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %283 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load i32, i32* @G_ELI_SUFFIX, align 4
  %286 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %284, i32 %285)
  store %struct.g_provider* %286, %struct.g_provider** %17, align 8
  %287 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %288 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %287, i32 0, i32 11
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  %291 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %293 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  %296 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 8
  %297 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  %298 = call i32 @g_error_provider(%struct.g_provider* %297, i32 0)
  %299 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  %300 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %301)
  %303 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %304 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = call i8* @g_eli_algo2str(i32 %305)
  %307 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %308 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %306, i32 %309)
  %311 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %312 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  switch i32 %313, label %318 [
    i32 130, label %314
    i32 129, label %316
  ]

314:                                              ; preds = %280
  %315 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  br label %318

316:                                              ; preds = %280
  %317 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  br label %318

318:                                              ; preds = %280, %316, %314
  %319 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %320 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %318
  %326 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %327 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = call i8* @g_eli_algo2str(i32 %328)
  %330 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %329)
  %331 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %332 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  switch i32 %333, label %336 [
    i32 128, label %334
  ]

334:                                              ; preds = %325
  %335 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0))
  br label %336

336:                                              ; preds = %325, %334
  br label %337

337:                                              ; preds = %336, %318
  %338 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %339 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %338, i32 0, i32 6
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @G_ELI_CRYPTO_SW, align 8
  %342 = icmp eq i64 %340, %341
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)
  %345 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %344)
  %346 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  store %struct.g_geom* %346, %struct.g_geom** %7, align 8
  br label %408

347:                                              ; preds = %270, %236, %157, %126
  %348 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %349 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %348, i32 0, i32 7
  %350 = call i32 @mtx_lock(i32* %349)
  %351 = load i32, i32* @G_ELI_FLAG_DESTROY, align 4
  %352 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %353 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 4
  %356 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %357 = bitcast %struct.g_eli_softc* %356 to %struct.g_eli_worker*
  %358 = call i32 @wakeup(%struct.g_eli_worker* %357)
  br label %359

359:                                              ; preds = %365, %347
  %360 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %361 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %360, i32 0, i32 8
  %362 = call i32 @LIST_EMPTY(i32* %361)
  %363 = icmp ne i32 %362, 0
  %364 = xor i1 %363, true
  br i1 %364, label %365, label %372

365:                                              ; preds = %359
  %366 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %367 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %366, i32 0, i32 8
  %368 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %369 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %368, i32 0, i32 7
  %370 = load i32, i32* @PRIBIO, align 4
  %371 = call i32 @msleep(i32* %367, i32* %369, i32 %370, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 0)
  br label %359

372:                                              ; preds = %359
  %373 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %374 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %373, i32 0, i32 7
  %375 = call i32 @mtx_destroy(i32* %374)
  %376 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %377 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %376, i32 0, i32 1
  %378 = load i32*, i32** %377, align 8
  %379 = icmp ne i32* %378, null
  br i1 %379, label %380, label %393

380:                                              ; preds = %372
  %381 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %382 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %387 = load i32, i32* %21, align 4
  %388 = sub nsw i32 0, %387
  %389 = call i32 @g_access(%struct.g_consumer* %386, i32 -1, i32 %388, i32 -1)
  br label %390

390:                                              ; preds = %385, %380
  %391 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %392 = call i32 @g_detach(%struct.g_consumer* %391)
  br label %393

393:                                              ; preds = %390, %372
  %394 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %395 = call i32 @g_destroy_consumer(%struct.g_consumer* %394)
  %396 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  %397 = call i32 @g_destroy_geom(%struct.g_geom* %396)
  %398 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %399 = bitcast %struct.g_eli_softc* %398 to %struct.g_eli_worker*
  %400 = call i32 @g_eli_key_destroy(%struct.g_eli_worker* %399)
  %401 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %402 = bitcast %struct.g_eli_softc* %401 to %struct.g_eli_worker*
  %403 = call i32 @bzero(%struct.g_eli_worker* %402, i32 88)
  %404 = load %struct.g_eli_softc*, %struct.g_eli_softc** %14, align 8
  %405 = bitcast %struct.g_eli_softc* %404 to %struct.g_eli_worker*
  %406 = load i32, i32* @M_ELI, align 4
  %407 = call i32 @free(%struct.g_eli_worker* %405, i32 %406)
  store %struct.g_geom* null, %struct.g_geom** %7, align 8
  br label %408

408:                                              ; preds = %393, %337
  %409 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  ret %struct.g_geom* %409
}

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i8*, ...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i8*, i32) #1

declare dso_local %struct.g_eli_worker* @malloc(i32, i32, i32) #1

declare dso_local i32 @eli_metadata_softc(%struct.g_eli_worker*, %struct.g_eli_metadata*, i32, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*, i32) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_eli_mkey_propagate(%struct.g_eli_worker*, i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i64 @g_eli_cpu_is_disabled(i32) #1

declare dso_local i32 @g_eli_newsession(%struct.g_eli_worker*) #1

declare dso_local i32 @free(%struct.g_eli_worker*, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.g_eli_worker*, i32*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @g_eli_freesession(%struct.g_eli_worker*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_eli_worker*, i32) #1

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i8*, i32) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i8* @g_eli_algo2str(i32) #1

declare dso_local i32 @gone_in(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_eli_worker*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

declare dso_local i32 @g_eli_key_destroy(%struct.g_eli_worker*) #1

declare dso_local i32 @bzero(%struct.g_eli_worker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
