; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rdcphy.c_rdcphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rdcphy.c_rdcphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }
%struct.rdcphy_softc = type { i32 }

@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@RDCPHY_MANNEG_TICK = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @rdcphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdcphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdcphy_softc*, align 8
  %9 = alloca %struct.ifmedia_entry*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %11 = bitcast %struct.mii_softc* %10 to %struct.rdcphy_softc*
  store %struct.rdcphy_softc* %11, %struct.rdcphy_softc** %8, align 8
  %12 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %65 [
    i32 129, label %17
    i32 130, label %18
    i32 128, label %40
  ]

17:                                               ; preds = %3
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %20 = call i32 @mii_phy_setmedia(%struct.mii_softc* %19)
  %21 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %22 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IFM_SUBTYPE(i32 %23)
  switch i32 %24, label %38 [
    i32 132, label %25
    i32 131, label %25
  ]

25:                                               ; preds = %18, %18
  %26 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %27 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @IFM_ETHER, align 4
  %29 = load i32, i32* @IFM_NONE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %32 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @RDCPHY_MANNEG_TICK, align 4
  %34 = load %struct.rdcphy_softc*, %struct.rdcphy_softc** %8, align 8
  %35 = getelementptr inbounds %struct.rdcphy_softc, %struct.rdcphy_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %37 = call i32 @mii_phy_update(%struct.mii_softc* %36, i32 130)
  store i32 0, i32* %4, align 4
  br label %71

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  br label %65

40:                                               ; preds = %3
  %41 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %42 = call i32 @mii_phy_tick(%struct.mii_softc* %41)
  %43 = load i32, i32* @EJUSTRETURN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %71

46:                                               ; preds = %40
  %47 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %48 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IFM_SUBTYPE(i32 %49)
  %51 = load i32, i32* @IFM_AUTO, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.rdcphy_softc*, %struct.rdcphy_softc** %8, align 8
  %55 = getelementptr inbounds %struct.rdcphy_softc, %struct.rdcphy_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.rdcphy_softc*, %struct.rdcphy_softc** %8, align 8
  %60 = getelementptr inbounds %struct.rdcphy_softc, %struct.rdcphy_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %71

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %3, %64, %39, %17
  %66 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %67 = call i32 @PHY_STATUS(%struct.mii_softc* %66)
  %68 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @mii_phy_update(%struct.mii_softc* %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %58, %45, %25
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_tick(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
