; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_plex = type opaque
%struct.gv_sd = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no argument given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@GV_EVENT_DETACH_PLEX = common dso_local global i32 0, align 4
@GV_EVENT_DETACH_SD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid object type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gv_softc*, %struct.gctl_req*)* @gv_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_detach(%struct.gv_softc* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_plex*, align 8
  %6 = alloca %struct.gv_sd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %10 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %11 = call i8* @gctl_get_param(%struct.gctl_req* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %16 = call i32 @gctl_error(%struct.gctl_req* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %19 = call i32* @gctl_get_paraml(%struct.gctl_req* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %19, i32** %7, align 8
  %20 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @gv_object_type(%struct.gv_softc* %20, i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %46 [
    i32 129, label %24
    i32 128, label %36
  ]

24:                                               ; preds = %17
  %25 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call %struct.gv_sd* @gv_find_plex(%struct.gv_softc* %25, i8* %26)
  %28 = bitcast %struct.gv_sd* %27 to %struct.gv_plex*
  store %struct.gv_plex* %28, %struct.gv_plex** %5, align 8
  %29 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %30 = load i32, i32* @GV_EVENT_DETACH_PLEX, align 4
  %31 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %32 = bitcast %struct.gv_plex* %31 to %struct.gv_sd*
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gv_post_event(%struct.gv_softc* %29, i32 %30, %struct.gv_sd* %32, i32* null, i32 %34, i32 0)
  br label %49

36:                                               ; preds = %17
  %37 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call %struct.gv_sd* @gv_find_sd(%struct.gv_softc* %37, i8* %38)
  store %struct.gv_sd* %39, %struct.gv_sd** %6, align 8
  %40 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %41 = load i32, i32* @GV_EVENT_DETACH_SD, align 4
  %42 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gv_post_event(%struct.gv_softc* %40, i32 %41, %struct.gv_sd* %42, i32* null, i32 %44, i32 0)
  br label %49

46:                                               ; preds = %17
  %47 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %48 = call i32 @gctl_error(%struct.gctl_req* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %14, %46, %36, %24
  ret void
}

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_sd* @gv_find_plex(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_sd*, i32*, i32, i32) #1

declare dso_local %struct.gv_sd* @gv_find_sd(%struct.gv_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
