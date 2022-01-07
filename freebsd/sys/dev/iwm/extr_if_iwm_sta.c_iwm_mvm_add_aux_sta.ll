; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_add_aux_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_add_aux_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IWM_AUX_STA_ID = common dso_local global i32 0, align 4
@IWM_MVM_AUX_QUEUE = common dso_local global i32 0, align 4
@IWM_MVM_TX_FIFO_MCAST = common dso_local global i32 0, align 4
@IWM_MAC_INDEX_AUX = common dso_local global i32 0, align 4
@IWM_MVM_STATION_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_add_aux_sta(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %5 = load i32, i32* @IWM_AUX_STA_ID, align 4
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @IWM_MVM_AUX_QUEUE, align 4
  %10 = shl i32 1, %9
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %12 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %15 = load i32, i32* @IWM_AUX_STA_ID, align 4
  %16 = load i32, i32* @IWM_MVM_AUX_QUEUE, align 4
  %17 = load i32, i32* @IWM_MVM_TX_FIFO_MCAST, align 4
  %18 = call i32 @iwm_enable_txq(%struct.iwm_softc* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %26 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %25, i32 0, i32 0
  %27 = load i32, i32* @IWM_MAC_INDEX_AUX, align 4
  %28 = call i32 @iwm_mvm_add_int_sta_common(%struct.iwm_softc* %24, %struct.TYPE_3__* %26, i32* null, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %33 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %32, i32 0, i32 0
  %34 = call i32 @memset(%struct.TYPE_3__* %33, i32 0, i32 8)
  %35 = load i32, i32* @IWM_MVM_STATION_COUNT, align 4
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %37 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @iwm_enable_txq(%struct.iwm_softc*, i32, i32, i32) #1

declare dso_local i32 @iwm_mvm_add_int_sta_common(%struct.iwm_softc*, %struct.TYPE_3__*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
