; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbni_detach(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %3 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %4 = call i32 @SBNI_LOCK(%struct.sbni_softc* %3)
  %5 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %6 = call i32 @sbni_stop(%struct.sbni_softc* %5)
  %7 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %8 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %7)
  %9 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %9, i32 0, i32 5
  %11 = call i32 @callout_drain(i32* %10)
  %12 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %13 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ether_ifdetach(i32 %14)
  %16 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %17 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %22 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %25 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %28 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bus_teardown_intr(i32 %23, i32 %26, i64 %29)
  br label %31

31:                                               ; preds = %20, %1
  %32 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %33 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %32, i32 0, i32 1
  %34 = call i32 @mtx_destroy(i32* %33)
  %35 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %36 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @if_free(i32 %37)
  ret void
}

declare dso_local i32 @SBNI_LOCK(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_stop(%struct.sbni_softc*) #1

declare dso_local i32 @SBNI_UNLOCK(%struct.sbni_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @if_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
