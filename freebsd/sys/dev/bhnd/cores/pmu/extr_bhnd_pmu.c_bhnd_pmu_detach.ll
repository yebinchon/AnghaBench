; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu.c_bhnd_pmu_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu.c_bhnd_pmu_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32, i32, i32, i32 }

@BHND_SERVICE_ANY = common dso_local global i32 0, align 4
@BHND_SERVICE_CHIPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pmu_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bhnd_pmu_softc* @device_get_softc(i32 %6)
  store %struct.bhnd_pmu_softc* %7, %struct.bhnd_pmu_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BHND_SERVICE_ANY, align 4
  %10 = call i32 @bhnd_deregister_provider(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %16 = call i32 @BPMU_LOCK_DESTROY(%struct.bhnd_pmu_softc* %15)
  %17 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %17, i32 0, i32 3
  %19 = call i32 @bhnd_pmu_query_fini(i32* %18)
  %20 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bhnd_free_core_clkctl(i32 %22)
  %24 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BHND_SERVICE_CHIPC, align 4
  %31 = call i32 @bhnd_release_provider(i32 %26, i32 %29, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %14, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.bhnd_pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @bhnd_deregister_provider(i32, i32) #1

declare dso_local i32 @BPMU_LOCK_DESTROY(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @bhnd_pmu_query_fini(i32*) #1

declare dso_local i32 @bhnd_free_core_clkctl(i32) #1

declare dso_local i32 @bhnd_release_provider(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
