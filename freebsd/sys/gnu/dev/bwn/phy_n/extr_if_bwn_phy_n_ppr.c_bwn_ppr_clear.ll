; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_ppr.c_bwn_ppr_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_ppr.c_bwn_ppr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }
%struct.bwn_ppr = type { i32 }

@BWN_PPR_RATES_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_ppr_clear(%struct.bwn_mac* %0, %struct.bwn_ppr* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_ppr*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store %struct.bwn_ppr* %1, %struct.bwn_ppr** %4, align 8
  %5 = load %struct.bwn_ppr*, %struct.bwn_ppr** %4, align 8
  %6 = call i32 @memset(%struct.bwn_ppr* %5, i32 0, i32 4)
  %7 = load i32, i32* @BWN_PPR_RATES_NUM, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = icmp eq i64 4, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @CTASSERT(i32 %11)
  ret void
}

declare dso_local i32 @memset(%struct.bwn_ppr*, i32, i32) #1

declare dso_local i32 @CTASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
