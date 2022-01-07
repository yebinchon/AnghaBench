; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/auxio/extr_auxio.c_auxio_led_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/auxio/extr_auxio.c_auxio_led_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxio_softc = type { i32, i32*, i32* }

@AUXIO_EBUS = common dso_local global i32 0, align 4
@AUXIO_PCIO_LED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxio_softc*)* @auxio_led_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxio_led_read(%struct.auxio_softc* %0) #0 {
  %2 = alloca %struct.auxio_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.auxio_softc* %0, %struct.auxio_softc** %2, align 8
  %4 = load %struct.auxio_softc*, %struct.auxio_softc** %2, align 8
  %5 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @AUXIO_EBUS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.auxio_softc*, %struct.auxio_softc** %2, align 8
  %12 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.auxio_softc*, %struct.auxio_softc** %2, align 8
  %18 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bus_space_read_4(i32 %16, i32 %22, i32 0)
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.auxio_softc*, %struct.auxio_softc** %2, align 8
  %26 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.auxio_softc*, %struct.auxio_softc** %2, align 8
  %32 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bus_space_read_1(i32 %30, i32 %36, i32 0)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
