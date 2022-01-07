; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_bphy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_bphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_bphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_bphy_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  store i32 7711, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add i32 136, %10
  %12 = call i32 @BWN_PHY_N_BMODE(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %9, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 514
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  store i32 15935, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add i32 152, %26
  %28 = call i32 @BWN_PHY_N_BMODE(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %25, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 514
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %38 = call i32 @BWN_PHY_N_BMODE(i32 56)
  %39 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %37, i32 %38, i32 1640)
  ret void
}

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_N_BMODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
