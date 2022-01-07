; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_tx_training.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_tx_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@XGBE_RX_COMPLETE = common dso_local global i32 0, align 4
@XGBE_AN_PAGE_RECEIVED = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i64 0, align 8
@MDIO_AN_LPA = common dso_local global i64 0, align 8
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECCTRL = common dso_local global i64 0, align 8
@MDIO_PMA_10GBR_FECABLE_ABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE_ERRABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_PMD_CTRL = common dso_local global i64 0, align 8
@XGBE_KR_TRAINING_ENABLE = common dso_local global i32 0, align 4
@SIR0_KR_RT_1 = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@XGBE_KR_TRAINING_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32*)* @xgbe_an_tx_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_an_tx_training(%struct.xgbe_prv_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @XGBE_RX_COMPLETE, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %12 = call i32 @xgbe_in_kr_mode(%struct.xgbe_prv_data* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @XGBE_AN_PAGE_RECEIVED, align 4
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %18 = load i32, i32* @MDIO_MMD_AN, align 4
  %19 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %17, i32 %18, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %23 = load i32, i32* @MDIO_MMD_AN, align 4
  %24 = load i64, i64* @MDIO_AN_LPA, align 8
  %25 = add nsw i64 %24, 2
  %26 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %22, i32 %23, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %28 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %29 = load i64, i64* @MDIO_PMA_10GBR_FECCTRL, align 8
  %30 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %27, i32 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ABLE, align 4
  %32 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ERRABLE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 49152
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %16
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 49152
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %40, %16
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %52 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %53 = load i64, i64* @MDIO_PMA_10GBR_FECCTRL, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %51, i32 %52, i64 %53, i32 %54)
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %57 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %58 = load i64, i64* @MDIO_PMA_10GBR_PMD_CTRL, align 8
  %59 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %56, i32 %57, i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @XGBE_KR_TRAINING_ENABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %50
  %65 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %66 = load i32, i32* @SIR0_KR_RT_1, align 4
  %67 = load i32, i32* @RESET, align 4
  %68 = call i32 @XSIR0_IOWRITE_BITS(%struct.xgbe_prv_data* %65, i32 %66, i32 %67, i32 1)
  %69 = load i32, i32* @XGBE_KR_TRAINING_START, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %73 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %74 = load i64, i64* @MDIO_PMA_10GBR_PMD_CTRL, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %72, i32 %73, i64 %74, i32 %75)
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %78 = load i32, i32* @SIR0_KR_RT_1, align 4
  %79 = load i32, i32* @RESET, align 4
  %80 = call i32 @XSIR0_IOWRITE_BITS(%struct.xgbe_prv_data* %77, i32 %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %64, %50
  %82 = load i32, i32* @XGBE_AN_PAGE_RECEIVED, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @xgbe_in_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i64) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i64, i32) #1

declare dso_local i32 @XSIR0_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
