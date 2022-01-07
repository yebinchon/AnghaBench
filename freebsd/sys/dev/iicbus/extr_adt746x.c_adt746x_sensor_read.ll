; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_sensor_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_sensor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt746x_sensor = type { i64, i64, i32 }
%struct.adt746x_softc = type { i32, i32 }

@ADT746X_SENSOR_SPEED = common dso_local global i64 0, align 8
@ADT746X_SENSOR_TEMP = common dso_local global i64 0, align 8
@ZERO_C_TO_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt746x_sensor*)* @adt746x_sensor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt746x_sensor_read(%struct.adt746x_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adt746x_sensor*, align 8
  %4 = alloca %struct.adt746x_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.adt746x_sensor* %0, %struct.adt746x_sensor** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.adt746x_sensor*, %struct.adt746x_sensor** %3, align 8
  %11 = getelementptr inbounds %struct.adt746x_sensor, %struct.adt746x_sensor* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.adt746x_softc* @device_get_softc(i32 %12)
  store %struct.adt746x_softc* %13, %struct.adt746x_softc** %4, align 8
  %14 = load %struct.adt746x_sensor*, %struct.adt746x_sensor** %3, align 8
  %15 = getelementptr inbounds %struct.adt746x_sensor, %struct.adt746x_sensor* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ADT746X_SENSOR_SPEED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load %struct.adt746x_softc*, %struct.adt746x_softc** %4, align 8
  %21 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.adt746x_softc*, %struct.adt746x_softc** %4, align 8
  %24 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.adt746x_sensor*, %struct.adt746x_sensor** %3, align 8
  %27 = getelementptr inbounds %struct.adt746x_sensor, %struct.adt746x_sensor* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @adt746x_read(i32 %22, i32 %25, i64 %28, i32* %9)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %94

32:                                               ; preds = %19
  %33 = load %struct.adt746x_sensor*, %struct.adt746x_sensor** %3, align 8
  %34 = getelementptr inbounds %struct.adt746x_sensor, %struct.adt746x_sensor* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ADT746X_SENSOR_TEMP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 10, %39
  %41 = load i32, i32* @ZERO_C_TO_K, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %38
  br label %92

46:                                               ; preds = %1
  %47 = load %struct.adt746x_softc*, %struct.adt746x_softc** %4, align 8
  %48 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.adt746x_softc*, %struct.adt746x_softc** %4, align 8
  %51 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.adt746x_sensor*, %struct.adt746x_sensor** %3, align 8
  %54 = getelementptr inbounds %struct.adt746x_sensor, %struct.adt746x_sensor* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %57 = call i64 @adt746x_read(i32 %49, i32 %52, i64 %55, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %94

60:                                               ; preds = %46
  %61 = load %struct.adt746x_softc*, %struct.adt746x_softc** %4, align 8
  %62 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.adt746x_softc*, %struct.adt746x_softc** %4, align 8
  %65 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.adt746x_sensor*, %struct.adt746x_sensor** %3, align 8
  %68 = getelementptr inbounds %struct.adt746x_sensor, %struct.adt746x_sensor* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %72 = call i64 @adt746x_read(i32 %63, i32 %66, i64 %70, i32* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %94

75:                                               ; preds = %60
  %76 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 65535
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %75
  store i32 0, i32* %5, align 4
  br label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = sdiv i32 5400000, %89
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %45
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %74, %59, %31
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.adt746x_softc* @device_get_softc(i32) #1

declare dso_local i64 @adt746x_read(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
