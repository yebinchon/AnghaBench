; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu.c_bhnd_pmu_get_clock_freq_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu.c_bhnd_pmu_get_clock_freq_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @bhnd_pmu_get_clock_freq_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu_get_clock_freq_method(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bhnd_pmu_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bhnd_pmu_softc* @device_get_softc(i32 %9)
  store %struct.bhnd_pmu_softc* %10, %struct.bhnd_pmu_softc** %8, align 8
  %11 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %8, align 8
  %12 = call i32 @BPMU_LOCK(%struct.bhnd_pmu_softc* %11)
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 131, label %19
    i32 128, label %24
    i32 130, label %29
  ]

14:                                               ; preds = %3
  %15 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %8, align 8
  %16 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %15, i32 0, i32 0
  %17 = call i32 @bhnd_pmu_si_clock(i32* %16)
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %8, align 8
  %21 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %20, i32 0, i32 0
  %22 = call i32 @bhnd_pmu_alp_clock(i32* %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %34

24:                                               ; preds = %3
  %25 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %8, align 8
  %26 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %25, i32 0, i32 0
  %27 = call i32 @bhnd_pmu_ilp_clock(i32* %26)
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %34

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %3, %29
  %31 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %8, align 8
  %32 = call i32 @BPMU_UNLOCK(%struct.bhnd_pmu_softc* %31)
  %33 = load i32, i32* @ENODEV, align 4
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %24, %19, %14
  %35 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %8, align 8
  %36 = call i32 @BPMU_UNLOCK(%struct.bhnd_pmu_softc* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.bhnd_pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @BPMU_LOCK(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @bhnd_pmu_si_clock(i32*) #1

declare dso_local i32 @bhnd_pmu_alp_clock(i32*) #1

declare dso_local i32 @bhnd_pmu_ilp_clock(i32*) #1

declare dso_local i32 @BPMU_UNLOCK(%struct.bhnd_pmu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
