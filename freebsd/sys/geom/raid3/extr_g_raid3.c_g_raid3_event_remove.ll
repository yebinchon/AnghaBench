; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_event_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_event_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32, i32 }
%struct.g_raid3_event = type { i32 }

@e_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*, %struct.g_raid3_event*)* @g_raid3_event_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_event_remove(%struct.g_raid3_softc* %0, %struct.g_raid3_event* %1) #0 {
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca %struct.g_raid3_event*, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %3, align 8
  store %struct.g_raid3_event* %1, %struct.g_raid3_event** %4, align 8
  %5 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %6 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %8, i32 0, i32 1
  %10 = load %struct.g_raid3_event*, %struct.g_raid3_event** %4, align 8
  %11 = load i32, i32* @e_next, align 4
  %12 = call i32 @TAILQ_REMOVE(i32* %9, %struct.g_raid3_event* %10, i32 %11)
  %13 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_unlock(i32* %14)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_raid3_event*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
