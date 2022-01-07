; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_txctl_regtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_txctl_regtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i64, i32, i32 }

@BWN_PHYTYPE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32*, i32*)* @bwn_lo_txctl_regtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_lo_txctl_regtable(%struct.bwn_mac* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bwn_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  store %struct.bwn_phy* %12, %struct.bwn_phy** %7, align 8
  %13 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %14 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  store i32 48, i32* %9, align 4
  %19 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %20 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 67, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %25

24:                                               ; preds = %18
  store i32 82, i32* %8, align 4
  store i32 5, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %28 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %33 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 67, i32* %8, align 4
  store i32 16, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %38

37:                                               ; preds = %31, %26
  store i32 82, i32* %8, align 4
  store i32 48, i32* %9, align 4
  store i32 5, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
