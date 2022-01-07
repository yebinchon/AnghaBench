; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_core.c_bhnd_pmu_core_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_core.c_bhnd_pmu_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32, i32 }
%struct.bhnd_resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to allocate PMU state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhnd_pmu_core_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu_core_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pmu_softc*, align 8
  %5 = alloca %struct.bhnd_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bhnd_pmu_softc* @device_get_softc(i32 %8)
  store %struct.bhnd_pmu_softc* %9, %struct.bhnd_pmu_softc** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call %struct.bhnd_resource* @bhnd_alloc_resource_any(i32 %10, i32 %11, i32* %7, i32 %12)
  store %struct.bhnd_resource* %13, %struct.bhnd_resource** %5, align 8
  %14 = load %struct.bhnd_resource*, %struct.bhnd_resource** %5, align 8
  %15 = icmp eq %struct.bhnd_resource* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @bhnd_alloc_pmu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.bhnd_resource*, %struct.bhnd_resource** %5, align 8
  %34 = call i32 @bhnd_pmu_attach(i32 %32, %struct.bhnd_resource* %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.bhnd_resource*, %struct.bhnd_resource** %5, align 8
  %41 = call i32 @bhnd_release_resource(i32 %37, i32 %38, i32 %39, %struct.bhnd_resource* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %46 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %36, %24, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.bhnd_pmu_softc* @device_get_softc(i32) #1

declare dso_local %struct.bhnd_resource* @bhnd_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bhnd_alloc_pmu(i32) #1

declare dso_local i32 @bhnd_pmu_attach(i32, %struct.bhnd_resource*) #1

declare dso_local i32 @bhnd_release_resource(i32, i32, i32, %struct.bhnd_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
