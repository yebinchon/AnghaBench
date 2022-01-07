; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_clocks_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_clocks_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_softc = type { %struct.TYPE_2__, i32, i32 (i32*)* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AVR32_CTRL_DEV_EN_USBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.avr32dci_softc*)* @avr32dci_clocks_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_clocks_on(%struct.avr32dci_softc* %0) #0 {
  %2 = alloca %struct.avr32dci_softc*, align 8
  store %struct.avr32dci_softc* %0, %struct.avr32dci_softc** %2, align 8
  %3 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %4 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %17 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %16, i32 0, i32 2
  %18 = load i32 (i32*)*, i32 (i32*)** %17, align 8
  %19 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %20 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %19, i32 0, i32 1
  %21 = call i32 %18(i32* %20)
  %22 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %23 = load i32, i32* @AVR32_CTRL_DEV_EN_USBA, align 4
  %24 = call i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc* %22, i32 %23, i32 0)
  %25 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %26 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %14, %8, %1
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
