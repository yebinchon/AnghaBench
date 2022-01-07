; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_rtc_softc = type { i32 }

@JZ_WENR = common dso_local global i32 0, align 4
@JZ_WENR_PAT = common dso_local global i32 0, align 4
@JZ_RTC_TIMEOUT = common dso_local global i32 0, align 4
@JZ_WENR_WEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_rtc_softc*, i32, i32)* @jz4780_rtc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_rtc_write(%struct.jz4780_rtc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4780_rtc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jz4780_rtc_softc* %0, %struct.jz4780_rtc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %5, align 8
  %11 = call i32 @jz4780_rtc_wait(%struct.jz4780_rtc_softc* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %5, align 8
  %18 = load i32, i32* @JZ_WENR, align 4
  %19 = load i32, i32* @JZ_WENR_PAT, align 4
  %20 = call i32 @CSR_WRITE(%struct.jz4780_rtc_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %5, align 8
  %22 = call i32 @jz4780_rtc_wait(%struct.jz4780_rtc_softc* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %16
  %28 = load i32, i32* @JZ_RTC_TIMEOUT, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %41, %27
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %9, align 4
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %5, align 8
  %35 = load i32, i32* @JZ_WENR, align 4
  %36 = call i32 @CSR_READ(%struct.jz4780_rtc_softc* %34, i32 %35)
  %37 = load i32, i32* @JZ_WENR_WEN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %42

41:                                               ; preds = %33
  br label %29

42:                                               ; preds = %40, %29
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %42
  %48 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @CSR_WRITE(%struct.jz4780_rtc_softc* %48, i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %45, %25, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @jz4780_rtc_wait(%struct.jz4780_rtc_softc*) #1

declare dso_local i32 @CSR_WRITE(%struct.jz4780_rtc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ(%struct.jz4780_rtc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
