; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_delay.c_g_delay_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_delay.c_g_delay_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_delay_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_delay_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_delay_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_delay_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.g_delay_softc*
  store %struct.g_delay_softc* %5, %struct.g_delay_softc** %3, align 8
  %6 = load %struct.g_delay_softc*, %struct.g_delay_softc** %3, align 8
  %7 = getelementptr inbounds %struct.g_delay_softc, %struct.g_delay_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @g_sched_lock(i32 %8)
  %10 = load %struct.g_delay_softc*, %struct.g_delay_softc** %3, align 8
  %11 = getelementptr inbounds %struct.g_delay_softc, %struct.g_delay_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @g_sched_dispatch(i32 %12)
  %14 = load %struct.g_delay_softc*, %struct.g_delay_softc** %3, align 8
  %15 = getelementptr inbounds %struct.g_delay_softc, %struct.g_delay_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @g_sched_unlock(i32 %16)
  %18 = load %struct.g_delay_softc*, %struct.g_delay_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_delay_softc, %struct.g_delay_softc* %18, i32 0, i32 0
  %20 = load %struct.g_delay_softc*, %struct.g_delay_softc** %3, align 8
  %21 = call i32 @callout_reset(i32* %19, i32 1, void (i8*)* @g_delay_timeout, %struct.g_delay_softc* %20)
  ret void
}

declare dso_local i32 @g_sched_lock(i32) #1

declare dso_local i32 @g_sched_dispatch(i32) #1

declare dso_local i32 @g_sched_unlock(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.g_delay_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
