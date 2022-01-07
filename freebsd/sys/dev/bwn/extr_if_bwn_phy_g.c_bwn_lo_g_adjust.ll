; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_g_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_g_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, i32 }
%struct.bwn_lo_calib = type { i32 }
%struct.bwn_rfatt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_lo_g_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_lo_g_adjust(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_g*, align 8
  %4 = alloca %struct.bwn_lo_calib*, align 8
  %5 = alloca %struct.bwn_rfatt, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.bwn_phy_g* %8, %struct.bwn_phy_g** %3, align 8
  %9 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %3, align 8
  %10 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %9, i32 0, i32 1
  %11 = call i32 @memcpy(%struct.bwn_rfatt* %5, i32* %10, i32 4)
  %12 = call i32 @bwn_lo_fixup_rfatt(%struct.bwn_rfatt* %5)
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %3, align 8
  %15 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %14, i32 0, i32 0
  %16 = call %struct.bwn_lo_calib* @bwn_lo_get_calib(%struct.bwn_mac* %13, i32* %15, %struct.bwn_rfatt* %5)
  store %struct.bwn_lo_calib* %16, %struct.bwn_lo_calib** %4, align 8
  %17 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %4, align 8
  %18 = icmp ne %struct.bwn_lo_calib* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = load %struct.bwn_lo_calib*, %struct.bwn_lo_calib** %4, align 8
  %23 = getelementptr inbounds %struct.bwn_lo_calib, %struct.bwn_lo_calib* %22, i32 0, i32 0
  %24 = call i32 @bwn_lo_write(%struct.bwn_mac* %21, i32* %23)
  br label %25

25:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @memcpy(%struct.bwn_rfatt*, i32*, i32) #1

declare dso_local i32 @bwn_lo_fixup_rfatt(%struct.bwn_rfatt*) #1

declare dso_local %struct.bwn_lo_calib* @bwn_lo_get_calib(%struct.bwn_mac*, i32*, %struct.bwn_rfatt*) #1

declare dso_local i32 @bwn_lo_write(%struct.bwn_mac*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
