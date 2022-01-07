; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_ohci_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_ohci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_clock_softc = type { i32 }

@jz4780_clock_devclass = common dso_local global i32 0, align 4
@JZ_OPCR = common dso_local global i32 0, align 4
@OPCR_SPENDN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jz4780_ohci_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.jz4780_clock_softc*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @jz4780_clock_devclass, align 4
  %6 = call i32* @devclass_get_device(i32 %5, i32 0)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %27

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.jz4780_clock_softc* @device_get_softc(i32* %11)
  store %struct.jz4780_clock_softc* %12, %struct.jz4780_clock_softc** %3, align 8
  %13 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %14 = call i32 @CGU_LOCK(%struct.jz4780_clock_softc* %13)
  %15 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %16 = load i32, i32* @JZ_OPCR, align 4
  %17 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @OPCR_SPENDN1, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %22 = load i32, i32* @JZ_OPCR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %26 = call i32 @CGU_UNLOCK(%struct.jz4780_clock_softc* %25)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %10, %9
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local %struct.jz4780_clock_softc* @device_get_softc(i32*) #1

declare dso_local i32 @CGU_LOCK(%struct.jz4780_clock_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.jz4780_clock_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_clock_softc*, i32, i32) #1

declare dso_local i32 @CGU_UNLOCK(%struct.jz4780_clock_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
