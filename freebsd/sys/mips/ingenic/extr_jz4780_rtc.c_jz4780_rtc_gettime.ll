; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.jz4780_rtc_softc = type { i32 }

@JZ_RTC_TIMEOUT = common dso_local global i32 0, align 4
@JZ_RTSR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @jz4780_rtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_rtc_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.jz4780_rtc_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.jz4780_rtc_softc* @device_get_softc(i32 %10)
  store %struct.jz4780_rtc_softc* %11, %struct.jz4780_rtc_softc** %6, align 8
  %12 = load i32, i32* @JZ_RTC_TIMEOUT, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %6, align 8
  %14 = load i32, i32* @JZ_RTSR, align 4
  %15 = call i64 @CSR_READ(%struct.jz4780_rtc_softc* %13, i32 %14)
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %29, %2
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %6, align 8
  %19 = load i32, i32* @JZ_RTSR, align 4
  %20 = call i64 @CSR_READ(%struct.jz4780_rtc_softc* %18, i32 %19)
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = icmp sge i32 %26, 0
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %16, label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @EIO, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.timespec*, %struct.timespec** %5, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.timespec*, %struct.timespec** %5, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.jz4780_rtc_softc* @device_get_softc(i32) #1

declare dso_local i64 @CSR_READ(%struct.jz4780_rtc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
