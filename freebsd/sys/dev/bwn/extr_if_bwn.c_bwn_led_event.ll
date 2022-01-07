; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i64, i64, i32, i32, i64, %struct.bwn_led* }
%struct.bwn_led = type { i32 }

@BWN_LED_F_POLLABLE = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unknown LED event %d\0A\00", align 1
@bwn_led_duration = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_led_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_led_event(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.bwn_led*, align 8
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %5, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 5
  %13 = load %struct.bwn_led*, %struct.bwn_led** %12, align 8
  store %struct.bwn_led* %13, %struct.bwn_led** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 130
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.bwn_led*, %struct.bwn_led** %6, align 8
  %18 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BWN_LED_F_POLLABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %74

24:                                               ; preds = %16
  %25 = load i64, i64* @ticks, align 8
  %26 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %27 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %31 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %74

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i64, i64* @ticks, align 8
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %39 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %41 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %74

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %56 [
    i32 129, label %47
    i32 128, label %51
    i32 130, label %55
  ]

47:                                               ; preds = %45
  %48 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %49 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %7, align 4
  br label %59

51:                                               ; preds = %45
  %52 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %53 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %59

55:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %55, %51, %47
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bwn_led_duration, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bwn_led_duration, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bwn_led_blink_start(%struct.bwn_mac* %60, i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %59, %44, %34, %23
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bwn_led_blink_start(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
