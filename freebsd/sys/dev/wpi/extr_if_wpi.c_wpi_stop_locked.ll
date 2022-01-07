; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpi_softc*)* @wpi_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_stop_locked(%struct.wpi_softc* %0) #0 {
  %2 = alloca %struct.wpi_softc*, align 8
  store %struct.wpi_softc* %0, %struct.wpi_softc** %2, align 8
  %3 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %4 = call i32 @WPI_LOCK_ASSERT(%struct.wpi_softc* %3)
  %5 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %12 = call i32 @WPI_TX_LOCK(%struct.wpi_softc* %11)
  %13 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %14 = call i32 @WPI_TXQ_LOCK(%struct.wpi_softc* %13)
  %15 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %18 = call i32 @WPI_TXQ_UNLOCK(%struct.wpi_softc* %17)
  %19 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %20 = call i32 @WPI_TX_UNLOCK(%struct.wpi_softc* %19)
  %21 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %22 = call i32 @WPI_TXQ_STATE_LOCK(%struct.wpi_softc* %21)
  %23 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %24 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %23, i32 0, i32 3
  %25 = call i32 @callout_stop(i32* %24)
  %26 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %27 = call i32 @WPI_TXQ_STATE_UNLOCK(%struct.wpi_softc* %26)
  %28 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %29 = call i32 @WPI_RXON_LOCK(%struct.wpi_softc* %28)
  %30 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %31 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %30, i32 0, i32 2
  %32 = call i32 @callout_stop(i32* %31)
  %33 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %33, i32 0, i32 1
  %35 = call i32 @callout_stop(i32* %34)
  %36 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %37 = call i32 @WPI_RXON_UNLOCK(%struct.wpi_softc* %36)
  %38 = load %struct.wpi_softc*, %struct.wpi_softc** %2, align 8
  %39 = call i32 @wpi_hw_stop(%struct.wpi_softc* %38)
  br label %40

40:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @WPI_LOCK_ASSERT(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_TX_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_TXQ_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_TXQ_UNLOCK(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_TX_UNLOCK(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_TXQ_STATE_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @WPI_TXQ_STATE_UNLOCK(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_RXON_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_RXON_UNLOCK(%struct.wpi_softc*) #1

declare dso_local i32 @wpi_hw_stop(%struct.wpi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
