; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_adb_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_adb_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }

@PMU_ADB_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32)* @pmu_adb_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_adb_send(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pmu_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca [16 x i32], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.pmu_softc* @device_get_softc(i32 %16)
  store %struct.pmu_softc* %17, %struct.pmu_softc** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %37, %5
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.pmu_softc*, %struct.pmu_softc** %11, align 8
  %42 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %41, i32 0, i32 0
  %43 = call i32 @mtx_lock(i32* %42)
  %44 = load %struct.pmu_softc*, %struct.pmu_softc** %11, align 8
  %45 = load i32, i32* @PMU_ADB_CMD, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 3
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %50 = call i32 @pmu_send(%struct.pmu_softc* %44, i32 %45, i32 %47, i32* %48, i32 16, i32* %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.pmu_softc*, %struct.pmu_softc** %11, align 8
  %52 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %51, i32 0, i32 0
  %53 = call i32 @mtx_unlock(i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pmu_poll(i32 %57)
  br label %59

59:                                               ; preds = %56, %40
  ret i32 0
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @pmu_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
