; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_rtc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_rtc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atrtc_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@RTC_INTR = common dso_local global i32 0, align 4
@RTCIR_PERIOD = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rtc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.atrtc_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.atrtc_softc*
  store %struct.atrtc_softc* %6, %struct.atrtc_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* @RTC_INTR, align 4
  %9 = call i32 @rtcin(i32 %8)
  %10 = load i32, i32* @RTCIR_PERIOD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  store i32 1, i32* %4, align 4
  %14 = load %struct.atrtc_softc*, %struct.atrtc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.atrtc_softc*, %struct.atrtc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %22, align 8
  %24 = load %struct.atrtc_softc*, %struct.atrtc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %24, i32 0, i32 0
  %26 = load %struct.atrtc_softc*, %struct.atrtc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %23(%struct.TYPE_2__* %25, i32 %29)
  br label %31

31:                                               ; preds = %19, %13
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @FILTER_HANDLED, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @FILTER_STRAY, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

declare dso_local i32 @rtcin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
