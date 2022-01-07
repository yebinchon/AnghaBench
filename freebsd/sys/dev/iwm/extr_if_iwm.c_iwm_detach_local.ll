; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_detach_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_detach_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32*, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i64, i32, %struct.iwm_fw_info }
%struct.iwm_fw_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i32)* @iwm_detach_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_detach_local(%struct.iwm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwm_fw_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %9, i32 0, i32 15
  store %struct.iwm_fw_info* %10, %struct.iwm_fw_info** %6, align 8
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %12 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %124

19:                                               ; preds = %2
  %20 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %21 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %20, i32 0, i32 13
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %26 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %25, i32 0, i32 11
  %27 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %28 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %27, i32 0, i32 12
  %29 = call i32 @ieee80211_draintask(i32* %26, i32* %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %32 = call i32 @iwm_stop_device(%struct.iwm_softc* %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %37 = call i32 @IWM_LOCK(%struct.iwm_softc* %36)
  %38 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %39 = call i32 @iwm_xmit_queue_drain(%struct.iwm_softc* %38)
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %41 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %40)
  %42 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %43 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %42, i32 0, i32 11
  %44 = call i32 @ieee80211_ifdetach(i32* %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %47 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %46, i32 0, i32 10
  %48 = call i32 @callout_drain(i32* %47)
  %49 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %50 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %49, i32 0, i32 9
  %51 = call i32 @callout_drain(i32* %50)
  %52 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %53 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @iwm_phy_db_free(i32* %54)
  %56 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %57 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %56, i32 0, i32 8
  store i32* null, i32** %57, align 8
  %58 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %59 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @iwm_free_nvm_data(i32 %60)
  %62 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %63 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %63, i32 0, i32 6
  %65 = call i32 @iwm_free_rx_ring(%struct.iwm_softc* %62, i32* %64)
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %82, %45
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %69 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @nitems(i32* %70)
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %75 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %76 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @iwm_free_tx_ring(%struct.iwm_softc* %74, i32* %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %66

85:                                               ; preds = %66
  %86 = load %struct.iwm_fw_info*, %struct.iwm_fw_info** %6, align 8
  %87 = getelementptr inbounds %struct.iwm_fw_info, %struct.iwm_fw_info* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.iwm_fw_info*, %struct.iwm_fw_info** %6, align 8
  %92 = call i32 @iwm_fw_info_free(%struct.iwm_fw_info* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %95 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %94, i32 0, i32 4
  %96 = call i32 @iwm_dma_contig_free(i32* %95)
  %97 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %98 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %97, i32 0, i32 3
  %99 = call i32 @iwm_dma_contig_free(i32* %98)
  %100 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %101 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %100, i32 0, i32 2
  %102 = call i32 @iwm_dma_contig_free(i32* %101)
  %103 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %104 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %103, i32 0, i32 1
  %105 = call i32 @iwm_dma_contig_free(i32* %104)
  %106 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %107 = call i32 @iwm_free_fw_paging(%struct.iwm_softc* %106)
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @iwm_pci_detach(i32 %108)
  %110 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %111 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %93
  %115 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %116 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @iwm_notification_wait_free(i32* %117)
  %119 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %120 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %119, i32 0, i32 0
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %114, %93
  %122 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %123 = call i32 @IWM_LOCK_DESTROY(%struct.iwm_softc* %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %18
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @ieee80211_draintask(i32*, i32*) #1

declare dso_local i32 @iwm_stop_device(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_xmit_queue_drain(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @iwm_phy_db_free(i32*) #1

declare dso_local i32 @iwm_free_nvm_data(i32) #1

declare dso_local i32 @iwm_free_rx_ring(%struct.iwm_softc*, i32*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @iwm_free_tx_ring(%struct.iwm_softc*, i32*) #1

declare dso_local i32 @iwm_fw_info_free(%struct.iwm_fw_info*) #1

declare dso_local i32 @iwm_dma_contig_free(i32*) #1

declare dso_local i32 @iwm_free_fw_paging(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_pci_detach(i32) #1

declare dso_local i32 @iwm_notification_wait_free(i32*) #1

declare dso_local i32 @IWM_LOCK_DESTROY(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
