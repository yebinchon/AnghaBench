; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_wait_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_wait_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.g_rr_softc = type { i32*, %struct.g_geom* }
%struct.g_geom = type { i32 }

@me = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_rr_wait_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_rr_wait_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_rr_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.g_rr_softc*
  store %struct.g_rr_softc* %6, %struct.g_rr_softc** %3, align 8
  %7 = load %struct.g_rr_softc*, %struct.g_rr_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %7, i32 0, i32 1
  %9 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  store %struct.g_geom* %9, %struct.g_geom** %4, align 8
  %10 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %11 = call i32 @g_sched_lock(%struct.g_geom* %10)
  %12 = load %struct.g_rr_softc*, %struct.g_rr_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.g_rr_softc*, %struct.g_rr_softc** %3, align 8
  %18 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @g_rr_queue_put(i32* %19)
  %21 = load %struct.g_rr_softc*, %struct.g_rr_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 1), align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 4
  br label %27

27:                                               ; preds = %16, %1
  %28 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %29 = call i32 @g_sched_dispatch(%struct.g_geom* %28)
  %30 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %31 = call i32 @g_sched_unlock(%struct.g_geom* %30)
  ret void
}

declare dso_local i32 @g_sched_lock(%struct.g_geom*) #1

declare dso_local i32 @g_rr_queue_put(i32*) #1

declare dso_local i32 @g_sched_dispatch(%struct.g_geom*) #1

declare dso_local i32 @g_sched_unlock(%struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
