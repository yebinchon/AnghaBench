; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smusat.c_smusat_sensor_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smusat.c_smusat_sensor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_sensor = type { i32, i32, i32 }
%struct.smusat_softc = type { i32, i32* }

@time_uptime = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_sensor*)* @smusat_sensor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smusat_sensor_read(%struct.smu_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smusat_softc*, align 8
  store %struct.smu_sensor* %0, %struct.smu_sensor** %3, align 8
  %8 = load %struct.smu_sensor*, %struct.smu_sensor** %3, align 8
  %9 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.smusat_softc* @device_get_softc(i32 %11)
  store %struct.smusat_softc* %12, %struct.smusat_softc** %7, align 8
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @time_uptime, align 4
  %14 = load %struct.smusat_softc*, %struct.smusat_softc** %7, align 8
  %15 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @smusat_updatecache(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %88

28:                                               ; preds = %22
  %29 = load %struct.smusat_softc*, %struct.smusat_softc** %7, align 8
  %30 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.smu_sensor*, %struct.smu_sensor** %3, align 8
  %33 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.smusat_softc*, %struct.smusat_softc** %7, align 8
  %41 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.smu_sensor*, %struct.smu_sensor** %3, align 8
  %44 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %39, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 65535
  br i1 %53, label %54, label %59

54:                                               ; preds = %28
  %55 = load %struct.smusat_softc*, %struct.smusat_softc** %7, align 8
  %56 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %88

59:                                               ; preds = %28
  %60 = load %struct.smu_sensor*, %struct.smu_sensor** %3, align 8
  %61 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %86 [
    i32 129, label %63
    i32 128, label %75
    i32 131, label %80
    i32 130, label %85
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = shl i32 %64, 10
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = ashr i32 %66, 16
  %68 = mul nsw i32 10, %67
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 65535
  %71 = mul nsw i32 10, %70
  %72 = ashr i32 %71, 16
  %73 = add nsw i32 %68, %72
  %74 = add nsw i32 %73, 2731
  store i32 %74, i32* %4, align 4
  br label %86

75:                                               ; preds = %59
  %76 = load i32, i32* %4, align 4
  %77 = shl i32 %76, 4
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 16
  store i32 %79, i32* %4, align 4
  br label %86

80:                                               ; preds = %59
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %81, 8
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = ashr i32 %83, 16
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %59
  br label %86

86:                                               ; preds = %59, %85, %80, %75, %63
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %54, %25
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.smusat_softc* @device_get_softc(i32) #1

declare dso_local i32 @smusat_updatecache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
