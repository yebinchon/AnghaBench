; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytgpio_softc = type { i32*, i32, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bytgpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytgpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bytgpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.bytgpio_softc* @device_get_softc(i32 %4)
  store %struct.bytgpio_softc* %5, %struct.bytgpio_softc** %3, align 8
  %6 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @gpiobus_detach_bus(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %3, align 8
  %15 = call i32 @BYTGPIO_LOCK_DESTROY(%struct.bytgpio_softc* %14)
  %16 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = call i32 @free(i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @bus_release_resource(i32 %32, i32 %33, i32 %36, i32* %39)
  br label %41

41:                                               ; preds = %31, %26
  ret i32 0
}

declare dso_local %struct.bytgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @BYTGPIO_LOCK_DESTROY(%struct.bytgpio_softc*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
