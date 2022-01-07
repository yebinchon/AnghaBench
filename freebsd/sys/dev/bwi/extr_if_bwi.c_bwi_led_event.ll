; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.bwi_softc = type { i64, i64, i32, i32, i64, %struct.bwi_led* }
%struct.bwi_led = type { i32 }

@BWI_LED_F_POLLABLE = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unknown LED event %d\0A\00", align 1
@bwi_led_duration = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32)* @bwi_led_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_led_event(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_led*, align 8
  %6 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %7, i32 0, i32 5
  %9 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  store %struct.bwi_led* %9, %struct.bwi_led** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 130
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.bwi_led*, %struct.bwi_led** %5, align 8
  %14 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BWI_LED_F_POLLABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %70

20:                                               ; preds = %12
  %21 = load i64, i64* @ticks, align 8
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %70

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* @ticks, align 8
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %70

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %52 [
    i32 129, label %43
    i32 128, label %47
    i32 130, label %51
  ]

43:                                               ; preds = %41
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  br label %55

47:                                               ; preds = %41
  %48 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  br label %55

51:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %51, %47, %43
  %56 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bwi_led_duration, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bwi_led_duration, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bwi_led_blink_start(%struct.bwi_softc* %56, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %55, %40, %30, %19
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bwi_led_blink_start(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
