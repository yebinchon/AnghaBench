; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_radio_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_radio_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwm_nvm_data = type { i32, i32, i32, i32, i32, i32 }

@IWM_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_nvm_data*, i32)* @iwm_set_radio_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_set_radio_cfg(%struct.iwm_softc* %0, %struct.iwm_nvm_data* %1, i32 %2) #0 {
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_nvm_data*, align 8
  %6 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_nvm_data* %1, %struct.iwm_nvm_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %8 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IWM_DEVICE_FAMILY_8000, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @IWM_NVM_RF_CFG_TYPE_MSK(i32 %15)
  %17 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %18 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @IWM_NVM_RF_CFG_STEP_MSK(i32 %19)
  %21 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %22 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @IWM_NVM_RF_CFG_DASH_MSK(i32 %23)
  %25 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %26 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @IWM_NVM_RF_CFG_PNUM_MSK(i32 %27)
  %29 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %30 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %56

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @IWM_NVM_RF_CFG_TYPE_MSK_8000(i32 %32)
  %34 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %35 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @IWM_NVM_RF_CFG_STEP_MSK_8000(i32 %36)
  %38 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %39 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @IWM_NVM_RF_CFG_DASH_MSK_8000(i32 %40)
  %42 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %43 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @IWM_NVM_RF_CFG_FLAVOR_MSK_8000(i32 %44)
  %46 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %47 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @IWM_NVM_RF_CFG_TX_ANT_MSK_8000(i32 %48)
  %50 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %51 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @IWM_NVM_RF_CFG_RX_ANT_MSK_8000(i32 %52)
  %54 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %5, align 8
  %55 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %31, %14
  ret void
}

declare dso_local i32 @IWM_NVM_RF_CFG_TYPE_MSK(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_STEP_MSK(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_DASH_MSK(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_PNUM_MSK(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_TYPE_MSK_8000(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_STEP_MSK_8000(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_DASH_MSK_8000(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_FLAVOR_MSK_8000(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_TX_ANT_MSK_8000(i32) #1

declare dso_local i32 @IWM_NVM_RF_CFG_RX_ANT_MSK_8000(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
