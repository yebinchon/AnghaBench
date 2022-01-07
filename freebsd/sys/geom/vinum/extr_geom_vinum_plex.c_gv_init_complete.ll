; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_init_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_init_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.bio = type { i64, i64, i32, i32*, %struct.gv_sd* }
%struct.gv_sd = type { i64, i64, i64, i32, %struct.gv_drive* }
%struct.gv_drive = type { %struct.g_consumer* }
%struct.g_consumer = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"gv_init_complete: NULL s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gv_init_complete: NULL d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gv_init_complete: NULL cp\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"gv_init_complete: NULL sc\00", align 1
@GV_SD_STALE = common dso_local global i32 0, align 4
@GV_SETSTATE_FORCE = common dso_local global i32 0, align 4
@GV_SETSTATE_CONFIG = common dso_local global i32 0, align 4
@GV_SD_UP = common dso_local global i32 0, align 4
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"subdisk '%s' init: finished successfully\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_init_complete(%struct.gv_plex* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.gv_plex*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_drive*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca %struct.gv_sd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.gv_plex* %0, %struct.gv_plex** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 4
  %15 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  store %struct.gv_sd* %15, %struct.gv_sd** %8, align 8
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  %28 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %29 = icmp ne %struct.gv_sd* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %33 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %32, i32 0, i32 4
  %34 = load %struct.gv_drive*, %struct.gv_drive** %33, align 8
  store %struct.gv_drive* %34, %struct.gv_drive** %6, align 8
  %35 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %36 = icmp ne %struct.gv_drive* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %40 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %39, i32 0, i32 0
  %41 = load %struct.g_consumer*, %struct.g_consumer** %40, align 8
  store %struct.g_consumer* %41, %struct.g_consumer** %7, align 8
  %42 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %43 = icmp ne %struct.g_consumer* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %47 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %46, i32 0, i32 0
  %48 = load %struct.gv_softc*, %struct.gv_softc** %47, align 8
  store %struct.gv_softc* %48, %struct.gv_softc** %5, align 8
  %49 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %50 = icmp ne %struct.gv_softc* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = call i32 @g_destroy_bio(%struct.bio* %53)
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %57 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %60 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = icmp sge i64 %55, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %2
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @g_free(i32* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = call i32 (...) @g_topology_assert_not()
  %72 = call i32 (...) @g_topology_lock()
  %73 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %74 = call i32 @g_access(%struct.g_consumer* %73, i32 0, i32 -1, i32 0)
  %75 = call i32 (...) @g_topology_unlock()
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %80 = load i32, i32* @GV_SD_STALE, align 4
  %81 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %82 = load i32, i32* @GV_SETSTATE_CONFIG, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @gv_set_sd_state(%struct.gv_sd* %79, i32 %80, i32 %83)
  br label %100

85:                                               ; preds = %70
  %86 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %87 = load i32, i32* @GV_SD_UP, align 4
  %88 = load i32, i32* @GV_SETSTATE_CONFIG, align 4
  %89 = call i32 @gv_set_sd_state(%struct.gv_sd* %86, i32 %87, i32 %88)
  %90 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %91 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %93 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %94 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %95 = call i32 @gv_post_event(%struct.gv_softc* %92, i32 %93, %struct.gv_softc* %94, i32* null, i32 0, i32 0)
  %96 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %97 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @G_VINUM_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %85, %78
  br label %115

101:                                              ; preds = %2
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %104 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %9, align 8
  %110 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @gv_init_request(%struct.gv_sd* %110, i64 %111, i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %101, %100
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @gv_set_sd_state(%struct.gv_sd*, i32, i32) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_softc*, i32*, i32, i32) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @gv_init_request(%struct.gv_sd*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
