; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_rx_get_signal_strength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_rx_get_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_rx_phy_info = type { i32* }

@IWM_RX_INFO_ENERGY_ANT_ABC_IDX = common dso_local global i64 0, align 8
@IWM_RX_INFO_ENERGY_ANT_A_MSK = common dso_local global i32 0, align 4
@IWM_RX_INFO_ENERGY_ANT_A_POS = common dso_local global i32 0, align 4
@IWM_RX_INFO_ENERGY_ANT_B_MSK = common dso_local global i32 0, align 4
@IWM_RX_INFO_ENERGY_ANT_B_POS = common dso_local global i32 0, align 4
@IWM_RX_INFO_ENERGY_ANT_C_MSK = common dso_local global i32 0, align 4
@IWM_RX_INFO_ENERGY_ANT_C_POS = common dso_local global i32 0, align 4
@IWM_DEBUG_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"energy In A %d B %d C %d , and max %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_rx_phy_info*)* @iwm_mvm_rx_get_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_rx_get_signal_strength(%struct.iwm_softc* %0, %struct.iwm_rx_phy_info* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_rx_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_rx_phy_info* %1, %struct.iwm_rx_phy_info** %4, align 8
  %10 = load %struct.iwm_rx_phy_info*, %struct.iwm_rx_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.iwm_rx_phy_info, %struct.iwm_rx_phy_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @IWM_RX_INFO_ENERGY_ANT_ABC_IDX, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32toh(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IWM_RX_INFO_ENERGY_ANT_A_MSK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @IWM_RX_INFO_ENERGY_ANT_A_POS, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 0, %25
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ -256, %27 ]
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IWM_RX_INFO_ENERGY_ANT_B_MSK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @IWM_RX_INFO_ENERGY_ANT_B_POS, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 0, %38
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ -256, %40 ]
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IWM_RX_INFO_ENERGY_ANT_C_MSK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @IWM_RX_INFO_ENERGY_ANT_C_POS, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 0, %51
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ -256, %53 ]
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @MAX(i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @MAX(i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %63 = load i32, i32* @IWM_DEBUG_RECV, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %62, i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
