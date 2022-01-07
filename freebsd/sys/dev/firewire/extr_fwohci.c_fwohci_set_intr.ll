; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_set_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_set_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32 }
%struct.fwohci_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@firewire_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"fwohci_set_intr: %d\0A\00", align 1
@OHCI_INT_EN = common dso_local global i32 0, align 4
@FWOHCI_INTMASK = common dso_local global i32 0, align 4
@FWOHCI_INTMASKCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firewire_comm*, i32)* @fwohci_set_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_set_intr(%struct.firewire_comm* %0, i32 %1) #0 {
  %3 = alloca %struct.firewire_comm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwohci_softc*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %7 = bitcast %struct.firewire_comm* %6 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %7, %struct.fwohci_softc** %5, align 8
  %8 = load i64, i64* @firewire_debug, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %12 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* @OHCI_INT_EN, align 4
  %22 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %23 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %27 = load i32, i32* @FWOHCI_INTMASK, align 4
  %28 = load i32, i32* @OHCI_INT_EN, align 4
  %29 = call i32 @OWRITE(%struct.fwohci_softc* %26, i32 %27, i32 %28)
  br label %41

30:                                               ; preds = %17
  %31 = load i32, i32* @OHCI_INT_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %34 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %38 = load i32, i32* @FWOHCI_INTMASKCLR, align 4
  %39 = load i32, i32* @OHCI_INT_EN, align 4
  %40 = call i32 @OWRITE(%struct.fwohci_softc* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
