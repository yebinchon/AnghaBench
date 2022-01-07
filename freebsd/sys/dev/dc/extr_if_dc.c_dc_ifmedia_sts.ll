; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.dc_softc* }
%struct.dc_softc = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.mii_data = type { i32, i32, %struct.ifmedia }
%struct.ifmedia = type { i32 }

@IFM_HPNA_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @dc_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_ifmedia_sts(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.dc_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca %struct.ifmedia*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.dc_softc*, %struct.dc_softc** %9, align 8
  store %struct.dc_softc* %10, %struct.dc_softc** %5, align 8
  %11 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mii_data* @device_get_softc(i32 %13)
  store %struct.mii_data* %14, %struct.mii_data** %6, align 8
  %15 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %16 = call i32 @DC_LOCK(%struct.dc_softc* %15)
  %17 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %18 = call i32 @mii_pollstat(%struct.mii_data* %17)
  %19 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %20 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %19, i32 0, i32 2
  store %struct.ifmedia* %20, %struct.ifmedia** %7, align 8
  %21 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %22 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.ifmedia*, %struct.ifmedia** %7, align 8
  %26 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IFM_SUBTYPE(i32 %27)
  %29 = load i64, i64* @IFM_HPNA_1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.ifmedia*, %struct.ifmedia** %7, align 8
  %33 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %36 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %38 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %40 = call i32 @DC_UNLOCK(%struct.dc_softc* %39)
  br label %55

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %47 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %52 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %54 = call i32 @DC_UNLOCK(%struct.dc_softc* %53)
  br label %55

55:                                               ; preds = %42, %31
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @DC_LOCK(%struct.dc_softc*) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i64 @DC_IS_DAVICOM(%struct.dc_softc*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @DC_UNLOCK(%struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
