; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.bce_softc* }
%struct.bce_softc = type { i32, i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.mii_data = type { i32, i32 }

@BCE_VERBOSE_PHY = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@BCE_PHY_REMOTE_CAP_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @bce_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_ifmedia_sts(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.bce_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 1
  %9 = load %struct.bce_softc*, %struct.bce_softc** %8, align 8
  store %struct.bce_softc* %9, %struct.bce_softc** %5, align 8
  %10 = load i32, i32* @BCE_VERBOSE_PHY, align 4
  %11 = call i32 @DBENTER(i32 %10)
  %12 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %13 = call i32 @BCE_LOCK(%struct.bce_softc* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %22 = call i32 @BCE_UNLOCK(%struct.bce_softc* %21)
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %25 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BCE_PHY_REMOTE_CAP_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %32 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %33 = call i32 @bce_ifmedia_sts_rphy(%struct.bce_softc* %31, %struct.ifmediareq* %32)
  br label %51

34:                                               ; preds = %23
  %35 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %36 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.mii_data* @device_get_softc(i32 %37)
  store %struct.mii_data* %38, %struct.mii_data** %6, align 8
  %39 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %40 = call i32 @mii_pollstat(%struct.mii_data* %39)
  %41 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %42 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %45 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %47 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %50 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %34, %30
  %52 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %53 = call i32 @BCE_UNLOCK(%struct.bce_softc* %52)
  %54 = load i32, i32* @BCE_VERBOSE_PHY, align 4
  %55 = call i32 @DBEXIT(i32 %54)
  br label %56

56:                                               ; preds = %51, %20
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @BCE_LOCK(%struct.bce_softc*) #1

declare dso_local i32 @BCE_UNLOCK(%struct.bce_softc*) #1

declare dso_local i32 @bce_ifmedia_sts_rphy(%struct.bce_softc*, %struct.ifmediareq*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
