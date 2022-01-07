; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_op_maskset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_op_maskset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_PHYCTL = common dso_local global i32 0, align 4
@BWN_PHYDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_nphy_op_maskset(%struct.bwn_mac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @check_phyreg(%struct.bwn_mac* %9, i32 %10)
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %13 = load i32, i32* @BWN_PHYCTL, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @BWN_WRITE_2_F(%struct.bwn_mac* %12, i32 %13, i32 %14)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %17 = load i32, i32* @BWN_PHYDATA, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @BWN_WRITE_SETMASK2(%struct.bwn_mac* %16, i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @check_phyreg(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_2_F(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_WRITE_SETMASK2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
