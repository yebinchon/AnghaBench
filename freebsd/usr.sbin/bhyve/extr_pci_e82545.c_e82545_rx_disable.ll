; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_rx_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_rx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*)* @e82545_rx_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_rx_disable(%struct.e82545_softc* %0) #0 {
  %2 = alloca %struct.e82545_softc*, align 8
  store %struct.e82545_softc* %0, %struct.e82545_softc** %2, align 8
  %3 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %4 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %7 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %12 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %11, i32 0, i32 1
  %13 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %14 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %13, i32 0, i32 0
  %15 = call i32 @pthread_cond_wait(i32* %12, i32* %14)
  br label %5

16:                                               ; preds = %5
  ret void
}

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
