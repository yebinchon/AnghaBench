; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_get_powervector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_get_powervector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { %struct.bwn_phy_g }
%struct.bwn_phy_g = type { %struct.bwn_txpwr_loctl }
%struct.bwn_txpwr_loctl = type { i32, i32 }

@BWN_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_lo_get_powervector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_lo_get_powervector(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_g*, align 8
  %5 = alloca %struct.bwn_txpwr_loctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  store %struct.bwn_phy* %10, %struct.bwn_phy** %3, align 8
  %11 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %11, i32 0, i32 0
  store %struct.bwn_phy_g* %12, %struct.bwn_phy_g** %4, align 8
  %13 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %14 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %13, i32 0, i32 0
  store %struct.bwn_txpwr_loctl* %14, %struct.bwn_txpwr_loctl** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = load i32, i32* @BWN_SHARED, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 784, %21
  %23 = call i32 @bwn_shm_read_2(%struct.bwn_mac* %19, i32 %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %25, 8
  %27 = shl i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %31 = load i32, i32* @BWN_SHARED, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 784, %32
  %34 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %30, i32 %31, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %6, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %44 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %5, align 8
  %47 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BWN_GETTIME(i32 %48)
  ret void
}

declare dso_local i32 @bwn_shm_read_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_GETTIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
