; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"NULL bp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gv_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = icmp ne %struct.bio* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.g_geom*, %struct.g_geom** %12, align 8
  store %struct.g_geom* %13, %struct.g_geom** %3, align 8
  %14 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 0
  %16 = load %struct.gv_softc*, %struct.gv_softc** %15, align 8
  store %struct.gv_softc* %16, %struct.gv_softc** %4, align 8
  %17 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %18 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %21 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = call i32 @bioq_disksort(i32 %22, %struct.bio* %23)
  %25 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %26 = call i32 @wakeup(%struct.gv_softc* %25)
  %27 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %28 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_disksort(i32, %struct.bio*) #1

declare dso_local i32 @wakeup(%struct.gv_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
