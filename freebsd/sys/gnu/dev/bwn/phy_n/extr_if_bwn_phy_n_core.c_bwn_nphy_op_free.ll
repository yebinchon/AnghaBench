; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_op_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_op_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_nphy_op_free(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 0
  store %struct.bwn_phy* %6, %struct.bwn_phy** %3, align 8
  %7 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %7, i32 0, i32 0
  %9 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %8, align 8
  store %struct.bwn_phy_n* %9, %struct.bwn_phy_n** %4, align 8
  %10 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = call i32 @free(%struct.bwn_phy_n* %10, i32 %11)
  %13 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %13, i32 0, i32 0
  store %struct.bwn_phy_n* null, %struct.bwn_phy_n** %14, align 8
  ret void
}

declare dso_local i32 @free(%struct.bwn_phy_n*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
