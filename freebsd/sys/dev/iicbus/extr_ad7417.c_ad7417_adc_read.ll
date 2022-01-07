; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_adc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7417_sensor = type { i32, i32 }
%struct.ad7417_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7417_sensor*)* @ad7417_adc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7417_adc_read(%struct.ad7417_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7417_sensor*, align 8
  %4 = alloca %struct.ad7417_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7417_sensor* %0, %struct.ad7417_sensor** %3, align 8
  %7 = load %struct.ad7417_sensor*, %struct.ad7417_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.ad7417_sensor, %struct.ad7417_sensor* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ad7417_softc* @device_get_softc(i32 %9)
  store %struct.ad7417_softc* %10, %struct.ad7417_softc** %4, align 8
  %11 = load %struct.ad7417_sensor*, %struct.ad7417_sensor** %3, align 8
  %12 = getelementptr inbounds %struct.ad7417_sensor, %struct.ad7417_sensor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %18 [
    i32 11, label %14
    i32 16, label %14
    i32 12, label %15
    i32 17, label %15
    i32 13, label %16
    i32 18, label %16
    i32 14, label %17
    i32 19, label %17
  ]

14:                                               ; preds = %1, %1
  store i32 1, i32* %5, align 4
  br label %19

15:                                               ; preds = %1, %1
  store i32 2, i32* %5, align 4
  br label %19

16:                                               ; preds = %1, %1
  store i32 3, i32* %5, align 4
  br label %19

17:                                               ; preds = %1, %1
  store i32 4, i32* %5, align 4
  br label %19

18:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14
  %20 = load %struct.ad7417_softc*, %struct.ad7417_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ad7417_softc*, %struct.ad7417_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @ad7417_get_adc(i32 %22, i32 %25, i32* %6, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ad7417_softc* @device_get_softc(i32) #1

declare dso_local i64 @ad7417_get_adc(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
