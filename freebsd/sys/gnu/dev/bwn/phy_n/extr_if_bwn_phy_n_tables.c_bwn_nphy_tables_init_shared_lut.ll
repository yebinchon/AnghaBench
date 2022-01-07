; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_init_shared_lut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_init_shared_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_NTAB_C0_ESTPLT_R3 = common dso_local global i32 0, align 4
@bwn_ntab_estimatepowerlt0_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C1_ESTPLT_R3 = common dso_local global i32 0, align 4
@bwn_ntab_estimatepowerlt1_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C0_ADJPLT_R3 = common dso_local global i32 0, align 4
@bwn_ntab_adjustpower0_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C1_ADJPLT_R3 = common dso_local global i32 0, align 4
@bwn_ntab_adjustpower1_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C0_GAINCTL_R3 = common dso_local global i32 0, align 4
@bwn_ntab_gainctl0_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C1_GAINCTL_R3 = common dso_local global i32 0, align 4
@bwn_ntab_gainctl1_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C0_IQLT_R3 = common dso_local global i32 0, align 4
@bwn_ntab_iqlt0_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C1_IQLT_R3 = common dso_local global i32 0, align 4
@bwn_ntab_iqlt1_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C0_LOFEEDTH_R3 = common dso_local global i32 0, align 4
@bwn_ntab_loftlt0_r3 = common dso_local global i32 0, align 4
@BWN_NTAB_C1_LOFEEDTH_R3 = common dso_local global i32 0, align 4
@bwn_ntab_loftlt1_r3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tables_init_shared_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tables_init_shared_lut(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %3 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %4 = load i32, i32* @BWN_NTAB_C0_ESTPLT_R3, align 4
  %5 = load i32, i32* @bwn_ntab_estimatepowerlt0_r3, align 4
  %6 = call i32 @ntab_upload(%struct.bwn_mac* %3, i32 %4, i32 %5)
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = load i32, i32* @BWN_NTAB_C1_ESTPLT_R3, align 4
  %9 = load i32, i32* @bwn_ntab_estimatepowerlt1_r3, align 4
  %10 = call i32 @ntab_upload(%struct.bwn_mac* %7, i32 %8, i32 %9)
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %12 = load i32, i32* @BWN_NTAB_C0_ADJPLT_R3, align 4
  %13 = load i32, i32* @bwn_ntab_adjustpower0_r3, align 4
  %14 = call i32 @ntab_upload(%struct.bwn_mac* %11, i32 %12, i32 %13)
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %16 = load i32, i32* @BWN_NTAB_C1_ADJPLT_R3, align 4
  %17 = load i32, i32* @bwn_ntab_adjustpower1_r3, align 4
  %18 = call i32 @ntab_upload(%struct.bwn_mac* %15, i32 %16, i32 %17)
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = load i32, i32* @BWN_NTAB_C0_GAINCTL_R3, align 4
  %21 = load i32, i32* @bwn_ntab_gainctl0_r3, align 4
  %22 = call i32 @ntab_upload(%struct.bwn_mac* %19, i32 %20, i32 %21)
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = load i32, i32* @BWN_NTAB_C1_GAINCTL_R3, align 4
  %25 = load i32, i32* @bwn_ntab_gainctl1_r3, align 4
  %26 = call i32 @ntab_upload(%struct.bwn_mac* %23, i32 %24, i32 %25)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = load i32, i32* @BWN_NTAB_C0_IQLT_R3, align 4
  %29 = load i32, i32* @bwn_ntab_iqlt0_r3, align 4
  %30 = call i32 @ntab_upload(%struct.bwn_mac* %27, i32 %28, i32 %29)
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %32 = load i32, i32* @BWN_NTAB_C1_IQLT_R3, align 4
  %33 = load i32, i32* @bwn_ntab_iqlt1_r3, align 4
  %34 = call i32 @ntab_upload(%struct.bwn_mac* %31, i32 %32, i32 %33)
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %36 = load i32, i32* @BWN_NTAB_C0_LOFEEDTH_R3, align 4
  %37 = load i32, i32* @bwn_ntab_loftlt0_r3, align 4
  %38 = call i32 @ntab_upload(%struct.bwn_mac* %35, i32 %36, i32 %37)
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %40 = load i32, i32* @BWN_NTAB_C1_LOFEEDTH_R3, align 4
  %41 = load i32, i32* @bwn_ntab_loftlt1_r3, align 4
  %42 = call i32 @ntab_upload(%struct.bwn_mac* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @ntab_upload(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
