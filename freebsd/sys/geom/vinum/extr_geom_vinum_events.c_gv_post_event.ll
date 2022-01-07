; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_events.c_gv_post_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_events.c_gv_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32, i32 }
%struct.gv_event = type { i32, i8*, i8*, i8*, i8* }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@events = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_post_event(%struct.gv_softc* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.gv_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.gv_event*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.gv_event* @g_malloc(i32 40, i32 %16)
  store %struct.gv_event* %17, %struct.gv_event** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.gv_event*, %struct.gv_event** %13, align 8
  %20 = getelementptr inbounds %struct.gv_event, %struct.gv_event* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.gv_event*, %struct.gv_event** %13, align 8
  %23 = getelementptr inbounds %struct.gv_event, %struct.gv_event* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.gv_event*, %struct.gv_event** %13, align 8
  %26 = getelementptr inbounds %struct.gv_event, %struct.gv_event* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.gv_event*, %struct.gv_event** %13, align 8
  %29 = getelementptr inbounds %struct.gv_event, %struct.gv_event* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.gv_event*, %struct.gv_event** %13, align 8
  %32 = getelementptr inbounds %struct.gv_event, %struct.gv_event* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %34 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %37 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %36, i32 0, i32 1
  %38 = load %struct.gv_event*, %struct.gv_event** %13, align 8
  %39 = load i32, i32* @events, align 4
  %40 = call i32 @TAILQ_INSERT_TAIL(i32* %37, %struct.gv_event* %38, i32 %39)
  %41 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %42 = call i32 @wakeup(%struct.gv_softc* %41)
  %43 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %44 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %43, i32 0, i32 0
  %45 = call i32 @mtx_unlock(i32* %44)
  ret void
}

declare dso_local %struct.gv_event* @g_malloc(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.gv_event*, i32) #1

declare dso_local i32 @wakeup(%struct.gv_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
