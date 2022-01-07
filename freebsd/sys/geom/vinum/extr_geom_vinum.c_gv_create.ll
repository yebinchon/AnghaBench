; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_volume* }
%struct.gv_volume = type { i32, i32 }
%struct.gctl_req = type { i32 }
%struct.gv_softc = type { i32, i32 }
%struct.gv_drive = type { i32, i32 }
%struct.gv_plex = type { i32, i32 }
%struct.gv_sd = type { i32, i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"volumes\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"plexes\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"subdisks\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"number of objects not given\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"flags not given\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"drive%d\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"no drive definition given\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s: device not found\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"drive '%s' already exists\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"device '%s' already configured in gvinum\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_DRIVE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"volume%d\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"no volume definition given\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"volume '%s' already exists\00", align 1
@GV_EVENT_CREATE_VOLUME = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"plex%d\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"no plex definition given\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"plex '%s' already exists\00", align 1
@GV_EVENT_CREATE_PLEX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"sd%d\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"no subdisk definition given\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"sd '%s' already exists\00", align 1
@GV_EVENT_CREATE_SD = common dso_local global i32 0, align 4
@GV_EVENT_SETUP_OBJECTS = common dso_local global i32 0, align 4
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, %struct.gctl_req*)* @gv_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv_create(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca %struct.gv_softc*, align 8
  %7 = alloca %struct.gv_drive*, align 8
  %8 = alloca %struct.gv_drive*, align 8
  %9 = alloca %struct.gv_plex*, align 8
  %10 = alloca %struct.gv_plex*, align 8
  %11 = alloca %struct.gv_sd*, align 8
  %12 = alloca %struct.gv_sd*, align 8
  %13 = alloca %struct.gv_volume*, align 8
  %14 = alloca %struct.gv_volume*, align 8
  %15 = alloca %struct.g_provider*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca [20 x i8], align 16
  store %struct.g_geom* %0, %struct.g_geom** %4, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %5, align 8
  %24 = call i32 (...) @g_topology_assert()
  %25 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %26 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %25, i32 0, i32 0
  %27 = load %struct.gv_volume*, %struct.gv_volume** %26, align 8
  %28 = bitcast %struct.gv_volume* %27 to %struct.gv_softc*
  store %struct.gv_softc* %28, %struct.gv_softc** %6, align 8
  %29 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %30 = call i8* @gctl_get_paraml(%struct.gctl_req* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %22, align 8
  %32 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %33 = call i8* @gctl_get_paraml(%struct.gctl_req* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %20, align 8
  %35 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %36 = call i8* @gctl_get_paraml(%struct.gctl_req* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %21, align 8
  %38 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %39 = call i8* @gctl_get_paraml(%struct.gctl_req* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %18, align 8
  %41 = load i32*, i32** %22, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %2
  %44 = load i32*, i32** %20, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %21, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %18, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %46, %43, %2
  %53 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %54 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %341

55:                                               ; preds = %49
  %56 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %57 = call i8* @gctl_get_paraml(%struct.gctl_req* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %19, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %63 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %341

64:                                               ; preds = %55
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %148, %64
  %66 = load i32, i32* %17, align 4
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %151

70:                                               ; preds = %65
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @snprintf(i8* %71, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %76 = call i8* @gctl_get_paraml(%struct.gctl_req* %74, i8* %75, i32 8)
  %77 = bitcast i8* %76 to %struct.gv_drive*
  store %struct.gv_drive* %77, %struct.gv_drive** %8, align 8
  %78 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %79 = icmp eq %struct.gv_drive* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %82 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %341

83:                                               ; preds = %70
  %84 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %85 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.g_provider* @g_provider_by_name(i32 %86)
  store %struct.g_provider* %87, %struct.g_provider** %15, align 8
  %88 = load %struct.g_provider*, %struct.g_provider** %15, align 8
  %89 = icmp eq %struct.g_provider* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %92 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %93 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  br label %328

96:                                               ; preds = %83
  %97 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %98 = bitcast %struct.gv_softc* %97 to %struct.gv_volume*
  %99 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %100 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32* @gv_find_drive(%struct.gv_volume* %98, i32 %101)
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %96
  %105 = load i32*, i32** %19, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @GV_FLAG_F, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %148

111:                                              ; preds = %104
  %112 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %113 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %114 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %115)
  br label %328

117:                                              ; preds = %96
  %118 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %119 = bitcast %struct.gv_softc* %118 to %struct.gv_volume*
  %120 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %121 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32* @gv_find_drive_device(%struct.gv_volume* %119, i32 %122)
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %127 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %128 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  br label %328

131:                                              ; preds = %117
  %132 = load i32, i32* @M_WAITOK, align 4
  %133 = load i32, i32* @M_ZERO, align 4
  %134 = or i32 %132, %133
  %135 = call %struct.gv_volume* @g_malloc(i32 8, i32 %134)
  %136 = bitcast %struct.gv_volume* %135 to %struct.gv_drive*
  store %struct.gv_drive* %136, %struct.gv_drive** %7, align 8
  %137 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %138 = bitcast %struct.gv_drive* %137 to %struct.gv_volume*
  %139 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %140 = bitcast %struct.gv_drive* %139 to %struct.gv_volume*
  %141 = call i32 @bcopy(%struct.gv_volume* %138, %struct.gv_volume* %140, i32 8)
  %142 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %143 = bitcast %struct.gv_softc* %142 to %struct.gv_volume*
  %144 = load i32, i32* @GV_EVENT_CREATE_DRIVE, align 4
  %145 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %146 = bitcast %struct.gv_drive* %145 to %struct.gv_volume*
  %147 = call i32 @gv_post_event(%struct.gv_volume* %143, i32 %144, %struct.gv_volume* %146, i32* null, i32 0, i32 0)
  br label %148

148:                                              ; preds = %131, %110
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %65

151:                                              ; preds = %65
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %204, %151
  %153 = load i32, i32* %17, align 4
  %154 = load i32*, i32** %22, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %207

157:                                              ; preds = %152
  store i32 0, i32* %16, align 4
  %158 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @snprintf(i8* %158, i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %159)
  %161 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %162 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %163 = call i8* @gctl_get_paraml(%struct.gctl_req* %161, i8* %162, i32 8)
  %164 = bitcast i8* %163 to %struct.gv_volume*
  store %struct.gv_volume* %164, %struct.gv_volume** %14, align 8
  %165 = load %struct.gv_volume*, %struct.gv_volume** %14, align 8
  %166 = icmp eq %struct.gv_volume* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %157
  %168 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %169 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %341

170:                                              ; preds = %157
  %171 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %172 = bitcast %struct.gv_softc* %171 to %struct.gv_volume*
  %173 = load %struct.gv_volume*, %struct.gv_volume** %14, align 8
  %174 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32* @gv_find_vol(%struct.gv_volume* %172, i32 %175)
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %170
  %179 = load i32*, i32** %19, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @GV_FLAG_F, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %204

185:                                              ; preds = %178
  %186 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %187 = load %struct.gv_volume*, %struct.gv_volume** %14, align 8
  %188 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %189)
  br label %328

191:                                              ; preds = %170
  %192 = load i32, i32* @M_WAITOK, align 4
  %193 = load i32, i32* @M_ZERO, align 4
  %194 = or i32 %192, %193
  %195 = call %struct.gv_volume* @g_malloc(i32 8, i32 %194)
  store %struct.gv_volume* %195, %struct.gv_volume** %13, align 8
  %196 = load %struct.gv_volume*, %struct.gv_volume** %14, align 8
  %197 = load %struct.gv_volume*, %struct.gv_volume** %13, align 8
  %198 = call i32 @bcopy(%struct.gv_volume* %196, %struct.gv_volume* %197, i32 8)
  %199 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %200 = bitcast %struct.gv_softc* %199 to %struct.gv_volume*
  %201 = load i32, i32* @GV_EVENT_CREATE_VOLUME, align 4
  %202 = load %struct.gv_volume*, %struct.gv_volume** %13, align 8
  %203 = call i32 @gv_post_event(%struct.gv_volume* %200, i32 %201, %struct.gv_volume* %202, i32* null, i32 0, i32 0)
  br label %204

204:                                              ; preds = %191, %184
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %17, align 4
  br label %152

207:                                              ; preds = %152
  store i32 0, i32* %17, align 4
  br label %208

208:                                              ; preds = %264, %207
  %209 = load i32, i32* %17, align 4
  %210 = load i32*, i32** %20, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %267

213:                                              ; preds = %208
  store i32 0, i32* %16, align 4
  %214 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %215 = load i32, i32* %17, align 4
  %216 = call i32 @snprintf(i8* %214, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %215)
  %217 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %218 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %219 = call i8* @gctl_get_paraml(%struct.gctl_req* %217, i8* %218, i32 8)
  %220 = bitcast i8* %219 to %struct.gv_plex*
  store %struct.gv_plex* %220, %struct.gv_plex** %10, align 8
  %221 = load %struct.gv_plex*, %struct.gv_plex** %10, align 8
  %222 = icmp eq %struct.gv_plex* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %213
  %224 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %225 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %341

226:                                              ; preds = %213
  %227 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %228 = bitcast %struct.gv_softc* %227 to %struct.gv_volume*
  %229 = load %struct.gv_plex*, %struct.gv_plex** %10, align 8
  %230 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32* @gv_find_plex(%struct.gv_volume* %228, i32 %231)
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %247

234:                                              ; preds = %226
  %235 = load i32*, i32** %19, align 8
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @GV_FLAG_F, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %264

241:                                              ; preds = %234
  %242 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %243 = load %struct.gv_plex*, %struct.gv_plex** %10, align 8
  %244 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %242, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %245)
  br label %328

247:                                              ; preds = %226
  %248 = load i32, i32* @M_WAITOK, align 4
  %249 = load i32, i32* @M_ZERO, align 4
  %250 = or i32 %248, %249
  %251 = call %struct.gv_volume* @g_malloc(i32 8, i32 %250)
  %252 = bitcast %struct.gv_volume* %251 to %struct.gv_plex*
  store %struct.gv_plex* %252, %struct.gv_plex** %9, align 8
  %253 = load %struct.gv_plex*, %struct.gv_plex** %10, align 8
  %254 = bitcast %struct.gv_plex* %253 to %struct.gv_volume*
  %255 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %256 = bitcast %struct.gv_plex* %255 to %struct.gv_volume*
  %257 = call i32 @bcopy(%struct.gv_volume* %254, %struct.gv_volume* %256, i32 8)
  %258 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %259 = bitcast %struct.gv_softc* %258 to %struct.gv_volume*
  %260 = load i32, i32* @GV_EVENT_CREATE_PLEX, align 4
  %261 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %262 = bitcast %struct.gv_plex* %261 to %struct.gv_volume*
  %263 = call i32 @gv_post_event(%struct.gv_volume* %259, i32 %260, %struct.gv_volume* %262, i32* null, i32 0, i32 0)
  br label %264

264:                                              ; preds = %247, %240
  %265 = load i32, i32* %17, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %17, align 4
  br label %208

267:                                              ; preds = %208
  store i32 0, i32* %17, align 4
  br label %268

268:                                              ; preds = %324, %267
  %269 = load i32, i32* %17, align 4
  %270 = load i32*, i32** %21, align 8
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %269, %271
  br i1 %272, label %273, label %327

273:                                              ; preds = %268
  store i32 0, i32* %16, align 4
  %274 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @snprintf(i8* %274, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %275)
  %277 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %278 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 0
  %279 = call i8* @gctl_get_paraml(%struct.gctl_req* %277, i8* %278, i32 8)
  %280 = bitcast i8* %279 to %struct.gv_sd*
  store %struct.gv_sd* %280, %struct.gv_sd** %12, align 8
  %281 = load %struct.gv_sd*, %struct.gv_sd** %12, align 8
  %282 = icmp eq %struct.gv_sd* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %273
  %284 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %285 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %341

286:                                              ; preds = %273
  %287 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %288 = bitcast %struct.gv_softc* %287 to %struct.gv_volume*
  %289 = load %struct.gv_sd*, %struct.gv_sd** %12, align 8
  %290 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32* @gv_find_sd(%struct.gv_volume* %288, i32 %291)
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %307

294:                                              ; preds = %286
  %295 = load i32*, i32** %19, align 8
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @GV_FLAG_F, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %294
  br label %324

301:                                              ; preds = %294
  %302 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %303 = load %struct.gv_sd*, %struct.gv_sd** %12, align 8
  %304 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %302, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %305)
  br label %328

307:                                              ; preds = %286
  %308 = load i32, i32* @M_WAITOK, align 4
  %309 = load i32, i32* @M_ZERO, align 4
  %310 = or i32 %308, %309
  %311 = call %struct.gv_volume* @g_malloc(i32 8, i32 %310)
  %312 = bitcast %struct.gv_volume* %311 to %struct.gv_sd*
  store %struct.gv_sd* %312, %struct.gv_sd** %11, align 8
  %313 = load %struct.gv_sd*, %struct.gv_sd** %12, align 8
  %314 = bitcast %struct.gv_sd* %313 to %struct.gv_volume*
  %315 = load %struct.gv_sd*, %struct.gv_sd** %11, align 8
  %316 = bitcast %struct.gv_sd* %315 to %struct.gv_volume*
  %317 = call i32 @bcopy(%struct.gv_volume* %314, %struct.gv_volume* %316, i32 8)
  %318 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %319 = bitcast %struct.gv_softc* %318 to %struct.gv_volume*
  %320 = load i32, i32* @GV_EVENT_CREATE_SD, align 4
  %321 = load %struct.gv_sd*, %struct.gv_sd** %11, align 8
  %322 = bitcast %struct.gv_sd* %321 to %struct.gv_volume*
  %323 = call i32 @gv_post_event(%struct.gv_volume* %319, i32 %320, %struct.gv_volume* %322, i32* null, i32 0, i32 0)
  br label %324

324:                                              ; preds = %307, %300
  %325 = load i32, i32* %17, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %17, align 4
  br label %268

327:                                              ; preds = %268
  br label %328

328:                                              ; preds = %327, %301, %241, %185, %125, %111, %90
  %329 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %330 = bitcast %struct.gv_softc* %329 to %struct.gv_volume*
  %331 = load i32, i32* @GV_EVENT_SETUP_OBJECTS, align 4
  %332 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %333 = bitcast %struct.gv_softc* %332 to %struct.gv_volume*
  %334 = call i32 @gv_post_event(%struct.gv_volume* %330, i32 %331, %struct.gv_volume* %333, i32* null, i32 0, i32 0)
  %335 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %336 = bitcast %struct.gv_softc* %335 to %struct.gv_volume*
  %337 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %338 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %339 = bitcast %struct.gv_softc* %338 to %struct.gv_volume*
  %340 = call i32 @gv_post_event(%struct.gv_volume* %336, i32 %337, %struct.gv_volume* %339, i32* null, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %341

341:                                              ; preds = %328, %283, %223, %167, %80, %61, %52
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i32) #1

declare dso_local i32* @gv_find_drive(%struct.gv_volume*, i32) #1

declare dso_local i32* @gv_find_drive_device(%struct.gv_volume*, i32) #1

declare dso_local %struct.gv_volume* @g_malloc(i32, i32) #1

declare dso_local i32 @bcopy(%struct.gv_volume*, %struct.gv_volume*, i32) #1

declare dso_local i32 @gv_post_event(%struct.gv_volume*, i32, %struct.gv_volume*, i32*, i32, i32) #1

declare dso_local i32* @gv_find_vol(%struct.gv_volume*, i32) #1

declare dso_local i32* @gv_find_plex(%struct.gv_volume*, i32) #1

declare dso_local i32* @gv_find_sd(%struct.gv_volume*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
