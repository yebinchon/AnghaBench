; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rssi_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rssi_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32)* @bwn_nphy_rssi_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_rssi_select(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 19
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @bwn_nphy_rssi_select_rev19(%struct.bwn_mac* %13, i32 %14, i32 %15)
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %19 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bwn_nphy_rev3_rssi_select(%struct.bwn_mac* %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @bwn_nphy_rev2_rssi_select(%struct.bwn_mac* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %12
  ret void
}

declare dso_local i32 @bwn_nphy_rssi_select_rev19(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_rev3_rssi_select(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_rev2_rssi_select(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
