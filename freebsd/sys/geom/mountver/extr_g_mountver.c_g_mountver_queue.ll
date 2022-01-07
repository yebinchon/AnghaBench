; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_mountver_softc* }
%struct.g_mountver_softc = type { i32, i32 }

@bio_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_mountver_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mountver_queue(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_mountver_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  store %struct.g_geom* %9, %struct.g_geom** %4, align 8
  %10 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %11 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %10, i32 0, i32 0
  %12 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %11, align 8
  store %struct.g_mountver_softc* %12, %struct.g_mountver_softc** %3, align 8
  %13 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %17 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %16, i32 0, i32 1
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = load i32, i32* @bio_queue, align 4
  %20 = call i32 @TAILQ_INSERT_TAIL(i32* %17, %struct.bio* %18, i32 %19)
  %21 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.bio*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
