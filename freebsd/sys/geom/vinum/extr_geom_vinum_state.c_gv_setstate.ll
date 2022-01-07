; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_setstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_sd = type opaque
%struct.gv_drive = type opaque
%struct.gv_volume = type { i32 }
%struct.gv_plex = type opaque

@.str = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no object given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no state given\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"no flags given\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@GV_SETSTATE_FORCE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid volume state '%s'\00", align 1
@GV_EVENT_SET_VOL_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid plex state '%s'\00", align 1
@GV_EVENT_SET_PLEX_STATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"invalid subdisk state '%s'\00", align 1
@GV_EVENT_SET_SD_STATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid drive state '%s'\00", align 1
@GV_EVENT_SET_DRIVE_STATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"unknown object '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_setstate(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_sd*, align 8
  %7 = alloca %struct.gv_drive*, align 8
  %8 = alloca %struct.gv_volume*, align 8
  %9 = alloca %struct.gv_plex*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %16 = call i8* @gctl_get_param(%struct.gctl_req* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %21 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %140

22:                                               ; preds = %2
  %23 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %24 = call i8* @gctl_get_param(%struct.gctl_req* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %29 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %140

30:                                               ; preds = %22
  %31 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %32 = call i32* @gctl_get_paraml(%struct.gctl_req* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %37 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %140

38:                                               ; preds = %30
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GV_FLAG_F, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %48 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %47, i32 0, i32 0
  %49 = load %struct.gv_softc*, %struct.gv_softc** %48, align 8
  store %struct.gv_softc* %49, %struct.gv_softc** %5, align 8
  %50 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @gv_object_type(%struct.gv_softc* %50, i8* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  switch i32 %53, label %136 [
    i32 128, label %54
    i32 130, label %73
    i32 129, label %94
    i32 131, label %115
  ]

54:                                               ; preds = %46
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @gv_volstatei(i8* %55)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %60)
  br label %140

62:                                               ; preds = %54
  %63 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %63, i8* %64)
  store %struct.gv_volume* %65, %struct.gv_volume** %8, align 8
  %66 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %67 = load i32, i32* @GV_EVENT_SET_VOL_STATE, align 4
  %68 = load %struct.gv_volume*, %struct.gv_volume** %8, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @gv_volstatei(i8* %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @gv_post_event(%struct.gv_softc* %66, i32 %67, %struct.gv_volume* %68, i32* null, i32 %70, i32 %71)
  br label %140

73:                                               ; preds = %46
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @gv_plexstatei(i8* %74)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %79)
  br label %140

81:                                               ; preds = %73
  %82 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call %struct.gv_volume* @gv_find_plex(%struct.gv_softc* %82, i8* %83)
  %85 = bitcast %struct.gv_volume* %84 to %struct.gv_plex*
  store %struct.gv_plex* %85, %struct.gv_plex** %9, align 8
  %86 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %87 = load i32, i32* @GV_EVENT_SET_PLEX_STATE, align 4
  %88 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %89 = bitcast %struct.gv_plex* %88 to %struct.gv_volume*
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @gv_plexstatei(i8* %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @gv_post_event(%struct.gv_softc* %86, i32 %87, %struct.gv_volume* %89, i32* null, i32 %91, i32 %92)
  br label %140

94:                                               ; preds = %46
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @gv_sdstatei(i8* %95)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  br label %140

102:                                              ; preds = %94
  %103 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call %struct.gv_volume* @gv_find_sd(%struct.gv_softc* %103, i8* %104)
  %106 = bitcast %struct.gv_volume* %105 to %struct.gv_sd*
  store %struct.gv_sd* %106, %struct.gv_sd** %6, align 8
  %107 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %108 = load i32, i32* @GV_EVENT_SET_SD_STATE, align 4
  %109 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %110 = bitcast %struct.gv_sd* %109 to %struct.gv_volume*
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @gv_sdstatei(i8* %111)
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @gv_post_event(%struct.gv_softc* %107, i32 %108, %struct.gv_volume* %110, i32* null, i32 %112, i32 %113)
  br label %140

115:                                              ; preds = %46
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @gv_drivestatei(i8* %116)
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %121)
  br label %140

123:                                              ; preds = %115
  %124 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call %struct.gv_volume* @gv_find_drive(%struct.gv_softc* %124, i8* %125)
  %127 = bitcast %struct.gv_volume* %126 to %struct.gv_drive*
  store %struct.gv_drive* %127, %struct.gv_drive** %7, align 8
  %128 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %129 = load i32, i32* @GV_EVENT_SET_DRIVE_STATE, align 4
  %130 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %131 = bitcast %struct.gv_drive* %130 to %struct.gv_volume*
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @gv_drivestatei(i8* %132)
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @gv_post_event(%struct.gv_softc* %128, i32 %129, %struct.gv_volume* %131, i32* null, i32 %133, i32 %134)
  br label %140

136:                                              ; preds = %46
  %137 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %19, %27, %35, %136, %123, %119, %102, %98, %81, %77, %62, %58
  ret void
}

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_volstatei(i8*) #1

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_volume*, i32*, i32, i32) #1

declare dso_local i32 @gv_plexstatei(i8*) #1

declare dso_local %struct.gv_volume* @gv_find_plex(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_sdstatei(i8*) #1

declare dso_local %struct.gv_volume* @gv_find_sd(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_drivestatei(i8*) #1

declare dso_local %struct.gv_volume* @gv_find_drive(%struct.gv_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
