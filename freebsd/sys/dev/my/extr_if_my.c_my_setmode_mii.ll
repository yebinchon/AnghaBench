; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_setmode_mii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_setmode_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"canceling autoneg session\0A\00", align 1
@PHY_BMCR = common dso_local global i32 0, align 4
@PHY_BMCR_AUTONEGENBL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"selecting MII, \00", align 1
@PHY_BMCR_SPEEDSEL = common dso_local global i32 0, align 4
@PHY_BMCR_1000 = common dso_local global i32 0, align 4
@PHY_BMCR_DUPLEX = common dso_local global i32 0, align 4
@PHY_BMCR_LOOPBK = common dso_local global i32 0, align 4
@IFM_100_T4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"100Mbps/T4, half-duplex\0A\00", align 1
@IFM_100_TX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"100Mbps, \00", align 1
@IFM_10_T = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"10Mbps, \00", align 1
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"full duplex\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"half duplex\0A\00", align 1
@IFM_1000_T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*, i32)* @my_setmode_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_setmode_mii(%struct.my_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.my_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %7 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %6)
  %8 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %9 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %14 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %18 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %17, i32 0, i32 3
  %19 = call i32 @callout_stop(i32* %18)
  %20 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %21 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %23 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %25 = load i32, i32* @PHY_BMCR, align 4
  %26 = call i32 @my_phy_readreg(%struct.my_softc* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @PHY_BMCR_AUTONEGENBL, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %32 = load i32, i32* @PHY_BMCR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @my_phy_writereg(%struct.my_softc* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %12, %2
  %36 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %37 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %41 = load i32, i32* @PHY_BMCR, align 4
  %42 = call i32 @my_phy_readreg(%struct.my_softc* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @PHY_BMCR_AUTONEGENBL, align 4
  %44 = load i32, i32* @PHY_BMCR_SPEEDSEL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PHY_BMCR_1000, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PHY_BMCR_DUPLEX, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PHY_BMCR_LOOPBK, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @IFM_SUBTYPE(i32 %55)
  %57 = load i64, i64* @IFM_100_T4, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %35
  %60 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @PHY_BMCR_SPEEDSEL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @PHY_BMCR_DUPLEX, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %59, %35
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @IFM_SUBTYPE(i32 %69)
  %71 = load i64, i64* @IFM_100_TX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @PHY_BMCR_SPEEDSEL, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @IFM_SUBTYPE(i32 %79)
  %81 = load i64, i64* @IFM_10_T, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @PHY_BMCR_SPEEDSEL, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @IFM_GMASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @IFM_FDX, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @PHY_BMCR_DUPLEX, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %106

100:                                              ; preds = %89
  %101 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* @PHY_BMCR_DUPLEX, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %108 = load i32, i32* @PHY_BMCR, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @my_phy_writereg(%struct.my_softc* %107, i32 %108, i32 %109)
  %111 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @my_setcfg(%struct.my_softc* %111, i32 %112)
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @my_phy_readreg(%struct.my_softc*, i32) #1

declare dso_local i32 @my_phy_writereg(%struct.my_softc*, i32, i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @my_setcfg(%struct.my_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
