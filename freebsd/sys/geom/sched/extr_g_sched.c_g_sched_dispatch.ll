; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i32, %struct.g_sched_softc* }
%struct.g_sched_softc = type { i32, i32, i32, %struct.g_gsched* }
%struct.g_gsched = type { %struct.bio* (i32, i32)* }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"sc_mtx not owned during dispatch\00", align 1
@G_SCHED_FLUSHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_sched_dispatch(%struct.g_geom* %0) #0 {
  %2 = alloca %struct.g_geom*, align 8
  %3 = alloca %struct.g_sched_softc*, align 8
  %4 = alloca %struct.g_gsched*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %2, align 8
  %6 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %7 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %6, i32 0, i32 1
  %8 = load %struct.g_sched_softc*, %struct.g_sched_softc** %7, align 8
  store %struct.g_sched_softc* %8, %struct.g_sched_softc** %3, align 8
  %9 = load %struct.g_sched_softc*, %struct.g_sched_softc** %3, align 8
  %10 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %9, i32 0, i32 3
  %11 = load %struct.g_gsched*, %struct.g_gsched** %10, align 8
  store %struct.g_gsched* %11, %struct.g_gsched** %4, align 8
  %12 = load %struct.g_sched_softc*, %struct.g_sched_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %12, i32 0, i32 2
  %14 = call i32 @mtx_owned(i32* %13)
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.g_sched_softc*, %struct.g_sched_softc** %3, align 8
  %17 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @G_SCHED_FLUSHING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %39

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %33, %23
  %25 = load %struct.g_gsched*, %struct.g_gsched** %4, align 8
  %26 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %25, i32 0, i32 0
  %27 = load %struct.bio* (i32, i32)*, %struct.bio* (i32, i32)** %26, align 8
  %28 = load %struct.g_sched_softc*, %struct.g_sched_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.bio* %27(i32 %30, i32 0)
  store %struct.bio* %31, %struct.bio** %5, align 8
  %32 = icmp ne %struct.bio* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %36 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %35, i32 0, i32 0
  %37 = call i32 @LIST_FIRST(i32* %36)
  %38 = call i32 @g_io_request(%struct.bio* %34, i32 %37)
  br label %24

39:                                               ; preds = %22, %24
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
