; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gv_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  store %struct.g_geom* %9, %struct.g_geom** %3, align 8
  %10 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %11 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %10, i32 0, i32 0
  %12 = load %struct.gv_softc*, %struct.gv_softc** %11, align 8
  store %struct.gv_softc* %12, %struct.gv_softc** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %16
    i32 131, label %16
    i32 130, label %17
  ]

16:                                               ; preds = %1, %1, %1
  br label %22

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = call i32 @g_io_deliver(%struct.bio* %19, i32 %20)
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %24 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %27 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = call i32 @bioq_disksort(i32 %28, %struct.bio* %29)
  %31 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %32 = call i32 @wakeup(%struct.gv_softc* %31)
  %33 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %34 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  br label %36

36:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

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
