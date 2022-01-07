; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_ruephy.c_ruephy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_ruephy.c_ruephy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AUTO = common dso_local global i32 0, align 4
@RUEPHY_MII_MSR = common dso_local global i32 0, align 4
@RUEPHY_MSR_LINK = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @ruephy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ruephy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %11 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %12, align 8
  store %struct.ifmedia_entry* %13, %struct.ifmedia_entry** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %60 [
    i32 129, label %15
    i32 130, label %16
    i32 128, label %19
  ]

15:                                               ; preds = %3
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %18 = call i32 @mii_phy_setmedia(%struct.mii_softc* %17)
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %21 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IFM_SUBTYPE(i32 %22)
  %24 = load i32, i32* @IFM_AUTO, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %60

27:                                               ; preds = %19
  %28 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %29 = load i32, i32* @RUEPHY_MII_MSR, align 4
  %30 = call i32 @PHY_READ(%struct.mii_softc* %28, i32 %29)
  %31 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %32 = load i32, i32* @RUEPHY_MII_MSR, align 4
  %33 = call i32 @PHY_READ(%struct.mii_softc* %31, i32 %32)
  %34 = or i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @RUEPHY_MSR_LINK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %60

40:                                               ; preds = %27
  %41 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %42 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %45 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %51 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %53 = call i32 @PHY_RESET(%struct.mii_softc* %52)
  %54 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %55 = call i32 @mii_phy_auto(%struct.mii_softc* %54)
  %56 = load i32, i32* @EJUSTRETURN, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %66

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %3, %59, %48, %39, %26, %16, %15
  %61 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %62 = call i32 @PHY_STATUS(%struct.mii_softc* %61)
  %63 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mii_phy_update(%struct.mii_softc* %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %60, %58
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_auto(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
