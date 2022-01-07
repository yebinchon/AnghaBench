; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_setup_pmu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_setup_pmu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32*, i64, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@pmu_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @setup_pmu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_pmu_intr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmu_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.pmu_softc* @device_get_softc(i32 %7)
  store %struct.pmu_softc* %8, %struct.pmu_softc** %6, align 8
  %9 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %10 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SYS_RES_IRQ, align 4
  %13 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %14 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %13, i32 0, i32 1
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i32* @bus_alloc_resource_any(i32 %11, i32 %12, i64* %14, i32 %15)
  %17 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %18 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %20 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %30 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @INTR_TYPE_MISC, align 4
  %33 = load i32, i32* @INTR_MPSAFE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @INTR_ENTROPY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @pmu_intr, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %40 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %39, i32 0, i32 2
  %41 = call i64 @bus_setup_intr(i32 %28, i32* %31, i32 %36, i32* null, i32 %37, i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %27
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SYS_RES_IRQ, align 4
  %48 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %49 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pmu_softc*, %struct.pmu_softc** %6, align 8
  %52 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_release_resource(i32 %46, i32 %47, i64 %50, i32* %53)
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %43, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
