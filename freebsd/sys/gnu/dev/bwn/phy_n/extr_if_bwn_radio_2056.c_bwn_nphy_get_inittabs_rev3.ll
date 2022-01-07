; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_radio_2056.c_bwn_nphy_get_inittabs_rev3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_radio_2056.c_bwn_nphy_get_inittabs_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b2056_inittabs_pts = type { i32 }
%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i32 }

@b2056_inittab_phy_rev3 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_phy_rev4 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev5 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev6 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev7_9 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev8 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev11 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b2056_inittabs_pts* (%struct.bwn_mac*)* @bwn_nphy_get_inittabs_rev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b2056_inittabs_pts* @bwn_nphy_get_inittabs_rev3(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.b2056_inittabs_pts*, align 8
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_phy*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 0
  store %struct.bwn_phy* %6, %struct.bwn_phy** %4, align 8
  %7 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %8 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %12 [
    i32 3, label %10
    i32 4, label %11
  ]

10:                                               ; preds = %1
  store %struct.b2056_inittabs_pts* @b2056_inittab_phy_rev3, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

11:                                               ; preds = %1
  store %struct.b2056_inittabs_pts* @b2056_inittab_phy_rev4, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %14 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %21 [
    i32 5, label %16
    i32 6, label %17
    i32 7, label %18
    i32 9, label %18
    i32 8, label %19
    i32 11, label %20
  ]

16:                                               ; preds = %12
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev5, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

17:                                               ; preds = %12
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev6, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

18:                                               ; preds = %12, %12
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev7_9, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

19:                                               ; preds = %12
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev8, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

20:                                               ; preds = %12
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev11, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  store %struct.b2056_inittabs_pts* null, %struct.b2056_inittabs_pts** %2, align 8
  br label %23

23:                                               ; preds = %22, %20, %19, %18, %17, %16, %11, %10
  %24 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %2, align 8
  ret %struct.b2056_inittabs_pts* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
