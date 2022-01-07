; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_raid5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_raid5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_volume* }
%struct.gv_volume = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.gctl_req = type { i32 }
%struct.gv_softc = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.gv_drive = type { i32 }
%struct.gv_plex = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.gv_sd = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"volume name not given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"stripesize\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"no stripesize given\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"drive names not given\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"must have at least three drives for this plex organisation\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_VOL_UP = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_VOLUME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%s.p%d\00", align 1
@GV_PLEX_RAID5 = common dso_local global i32 0, align 4
@GV_EVENT_CREATE_PLEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"drive%d\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"No such drive '%s'\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s.s%d\00", align 1
@GV_EVENT_CREATE_SD = common dso_local global i32 0, align 4
@GV_EVENT_SETUP_OBJECTS = common dso_local global i32 0, align 4
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_raid5(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_drive*, align 8
  %7 = alloca %struct.gv_volume*, align 8
  %8 = alloca %struct.gv_plex*, align 8
  %9 = alloca %struct.gv_sd*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [30 x i8], align 16
  %16 = alloca i32*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %17 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 0
  %19 = load %struct.gv_volume*, %struct.gv_volume** %18, align 8
  %20 = bitcast %struct.gv_volume* %19 to %struct.gv_softc*
  store %struct.gv_softc* %20, %struct.gv_softc** %5, align 8
  %21 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %22 = call i8* @gctl_get_param(%struct.gctl_req* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %27 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %185

28:                                               ; preds = %2
  %29 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %30 = call i8* @gctl_get_paraml(%struct.gctl_req* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %11, align 8
  %32 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %33 = call i8* @gctl_get_paraml(%struct.gctl_req* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %10, align 8
  %35 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %36 = call i8* @gctl_get_paraml(%struct.gctl_req* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %42 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %185

43:                                               ; preds = %28
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %48 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %185

49:                                               ; preds = %43
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %55 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %54, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  br label %185

56:                                               ; preds = %49
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = load i32, i32* @M_ZERO, align 4
  %59 = or i32 %57, %58
  %60 = call %struct.gv_volume* @g_malloc(i32 64, i32 %59)
  store %struct.gv_volume* %60, %struct.gv_volume** %7, align 8
  %61 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %62 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @strlcpy(i8* %63, i8* %64, i32 8)
  %66 = load i32, i32* @GV_VOL_UP, align 4
  %67 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %68 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 4
  %69 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %70 = bitcast %struct.gv_softc* %69 to %struct.gv_volume*
  %71 = load i32, i32* @GV_EVENT_CREATE_VOLUME, align 4
  %72 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %73 = call i32 @gv_post_event(%struct.gv_volume* %70, i32 %71, %struct.gv_volume* %72, i32* null, i32 0, i32 0)
  %74 = load i32, i32* @M_WAITOK, align 4
  %75 = load i32, i32* @M_ZERO, align 4
  %76 = or i32 %74, %75
  %77 = call %struct.gv_volume* @g_malloc(i32 64, i32 %76)
  %78 = bitcast %struct.gv_volume* %77 to %struct.gv_plex*
  store %struct.gv_plex* %78, %struct.gv_plex** %8, align 8
  %79 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %80 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %83 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %86 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %84, i32 %87)
  %89 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %90 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.gv_volume*, %struct.gv_volume** %7, align 8
  %93 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlcpy(i8* %91, i8* %94, i32 8)
  %96 = load i32, i32* @GV_PLEX_RAID5, align 4
  %97 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %98 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %102 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %104 = bitcast %struct.gv_softc* %103 to %struct.gv_volume*
  %105 = load i32, i32* @GV_EVENT_CREATE_PLEX, align 4
  %106 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %107 = bitcast %struct.gv_plex* %106 to %struct.gv_volume*
  %108 = call i32 @gv_post_event(%struct.gv_volume* %104, i32 %105, %struct.gv_volume* %107, i32* null, i32 0, i32 0)
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %169, %56
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %172

114:                                              ; preds = %109
  %115 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 0
  %116 = load i32, i32* %12, align 4
  %117 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %115, i32 30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  %118 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %119 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 0
  %120 = call i8* @gctl_get_param(%struct.gctl_req* %118, i8* %119, i32* null)
  store i8* %120, i8** %14, align 8
  %121 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %122 = bitcast %struct.gv_softc* %121 to %struct.gv_volume*
  %123 = load i8*, i8** %14, align 8
  %124 = call %struct.gv_drive* @gv_find_drive(%struct.gv_volume* %122, i8* %123)
  store %struct.gv_drive* %124, %struct.gv_drive** %6, align 8
  %125 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %126 = icmp eq %struct.gv_drive* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %114
  %128 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %129)
  br label %169

131:                                              ; preds = %114
  %132 = load i32, i32* @M_WAITOK, align 4
  %133 = load i32, i32* @M_ZERO, align 4
  %134 = or i32 %132, %133
  %135 = call %struct.gv_volume* @g_malloc(i32 64, i32 %134)
  %136 = bitcast %struct.gv_volume* %135 to %struct.gv_sd*
  store %struct.gv_sd* %136, %struct.gv_sd** %9, align 8
  %137 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %138 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %141 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %139, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %142, i32 %143)
  %145 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %146 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %149 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @strlcpy(i8* %147, i8* %150, i32 8)
  %152 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %153 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 @strlcpy(i8* %154, i8* %155, i32 8)
  %157 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %158 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %157, i32 0, i32 5
  store i32 -1, i32* %158, align 8
  %159 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %160 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %159, i32 0, i32 6
  store i32 -1, i32* %160, align 4
  %161 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %162 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %161, i32 0, i32 7
  store i32 -1, i32* %162, align 8
  %163 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %164 = bitcast %struct.gv_softc* %163 to %struct.gv_volume*
  %165 = load i32, i32* @GV_EVENT_CREATE_SD, align 4
  %166 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %167 = bitcast %struct.gv_sd* %166 to %struct.gv_volume*
  %168 = call i32 @gv_post_event(%struct.gv_volume* %164, i32 %165, %struct.gv_volume* %167, i32* null, i32 0, i32 0)
  br label %169

169:                                              ; preds = %131, %127
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %109

172:                                              ; preds = %109
  %173 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %174 = bitcast %struct.gv_softc* %173 to %struct.gv_volume*
  %175 = load i32, i32* @GV_EVENT_SETUP_OBJECTS, align 4
  %176 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %177 = bitcast %struct.gv_softc* %176 to %struct.gv_volume*
  %178 = call i32 @gv_post_event(%struct.gv_volume* %174, i32 %175, %struct.gv_volume* %177, i32* null, i32 0, i32 0)
  %179 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %180 = bitcast %struct.gv_softc* %179 to %struct.gv_volume*
  %181 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %182 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %183 = bitcast %struct.gv_softc* %182 to %struct.gv_volume*
  %184 = call i32 @gv_post_event(%struct.gv_volume* %180, i32 %181, %struct.gv_volume* %183, i32* null, i32 0, i32 0)
  br label %185

185:                                              ; preds = %172, %53, %46, %40, %25
  ret void
}

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

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
