; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_adb_autopoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_adb_autopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32, i32 }

@PMU_SET_POLL_MASK = common dso_local global i32 0, align 4
@PMU_ADB_CMD = common dso_local global i32 0, align 4
@PMU_ADB_POLL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pmu_adb_autopoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_adb_autopoll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmu_softc*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [16 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pmu_softc* @device_get_softc(i32 %9)
  store %struct.pmu_softc* %10, %struct.pmu_softc** %6, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* @PMU_SET_POLL_MASK, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds i32, i32* %14, i64 1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %18, align 4
  %21 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %22 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %21, i32 0, i32 1
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %25 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %31 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %30, i32 0, i32 1
  %32 = call i32 @mtx_unlock(i32* %31)
  store i32 0, i32* %3, align 4
  br label %55

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 65535
  %36 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %37 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %42 = load i32, i32* @PMU_ADB_CMD, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %45 = call i32 @pmu_send(%struct.pmu_softc* %41, i32 %42, i32 4, i32* %43, i32 16, i32* %44)
  br label %51

46:                                               ; preds = %33
  %47 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %48 = load i32, i32* @PMU_ADB_POLL_OFF, align 4
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %50 = call i32 @pmu_send(%struct.pmu_softc* %47, i32 %48, i32 0, i32* null, i32 16, i32* %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %53 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %52, i32 0, i32 1
  %54 = call i32 @mtx_unlock(i32* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
