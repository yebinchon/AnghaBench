; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_sensor_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_sensor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_sensor = type { i32, i32, i32 }
%struct.smu_cmd = type { i32, i32*, i32 }
%struct.smu_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SMU_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_sensor*)* @smu_sensor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_sensor_read(%struct.smu_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_cmd, align 8
  %6 = alloca %struct.smu_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smu_sensor* %0, %struct.smu_sensor** %3, align 8
  %9 = load %struct.smu_sensor*, %struct.smu_sensor** %3, align 8
  %10 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @SMU_ADC, align 4
  %13 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.smu_sensor*, %struct.smu_sensor** %3, align 8
  %16 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %17, i32* %20, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @smu_run_cmd(i32 %21, %struct.smu_cmd* %5, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %126

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.smu_softc* @device_get_softc(i32 %27)
  store %struct.smu_softc* %28, %struct.smu_softc** %6, align 8
  %29 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %33, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.smu_sensor*, %struct.smu_sensor** %3, align 8
  %40 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %124 [
    i32 129, label %42
    i32 128, label %67
    i32 131, label %86
    i32 130, label %105
  ]

42:                                               ; preds = %26
  %43 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %44 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 3
  store i32 %49, i32* %7, align 4
  %50 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %51 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 9
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 16
  %60 = mul nsw i32 10, %59
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 65535
  %63 = mul nsw i32 10, %62
  %64 = ashr i32 %63, 16
  %65 = add nsw i32 %60, %64
  %66 = add nsw i32 %65, 2731
  store i32 %66, i32* %7, align 4
  br label %124

67:                                               ; preds = %26
  %68 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %69 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %74 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %78, 4
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 15625
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sdiv i32 %82, 1024
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sdiv i32 %84, 1000
  store i32 %85, i32* %7, align 4
  br label %124

86:                                               ; preds = %26
  %87 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %88 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %93 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 4
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %99, 15625
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sdiv i32 %101, 1024
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sdiv i32 %103, 1000
  store i32 %104, i32* %7, align 4
  br label %124

105:                                              ; preds = %26
  %106 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %107 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %112 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = mul nsw i32 %118, 15625
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sdiv i32 %120, 1024
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sdiv i32 %122, 1000
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %26, %105, %86, %67, %42
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %25
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
