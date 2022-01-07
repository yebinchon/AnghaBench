; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_owc_gpiobus.c_owc_gpiobus_write_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_owc_gpiobus.c_owc_gpiobus_write_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_timing = type { i64, i64, i64 }
%struct.owc_gpiobus_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ow_timing*)* @owc_gpiobus_write_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owc_gpiobus_write_zero(i32 %0, %struct.ow_timing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ow_timing*, align 8
  %6 = alloca %struct.owc_gpiobus_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ow_timing* %1, %struct.ow_timing** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.owc_gpiobus_softc* @device_get_softc(i32 %8)
  store %struct.owc_gpiobus_softc* %9, %struct.owc_gpiobus_softc** %6, align 8
  %10 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %6, align 8
  %11 = call i32 @GETBUS(%struct.owc_gpiobus_softc* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = call i32 (...) @critical_enter()
  %18 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %6, align 8
  %19 = call i32 @OUTPIN(%struct.owc_gpiobus_softc* %18)
  %20 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %6, align 8
  %21 = call i32 @LOW(%struct.owc_gpiobus_softc* %20)
  %22 = load %struct.ow_timing*, %struct.ow_timing** %5, align 8
  %23 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @DELAY(i64 %24)
  %26 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %6, align 8
  %27 = call i32 @INPIN(%struct.owc_gpiobus_softc* %26)
  %28 = load %struct.ow_timing*, %struct.ow_timing** %5, align 8
  %29 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ow_timing*, %struct.ow_timing** %5, align 8
  %32 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.ow_timing*, %struct.ow_timing** %5, align 8
  %36 = getelementptr inbounds %struct.ow_timing, %struct.ow_timing* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @DELAY(i64 %38)
  %40 = call i32 (...) @critical_exit()
  %41 = load %struct.owc_gpiobus_softc*, %struct.owc_gpiobus_softc** %6, align 8
  %42 = call i32 @RELBUS(%struct.owc_gpiobus_softc* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %16, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.owc_gpiobus_softc* @device_get_softc(i32) #1

declare dso_local i32 @GETBUS(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @OUTPIN(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @LOW(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @DELAY(i64) #1

declare dso_local i32 @INPIN(%struct.owc_gpiobus_softc*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @RELBUS(%struct.owc_gpiobus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
