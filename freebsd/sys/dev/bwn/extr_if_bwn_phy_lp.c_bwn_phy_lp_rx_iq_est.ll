; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rx_iq_est.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rx_iq_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }
%struct.bwn_phy_lp_iq_est = type { i32, i32, i32 }

@BWN_PHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@BWN_PHY_IQ_NUM_SMPLS_ADDR = common dso_local global i32 0, align 4
@BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR = common dso_local global i32 0, align 4
@BWN_PHY_IQ_ACC_HI_ADDR = common dso_local global i32 0, align 4
@BWN_PHY_IQ_ACC_LO_ADDR = common dso_local global i32 0, align 4
@BWN_PHY_IQ_I_PWR_ACC_HI_ADDR = common dso_local global i32 0, align 4
@BWN_PHY_IQ_I_PWR_ACC_LO_ADDR = common dso_local global i32 0, align 4
@BWN_PHY_IQ_Q_PWR_ACC_HI_ADDR = common dso_local global i32 0, align 4
@BWN_PHY_IQ_Q_PWR_ACC_LO_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i32, %struct.bwn_phy_lp_iq_est*)* @bwn_phy_lp_rx_iq_est to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_rx_iq_est(%struct.bwn_mac* %0, i32 %1, i32 %2, %struct.bwn_phy_lp_iq_est* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwn_phy_lp_iq_est*, align 8
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bwn_phy_lp_iq_est* %3, %struct.bwn_phy_lp_iq_est** %9, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %12 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %13 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %11, i32 %12, i32 65527)
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %15 = load i32, i32* @BWN_PHY_IQ_NUM_SMPLS_ADDR, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %14, i32 %15, i32 %16)
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %19 = load i32, i32* @BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %18, i32 %19, i32 65280, i32 %20)
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %23 = load i32, i32* @BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, align 4
  %24 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %22, i32 %23, i32 65279)
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %26 = load i32, i32* @BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, align 4
  %27 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %25, i32 %26, i32 512)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %40, %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 500
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %33 = load i32, i32* @BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, align 4
  %34 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %32, i32 %33)
  %35 = and i32 %34, 512
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  %39 = call i32 @DELAY(i32 1000)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %28

43:                                               ; preds = %37, %28
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %45 = load i32, i32* @BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, align 4
  %46 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %44, i32 %45)
  %47 = and i32 %46, 512
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %51 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %52 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %50, i32 %51, i32 8)
  store i32 0, i32* %5, align 4
  br label %105

53:                                               ; preds = %43
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %55 = load i32, i32* @BWN_PHY_IQ_ACC_HI_ADDR, align 4
  %56 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %54, i32 %55)
  %57 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %58 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %60 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  store i32 %62, i32* %60, align 4
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %64 = load i32, i32* @BWN_PHY_IQ_ACC_LO_ADDR, align 4
  %65 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %63, i32 %64)
  %66 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %67 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %71 = load i32, i32* @BWN_PHY_IQ_I_PWR_ACC_HI_ADDR, align 4
  %72 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %70, i32 %71)
  %73 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %74 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %76 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 16
  store i32 %78, i32* %76, align 4
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %80 = load i32, i32* @BWN_PHY_IQ_I_PWR_ACC_LO_ADDR, align 4
  %81 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %79, i32 %80)
  %82 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %83 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %87 = load i32, i32* @BWN_PHY_IQ_Q_PWR_ACC_HI_ADDR, align 4
  %88 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %86, i32 %87)
  %89 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %90 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %92 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  store i32 %94, i32* %92, align 4
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %96 = load i32, i32* @BWN_PHY_IQ_Q_PWR_ACC_LO_ADDR, align 4
  %97 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %95, i32 %96)
  %98 = load %struct.bwn_phy_lp_iq_est*, %struct.bwn_phy_lp_iq_est** %9, align 8
  %99 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %103 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %104 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %102, i32 %103, i32 8)
  store i32 1, i32* %5, align 4
  br label %105

105:                                              ; preds = %53, %49
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
