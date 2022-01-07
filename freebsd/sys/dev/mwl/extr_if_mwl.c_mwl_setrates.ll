; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211_node* }
%struct.ieee80211_node = type { %struct.ieee80211_txparam* }
%struct.ieee80211_txparam = type { i64, i32, i32 }
%struct.mwl_vap = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"state %d\00", align 1
@IEEE80211_FIXED_RATE_NONE = common dso_local global i64 0, align 8
@RATE_FIXED = common dso_local global i32 0, align 4
@RATE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*)* @mwl_setrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_setrates(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.mwl_vap*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_txparam*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %8 = call %struct.mwl_vap* @MWL_VAP(%struct.ieee80211vap* %7)
  store %struct.mwl_vap* %8, %struct.mwl_vap** %3, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %10, align 8
  store %struct.ieee80211_node* %11, %struct.ieee80211_node** %4, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %13, align 8
  store %struct.ieee80211_txparam* %14, %struct.ieee80211_txparam** %5, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_S_RUN, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %20, i8* %24)
  %26 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 8)
  %27 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %38 = call i32 @mwl_calcformat(i32 %36, %struct.ieee80211_node* %37)
  %39 = call i32 @htole16(i32 %38)
  %40 = load %struct.mwl_vap*, %struct.mwl_vap** %3, align 8
  %41 = getelementptr inbounds %struct.mwl_vap, %struct.mwl_vap* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mwl_vap*, %struct.mwl_vap** %3, align 8
  %43 = getelementptr inbounds %struct.mwl_vap, %struct.mwl_vap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE80211_FIXED_RATE_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = load i32, i32* @RATE_FIXED, align 4
  br label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @RATE_AUTO, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @mwl_hal_settxrate(i32 %44, i32 %55, %struct.TYPE_4__* %6)
  ret i32 %56
}

declare dso_local %struct.mwl_vap* @MWL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mwl_calcformat(i32, %struct.ieee80211_node*) #1

declare dso_local i32 @mwl_hal_settxrate(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
