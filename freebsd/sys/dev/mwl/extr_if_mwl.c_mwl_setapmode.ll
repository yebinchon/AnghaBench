; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setapmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setapmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.mwl_hal_vap = type { i32 }
%struct.TYPE_2__ = type { %struct.mwl_hal_vap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_channel*)* @mwl_setapmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_setapmode(%struct.ieee80211vap* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.mwl_hal_vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %7 = call %struct.TYPE_2__* @MWL_VAP(%struct.ieee80211vap* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %8, align 8
  store %struct.mwl_hal_vap* %9, %struct.mwl_hal_vap** %5, align 8
  %10 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %5, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = call i32 @mwl_getapmode(%struct.ieee80211vap* %11, %struct.ieee80211_channel* %12)
  %14 = call i32 @mwl_hal_setapmode(%struct.mwl_hal_vap* %10, i32 %13)
  ret i32 %14
}

declare dso_local %struct.TYPE_2__* @MWL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @mwl_hal_setapmode(%struct.mwl_hal_vap*, i32) #1

declare dso_local i32 @mwl_getapmode(%struct.ieee80211vap*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
