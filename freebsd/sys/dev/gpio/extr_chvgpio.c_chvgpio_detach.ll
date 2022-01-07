; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chvgpio_softc = type { i32*, i32, i32*, i32, i32*, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chvgpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chvgpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chvgpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.chvgpio_softc* @device_get_softc(i32 %4)
  store %struct.chvgpio_softc* %5, %struct.chvgpio_softc** %3, align 8
  %6 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @gpiobus_detach_bus(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %15 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %20 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %23 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %26 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bus_teardown_intr(i32 %21, i32* %24, i32* %27)
  br label %29

29:                                               ; preds = %18, %13
  %30 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %31 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @SYS_RES_IRQ, align 4
  %37 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %38 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %41 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_release_resource(i32 %35, i32 %36, i32 %39, i32* %42)
  br label %44

44:                                               ; preds = %34, %29
  %45 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %46 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %53 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %56 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 %54, i32* %57)
  br label %59

59:                                               ; preds = %49, %44
  %60 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %3, align 8
  %61 = call i32 @CHVGPIO_LOCK_DESTROY(%struct.chvgpio_softc* %60)
  ret i32 0
}

declare dso_local %struct.chvgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @CHVGPIO_LOCK_DESTROY(%struct.chvgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
