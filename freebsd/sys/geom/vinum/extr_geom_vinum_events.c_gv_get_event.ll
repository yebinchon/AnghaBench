; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_events.c_gv_get_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_events.c_gv_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_event = type { i32 }
%struct.gv_softc = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"NULL sc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gv_event* @gv_get_event(%struct.gv_softc* %0) #0 {
  %2 = alloca %struct.gv_softc*, align 8
  %3 = alloca %struct.gv_event*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %2, align 8
  %4 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %5 = icmp ne %struct.gv_softc* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %9 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %12 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %11, i32 0, i32 1
  %13 = call %struct.gv_event* @TAILQ_FIRST(i32* %12)
  store %struct.gv_event* %13, %struct.gv_event** %3, align 8
  %14 = load %struct.gv_softc*, %struct.gv_softc** %2, align 8
  %15 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_unlock(i32* %15)
  %17 = load %struct.gv_event*, %struct.gv_event** %3, align 8
  ret %struct.gv_event* %17
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gv_event* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
