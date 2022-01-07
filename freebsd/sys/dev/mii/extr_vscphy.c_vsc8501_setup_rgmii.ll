; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_vscphy.c_vsc8501_setup_rgmii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_vscphy.c_vsc8501_setup_rgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscphy_softc = type { i64, i32, i32, i64 }

@VSC8501_EXTPAGE_REG = common dso_local global i32 0, align 4
@VSC8501_RGMII_CTRL_PAGE = common dso_local global i32 0, align 4
@VSC8501_RGMII_CTRL_REG = common dso_local global i32 0, align 4
@VSC8501_RGMII_RXCLOCK_DISABLE = common dso_local global i32 0, align 4
@VSC8501_RGMII_LANESWAP = common dso_local global i32 0, align 4
@VSC8501_RGMII_DELAY_MASK = common dso_local global i32 0, align 4
@VSC8501_RGMII_DELAY_TXSHIFT = common dso_local global i32 0, align 4
@VSC8501_RGMII_DELAY_RXSHIFT = common dso_local global i32 0, align 4
@MII_CONTYPE_RGMII_ID = common dso_local global i64 0, align 8
@MII_CONTYPE_RGMII_TXID = common dso_local global i64 0, align 8
@MII_CONTYPE_RGMII_RXID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscphy_softc*)* @vsc8501_setup_rgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc8501_setup_rgmii(%struct.vscphy_softc* %0) #0 {
  %2 = alloca %struct.vscphy_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vscphy_softc* %0, %struct.vscphy_softc** %2, align 8
  %4 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %5 = load i32, i32* @VSC8501_EXTPAGE_REG, align 4
  %6 = load i32, i32* @VSC8501_RGMII_CTRL_PAGE, align 4
  %7 = call i32 @vscphy_write(%struct.vscphy_softc* %4, i32 %5, i32 %6)
  %8 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %9 = load i32, i32* @VSC8501_RGMII_CTRL_REG, align 4
  %10 = call i32 @vscphy_read(%struct.vscphy_softc* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @VSC8501_RGMII_RXCLOCK_DISABLE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @VSC8501_RGMII_LANESWAP, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @VSC8501_RGMII_DELAY_MASK, align 4
  %20 = load i32, i32* @VSC8501_RGMII_DELAY_TXSHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @VSC8501_RGMII_DELAY_MASK, align 4
  %26 = load i32, i32* @VSC8501_RGMII_DELAY_RXSHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @VSC8501_RGMII_LANESWAP, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %41 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MII_CONTYPE_RGMII_ID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %47 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MII_CONTYPE_RGMII_TXID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45, %39
  %52 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %53 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VSC8501_RGMII_DELAY_TXSHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %45
  %60 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %61 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MII_CONTYPE_RGMII_ID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %67 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MII_CONTYPE_RGMII_RXID, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65, %59
  %72 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %73 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VSC8501_RGMII_DELAY_RXSHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %65
  %80 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %81 = load i32, i32* @VSC8501_RGMII_CTRL_REG, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @vscphy_write(%struct.vscphy_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %85 = load i32, i32* @VSC8501_EXTPAGE_REG, align 4
  %86 = call i32 @vscphy_write(%struct.vscphy_softc* %84, i32 %85, i32 0)
  ret void
}

declare dso_local i32 @vscphy_write(%struct.vscphy_softc*, i32, i32) #1

declare dso_local i32 @vscphy_read(%struct.vscphy_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
