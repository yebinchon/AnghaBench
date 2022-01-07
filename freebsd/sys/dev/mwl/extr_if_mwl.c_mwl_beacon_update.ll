; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_beacon_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_beacon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.mwl_hal_vap = type { i32 }
%struct.TYPE_2__ = type { %struct.mwl_hal_vap* }

@.str = private unnamed_addr constant [10 x i8] c"no beacon\00", align 1
@IEEE80211_HTINFO_OPMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i32)* @mwl_beacon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_beacon_update(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl_hal_vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %8 = call %struct.TYPE_2__* @MWL_VAP(%struct.ieee80211vap* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %9, align 8
  store %struct.mwl_hal_vap* %10, %struct.mwl_hal_vap** %5, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %6, align 8
  %14 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %5, align 8
  %15 = icmp ne %struct.mwl_hal_vap* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %32 [
    i32 131, label %19
    i32 130, label %22
    i32 133, label %30
    i32 128, label %30
    i32 134, label %30
    i32 132, label %30
    i32 129, label %31
  ]

19:                                               ; preds = %2
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %21 = call i32 @mwl_updateslot(%struct.ieee80211com* %20)
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %5, align 8
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_HTINFO_OPMODE, align 4
  %28 = call i32 @MS(i32 %26, i32 %27)
  %29 = call i32 @mwl_hal_setnprotmode(%struct.mwl_hal_vap* %23, i32 %28)
  br label %32

30:                                               ; preds = %2, %2, %2, %2
  br label %32

31:                                               ; preds = %2
  br label %35

32:                                               ; preds = %2, %30, %22, %19
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %34 = call i32 @mwl_beacon_setup(%struct.ieee80211vap* %33)
  br label %35

35:                                               ; preds = %32, %31
  ret void
}

declare dso_local %struct.TYPE_2__* @MWL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mwl_updateslot(%struct.ieee80211com*) #1

declare dso_local i32 @mwl_hal_setnprotmode(%struct.mwl_hal_vap*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @mwl_beacon_setup(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
