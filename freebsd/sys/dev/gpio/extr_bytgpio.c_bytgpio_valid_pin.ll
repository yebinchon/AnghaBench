; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_valid_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_valid_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytgpio_softc = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bytgpio_softc*, i32)* @bytgpio_valid_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytgpio_valid_pin(%struct.bytgpio_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bytgpio_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bytgpio_softc* %0, %struct.bytgpio_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %8 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %16
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
