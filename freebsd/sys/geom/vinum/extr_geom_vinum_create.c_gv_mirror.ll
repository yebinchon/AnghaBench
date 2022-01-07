; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_mirror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_volume* }
%struct.gv_volume = type { i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.gctl_req = type { i32 }
%struct.gv_drive = type { i32 }
%struct.gv_sd = type { i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.gv_plex = type { i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.gv_softc = type { i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"volume name not given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"drive names not given\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"mirror organization must have an even number of drives\00", align 1
@GV_FLAG_S = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"must have at least 4 drives for striped plex\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_VOL_UP = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_VOLUME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%s.p%d\00", align 1
@GV_PLEX_STRIPED = common dso_local global i32 0, align 4
@DEFAULT_STRIPESIZE = common dso_local global i32 0, align 4
@GV_PLEX_CONCAT = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_PLEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"drive%d\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"No such drive '%s', aborting\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s.s%d\00", align 1
@GV_EVENT_CREATE_SD = common dso_local global i32 0, align 4
@GV_EVENT_SETUP_OBJECTS = common dso_local global i32 0, align 4
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_mirror(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_drive*, align 8
  %6 = alloca %struct.gv_sd*, align 8
  %7 = alloca %struct.gv_volume*, align 8
  %8 = alloca %struct.gv_plex*, align 8
  %9 = alloca %struct.gv_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [30 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %18 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %19 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %18, i32 0, i32 0
  %20 = load %struct.gv_volume*, %struct.gv_volume** %19, align 8
  %21 = bitcast %struct.gv_volume* %20 to %struct.gv_softc*
  store %struct.gv_softc* %21, %struct.gv_softc** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %23 = call i8* @gctl_get_param(%struct.gctl_req* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %28 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %212

29:                                               ; preds = %2
  %30 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %31 = call i32* @gctl_get_paraml(%struct.gctl_req* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %31, i32** %14, align 8
  %32 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %33 = call i32* @gctl_get_paraml(%struct.gctl_req* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %38 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %212

39:                                               ; preds = %29
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = srem i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %46 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %212

47:                                               ; preds = %39
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GV_FLAG_S, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %59 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %212

60:                                               ; preds = %53, %47
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = load i32, i32* @M_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.gv_volume* @g_malloc(i32 64, i32 %63)
  store %struct.gv_volume* %64, %struct.gv_volume** %7, align 8
  %65 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %66 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @strlcpy(i8* %67, i8* %68, i32 8)
  %70 = load i32, i32* @GV_VOL_UP, align 4
  %71 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %72 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %74 = bitcast %struct.gv_softc* %73 to %struct.gv_volume*
  %75 = load i32, i32* @GV_EVENT_CREATE_VOLUME, align 4
  %76 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %77 = call i32 @gv_post_event(%struct.gv_volume* %74, i32 %75, %struct.gv_volume* %76, i32* null, i32 0, i32 0)
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %196, %60
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %199

81:                                               ; preds = %78
  %82 = load i32, i32* @M_WAITOK, align 4
  %83 = load i32, i32* @M_ZERO, align 4
  %84 = or i32 %82, %83
  %85 = call %struct.gv_volume* @g_malloc(i32 64, i32 %84)
  %86 = bitcast %struct.gv_volume* %85 to %struct.gv_plex*
  store %struct.gv_plex* %86, %struct.gv_plex** %8, align 8
  %87 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %88 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %91 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %89, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %92, i32 %93)
  %95 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %96 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %99 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strlcpy(i8* %97, i8* %100, i32 8)
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GV_FLAG_S, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %81
  %108 = load i32, i32* @GV_PLEX_STRIPED, align 4
  %109 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %110 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @DEFAULT_STRIPESIZE, align 4
  %112 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %113 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %120

114:                                              ; preds = %81
  %115 = load i32, i32* @GV_PLEX_CONCAT, align 4
  %116 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %117 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 4
  %118 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %119 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %118, i32 0, i32 2
  store i32 -1, i32* %119, align 8
  br label %120

120:                                              ; preds = %114, %107
  %121 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %122 = bitcast %struct.gv_softc* %121 to %struct.gv_volume*
  %123 = load i32, i32* @GV_EVENT_CREATE_PLEX, align 4
  %124 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %125 = bitcast %struct.gv_plex* %124 to %struct.gv_volume*
  %126 = call i32 @gv_post_event(%struct.gv_volume* %122, i32 %123, %struct.gv_volume* %125, i32* null, i32 0, i32 0)
  store i32 0, i32* %17, align 4
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %192, %120
  %129 = load i32, i32* %15, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %195

133:                                              ; preds = %128
  %134 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %135 = load i32, i32* %15, align 4
  %136 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %134, i32 30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %138 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %139 = call i8* @gctl_get_param(%struct.gctl_req* %137, i8* %138, i32* null)
  store i8* %139, i8** %10, align 8
  %140 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %141 = bitcast %struct.gv_softc* %140 to %struct.gv_volume*
  %142 = load i8*, i8** %10, align 8
  %143 = call %struct.gv_drive* @gv_find_drive(%struct.gv_volume* %141, i8* %142)
  store %struct.gv_drive* %143, %struct.gv_drive** %5, align 8
  %144 = load %struct.gv_drive*, %struct.gv_drive** %5, align 8
  %145 = icmp eq %struct.gv_drive* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %133
  %147 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %148)
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %195

152:                                              ; preds = %133
  %153 = load i32, i32* @M_WAITOK, align 4
  %154 = load i32, i32* @M_ZERO, align 4
  %155 = or i32 %153, %154
  %156 = call %struct.gv_volume* @g_malloc(i32 64, i32 %155)
  %157 = bitcast %struct.gv_volume* %156 to %struct.gv_sd*
  store %struct.gv_sd* %157, %struct.gv_sd** %6, align 8
  %158 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %159 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %162 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %160, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %163, i32 %164)
  %166 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %167 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %170 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strlcpy(i8* %168, i8* %171, i32 8)
  %173 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %174 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %173, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 @strlcpy(i8* %175, i8* %176, i32 8)
  %178 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %179 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %178, i32 0, i32 5
  store i32 -1, i32* %179, align 8
  %180 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %181 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %180, i32 0, i32 6
  store i32 -1, i32* %181, align 4
  %182 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %183 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %182, i32 0, i32 7
  store i32 -1, i32* %183, align 8
  %184 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %185 = bitcast %struct.gv_softc* %184 to %struct.gv_volume*
  %186 = load i32, i32* @GV_EVENT_CREATE_SD, align 4
  %187 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %188 = bitcast %struct.gv_sd* %187 to %struct.gv_volume*
  %189 = call i32 @gv_post_event(%struct.gv_volume* %185, i32 %186, %struct.gv_volume* %188, i32* null, i32 0, i32 0)
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %17, align 4
  br label %192

192:                                              ; preds = %152
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %15, align 4
  br label %128

195:                                              ; preds = %146, %128
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %16, align 4
  br label %78

199:                                              ; preds = %78
  %200 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %201 = bitcast %struct.gv_softc* %200 to %struct.gv_volume*
  %202 = load i32, i32* @GV_EVENT_SETUP_OBJECTS, align 4
  %203 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %204 = bitcast %struct.gv_softc* %203 to %struct.gv_volume*
  %205 = call i32 @gv_post_event(%struct.gv_volume* %201, i32 %202, %struct.gv_volume* %204, i32* null, i32 0, i32 0)
  %206 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %207 = bitcast %struct.gv_softc* %206 to %struct.gv_volume*
  %208 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %209 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %210 = bitcast %struct.gv_softc* %209 to %struct.gv_volume*
  %211 = call i32 @gv_post_event(%struct.gv_volume* %207, i32 %208, %struct.gv_volume* %210, i32* null, i32 0, i32 0)
  br label %212

212:                                              ; preds = %199, %57, %44, %36, %26
  ret void
}

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local %struct.gv_volume* @g_malloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @gv_post_event(%struct.gv_volume*, i32, %struct.gv_volume*, i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local %struct.gv_drive* @gv_find_drive(%struct.gv_volume*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
