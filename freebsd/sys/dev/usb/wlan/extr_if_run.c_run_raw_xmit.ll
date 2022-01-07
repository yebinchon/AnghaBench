; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.run_softc* }
%struct.run_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@RUN_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@RUN_DEBUG_XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mgt tx failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tx with param failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @run_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ieee80211_bpf_params*, align 8
  %7 = alloca %struct.run_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %6, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.run_softc*, %struct.run_softc** %12, align 8
  store %struct.run_softc* %13, %struct.run_softc** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %15 = call i32 @RUN_LOCK(%struct.run_softc* %14)
  %16 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %17 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RUN_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENETDOWN, align 4
  store i32 %23, i32* %8, align 4
  br label %51

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %6, align 8
  %26 = icmp eq %struct.ieee80211_bpf_params* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %31 = call i32 @run_tx_mgt(%struct.run_softc* %28, %struct.mbuf* %29, %struct.ieee80211_node* %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %35 = load i32, i32* @RUN_DEBUG_XMIT, align 4
  %36 = call i32 @RUN_DPRINTF(%struct.run_softc* %34, i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %51

37:                                               ; preds = %27
  br label %50

38:                                               ; preds = %24
  %39 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %42 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %6, align 8
  %43 = call i32 @run_tx_param(%struct.run_softc* %39, %struct.mbuf* %40, %struct.ieee80211_node* %41, %struct.ieee80211_bpf_params* %42)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %47 = load i32, i32* @RUN_DEBUG_XMIT, align 4
  %48 = call i32 @RUN_DPRINTF(%struct.run_softc* %46, i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %51

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50, %45, %33, %22
  %52 = load %struct.run_softc*, %struct.run_softc** %7, align 8
  %53 = call i32 @RUN_UNLOCK(%struct.run_softc* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %61 = call i32 @m_freem(%struct.mbuf* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @run_tx_mgt(%struct.run_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*) #1

declare dso_local i32 @run_tx_param(%struct.run_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
