; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_txctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_txctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i32 }

@BWN_TXCTL_PA2DB = common dso_local global i32 0, align 4
@BWN_TXCTL_TXMIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_phy_g_txctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_g_txctl(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_phy*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 0
  store %struct.bwn_phy* %6, %struct.bwn_phy** %4, align 8
  %7 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %8 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 8272
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %14 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @BWN_TXCTL_PA2DB, align 4
  %19 = load i32, i32* @BWN_TXCTL_TXMIX, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %12
  %22 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %23 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @BWN_TXCTL_PA2DB, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %30 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @BWN_TXCTL_TXMIX, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %26, %17, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
