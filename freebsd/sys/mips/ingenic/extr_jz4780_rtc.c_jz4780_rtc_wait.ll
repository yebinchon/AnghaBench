; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_rtc_softc = type { i32 }

@JZ_RTC_TIMEOUT = common dso_local global i32 0, align 4
@JZ_RTCCR = common dso_local global i32 0, align 4
@JZ_RTCCR_WRDY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_rtc_softc*)* @jz4780_rtc_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_rtc_wait(%struct.jz4780_rtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4780_rtc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.jz4780_rtc_softc* %0, %struct.jz4780_rtc_softc** %3, align 8
  %5 = load i32, i32* @JZ_RTC_TIMEOUT, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %3, align 8
  %12 = load i32, i32* @JZ_RTCCR, align 4
  %13 = call i32 @CSR_READ(%struct.jz4780_rtc_softc* %11, i32 %12)
  %14 = load i32, i32* @JZ_RTCCR_WRDY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %21

18:                                               ; preds = %10
  br label %6

19:                                               ; preds = %6
  %20 = load i32, i32* @EIO, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @CSR_READ(%struct.jz4780_rtc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
