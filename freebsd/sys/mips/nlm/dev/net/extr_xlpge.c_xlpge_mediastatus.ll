; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_xlpge_mediastatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_xlpge_mediastatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.nlm_xlpge_softc* }
%struct.nlm_xlpge_softc = type { i64, i64 }
%struct.ifmediareq = type { i32, i32 }
%struct.mii_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@NLM_LINK_DOWN = common dso_local global i64 0, align 8
@IFM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @xlpge_mediastatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlpge_mediastatus(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.nlm_xlpge_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  store %struct.mii_data* null, %struct.mii_data** %6, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  store %struct.nlm_xlpge_softc* %9, %struct.nlm_xlpge_softc** %5, align 8
  %10 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %5, align 8
  %11 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %5, align 8
  %16 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.mii_data* @device_get_softc(i64 %17)
  store %struct.mii_data* %18, %struct.mii_data** %6, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @IFM_AVALID, align 4
  %21 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %22 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @IFM_ETHER, align 4
  %24 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %25 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %5, align 8
  %27 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NLM_LINK_DOWN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %50

32:                                               ; preds = %19
  %33 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %34 = icmp ne %struct.mii_data* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %37 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %43 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* @IFM_ACTIVE, align 4
  %46 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %47 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %31
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
