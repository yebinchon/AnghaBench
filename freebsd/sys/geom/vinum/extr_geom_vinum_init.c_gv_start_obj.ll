; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_init.c_gv_start_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_init.c_gv_start_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_volume = type { i32 }
%struct.gv_plex = type opaque

@.str = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"initsize\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"no arguments given\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@GV_EVENT_START_VOLUME = common dso_local global i32 0, align 4
@GV_EVENT_START_PLEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"unable to start '%s' - not yet supported\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"unknown object '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_start_obj(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_volume*, align 8
  %7 = alloca %struct.gv_plex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %14 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %15 = call i32* @gctl_get_paraml(%struct.gctl_req* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %17 = call i32* @gctl_get_paraml(%struct.gctl_req* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %2
  %25 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %26 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %93

27:                                               ; preds = %20
  %28 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %29 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %28, i32 0, i32 0
  %30 = load %struct.gv_softc*, %struct.gv_softc** %29, align 8
  store %struct.gv_softc* %30, %struct.gv_softc** %5, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %90, %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %31
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @snprintf(i8* %37, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %42 = call i8* @gctl_get_param(%struct.gctl_req* %40, i8* %41, i32* null)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %90

46:                                               ; preds = %36
  %47 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @gv_object_type(%struct.gv_softc* %47, i8* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  switch i32 %50, label %85 [
    i32 128, label %51
    i32 130, label %65
    i32 129, label %81
    i32 131, label %81
  ]

51:                                               ; preds = %46
  %52 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %52, i8* %53)
  store %struct.gv_volume* %54, %struct.gv_volume** %6, align 8
  %55 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %56 = icmp ne %struct.gv_volume* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %59 = load i32, i32* @GV_EVENT_START_VOLUME, align 4
  %60 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gv_post_event(%struct.gv_softc* %58, i32 %59, %struct.gv_volume* %60, i32* null, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %57, %51
  br label %89

65:                                               ; preds = %46
  %66 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call %struct.gv_volume* @gv_find_plex(%struct.gv_softc* %66, i8* %67)
  %69 = bitcast %struct.gv_volume* %68 to %struct.gv_plex*
  store %struct.gv_plex* %69, %struct.gv_plex** %7, align 8
  %70 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %71 = icmp ne %struct.gv_plex* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %74 = load i32, i32* @GV_EVENT_START_PLEX, align 4
  %75 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %76 = bitcast %struct.gv_plex* %75 to %struct.gv_volume*
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gv_post_event(%struct.gv_softc* %73, i32 %74, %struct.gv_volume* %76, i32* null, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %72, %65
  br label %89

81:                                               ; preds = %46, %46
  %82 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  br label %93

85:                                               ; preds = %46
  %86 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  br label %93

89:                                               ; preds = %80, %64
  br label %90

90:                                               ; preds = %89, %45
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %31

93:                                               ; preds = %24, %81, %85, %31
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_volume*, i32*, i32, i32) #1

declare dso_local %struct.gv_volume* @gv_find_plex(%struct.gv_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
