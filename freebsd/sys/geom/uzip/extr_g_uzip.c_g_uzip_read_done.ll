; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__*, %struct.bio* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_uzip_softc* }
%struct.g_uzip_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_uzip_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_uzip_read_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_uzip_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.g_geom*, %struct.g_geom** %12, align 8
  store %struct.g_geom* %13, %struct.g_geom** %4, align 8
  %14 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 0
  %16 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %15, align 8
  store %struct.g_uzip_softc* %16, %struct.g_uzip_softc** %5, align 8
  %17 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %18 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %21 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %20, i32 0, i32 1
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = call i32 @bioq_disksort(i32* %21, %struct.bio* %22)
  %24 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %25 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %28 = call i32 @wakeup(%struct.g_uzip_softc* %27)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_uzip_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
