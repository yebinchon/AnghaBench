; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@MIIF_NOISOLATE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mii_phy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.ifmedia_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %10, align 8
  store %struct.ifmedia_entry* %11, %struct.ifmedia_entry** %3, align 8
  %12 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MIIF_NOISOLATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @BMCR_RESET, align 4
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @BMCR_RESET, align 4
  %22 = load i32, i32* @BMCR_ISO, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = load i32, i32* @MII_BMCR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @PHY_WRITE(%struct.mii_softc* %25, i32 %26, i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %43, %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %34 = load i32, i32* @MII_BMCR, align 4
  %35 = call i32 @PHY_READ(%struct.mii_softc* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BMCR_RESET, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %46

41:                                               ; preds = %32
  %42 = call i32 @DELAY(i32 1000)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %29

46:                                               ; preds = %40, %29
  %47 = load i32, i32* @BMCR_PDOWN, align 4
  %48 = load i32, i32* @BMCR_ISO, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MIIF_NOISOLATE, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %46
  %60 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %61 = icmp eq %struct.ifmedia_entry* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %69 = icmp ne %struct.ifmedia_entry* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %72 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IFM_INST(i32 %73)
  %75 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %76 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70, %62
  %80 = load i32, i32* @BMCR_ISO, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %70, %67, %46
  %84 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %85 = load i32, i32* @MII_BMCR, align 4
  %86 = call i32 @PHY_READ(%struct.mii_softc* %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %91 = load i32, i32* @MII_BMCR, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @PHY_WRITE(%struct.mii_softc* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @IFM_INST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
