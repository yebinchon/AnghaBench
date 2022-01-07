; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_volume* }
%struct.gv_volume = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i64, i32, i32 }
%struct.gctl_req = type { i32 }
%struct.gv_drive = type { i32 }
%struct.gv_sd = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i64, i32, i32 }
%struct.gv_plex = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i64, i32, i32 }
%struct.gv_softc = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"volume name not given\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"drive names not given\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_VOL_UP = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_VOLUME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s.p%d\00", align 1
@GV_PLEX_CONCAT = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_PLEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"drive%d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No such drive '%s'\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s.s%d\00", align 1
@GV_EVENT_CREATE_SD = common dso_local global i32 0, align 4
@GV_EVENT_SETUP_OBJECTS = common dso_local global i32 0, align 4
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_concat(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
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
  %14 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 0
  %17 = load %struct.gv_volume*, %struct.gv_volume** %16, align 8
  %18 = bitcast %struct.gv_volume* %17 to %struct.gv_softc*
  store %struct.gv_softc* %18, %struct.gv_softc** %9, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %20 = call i8* @gctl_get_param(%struct.gctl_req* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %25 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %161

26:                                               ; preds = %2
  %27 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %28 = call i32* @gctl_get_paraml(%struct.gctl_req* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %161

34:                                               ; preds = %26
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.gv_volume* @g_malloc(i32 72, i32 %37)
  store %struct.gv_volume* %38, %struct.gv_volume** %7, align 8
  %39 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %40 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @strlcpy(i8* %41, i8* %42, i32 8)
  %44 = load i32, i32* @GV_VOL_UP, align 4
  %45 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %46 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %48 = bitcast %struct.gv_softc* %47 to %struct.gv_volume*
  %49 = load i32, i32* @GV_EVENT_CREATE_VOLUME, align 4
  %50 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %51 = call i32 @gv_post_event(%struct.gv_volume* %48, i32 %49, %struct.gv_volume* %50, i32* null, i32 0, i32 0)
  %52 = load i32, i32* @M_WAITOK, align 4
  %53 = load i32, i32* @M_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.gv_volume* @g_malloc(i32 72, i32 %54)
  %56 = bitcast %struct.gv_volume* %55 to %struct.gv_plex*
  store %struct.gv_plex* %56, %struct.gv_plex** %8, align 8
  %57 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %58 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %61 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %64 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %59, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %62, i32 %65)
  %67 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %68 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %71 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlcpy(i8* %69, i8* %72, i32 8)
  %74 = load i32, i32* @GV_PLEX_CONCAT, align 4
  %75 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %76 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %78 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %77, i32 0, i32 8
  store i64 0, i64* %78, align 8
  %79 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %80 = bitcast %struct.gv_softc* %79 to %struct.gv_volume*
  %81 = load i32, i32* @GV_EVENT_CREATE_PLEX, align 4
  %82 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %83 = bitcast %struct.gv_plex* %82 to %struct.gv_volume*
  %84 = call i32 @gv_post_event(%struct.gv_volume* %80, i32 %81, %struct.gv_volume* %83, i32* null, i32 0, i32 0)
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %145, %34
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %148

90:                                               ; preds = %85
  %91 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %91, i32 30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %95 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %96 = call i8* @gctl_get_param(%struct.gctl_req* %94, i8* %95, i32* null)
  store i8* %96, i8** %10, align 8
  %97 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %98 = bitcast %struct.gv_softc* %97 to %struct.gv_volume*
  %99 = load i8*, i8** %10, align 8
  %100 = call %struct.gv_drive* @gv_find_drive(%struct.gv_volume* %98, i8* %99)
  store %struct.gv_drive* %100, %struct.gv_drive** %5, align 8
  %101 = load %struct.gv_drive*, %struct.gv_drive** %5, align 8
  %102 = icmp eq %struct.gv_drive* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  br label %145

107:                                              ; preds = %90
  %108 = load i32, i32* @M_WAITOK, align 4
  %109 = load i32, i32* @M_ZERO, align 4
  %110 = or i32 %108, %109
  %111 = call %struct.gv_volume* @g_malloc(i32 72, i32 %110)
  %112 = bitcast %struct.gv_volume* %111 to %struct.gv_sd*
  store %struct.gv_sd* %112, %struct.gv_sd** %6, align 8
  %113 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %114 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %117 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %115, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %118, i32 %119)
  %121 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %122 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %125 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strlcpy(i8* %123, i8* %126, i32 8)
  %128 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %129 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @strlcpy(i8* %130, i8* %131, i32 8)
  %133 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %134 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %133, i32 0, i32 5
  store i32 -1, i32* %134, align 8
  %135 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %136 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %135, i32 0, i32 6
  store i32 -1, i32* %136, align 4
  %137 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %138 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %137, i32 0, i32 7
  store i32 -1, i32* %138, align 8
  %139 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %140 = bitcast %struct.gv_softc* %139 to %struct.gv_volume*
  %141 = load i32, i32* @GV_EVENT_CREATE_SD, align 4
  %142 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %143 = bitcast %struct.gv_sd* %142 to %struct.gv_volume*
  %144 = call i32 @gv_post_event(%struct.gv_volume* %140, i32 %141, %struct.gv_volume* %143, i32* null, i32 0, i32 0)
  br label %145

145:                                              ; preds = %107, %103
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %85

148:                                              ; preds = %85
  %149 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %150 = bitcast %struct.gv_softc* %149 to %struct.gv_volume*
  %151 = load i32, i32* @GV_EVENT_SETUP_OBJECTS, align 4
  %152 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %153 = bitcast %struct.gv_softc* %152 to %struct.gv_volume*
  %154 = call i32 @gv_post_event(%struct.gv_volume* %150, i32 %151, %struct.gv_volume* %153, i32* null, i32 0, i32 0)
  %155 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %156 = bitcast %struct.gv_softc* %155 to %struct.gv_volume*
  %157 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %158 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %159 = bitcast %struct.gv_softc* %158 to %struct.gv_volume*
  %160 = call i32 @gv_post_event(%struct.gv_volume* %156, i32 %157, %struct.gv_volume* %159, i32* null, i32 0, i32 0)
  br label %161

161:                                              ; preds = %148, %31, %23
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
