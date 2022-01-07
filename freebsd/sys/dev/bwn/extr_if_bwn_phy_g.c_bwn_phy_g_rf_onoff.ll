; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_rf_onoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_rf_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i64, i64, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, i32, i32 }

@BWN_PHY_G_FLAG_RADIOCTX_VALID = common dso_local global i32 0, align 4
@BWN_PHY_RFOVER = common dso_local global i32 0, align 4
@BWN_PHY_RFOVERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_phy_g_rf_onoff(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_g*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  store %struct.bwn_phy* %11, %struct.bwn_phy** %5, align 8
  %12 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %13 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %12, i32 0, i32 3
  store %struct.bwn_phy_g* %13, %struct.bwn_phy_g** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %2
  %17 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %18 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %97

22:                                               ; preds = %16
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %24 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %23, i32 21, i32 32768)
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %25, i32 21, i32 52224)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %29 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 192, i32 0
  %34 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %27, i32 21, i32 %33)
  %35 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %36 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BWN_PHY_G_FLAG_RADIOCTX_VALID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %22
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %43 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %44 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %45 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %42, i32 %43, i32 %46)
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %49 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %50 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %51 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %48, i32 %49, i32 %52)
  %54 = load i32, i32* @BWN_PHY_G_FLAG_RADIOCTX_VALID, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %57 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %41, %22
  %61 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %62 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %65 = call i32 @bwn_phy_g_switch_chan(%struct.bwn_mac* %64, i32 6, i32 1)
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @bwn_phy_g_switch_chan(%struct.bwn_mac* %66, i32 %67, i32 0)
  br label %97

69:                                               ; preds = %2
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %71 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %72 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %74 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %75 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %78 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %81 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @BWN_PHY_G_FLAG_RADIOCTX_VALID, align 4
  %83 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %84 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %88 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, 140
  %91 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %87, i32 %88, i32 %90)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %93 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 65395
  %96 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %69, %60, %21
  ret void
}

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_g_switch_chan(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
