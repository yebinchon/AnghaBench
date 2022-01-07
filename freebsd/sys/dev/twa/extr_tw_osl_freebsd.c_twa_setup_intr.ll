; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, i64, i32 }

@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@twa_pci_intr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twa_setup_intr(%struct.twa_softc* %0) #0 {
  %2 = alloca %struct.twa_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.twa_softc* %0, %struct.twa_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %5 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %10 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %15 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %18 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @INTR_TYPE_CAM, align 4
  %21 = load i32, i32* @INTR_MPSAFE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @twa_pci_intr, align 4
  %24 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %25 = load %struct.twa_softc*, %struct.twa_softc** %2, align 8
  %26 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %25, i32 0, i32 0
  %27 = call i32 @bus_setup_intr(i32 %16, i64 %19, i32 %22, i32* null, i32 %23, %struct.twa_softc* %24, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %8, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @bus_setup_intr(i32, i64, i32, i32*, i32, %struct.twa_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
