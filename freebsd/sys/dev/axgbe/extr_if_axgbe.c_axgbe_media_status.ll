; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.axgbe_softc* }
%struct.axgbe_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@IFM_10G_KR = common dso_local global i32 0, align 4
@IFM_2500_KX = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @axgbe_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axgbe_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.axgbe_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.axgbe_softc*, %struct.axgbe_softc** %7, align 8
  store %struct.axgbe_softc* %8, %struct.axgbe_softc** %5, align 8
  %9 = load i32, i32* @IFM_AVALID, align 4
  %10 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %11 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.axgbe_softc*, %struct.axgbe_softc** %5, align 8
  %13 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %71

19:                                               ; preds = %2
  %20 = load i32, i32* @IFM_ACTIVE, align 4
  %21 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %22 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @IFM_ETHER, align 4
  %26 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %27 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.axgbe_softc*, %struct.axgbe_softc** %5, align 8
  %29 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DUPLEX_FULL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %19
  %36 = load i32, i32* @IFM_FDX, align 4
  %37 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %38 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %47

41:                                               ; preds = %19
  %42 = load i32, i32* @IFM_HDX, align 4
  %43 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %44 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.axgbe_softc*, %struct.axgbe_softc** %5, align 8
  %49 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %71 [
    i32 129, label %53
    i32 128, label %59
    i32 130, label %65
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* @IFM_10G_KR, align 4
  %55 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %56 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %71

59:                                               ; preds = %47
  %60 = load i32, i32* @IFM_2500_KX, align 4
  %61 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %62 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %71

65:                                               ; preds = %47
  %66 = load i32, i32* @IFM_1000_KX, align 4
  %67 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %68 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %18, %47, %65, %59, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
