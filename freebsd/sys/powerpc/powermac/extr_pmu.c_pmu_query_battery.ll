; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_query_battery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_query_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32, i32 }
%struct.pmu_battstate = type { i32, i32, i32, i32, i32 }

@PMU_SMART_BATTERY_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown battery info format (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu_softc*, i32, %struct.pmu_battstate*)* @pmu_query_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_query_battery(%struct.pmu_softc* %0, i32 %1, %struct.pmu_battstate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmu_battstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.pmu_softc* %0, %struct.pmu_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pmu_battstate* %2, %struct.pmu_battstate** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %14 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %13, i32 0, i32 1
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %17 = load i32, i32* @PMU_SMART_BATTERY_STATE, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %19 = call i32 @pmu_send(%struct.pmu_softc* %16, i32 %17, i32 1, i32* %8, i32 16, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %21 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %20, i32 0, i32 1
  %22 = call i32 @mtx_unlock(i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %91

26:                                               ; preds = %3
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %30 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %83 [
    i32 3, label %33
    i32 4, label %33
    i32 5, label %50
  ]

33:                                               ; preds = %26, %26
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %37 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 4
  %39 = load i32, i32* %38, align 16
  %40 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %41 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %45 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %49 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %90

50:                                               ; preds = %26
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 4
  %55 = load i32, i32* %54, align 16
  %56 = or i32 %53, %55
  %57 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %58 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 6
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %61, %63
  %65 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %66 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 7
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 8
  %71 = load i32, i32* %70, align 16
  %72 = or i32 %69, %71
  %73 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %74 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 9
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 10
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %77, %79
  %81 = load %struct.pmu_battstate*, %struct.pmu_battstate** %7, align 8
  %82 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %90

83:                                               ; preds = %26
  %84 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %85 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 -1, i32* %4, align 4
  br label %91

90:                                               ; preds = %50, %33
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %83, %25
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
