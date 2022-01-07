; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__*, %struct.g_geom* }
%struct.TYPE_2__ = type { i32 }
%struct.g_geom = type { %struct.g_gate_softc* }
%struct.g_gate_softc = type { %struct.g_consumer* }

@.str = private unnamed_addr constant [21 x i8] c"cp=%p sc_readcons=%p\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Destroying read consumer on provider %s orphan.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_gate_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gate_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_gate_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %5 = call i32 (...) @g_topology_assert()
  %6 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 1
  %8 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  store %struct.g_geom* %8, %struct.g_geom** %4, align 8
  %9 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %10 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %9, i32 0, i32 0
  %11 = load %struct.g_gate_softc*, %struct.g_gate_softc** %10, align 8
  store %struct.g_gate_softc* %11, %struct.g_gate_softc** %3, align 8
  %12 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %13 = icmp eq %struct.g_gate_softc* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %17 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %18 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %17, i32 0, i32 0
  %19 = load %struct.g_consumer*, %struct.g_consumer** %18, align 8
  %20 = icmp eq %struct.g_consumer* %16, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %23 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %24 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %23, i32 0, i32 0
  %25 = load %struct.g_consumer*, %struct.g_consumer** %24, align 8
  %26 = bitcast %struct.g_consumer* %25 to i8*
  %27 = call i32 @KASSERT(i32 %21, i8* %26)
  %28 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %28, i32 0, i32 0
  store %struct.g_consumer* null, %struct.g_consumer** %29, align 8
  %30 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %31 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %37 = call i32 @g_access(%struct.g_consumer* %36, i32 -1, i32 0, i32 0)
  %38 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %39 = call i32 @g_detach(%struct.g_consumer* %38)
  %40 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %41 = call i32 @g_destroy_consumer(%struct.g_consumer* %40)
  br label %42

42:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @G_GATE_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
