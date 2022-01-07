; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rum_softc* }
%struct.rum_softc = type { i64, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@RUM_TX_MINFREE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @rum_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.rum_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rum_softc*, %struct.rum_softc** %13, align 8
  store %struct.rum_softc* %14, %struct.rum_softc** %8, align 8
  %15 = load %struct.rum_softc*, %struct.rum_softc** %8, align 8
  %16 = call i32 @RUM_LOCK(%struct.rum_softc* %15)
  %17 = load %struct.rum_softc*, %struct.rum_softc** %8, align 8
  %18 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENETDOWN, align 4
  store i32 %22, i32* %9, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.rum_softc*, %struct.rum_softc** %8, align 8
  %25 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RUM_TX_MINFREE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @EIO, align 4
  store i32 %30, i32* %9, align 4
  br label %54

31:                                               ; preds = %23
  %32 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %33 = icmp eq %struct.ieee80211_bpf_params* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.rum_softc*, %struct.rum_softc** %8, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %38 = call i32 @rum_tx_mgt(%struct.rum_softc* %35, %struct.mbuf* %36, %struct.ieee80211_node* %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %54

41:                                               ; preds = %34
  br label %51

42:                                               ; preds = %31
  %43 = load %struct.rum_softc*, %struct.rum_softc** %8, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %46 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %47 = call i32 @rum_tx_raw(%struct.rum_softc* %43, %struct.mbuf* %44, %struct.ieee80211_node* %45, %struct.ieee80211_bpf_params* %46)
  store i32 %47, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %41
  %52 = load %struct.rum_softc*, %struct.rum_softc** %8, align 8
  %53 = call i32 @RUM_UNLOCK(%struct.rum_softc* %52)
  store i32 0, i32* %4, align 4
  br label %60

54:                                               ; preds = %49, %40, %29, %21
  %55 = load %struct.rum_softc*, %struct.rum_softc** %8, align 8
  %56 = call i32 @RUM_UNLOCK(%struct.rum_softc* %55)
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = call i32 @m_freem(%struct.mbuf* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @rum_tx_mgt(%struct.rum_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @rum_tx_raw(%struct.rum_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
