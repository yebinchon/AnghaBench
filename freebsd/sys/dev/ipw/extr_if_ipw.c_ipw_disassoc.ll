; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_disassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.ipw_softc* }
%struct.ipw_softc = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Disassociate from %6D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@IPW_FLAG_FW_INITED = common dso_local global i32 0, align 4
@IPW_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@IPW_CMD_DISASSOCIATE = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, %struct.ieee80211vap*)* @ipw_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_disassoc(%struct.ieee80211com* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ipw_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  store %struct.ieee80211_node* %9, %struct.ieee80211_node** %5, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load %struct.ipw_softc*, %struct.ipw_softc** %11, align 8
  store %struct.ipw_softc* %12, %struct.ipw_softc** %6, align 8
  %13 = load %struct.ipw_softc*, %struct.ipw_softc** %6, align 8
  %14 = call i32 @IPW_LOCK(%struct.ipw_softc* %13)
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.ipw_softc*, %struct.ipw_softc** %6, align 8
  %20 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IPW_FLAG_FW_INITED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load i32, i32* @IPW_FLAG_ASSOCIATED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ipw_softc*, %struct.ipw_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ipw_softc*, %struct.ipw_softc** %6, align 8
  %33 = load i32, i32* @IPW_CMD_DISASSOCIATE, align 4
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %38 = call i32 @ipw_cmd(%struct.ipw_softc* %32, i32 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %25, %2
  %40 = load %struct.ipw_softc*, %struct.ipw_softc** %6, align 8
  %41 = call i32 @IPW_UNLOCK(%struct.ipw_softc* %40)
  ret void
}

declare dso_local i32 @IPW_LOCK(%struct.ipw_softc*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ipw_cmd(%struct.ipw_softc*, i32, i32, i32) #1

declare dso_local i32 @IPW_UNLOCK(%struct.ipw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
