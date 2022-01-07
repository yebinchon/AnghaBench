; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_allow_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_allow_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32 }
%struct.iwm_softc = type { i32 }
%struct.iwm_mcast_filter_cmd = type { i32, i32, i32, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWM_MCAST_FILTER_CMD = common dso_local global i32 0, align 4
@IWM_CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.iwm_softc*)* @iwm_allow_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_allow_mcast(%struct.ieee80211vap* %0, %struct.iwm_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.iwm_mcast_filter_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.iwm_softc* %1, %struct.iwm_softc** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  store %struct.ieee80211_node* %12, %struct.ieee80211_node** %6, align 8
  %13 = call i64 @roundup(i32 32, i32 4)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.iwm_mcast_filter_cmd* @malloc(i64 %14, i32 %15, i32 %18)
  store %struct.iwm_mcast_filter_cmd* %19, %struct.iwm_mcast_filter_cmd** %7, align 8
  %20 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %21 = icmp eq %struct.iwm_mcast_filter_cmd* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.iwm_mcast_filter_cmd, %struct.iwm_mcast_filter_cmd* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.iwm_mcast_filter_cmd, %struct.iwm_mcast_filter_cmd* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.iwm_mcast_filter_cmd, %struct.iwm_mcast_filter_cmd* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.iwm_mcast_filter_cmd, %struct.iwm_mcast_filter_cmd* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.iwm_mcast_filter_cmd, %struct.iwm_mcast_filter_cmd* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IEEE80211_ADDR_COPY(i32 %35, i32 %38)
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %41 = load i32, i32* @IWM_MCAST_FILTER_CMD, align 4
  %42 = load i32, i32* @IWM_CMD_SYNC, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %45 = call i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc* %40, i32 %41, i32 %42, i64 %43, %struct.iwm_mcast_filter_cmd* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.iwm_mcast_filter_cmd*, %struct.iwm_mcast_filter_cmd** %7, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.iwm_mcast_filter_cmd* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %24, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local %struct.iwm_mcast_filter_cmd* @malloc(i64, i32, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc*, i32, i32, i64, %struct.iwm_mcast_filter_cmd*) #1

declare dso_local i32 @free(%struct.iwm_mcast_filter_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
