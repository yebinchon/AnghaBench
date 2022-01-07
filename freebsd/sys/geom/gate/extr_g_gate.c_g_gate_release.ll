; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_softc = type { i64, i32, i32 }

@g_gate_units_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Negative sc_ref for %s.\00", align 1
@G_GATE_FLAG_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_gate_softc*)* @g_gate_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gate_release(%struct.g_gate_softc* %0) #0 {
  %2 = alloca %struct.g_gate_softc*, align 8
  store %struct.g_gate_softc* %0, %struct.g_gate_softc** %2, align 8
  %3 = call i32 (...) @g_topology_assert_not()
  %4 = call i32 @mtx_lock(i32* @g_gate_units_lock)
  %5 = load %struct.g_gate_softc*, %struct.g_gate_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.g_gate_softc*, %struct.g_gate_softc** %2, align 8
  %10 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load %struct.g_gate_softc*, %struct.g_gate_softc** %2, align 8
  %15 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %13, i8* %18)
  %20 = load %struct.g_gate_softc*, %struct.g_gate_softc** %2, align 8
  %21 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.g_gate_softc*, %struct.g_gate_softc** %2, align 8
  %26 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @G_GATE_FLAG_DESTROY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.g_gate_softc*, %struct.g_gate_softc** %2, align 8
  %33 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %32, i32 0, i32 0
  %34 = call i32 @wakeup(i64* %33)
  br label %35

35:                                               ; preds = %31, %24, %1
  %36 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
