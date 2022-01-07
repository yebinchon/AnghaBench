; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_mediastatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_mediastatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.ale_softc* }
%struct.ale_softc = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.mii_data = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @ale_mediastatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_mediastatus(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ale_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 1
  %9 = load %struct.ale_softc*, %struct.ale_softc** %8, align 8
  store %struct.ale_softc* %9, %struct.ale_softc** %5, align 8
  %10 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %11 = call i32 @ALE_LOCK(%struct.ale_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %20 = call i32 @ALE_UNLOCK(%struct.ale_softc* %19)
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mii_data* @device_get_softc(i32 %24)
  store %struct.mii_data* %25, %struct.mii_data** %6, align 8
  %26 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %27 = call i32 @mii_pollstat(%struct.mii_data* %26)
  %28 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %32 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %34 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %37 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %39 = call i32 @ALE_UNLOCK(%struct.ale_softc* %38)
  br label %40

40:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @ALE_LOCK(%struct.ale_softc*) #1

declare dso_local i32 @ALE_UNLOCK(%struct.ale_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
