; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_reset_unicore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_reset_unicore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@MDIO_REG_BANK_COMBO_IEEE0 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_MII_CONTROL = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_RESET = common dso_local global i64 0, align 8
@ELINK_MDIO_ACCESS_TIMEOUT = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@ELINK_LOG_ID_PHY_UNINITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BUG! XGXS is still in reset!\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_phy*, i64)* @elink_reset_unicore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_reset_unicore(%struct.elink_params* %0, %struct.elink_phy* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_phy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 1
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %8, align 8
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %15 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %16 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %17 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %18 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %14, %struct.elink_phy* %15, i32 %16, i32 %17, i64* %9)
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %20 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %21 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %22 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @MDIO_COMBO_IEEO_MII_CONTROL_RESET, align 8
  %25 = or i64 %23, %24
  %26 = call i32 @CL22_WR_OVER_CL45(%struct.bxe_softc* %19, %struct.elink_phy* %20, i32 %21, i32 %22, i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %31 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %32 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @elink_set_serdes_access(%struct.bxe_softc* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %3
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @ELINK_MDIO_ACCESS_TIMEOUT, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = call i32 @DELAY(i32 5)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %43 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %44 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %45 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %46 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %42, %struct.elink_phy* %43, i32 %44, i32 %45, i64* %9)
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @MDIO_COMBO_IEEO_MII_CONTROL_RESET, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = call i32 @DELAY(i32 5)
  %53 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %68

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %60 = load i32, i32* @ELINK_LOG_ID_PHY_UNINITIALIZED, align 4
  %61 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %62 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @elink_cb_event_log(%struct.bxe_softc* %59, i32 %60, i32 %63)
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %66 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %58, %51
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i64*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i64) #1

declare dso_local i32 @elink_set_serdes_access(%struct.bxe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @elink_cb_event_log(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
