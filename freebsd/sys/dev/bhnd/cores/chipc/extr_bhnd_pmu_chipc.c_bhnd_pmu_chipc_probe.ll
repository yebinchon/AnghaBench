; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_bhnd_pmu_chipc.c_bhnd_pmu_chipc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_bhnd_pmu_chipc.c_bhnd_pmu_chipc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32 }
%struct.chipc_caps = type { i32 }
%struct.chipc_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"bhnd_chipc\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHND_PMU_CAP = common dso_local global i32 0, align 4
@BHND_PMU_CAP_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Broadcom ChipCommon PMU, rev %hhu\00", align 1
@BUS_PROBE_NOWILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhnd_pmu_chipc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu_chipc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pmu_softc*, align 8
  %5 = alloca %struct.chipc_caps*, align 8
  %6 = alloca %struct.chipc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [34 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.bhnd_pmu_softc*
  store %struct.bhnd_pmu_softc* %14, %struct.bhnd_pmu_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @device_get_devclass(i32 %17)
  %19 = call i64 @devclass_find(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i32 %24)
  store %struct.chipc_caps* %25, %struct.chipc_caps** %5, align 8
  %26 = load %struct.chipc_caps*, %struct.chipc_caps** %5, align 8
  %27 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %57

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @bhnd_pmu_probe(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @device_get_softc(i32 %39)
  %41 = bitcast i8* %40 to %struct.chipc_softc*
  store %struct.chipc_softc* %41, %struct.chipc_softc** %6, align 8
  %42 = load %struct.chipc_softc*, %struct.chipc_softc** %6, align 8
  %43 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BHND_PMU_CAP, align 4
  %46 = call i32 @bhnd_bus_read_4(i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @BHND_PMU_CAP_REV, align 4
  %49 = call i32 @BHND_PMU_GET_BITS(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @snprintf(i8* %50, i32 34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 0
  %55 = call i32 @device_set_desc_copy(i32 %53, i8* %54)
  %56 = load i32, i32* @BUS_PROBE_NOWILDCARD, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %38, %36, %30, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_devclass(i32) #1

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i32) #1

declare dso_local i32 @bhnd_pmu_probe(i32) #1

declare dso_local i32 @bhnd_bus_read_4(i32, i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
