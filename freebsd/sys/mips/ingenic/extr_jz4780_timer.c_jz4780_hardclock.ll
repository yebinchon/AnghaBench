; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_timer.c_jz4780_hardclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_timer.c_jz4780_hardclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_timer_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@JZ_TC_TFCR = common dso_local global i32 0, align 4
@TFR_FFLAG5 = common dso_local global i32 0, align 4
@JZ_TC_TECR = common dso_local global i32 0, align 4
@TESR_TCST5 = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @jz4780_hardclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_hardclock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jz4780_timer_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.jz4780_timer_softc*
  store %struct.jz4780_timer_softc* %5, %struct.jz4780_timer_softc** %3, align 8
  %6 = load %struct.jz4780_timer_softc*, %struct.jz4780_timer_softc** %3, align 8
  %7 = load i32, i32* @JZ_TC_TFCR, align 4
  %8 = load i32, i32* @TFR_FFLAG5, align 4
  %9 = call i32 @CSR_WRITE_4(%struct.jz4780_timer_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.jz4780_timer_softc*, %struct.jz4780_timer_softc** %3, align 8
  %11 = load i32, i32* @JZ_TC_TECR, align 4
  %12 = load i32, i32* @TESR_TCST5, align 4
  %13 = call i32 @CSR_WRITE_4(%struct.jz4780_timer_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.jz4780_timer_softc*, %struct.jz4780_timer_softc** %3, align 8
  %15 = getelementptr inbounds %struct.jz4780_timer_softc, %struct.jz4780_timer_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.jz4780_timer_softc*, %struct.jz4780_timer_softc** %3, align 8
  %21 = getelementptr inbounds %struct.jz4780_timer_softc, %struct.jz4780_timer_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %22, align 8
  %24 = load %struct.jz4780_timer_softc*, %struct.jz4780_timer_softc** %3, align 8
  %25 = getelementptr inbounds %struct.jz4780_timer_softc, %struct.jz4780_timer_softc* %24, i32 0, i32 0
  %26 = load %struct.jz4780_timer_softc*, %struct.jz4780_timer_softc** %3, align 8
  %27 = getelementptr inbounds %struct.jz4780_timer_softc, %struct.jz4780_timer_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %23(%struct.TYPE_2__* %25, i32 %29)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_timer_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
