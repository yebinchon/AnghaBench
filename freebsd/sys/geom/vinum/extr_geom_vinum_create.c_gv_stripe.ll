; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_stripe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_volume* }
%struct.gv_volume = type { i8*, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.gctl_req = type { i32 }
%struct.gv_drive = type { i32 }
%struct.gv_sd = type { i8*, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.gv_plex = type { i8*, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.gv_softc = type { i8*, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"volume name not given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"drive names not given\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"must have at least 2 drives\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_VOL_UP = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_VOLUME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%s.p%d\00", align 1
@GV_PLEX_STRIPED = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_PLEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"drive%d\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"No such drive '%s'\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s.s%d\00", align 1
@GV_EVENT_CREATE_SD = common dso_local global i32 0, align 4
@GV_EVENT_SETUP_OBJECTS = common dso_local global i32 0, align 4
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_stripe(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
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
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %17 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 0
  %19 = load %struct.gv_volume*, %struct.gv_volume** %18, align 8
  %20 = bitcast %struct.gv_volume* %19 to %struct.gv_softc*
  store %struct.gv_softc* %20, %struct.gv_softc** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %22 = call i8* @gctl_get_param(%struct.gctl_req* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %27 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %172

28:                                               ; preds = %2
  %29 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %30 = call i32* @gctl_get_paraml(%struct.gctl_req* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %30, i32** %14, align 8
  %31 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %32 = call i32* @gctl_get_paraml(%struct.gctl_req* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %37 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %172

38:                                               ; preds = %28
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %44 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %172

45:                                               ; preds = %38
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.gv_volume* @g_malloc(i32 72, i32 %48)
  store %struct.gv_volume* %49, %struct.gv_volume** %7, align 8
  %50 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %51 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @strlcpy(i8* %52, i8* %53, i32 8)
  %55 = load i32, i32* @GV_VOL_UP, align 4
  %56 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %57 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %59 = bitcast %struct.gv_softc* %58 to %struct.gv_volume*
  %60 = load i32, i32* @GV_EVENT_CREATE_VOLUME, align 4
  %61 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %62 = call i32 @gv_post_event(%struct.gv_volume* %59, i32 %60, %struct.gv_volume* %61, i32* null, i32 0, i32 0)
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.gv_volume* @g_malloc(i32 72, i32 %65)
  %67 = bitcast %struct.gv_volume* %66 to %struct.gv_plex*
  store %struct.gv_plex* %67, %struct.gv_plex** %8, align 8
  %68 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %69 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %72 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %75 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %70, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %73, i32 %76)
  %78 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %79 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %82 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strlcpy(i8* %80, i8* %83, i32 8)
  %85 = load i32, i32* @GV_PLEX_STRIPED, align 4
  %86 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %87 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  %88 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %89 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %88, i32 0, i32 3
  store i32 262144, i32* %89, align 8
  %90 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %91 = bitcast %struct.gv_softc* %90 to %struct.gv_volume*
  %92 = load i32, i32* @GV_EVENT_CREATE_PLEX, align 4
  %93 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %94 = bitcast %struct.gv_plex* %93 to %struct.gv_volume*
  %95 = call i32 @gv_post_event(%struct.gv_volume* %91, i32 %92, %struct.gv_volume* %94, i32* null, i32 0, i32 0)
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %156, %45
  %97 = load i32, i32* %15, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %159

101:                                              ; preds = %96
  %102 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %102, i32 30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %106 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %107 = call i8* @gctl_get_param(%struct.gctl_req* %105, i8* %106, i32* null)
  store i8* %107, i8** %10, align 8
  %108 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %109 = bitcast %struct.gv_softc* %108 to %struct.gv_volume*
  %110 = load i8*, i8** %10, align 8
  %111 = call %struct.gv_drive* @gv_find_drive(%struct.gv_volume* %109, i8* %110)
  store %struct.gv_drive* %111, %struct.gv_drive** %5, align 8
  %112 = load %struct.gv_drive*, %struct.gv_drive** %5, align 8
  %113 = icmp eq %struct.gv_drive* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  br label %156

118:                                              ; preds = %101
  %119 = load i32, i32* @M_WAITOK, align 4
  %120 = load i32, i32* @M_ZERO, align 4
  %121 = or i32 %119, %120
  %122 = call %struct.gv_volume* @g_malloc(i32 72, i32 %121)
  %123 = bitcast %struct.gv_volume* %122 to %struct.gv_sd*
  store %struct.gv_sd* %123, %struct.gv_sd** %6, align 8
  %124 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %125 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %128 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %126, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %129, i32 %130)
  %132 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %133 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %136 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strlcpy(i8* %134, i8* %137, i32 8)
  %139 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %140 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %139, i32 0, i32 5
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @strlcpy(i8* %141, i8* %142, i32 8)
  %144 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %145 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %144, i32 0, i32 6
  store i32 -1, i32* %145, align 8
  %146 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %147 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %146, i32 0, i32 7
  store i32 -1, i32* %147, align 4
  %148 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %149 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %148, i32 0, i32 8
  store i32 -1, i32* %149, align 8
  %150 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %151 = bitcast %struct.gv_softc* %150 to %struct.gv_volume*
  %152 = load i32, i32* @GV_EVENT_CREATE_SD, align 4
  %153 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %154 = bitcast %struct.gv_sd* %153 to %struct.gv_volume*
  %155 = call i32 @gv_post_event(%struct.gv_volume* %151, i32 %152, %struct.gv_volume* %154, i32* null, i32 0, i32 0)
  br label %156

156:                                              ; preds = %118, %114
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %96

159:                                              ; preds = %96
  %160 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %161 = bitcast %struct.gv_softc* %160 to %struct.gv_volume*
  %162 = load i32, i32* @GV_EVENT_SETUP_OBJECTS, align 4
  %163 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %164 = bitcast %struct.gv_softc* %163 to %struct.gv_volume*
  %165 = call i32 @gv_post_event(%struct.gv_volume* %161, i32 %162, %struct.gv_volume* %164, i32* null, i32 0, i32 0)
  %166 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %167 = bitcast %struct.gv_softc* %166 to %struct.gv_volume*
  %168 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %169 = load %struct.gv_softc*, %struct.gv_softc** %9, align 8
  %170 = bitcast %struct.gv_softc* %169 to %struct.gv_volume*
  %171 = call i32 @gv_post_event(%struct.gv_volume* %167, i32 %168, %struct.gv_volume* %170, i32* null, i32 0, i32 0)
  br label %172

172:                                              ; preds = %159, %42, %35, %25
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
