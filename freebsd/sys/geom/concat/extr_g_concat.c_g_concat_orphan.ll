; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_concat_disk*, %struct.g_geom* }
%struct.g_concat_disk = type { i32 }
%struct.g_geom = type { %struct.g_concat_softc* }
%struct.g_concat_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_concat_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_concat_softc*, align 8
  %4 = alloca %struct.g_concat_disk*, align 8
  %5 = alloca %struct.g_geom*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 1
  %9 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  store %struct.g_geom* %9, %struct.g_geom** %5, align 8
  %10 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %11 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %10, i32 0, i32 0
  %12 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  store %struct.g_concat_softc* %12, %struct.g_concat_softc** %3, align 8
  %13 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %14 = icmp eq %struct.g_concat_softc* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_concat_disk*, %struct.g_concat_disk** %18, align 8
  store %struct.g_concat_disk* %19, %struct.g_concat_disk** %4, align 8
  %20 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %21 = icmp eq %struct.g_concat_disk* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %25 = call i32 @g_concat_remove_disk(%struct.g_concat_disk* %24)
  br label %26

26:                                               ; preds = %23, %22, %15
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_concat_remove_disk(%struct.g_concat_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
