; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_events.c_gv_worker_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_events.c_gv_worker_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32, i32, i32 }
%struct.gv_event = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_EVENT_THREAD_EXIT = common dso_local global i32 0, align 4
@events = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gv_wor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_worker_exit(%struct.gv_softc* %0) #0 {
  %2 = alloca %struct.gv_softc*, align 8
  %3 = alloca %struct.gv_event*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %2, align 8
  %4 = load i32, i32* @M_WAITOK, align 4
  %5 = load i32, i32* @M_ZERO, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.gv_event* @g_malloc(i32 4, i32 %6)
  store %struct.gv_event* %7, %struct.gv_event** %3, align 8
  %8 = load i32, i32* @GV_EVENT_THREAD_EXIT, align 4
  %9 = load %struct.gv_event*, %struct.gv_event** %3, align 8
  %10 = getelementptr inbounds %struct.gv_event, %struct.gv_event* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %12 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %15 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %14, i32 0, i32 2
  %16 = load %struct.gv_event*, %struct.gv_event** %3, align 8
  %17 = load i32, i32* @events, align 4
  %18 = call i32 @TAILQ_INSERT_TAIL(i32* %15, %struct.gv_event* %16, i32 %17)
  %19 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %20 = call i32 @wakeup(%struct.gv_softc* %19)
  %21 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %22 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %25 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %24, i32 0, i32 0
  %26 = load i32, i32* @PDROP, align 4
  %27 = call i32 @msleep(i32 %23, i32* %25, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local %struct.gv_event* @g_malloc(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.gv_event*, i32) #1

declare dso_local i32 @wakeup(%struct.gv_softc*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
