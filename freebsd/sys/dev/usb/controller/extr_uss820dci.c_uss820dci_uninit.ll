; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@USS820_SCR = common dso_local global i32 0, align 4
@USS820_SCR_T_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uss820dci_uninit(%struct.uss820dci_softc* %0) #0 {
  %2 = alloca %struct.uss820dci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %2, align 8
  %4 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %4, i32 0, i32 0
  %6 = call i32 @USB_BUS_LOCK(i32* %5)
  %7 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %8 = load i32, i32* @USS820_SCR, align 4
  %9 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @USS820_SCR_T_IRQ, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %15 = load i32, i32* @USS820_SCR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %19 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %25 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %28 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %31 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %37 = call i32 @uss820dci_pull_down(%struct.uss820dci_softc* %36)
  %38 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %39 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %38, i32 0, i32 0
  %40 = call i32 @USB_BUS_UNLOCK(i32* %39)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i32) #1

declare dso_local i32 @uss820dci_pull_down(%struct.uss820dci_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
