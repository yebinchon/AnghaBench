; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror_ctl.c_g_mirror_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror_ctl.c_g_mirror_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_mirror_metadata = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i64, i32, i32, i64, i32, i64, i64, i8*, i32 }
%struct.g_geom = type { i8*, %struct.g_mirror_softc*, i32 }
%struct.g_mirror_softc = type { i32, i32 }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i64, i32, i8* }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@G_MIRROR_MAGIC = common dso_local global i8* null, align 8
@G_MIRROR_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No slice argument.\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"balance\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"No balance argument.\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Invalid balance algorithm.\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"noautosync\00", align 1
@G_MIRROR_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"nofailsync\00", align 1
@G_MIRROR_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@g_mirror_create_orphan = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"arg%u\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Disk %s is invalid.\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Can't open disk %s.\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Disk %s has no media.\00", align 1
@G_MIRROR_TYPE_MANUAL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"Can't create %s.\00", align 1
@G_MIRROR_DEVICE_FLAG_TASTING = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"Can't attach disk(s) to %s:\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Provider %s disappear?!\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Disk %u (%s) not attached to %s.\00", align 1
@G_MIRROR_DEVICE_FLAG_DESTROY = common dso_local global i32 0, align 4
@G_MIRROR_DESTROY_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_mirror_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_mirror_metadata, align 8
  %6 = alloca %struct.g_geom*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca %struct.g_mirror_softc*, align 8
  %10 = alloca %struct.sbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %22 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %23 = call i8* @gctl_get_paraml(%struct.gctl_req* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %29 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %396

30:                                               ; preds = %2
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %396

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** @G_MIRROR_MAGIC, align 8
  %41 = call i32 @strlcpy(i8* %39, i8* %40, i32 8)
  %42 = load i32, i32* @G_MIRROR_VERSION, align 4
  %43 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 17
  store i32 %42, i32* %43, align 8
  %44 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %45 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %50 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %396

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @strlcpy(i8* %53, i8* %54, i32 8)
  %56 = call i8* (...) @arc4random()
  %57 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 16
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 15
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 3
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 14
  store i64 0, i64* %64, align 8
  %65 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %66 = call i8* @gctl_get_paraml(%struct.gctl_req* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %72 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %396

73:                                               ; preds = %51
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 13
  store i32 %75, i32* %76, align 8
  %77 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %78 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %78, i8** %16, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %83 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %396

84:                                               ; preds = %73
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @balance_id(i8* %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %91 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %396

92:                                               ; preds = %84
  %93 = load i32, i32* %17, align 4
  %94 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 11
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 12
  store i64 0, i64* %96, align 8
  %97 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %98 = call i8* @gctl_get_paraml(%struct.gctl_req* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %92
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOAUTOSYNC, align 4
  %108 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %102, %92
  %112 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %113 = call i8* @gctl_get_paraml(%struct.gctl_req* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %15, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOFAILSYNC, align 4
  %123 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %117, %111
  %127 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 10
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bzero(i32 %128, i32 4)
  %130 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 9
  store i64 0, i64* %130, align 8
  %131 = call i32 (...) @g_topology_lock()
  %132 = load i64, i64* @OFF_MAX, align 8
  store i64 %132, i64* %21, align 8
  store i32 0, i32* %20, align 4
  %133 = load %struct.g_class*, %struct.g_class** %4, align 8
  %134 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %135)
  store %struct.g_geom* %136, %struct.g_geom** %6, align 8
  %137 = load i32, i32* @g_mirror_create_orphan, align 4
  %138 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %139 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %141 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %140)
  store %struct.g_consumer* %141, %struct.g_consumer** %7, align 8
  store i32 1, i32* %19, align 4
  br label %142

142:                                              ; preds = %246, %126
  %143 = load i32, i32* %19, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ult i32 %143, %145
  br i1 %146, label %147, label %249

147:                                              ; preds = %142
  %148 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %149 = load i32, i32* %19, align 4
  %150 = call i32 @snprintf(i8* %148, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %149)
  %151 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %153 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %151, i8* %152)
  store i8* %153, i8** %11, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %147
  %157 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %200, %181, %156
  %161 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %162 = call i32 @g_destroy_consumer(%struct.g_consumer* %161)
  %163 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %164 = call i32 @g_destroy_geom(%struct.g_geom* %163)
  %165 = call i32 (...) @g_topology_unlock()
  br label %396

166:                                              ; preds = %147
  %167 = load i8*, i8** %11, align 8
  %168 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %169 = call i64 @strncmp(i8* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %173 = load i8*, i8** %11, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %11, align 8
  br label %176

176:                                              ; preds = %171, %166
  %177 = load i8*, i8** %11, align 8
  %178 = call %struct.g_provider* @g_provider_by_name(i8* %177)
  store %struct.g_provider* %178, %struct.g_provider** %8, align 8
  %179 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %180 = icmp eq %struct.g_provider* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 (i32, i8*, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %182)
  %184 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %185)
  br label %160

187:                                              ; preds = %176
  %188 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %189 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %190 = call i32 @g_attach(%struct.g_consumer* %188, %struct.g_provider* %189)
  %191 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %192 = call i64 @g_access(%struct.g_consumer* %191, i32 1, i32 0, i32 0)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %187
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 (i32, i8*, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %195)
  %197 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %213, %194
  %201 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %202 = call i32 @g_detach(%struct.g_consumer* %201)
  br label %160

203:                                              ; preds = %187
  %204 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %205 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %210 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208, %203
  %214 = load i8*, i8** %11, align 8
  %215 = call i32 (i32, i8*, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %214)
  %216 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %217)
  %219 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %220 = call i64 @g_access(%struct.g_consumer* %219, i32 -1, i32 0, i32 0)
  br label %200

221:                                              ; preds = %208
  %222 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %223 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %21, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %229 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %21, align 8
  br label %231

231:                                              ; preds = %227, %221
  %232 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %233 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %20, align 4
  %236 = icmp ugt i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %239 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  store i32 %240, i32* %20, align 4
  br label %241

241:                                              ; preds = %237, %231
  %242 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %243 = call i64 @g_access(%struct.g_consumer* %242, i32 -1, i32 0, i32 0)
  %244 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %245 = call i32 @g_detach(%struct.g_consumer* %244)
  br label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %19, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %19, align 4
  br label %142

249:                                              ; preds = %142
  %250 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %251 = call i32 @g_destroy_consumer(%struct.g_consumer* %250)
  %252 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %253 = call i32 @g_destroy_geom(%struct.g_geom* %252)
  %254 = load i64, i64* %21, align 8
  %255 = trunc i64 %254 to i32
  %256 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 5
  store i32 %255, i32* %256, align 4
  %257 = load i32, i32* %20, align 4
  %258 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 6
  store i32 %257, i32* %258, align 8
  %259 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = urem i32 %260, %262
  %264 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = sub i32 %265, %263
  store i32 %266, i32* %264, align 4
  %267 = load %struct.g_class*, %struct.g_class** %4, align 8
  %268 = load i32, i32* @G_MIRROR_TYPE_MANUAL, align 4
  %269 = call %struct.g_geom* @g_mirror_create(%struct.g_class* %267, %struct.g_mirror_metadata* %5, i32 %268)
  store %struct.g_geom* %269, %struct.g_geom** %6, align 8
  %270 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %271 = icmp eq %struct.g_geom* %270, null
  br i1 %271, label %272, label %278

272:                                              ; preds = %249
  %273 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %274 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %275)
  %277 = call i32 (...) @g_topology_unlock()
  br label %396

278:                                              ; preds = %249
  %279 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %280 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %279, i32 0, i32 1
  %281 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %280, align 8
  store %struct.g_mirror_softc* %281, %struct.g_mirror_softc** %9, align 8
  %282 = call i32 (...) @g_topology_unlock()
  %283 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %284 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %283, i32 0, i32 1
  %285 = call i32 @sx_xlock(i32* %284)
  %286 = load i32, i32* @G_MIRROR_DEVICE_FLAG_TASTING, align 4
  %287 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %288 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  %291 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %291, %struct.sbuf** %10, align 8
  %292 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %293 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %294 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @sbuf_printf(%struct.sbuf* %292, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* %295)
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %297

297:                                              ; preds = %356, %278
  %298 = load i32, i32* %19, align 4
  %299 = load i32*, i32** %13, align 8
  %300 = load i32, i32* %299, align 4
  %301 = icmp ult i32 %298, %300
  br i1 %301, label %302, label %359

302:                                              ; preds = %297
  %303 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %304 = load i32, i32* %19, align 4
  %305 = call i32 @snprintf(i8* %303, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %304)
  %306 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %307 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %308 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %306, i8* %307)
  store i8* %308, i8** %11, align 8
  %309 = load i8*, i8** %11, align 8
  %310 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %311 = call i64 @strncmp(i8* %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %310)
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %302
  %314 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %315 = load i8*, i8** %11, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8* %317, i8** %11, align 8
  br label %318

318:                                              ; preds = %313, %302
  %319 = load i8*, i8** %11, align 8
  %320 = call %struct.g_provider* @g_provider_by_name(i8* %319)
  store %struct.g_provider* %320, %struct.g_provider** %8, align 8
  %321 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %322 = icmp eq %struct.g_provider* %321, null
  br i1 %322, label %323, label %329

323:                                              ; preds = %318
  %324 = load i8*, i8** %11, align 8
  %325 = call i32 (i32, i8*, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* %324)
  %326 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %327 = load i8*, i8** %11, align 8
  %328 = call i32 @sbuf_printf(%struct.sbuf* %326, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %327)
  br label %356

329:                                              ; preds = %318
  %330 = call i8* (...) @arc4random()
  %331 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 8
  store i8* %330, i8** %331, align 8
  %332 = load i32, i32* %19, align 4
  %333 = sub i32 %332, 1
  %334 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 7
  store i32 %333, i32* %334, align 4
  %335 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %336 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %337 = call i64 @g_mirror_add_disk(%struct.g_mirror_softc* %335, %struct.g_provider* %336, %struct.g_mirror_metadata* %5)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %353

339:                                              ; preds = %329
  %340 = load i32, i32* %19, align 4
  %341 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %342 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %341, i32 0, i32 2
  %343 = load i8*, i8** %342, align 8
  %344 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %345 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 (i32, i8*, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 %340, i8* %343, i8* %346)
  %348 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %349 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %350 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %349, i32 0, i32 2
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @sbuf_printf(%struct.sbuf* %348, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %351)
  br label %356

353:                                              ; preds = %329
  %354 = load i32, i32* %18, align 4
  %355 = add i32 %354, 1
  store i32 %355, i32* %18, align 4
  br label %356

356:                                              ; preds = %353, %339, %323
  %357 = load i32, i32* %19, align 4
  %358 = add i32 %357, 1
  store i32 %358, i32* %19, align 4
  br label %297

359:                                              ; preds = %297
  %360 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %361 = call i32 @sbuf_finish(%struct.sbuf* %360)
  %362 = load i32, i32* @G_MIRROR_DEVICE_FLAG_TASTING, align 4
  %363 = xor i32 %362, -1
  %364 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %365 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = and i32 %366, %363
  store i32 %367, i32* %365, align 4
  %368 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* %18, align 4
  %371 = icmp ne i32 %369, %370
  br i1 %371, label %379, label %372

372:                                              ; preds = %359
  %373 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %374 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @G_MIRROR_DEVICE_FLAG_DESTROY, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %372, %359
  %380 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %381 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %380, i32 0, i32 1
  %382 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %381, align 8
  %383 = load i32, i32* @G_MIRROR_DESTROY_HARD, align 4
  %384 = call i32 @g_mirror_destroy(%struct.g_mirror_softc* %382, i32 %383)
  %385 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %386 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %387 = call i8* @sbuf_data(%struct.sbuf* %386)
  %388 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %385, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %387)
  br label %393

389:                                              ; preds = %372
  %390 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %391 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %390, i32 0, i32 1
  %392 = call i32 @sx_xunlock(i32* %391)
  br label %393

393:                                              ; preds = %389, %379
  %394 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %395 = call i32 @sbuf_delete(%struct.sbuf* %394)
  br label %396

396:                                              ; preds = %393, %272, %160, %89, %81, %70, %48, %34, %27
  ret void
}

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i8* @arc4random(...) #1

declare dso_local i32 @balance_id(i8*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i8*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i64 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local %struct.g_geom* @g_mirror_create(%struct.g_class*, %struct.g_mirror_metadata*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*) #1

declare dso_local i64 @g_mirror_add_disk(%struct.g_mirror_softc*, %struct.g_provider*, %struct.g_mirror_metadata*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @g_mirror_destroy(%struct.g_mirror_softc*, i32) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
