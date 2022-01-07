; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_set_txpwr_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_set_txpwr_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i32, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.bwn_txpwr_loctl }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_txpwr_loctl = type { i32, i32 }
%struct.bwn_bbatt = type { i32 }
%struct.bwn_rfatt = type { i32 }

@BWN_TXCTL_TXMIX = common dso_local global i32 0, align 4
@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHARED_RADIO_ATT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_bbatt*, %struct.bwn_rfatt*, i32)* @bwn_phy_g_set_txpwr_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_g_set_txpwr_sub(%struct.bwn_mac* %0, %struct.bwn_bbatt* %1, %struct.bwn_rfatt* %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca %struct.bwn_bbatt*, align 8
  %7 = alloca %struct.bwn_rfatt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwn_phy*, align 8
  %10 = alloca %struct.bwn_phy_g*, align 8
  %11 = alloca %struct.bwn_txpwr_loctl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store %struct.bwn_bbatt* %1, %struct.bwn_bbatt** %6, align 8
  store %struct.bwn_rfatt* %2, %struct.bwn_rfatt** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %17 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %16, i32 0, i32 0
  store %struct.bwn_phy* %17, %struct.bwn_phy** %9, align 8
  %18 = load %struct.bwn_phy*, %struct.bwn_phy** %9, align 8
  %19 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %18, i32 0, i32 2
  store %struct.bwn_phy_g* %19, %struct.bwn_phy_g** %10, align 8
  %20 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %10, align 8
  %21 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %20, i32 0, i32 3
  store %struct.bwn_txpwr_loctl* %21, %struct.bwn_txpwr_loctl** %11, align 8
  %22 = load %struct.bwn_bbatt*, %struct.bwn_bbatt** %6, align 8
  %23 = getelementptr inbounds %struct.bwn_bbatt, %struct.bwn_bbatt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.bwn_rfatt*, %struct.bwn_rfatt** %7, align 8
  %26 = getelementptr inbounds %struct.bwn_rfatt, %struct.bwn_rfatt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %11, align 8
  %29 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %11, align 8
  %32 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %10, align 8
  %40 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %10, align 8
  %42 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %41, i32 0, i32 2
  %43 = load %struct.bwn_rfatt*, %struct.bwn_rfatt** %7, align 8
  %44 = call i32 @memmove(%struct.TYPE_2__* %42, %struct.bwn_rfatt* %43, i32 4)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BWN_TXCTL_TXMIX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %10, align 8
  %52 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %10, align 8
  %55 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %54, i32 0, i32 1
  %56 = load %struct.bwn_bbatt*, %struct.bwn_bbatt** %6, align 8
  %57 = bitcast %struct.bwn_bbatt* %56 to %struct.bwn_rfatt*
  %58 = call i32 @memmove(%struct.TYPE_2__* %55, %struct.bwn_rfatt* %57, i32 4)
  %59 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac* %59, i32 %60)
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %63 = load i32, i32* @BWN_SHARED, align 4
  %64 = load i32, i32* @BWN_SHARED_RADIO_ATT, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.bwn_phy*, %struct.bwn_phy** %9, align 8
  %68 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 8272
  br i1 %70, label %71, label %84

71:                                               ; preds = %37
  %72 = load %struct.bwn_phy*, %struct.bwn_phy** %9, align 8
  %73 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %78 = load i32, i32* %13, align 4
  %79 = and i32 %78, 15
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 112
  %82 = or i32 %79, %81
  %83 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %77, i32 67, i32 %82)
  br label %93

84:                                               ; preds = %71, %37
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %86, 15
  %88 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %85, i32 67, i32 65520, i32 %87)
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 112
  %92 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %89, i32 82, i32 -113, i32 %91)
  br label %93

93:                                               ; preds = %84, %76
  %94 = load %struct.bwn_phy*, %struct.bwn_phy** %9, align 8
  %95 = call i64 @BWN_HAS_TXMAG(%struct.bwn_phy* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %98, i32 82, i32 %101)
  br label %108

103:                                              ; preds = %93
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %105 = load i32, i32* %14, align 4
  %106 = and i32 %105, 15
  %107 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %104, i32 82, i32 65520, i32 %106)
  br label %108

108:                                              ; preds = %103, %97
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %110 = call i32 @bwn_lo_g_adjust(%struct.bwn_mac* %109)
  ret void
}

declare dso_local i32 @memmove(%struct.TYPE_2__*, %struct.bwn_rfatt*, i32) #1

declare dso_local i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i64 @BWN_HAS_TXMAG(%struct.bwn_phy*) #1

declare dso_local i32 @bwn_lo_g_adjust(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
