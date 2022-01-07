; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i64, i32, i32, i32, i64 }

@taskqueue_thread = common dso_local global i32 0, align 4
@AR_MAC_REG_DMA_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @otus_stop(%struct.otus_softc* %0) #0 {
  %2 = alloca %struct.otus_softc*, align 8
  store %struct.otus_softc* %0, %struct.otus_softc** %2, align 8
  %3 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %4 = call i32 @OTUS_UNLOCK_ASSERT(%struct.otus_softc* %3)
  %5 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %6 = call i32 @OTUS_LOCK(%struct.otus_softc* %5)
  %7 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %8 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %10 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %12 = call i32 @OTUS_UNLOCK(%struct.otus_softc* %11)
  %13 = load i32, i32* @taskqueue_thread, align 4
  %14 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %15 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %14, i32 0, i32 3
  %16 = call i32 @taskqueue_drain_timeout(i32 %13, i32* %15)
  %17 = load i32, i32* @taskqueue_thread, align 4
  %18 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %19 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %18, i32 0, i32 2
  %20 = call i32 @taskqueue_drain_timeout(i32 %17, i32* %19)
  %21 = load i32, i32* @taskqueue_thread, align 4
  %22 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %23 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %22, i32 0, i32 1
  %24 = call i32 @taskqueue_drain(i32 %21, i32* %23)
  %25 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %26 = call i32 @OTUS_LOCK(%struct.otus_softc* %25)
  %27 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %28 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %30 = load i32, i32* @AR_MAC_REG_DMA_TRIGGER, align 4
  %31 = call i32 @otus_write(%struct.otus_softc* %29, i32 %30, i32 0)
  %32 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %33 = call i32 @otus_write_barrier(%struct.otus_softc* %32)
  %34 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %35 = call i32 @otus_drain_mbufq(%struct.otus_softc* %34)
  %36 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %37 = call i32 @OTUS_UNLOCK(%struct.otus_softc* %36)
  ret void
}

declare dso_local i32 @OTUS_UNLOCK_ASSERT(%struct.otus_softc*) #1

declare dso_local i32 @OTUS_LOCK(%struct.otus_softc*) #1

declare dso_local i32 @OTUS_UNLOCK(%struct.otus_softc*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @otus_write(%struct.otus_softc*, i32, i32) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

declare dso_local i32 @otus_drain_mbufq(%struct.otus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
