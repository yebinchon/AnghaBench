; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32 }

@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@xgbe_an_isr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_start(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @INTR_MPSAFE, align 4
  %12 = load i32, i32* @INTR_TYPE_NET, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @xgbe_an_isr, align 4
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 0
  %18 = call i32 @bus_setup_intr(i32 %7, i32 %10, i32 %13, i32* null, i32 %14, %struct.xgbe_prv_data* %15, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %71

24:                                               ; preds = %1
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %26 = call i64 @xgbe_use_xgmii_mode(%struct.xgbe_prv_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = call i32 @xgbe_xgmii_mode(%struct.xgbe_prv_data* %29)
  br label %50

31:                                               ; preds = %24
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = call i64 @xgbe_use_gmii_mode(%struct.xgbe_prv_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %37 = call i32 @xgbe_gmii_mode(%struct.xgbe_prv_data* %36)
  br label %49

38:                                               ; preds = %31
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %40 = call i64 @xgbe_use_gmii_2500_mode(%struct.xgbe_prv_data* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = call i32 @xgbe_gmii_2500_mode(%struct.xgbe_prv_data* %43)
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %52 = call i32 @xgbe_an_init(%struct.xgbe_prv_data* %51)
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = load i32, i32* @MDIO_MMD_AN, align 4
  %55 = load i32, i32* @MDIO_AN_INTMASK, align 4
  %56 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %53, i32 %54, i32 %55, i32 7)
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %58 = call i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data* %57)
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %45
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %67 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bus_teardown_intr(i32 %62, i32 %65, i32 %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %59, %50, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.xgbe_prv_data*, i32*) #1

declare dso_local i64 @xgbe_use_xgmii_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_xgmii_mode(%struct.xgbe_prv_data*) #1

declare dso_local i64 @xgbe_use_gmii_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_gmii_mode(%struct.xgbe_prv_data*) #1

declare dso_local i64 @xgbe_use_gmii_2500_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_gmii_2500_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_init(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
