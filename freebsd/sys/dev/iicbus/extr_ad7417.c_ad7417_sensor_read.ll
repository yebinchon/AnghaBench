; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_sensor_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_sensor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7417_sensor = type { i64, i32 }
%struct.ad7417_softc = type { i32, i32, i32 }

@ADC7417_TEMP_SENSOR = common dso_local global i64 0, align 8
@ZERO_C_TO_K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7417_sensor*)* @ad7417_sensor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7417_sensor_read(%struct.ad7417_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7417_sensor*, align 8
  %4 = alloca %struct.ad7417_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.ad7417_sensor* %0, %struct.ad7417_sensor** %3, align 8
  %6 = load %struct.ad7417_sensor*, %struct.ad7417_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.ad7417_sensor, %struct.ad7417_sensor* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ad7417_softc* @device_get_softc(i32 %8)
  store %struct.ad7417_softc* %9, %struct.ad7417_softc** %4, align 8
  %10 = load %struct.ad7417_softc*, %struct.ad7417_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.ad7417_softc*, %struct.ad7417_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ad7417_softc*, %struct.ad7417_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ad7417_init_adc(i32 %17, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %52

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.ad7417_sensor*, %struct.ad7417_sensor** %3, align 8
  %27 = getelementptr inbounds %struct.ad7417_sensor, %struct.ad7417_sensor* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ADC7417_TEMP_SENSOR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.ad7417_softc*, %struct.ad7417_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ad7417_softc*, %struct.ad7417_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ad7417_get_temp(i32 %34, i32 %37, i32* %5)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %52

41:                                               ; preds = %31
  %42 = load i64, i64* @ZERO_C_TO_K, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %25
  %48 = load %struct.ad7417_sensor*, %struct.ad7417_sensor** %3, align 8
  %49 = call i32 @ad7417_adc_read(%struct.ad7417_sensor* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %40, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.ad7417_softc* @device_get_softc(i32) #1

declare dso_local i64 @ad7417_init_adc(i32, i32) #1

declare dso_local i64 @ad7417_get_temp(i32, i32, i32*) #1

declare dso_local i32 @ad7417_adc_read(%struct.ad7417_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
