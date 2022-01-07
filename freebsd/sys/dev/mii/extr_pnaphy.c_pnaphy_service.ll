; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_pnaphy.c_pnaphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_pnaphy.c_pnaphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i64 0, align 8
@IFM_ETHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @pnaphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnaphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %10 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %11, align 8
  store %struct.ifmedia_entry* %12, %struct.ifmedia_entry** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %33 [
    i32 129, label %14
    i32 130, label %15
    i32 128, label %26
  ]

14:                                               ; preds = %3
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %17 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IFM_SUBTYPE(i32 %18)
  switch i64 %19, label %23 [
    i64 131, label %20
  ]

20:                                               ; preds = %15
  %21 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %22 = call i32 @mii_phy_setmedia(%struct.mii_softc* %21)
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %20
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %28 = call i32 @mii_phy_tick(%struct.mii_softc* %27)
  %29 = load i32, i32* @EJUSTRETURN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %51

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %3, %32, %25, %14
  %34 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %35 = call i32 @PHY_STATUS(%struct.mii_softc* %34)
  %36 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %37 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IFM_SUBTYPE(i32 %38)
  %40 = load i64, i64* @IFM_10_T, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32, i32* @IFM_ETHER, align 4
  %44 = or i32 %43, 131
  %45 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %46 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mii_phy_update(%struct.mii_softc* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %31, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_tick(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
