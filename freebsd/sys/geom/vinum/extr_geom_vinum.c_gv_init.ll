; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_class = type { i32 }
%struct.g_geom = type { %struct.gv_softc*, i32, i32, i8*, i8* }
%struct.gv_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.g_geom* }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"gv_init(%p)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@gv_orphan = common dso_local global i8* null, align 8
@gv_access = common dso_local global i32 0, align 4
@gv_start = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"gv_config\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"gv_equeue\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gv_bqueue\00", align 1
@gv_worker = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"gv_worker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_class*)* @gv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_init(%struct.g_class* %0) #0 {
  %2 = alloca %struct.g_class*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gv_softc*, align 8
  store %struct.g_class* %0, %struct.g_class** %2, align 8
  %5 = load i32, i32* @G_T_TOPOLOGY, align 4
  %6 = load %struct.g_class*, %struct.g_class** %2, align 8
  %7 = call i32 @g_trace(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.g_class* %6)
  %8 = load %struct.g_class*, %struct.g_class** %2, align 8
  %9 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.g_geom* %9, %struct.g_geom** %3, align 8
  %10 = load i8*, i8** @gv_orphan, align 8
  %11 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %12 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @gv_orphan, align 8
  %14 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @gv_access, align 4
  %17 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @gv_start, align 4
  %20 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %21 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @g_malloc(i32 64, i32 %24)
  %26 = bitcast i8* %25 to %struct.gv_softc*
  %27 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %28 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %27, i32 0, i32 0
  store %struct.gv_softc* %26, %struct.gv_softc** %28, align 8
  %29 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %30 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %29, i32 0, i32 0
  %31 = load %struct.gv_softc*, %struct.gv_softc** %30, align 8
  store %struct.gv_softc* %31, %struct.gv_softc** %4, align 8
  %32 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %33 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %34 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %33, i32 0, i32 11
  store %struct.g_geom* %32, %struct.g_geom** %34, align 8
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @g_malloc(i32 4, i32 %37)
  %39 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %40 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = load i32, i32* @M_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @g_malloc(i32 4, i32 %43)
  %45 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %46 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  %47 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %48 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %47, i32 0, i32 10
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @bioq_init(i8* %49)
  %51 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %52 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %51, i32 0, i32 9
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @bioq_init(i8* %53)
  %55 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %56 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %55, i32 0, i32 8
  %57 = call i32 @LIST_INIT(i32* %56)
  %58 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %59 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %58, i32 0, i32 7
  %60 = call i32 @LIST_INIT(i32* %59)
  %61 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %62 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %61, i32 0, i32 6
  %63 = call i32 @LIST_INIT(i32* %62)
  %64 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %65 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %64, i32 0, i32 5
  %66 = call i32 @LIST_INIT(i32* %65)
  %67 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %68 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %67, i32 0, i32 4
  %69 = call i32 @TAILQ_INIT(i32* %68)
  %70 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %71 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %70, i32 0, i32 3
  %72 = load i32, i32* @MTX_DEF, align 4
  %73 = call i32 @mtx_init(i32* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %72)
  %74 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %75 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %74, i32 0, i32 2
  %76 = load i32, i32* @MTX_DEF, align 4
  %77 = call i32 @mtx_init(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %76)
  %78 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %79 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %78, i32 0, i32 1
  %80 = load i32, i32* @MTX_DEF, align 4
  %81 = call i32 @mtx_init(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %80)
  %82 = load i32, i32* @gv_worker, align 4
  %83 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %84 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %85 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %84, i32 0, i32 0
  %86 = call i32 @kproc_create(i32 %82, %struct.gv_softc* %83, i32* %85, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_class*) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*) #1

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @bioq_init(i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.gv_softc*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
