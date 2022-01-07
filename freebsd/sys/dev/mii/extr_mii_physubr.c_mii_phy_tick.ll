; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AUTO = common dso_local global i64 0, align 8
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@MII_ANEGTICKS_GIGE = common dso_local global i64 0, align 8
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_phy_tick(%struct.mii_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %10, align 8
  store %struct.ifmedia_entry* %11, %struct.ifmedia_entry** %4, align 8
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %13 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IFM_SUBTYPE(i32 %14)
  %16 = load i64, i64* @IFM_AUTO, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  store i32 0, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %23 = load i32, i32* @MII_BMSR, align 4
  %24 = call i32 @PHY_READ(%struct.mii_softc* %22, i32 %23)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %26 = load i32, i32* @MII_BMSR, align 4
  %27 = call i32 @PHY_READ(%struct.mii_softc* %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BMSR_LINK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  store i32 0, i32* %2, align 4
  br label %69

36:                                               ; preds = %21
  %37 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = icmp eq i64 %39, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %69

43:                                               ; preds = %36
  %44 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* @MII_ANEGTICKS_GIGE, align 8
  %50 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %66 = call i32 @PHY_RESET(%struct.mii_softc* %65)
  %67 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %68 = call i32 @mii_phy_auto(%struct.mii_softc* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %60, %42, %33, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_auto(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
