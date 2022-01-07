; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c___xgbe_phy_config_aneg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c___xgbe_phy_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@XGBE_LINK_INIT = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_INTMASK = common dso_local global i32 0, align 4
@MDIO_AN_INT = common dso_local global i32 0, align 4
@ADVERTISED_10000baseKR_Full = common dso_local global i32 0, align 4
@XGBE_MODE_KR = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@XGBE_MODE_KX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XGBE_AN_READY = common dso_local global i8* null, align 8
@XGBE_RX_BPA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @__xgbe_phy_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xgbe_phy_config_aneg(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %4 = load i32, i32* @XGBE_LINK_INIT, align 4
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 6
  %7 = call i32 @set_bit(i32 %4, i32* %6)
  %8 = load i32, i32* @ticks, align 4
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AUTONEG_ENABLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %19 = call i32 @xgbe_phy_config_fixed(%struct.xgbe_prv_data* %18)
  store i32 %19, i32* %2, align 4
  br label %95

20:                                               ; preds = %1
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = load i32, i32* @MDIO_MMD_AN, align 4
  %23 = load i32, i32* @MDIO_AN_INTMASK, align 4
  %24 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %26 = load i32, i32* @MDIO_MMD_AN, align 4
  %27 = load i32, i32* @MDIO_AN_INT, align 4
  %28 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %38 = load i32, i32* @XGBE_MODE_KR, align 4
  %39 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %37, i32 %38)
  br label %68

40:                                               ; preds = %20
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48, %40
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %58 = load i32, i32* @XGBE_MODE_KX, align 4
  %59 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %57, i32 %58)
  br label %67

60:                                               ; preds = %48
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %62 = load i32, i32* @MDIO_MMD_AN, align 4
  %63 = load i32, i32* @MDIO_AN_INTMASK, align 4
  %64 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %61, i32 %62, i32 %63, i32 7)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %95

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %70 = call i32 @xgbe_disable_an(%struct.xgbe_prv_data* %69)
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %72 = load i32, i32* @MDIO_MMD_AN, align 4
  %73 = load i32, i32* @MDIO_AN_INT, align 4
  %74 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %71, i32 %72, i32 %73, i32 0)
  %75 = load i8*, i8** @XGBE_AN_READY, align 8
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %77 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @XGBE_AN_READY, align 8
  %79 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %80 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @XGBE_RX_BPA, align 8
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %83 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @XGBE_RX_BPA, align 8
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %88 = load i32, i32* @MDIO_MMD_AN, align 4
  %89 = load i32, i32* @MDIO_AN_INTMASK, align 4
  %90 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %87, i32 %88, i32 %89, i32 7)
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %92 = call i32 @xgbe_an_init(%struct.xgbe_prv_data* %91)
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %94 = call i32 @xgbe_restart_an(%struct.xgbe_prv_data* %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %68, %60, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xgbe_phy_config_fixed(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_set_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_disable_an(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_init(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_restart_an(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
