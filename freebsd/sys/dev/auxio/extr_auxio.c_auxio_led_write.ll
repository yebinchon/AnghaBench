; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/auxio/extr_auxio.c_auxio_led_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/auxio/extr_auxio.c_auxio_led_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxio_softc = type { i32, i32*, i32* }

@AUXIO_EBUS = common dso_local global i32 0, align 4
@AUXIO_PCIO_LED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auxio_softc*, i32)* @auxio_led_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxio_led_write(%struct.auxio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.auxio_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.auxio_softc* %0, %struct.auxio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %6 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @AUXIO_EBUS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %13 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @bus_space_write_4(i32 %17, i32 %23, i32 0, i32 %24)
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %28 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.auxio_softc*, %struct.auxio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.auxio_softc, %struct.auxio_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @AUXIO_PCIO_LED, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bus_space_write_1(i32 %32, i32 %38, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
