; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_parityop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_parityop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_plex = type { i64, i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"plex\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no plex given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no flags given\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rebuild\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"no operation given\00", align 1
@GV_TYPE_PLEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"'%s' is not a plex\00", align 1
@GV_PLEX_UP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"plex %s is not completely accessible\00", align 1
@GV_PLEX_RAID5 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"plex %s is not a RAID5 plex\00", align 1
@GV_EVENT_PARITY_REBUILD = common dso_local global i32 0, align 4
@GV_EVENT_PARITY_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gv_softc*, %struct.gctl_req*)* @gv_parityop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_parityop(%struct.gv_softc* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_plex*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %10 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %11 = call i8* @gctl_get_param(%struct.gctl_req* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %16 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %19 = call i32* @gctl_get_paraml(%struct.gctl_req* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %27 = call i32* @gctl_get_paraml(%struct.gctl_req* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %32 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %85

33:                                               ; preds = %25
  %34 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @gv_object_type(%struct.gv_softc* %34, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @GV_TYPE_PLEX, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %42)
  br label %85

44:                                               ; preds = %33
  %45 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call %struct.gv_plex* @gv_find_plex(%struct.gv_softc* %45, i8* %46)
  store %struct.gv_plex* %47, %struct.gv_plex** %5, align 8
  %48 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %49 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GV_PLEX_UP, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %55 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %56 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %57)
  br label %85

59:                                               ; preds = %44
  %60 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %61 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GV_PLEX_RAID5, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %67 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %68 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %69)
  br label %85

71:                                               ; preds = %59
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %77 = load i32, i32* @GV_EVENT_PARITY_REBUILD, align 4
  %78 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %79 = call i32 @gv_post_event(%struct.gv_softc* %76, i32 %77, %struct.gv_plex* %78, i32* null, i32 0, i32 0)
  br label %85

80:                                               ; preds = %71
  %81 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %82 = load i32, i32* @GV_EVENT_PARITY_CHECK, align 4
  %83 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %84 = call i32 @gv_post_event(%struct.gv_softc* %81, i32 %82, %struct.gv_plex* %83, i32* null, i32 0, i32 0)
  br label %85

85:                                               ; preds = %14, %22, %30, %40, %53, %65, %80, %75
  ret void
}

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_plex* @gv_find_plex(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_plex*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
