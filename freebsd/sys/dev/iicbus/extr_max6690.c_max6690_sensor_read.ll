; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_sensor_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_sensor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6690_sensor = type { i32, i32 }
%struct.max6690_softc = type { i32, i32 }

@MAX6690_INT_TEMP = common dso_local global i32 0, align 4
@MAX6690_IEXT_TEMP = common dso_local global i32 0, align 4
@MAX6690_EXT_TEMP = common dso_local global i32 0, align 4
@MAX6690_EEXT_TEMP = common dso_local global i32 0, align 4
@MAX6690_TEMP_MASK = common dso_local global i32 0, align 4
@ZERO_C_TO_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max6690_sensor*)* @max6690_sensor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6690_sensor_read(%struct.max6690_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max6690_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.max6690_softc*, align 8
  store %struct.max6690_sensor* %0, %struct.max6690_sensor** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.max6690_sensor*, %struct.max6690_sensor** %3, align 8
  %12 = getelementptr inbounds %struct.max6690_sensor, %struct.max6690_sensor* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.max6690_softc* @device_get_softc(i32 %13)
  store %struct.max6690_softc* %14, %struct.max6690_softc** %10, align 8
  %15 = load %struct.max6690_sensor*, %struct.max6690_sensor** %3, align 8
  %16 = getelementptr inbounds %struct.max6690_sensor, %struct.max6690_sensor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @MAX6690_INT_TEMP, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @MAX6690_IEXT_TEMP, align 4
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @MAX6690_EXT_TEMP, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @MAX6690_EEXT_TEMP, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.max6690_softc*, %struct.max6690_softc** %10, align 8
  %28 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.max6690_softc*, %struct.max6690_softc** %10, align 8
  %31 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @max6690_read(i32 %29, i32 %32, i32 %33, i32* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %64

38:                                               ; preds = %26
  %39 = load %struct.max6690_softc*, %struct.max6690_softc** %10, align 8
  %40 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.max6690_softc*, %struct.max6690_softc** %10, align 8
  %43 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @max6690_read(i32 %41, i32 %44, i32 %45, i32* %7)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %64

50:                                               ; preds = %38
  %51 = load i32, i32* @MAX6690_TEMP_MASK, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 10
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 5
  %58 = mul nsw i32 %57, 10
  %59 = sdiv i32 %58, 8
  %60 = add nsw i32 %55, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @ZERO_C_TO_K, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %50, %49, %37
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.max6690_softc* @device_get_softc(i32) #1

declare dso_local i32 @max6690_read(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
