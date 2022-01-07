; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_event_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_event_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_event = type { i32 }
%struct.g_raid3_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_raid3_event* (%struct.g_raid3_softc*)* @g_raid3_event_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_raid3_event* @g_raid3_event_get(%struct.g_raid3_softc* %0) #0 {
  %2 = alloca %struct.g_raid3_softc*, align 8
  %3 = alloca %struct.g_raid3_event*, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %2, align 8
  %4 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %5 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %4, i32 0, i32 0
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %8 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %7, i32 0, i32 1
  %9 = call %struct.g_raid3_event* @TAILQ_FIRST(i32* %8)
  store %struct.g_raid3_event* %9, %struct.g_raid3_event** %3, align 8
  %10 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %11 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_unlock(i32* %11)
  %13 = load %struct.g_raid3_event*, %struct.g_raid3_event** %3, align 8
  ret %struct.g_raid3_event* %13
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.g_raid3_event* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
