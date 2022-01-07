; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_create_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { %struct.g_geom*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.g_raid_md_object* }
%struct.g_geom = type { %struct.g_raid_softc*, i32, i32, i32, i32 }
%struct.g_class = type { i32 }
%struct.g_raid_md_object = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Creating array %s.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_RAID = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@g_raid_start = common dso_local global i32 0, align 4
@g_raid_orphan = common dso_local global i32 0, align 4
@g_raid_access = common dso_local global i32 0, align 4
@g_raid_dumpconf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"graid:lock\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"graid:queue\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@g_raid_worker = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"g_raid %s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Cannot create kernel thread for %s.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Array %s created.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_raid_softc* @g_raid_create_node(%struct.g_class* %0, i8* %1, %struct.g_raid_md_object* %2) #0 {
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_raid_md_object*, align 8
  %8 = alloca %struct.g_raid_softc*, align 8
  %9 = alloca %struct.g_geom*, align 8
  %10 = alloca i32, align 4
  store %struct.g_class* %0, %struct.g_class** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.g_raid_md_object* %2, %struct.g_raid_md_object** %7, align 8
  %11 = call i32 (...) @g_topology_assert()
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.g_class*, %struct.g_class** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  store %struct.g_geom* %16, %struct.g_geom** %9, align 8
  %17 = load i32, i32* @M_RAID, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.g_raid_softc* @malloc(i32 56, i32 %17, i32 %20)
  store %struct.g_raid_softc* %21, %struct.g_raid_softc** %8, align 8
  %22 = load i32, i32* @g_raid_start, align 4
  %23 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %24 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @g_raid_orphan, align 4
  %26 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %27 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @g_raid_access, align 4
  %29 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %30 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @g_raid_dumpconf, align 4
  %32 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %33 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %7, align 8
  %35 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %36 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %35, i32 0, i32 9
  store %struct.g_raid_md_object* %34, %struct.g_raid_md_object** %36, align 8
  %37 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %38 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %39 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %38, i32 0, i32 0
  store %struct.g_geom* %37, %struct.g_geom** %39, align 8
  %40 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %41 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %43 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %42, i32 0, i32 7
  %44 = call i32 @TAILQ_INIT(i32* %43)
  %45 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %46 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %45, i32 0, i32 6
  %47 = call i32 @TAILQ_INIT(i32* %46)
  %48 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %49 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %48, i32 0, i32 1
  %50 = call i32 @sx_init(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %52 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %51, i32 0, i32 2
  %53 = load i32, i32* @MTX_DEF, align 4
  %54 = call i32 @mtx_init(i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %53)
  %55 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %56 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %55, i32 0, i32 5
  %57 = call i32 @TAILQ_INIT(i32* %56)
  %58 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %59 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %58, i32 0, i32 4
  %60 = call i32 @bioq_init(i32* %59)
  %61 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %62 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %63 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %62, i32 0, i32 0
  store %struct.g_raid_softc* %61, %struct.g_raid_softc** %63, align 8
  %64 = load i32, i32* @g_raid_worker, align 4
  %65 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %66 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %67 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %66, i32 0, i32 3
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @kproc_create(i32 %64, %struct.g_raid_softc* %65, i32* %67, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %3
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @G_RAID_DEBUG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %76 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %75, i32 0, i32 2
  %77 = call i32 @mtx_destroy(i32* %76)
  %78 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %79 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %78, i32 0, i32 1
  %80 = call i32 @sx_destroy(i32* %79)
  %81 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %82 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %81, i32 0, i32 0
  %83 = load %struct.g_geom*, %struct.g_geom** %82, align 8
  %84 = call i32 @g_destroy_geom(%struct.g_geom* %83)
  %85 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %86 = load i32, i32* @M_RAID, align 4
  %87 = call i32 @free(%struct.g_raid_softc* %85, i32 %86)
  store %struct.g_raid_softc* null, %struct.g_raid_softc** %4, align 8
  br label %93

88:                                               ; preds = %3
  %89 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @G_RAID_DEBUG1(i32 0, %struct.g_raid_softc* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  %92 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  store %struct.g_raid_softc* %92, %struct.g_raid_softc** %4, align 8
  br label %93

93:                                               ; preds = %88, %72
  %94 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  ret %struct.g_raid_softc* %94
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i8*) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*, i8*) #1

declare dso_local %struct.g_raid_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @kproc_create(i32, %struct.g_raid_softc*, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

declare dso_local i32 @free(%struct.g_raid_softc*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
