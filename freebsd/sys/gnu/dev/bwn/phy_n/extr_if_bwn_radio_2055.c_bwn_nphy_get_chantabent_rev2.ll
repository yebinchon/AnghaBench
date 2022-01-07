; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_radio_2055.c_bwn_nphy_get_chantabent_rev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_radio_2055.c_bwn_nphy_get_chantabent_rev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_nphy_channeltab_entry_rev2 = type { i64 }
%struct.bwn_mac = type { i32 }

@bwn_nphy_channeltab_rev2 = common dso_local global %struct.bwn_nphy_channeltab_entry_rev2* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwn_nphy_channeltab_entry_rev2* @bwn_nphy_get_chantabent_rev2(%struct.bwn_mac* %0, i64 %1) #0 {
  %3 = alloca %struct.bwn_nphy_channeltab_entry_rev2*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bwn_nphy_channeltab_entry_rev2*, align 8
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** @bwn_nphy_channeltab_rev2, align 8
  %11 = call i32 @nitems(%struct.bwn_nphy_channeltab_entry_rev2* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** @bwn_nphy_channeltab_rev2, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bwn_nphy_channeltab_entry_rev2, %struct.bwn_nphy_channeltab_entry_rev2* %14, i64 %16
  store %struct.bwn_nphy_channeltab_entry_rev2* %17, %struct.bwn_nphy_channeltab_entry_rev2** %6, align 8
  %18 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** %6, align 8
  %19 = getelementptr inbounds %struct.bwn_nphy_channeltab_entry_rev2, %struct.bwn_nphy_channeltab_entry_rev2* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** %6, align 8
  store %struct.bwn_nphy_channeltab_entry_rev2* %24, %struct.bwn_nphy_channeltab_entry_rev2** %3, align 8
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %8

29:                                               ; preds = %8
  store %struct.bwn_nphy_channeltab_entry_rev2* null, %struct.bwn_nphy_channeltab_entry_rev2** %3, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** %3, align 8
  ret %struct.bwn_nphy_channeltab_entry_rev2* %31
}

declare dso_local i32 @nitems(%struct.bwn_nphy_channeltab_entry_rev2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
