; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2062_tblinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2062_tblinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_b206x_rfinit_entry = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@bwn_phy_lp_b2062_tblinit.bwn_b2062_init_tab = internal constant [47 x %struct.bwn_b206x_rfinit_entry] [%struct.bwn_b206x_rfinit_entry { i32 176, i32 1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 169, i32 0, i32 202, i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 168, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 167, i32 21, i32 42, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 170, i32 219, i32 255, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 173, i32 221, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 172, i32 221, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 171, i32 119, i32 181, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 175, i32 0, i32 255, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 174, i32 51, i32 51, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 166, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 165, i32 130, i32 128, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 164, i32 4, i32 4, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 163, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 162, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 161, i32 2, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 160, i32 136, i32 27, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 159, i32 1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 154, i32 255, i32 255, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 158, i32 248, i32 216, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 157, i32 60, i32 36, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 155, i32 136, i32 128, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 156, i32 136, i32 128, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 153, i32 152, i32 152, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 152, i32 16, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 135, i32 67, i32 67, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 134, i32 71, i32 71, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 133, i32 12, i32 12, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 132, i32 17, i32 17, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 131, i32 17, i32 17, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 151, i32 14, i32 14, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 150, i32 8, i32 8, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 149, i32 51, i32 51, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 148, i32 10, i32 10, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 147, i32 6, i32 6, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 146, i32 62, i32 62, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 145, i32 19, i32 19, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 144, i32 98, i32 98, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 143, i32 7, i32 7, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 142, i32 22, i32 22, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 141, i32 92, i32 92, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 140, i32 149, i32 149, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 139, i32 160, i32 160, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 138, i32 4, i32 4, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 137, i32 204, i32 204, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 136, i32 7, i32 7, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_b206x_rfinit_entry { i32 130, i32 15, i32 15, i32 1, i32 0, i32 0, i32 0, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_b2062_tblinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_b2062_tblinit(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.bwn_b206x_rfinit_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %3, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 0
  store %struct.ieee80211com* %11, %struct.ieee80211com** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %58, %1
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @N(%struct.bwn_b206x_rfinit_entry* getelementptr inbounds ([47 x %struct.bwn_b206x_rfinit_entry], [47 x %struct.bwn_b206x_rfinit_entry]* @bwn_phy_lp_b2062_tblinit.bwn_b2062_init_tab, i64 0, i64 0))
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [47 x %struct.bwn_b206x_rfinit_entry], [47 x %struct.bwn_b206x_rfinit_entry]* @bwn_phy_lp_b2062_tblinit.bwn_b2062_init_tab, i64 0, i64 %18
  store %struct.bwn_b206x_rfinit_entry* %19, %struct.bwn_b206x_rfinit_entry** %5, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %16
  %26 = load %struct.bwn_b206x_rfinit_entry*, %struct.bwn_b206x_rfinit_entry** %5, align 8
  %27 = getelementptr inbounds %struct.bwn_b206x_rfinit_entry, %struct.bwn_b206x_rfinit_entry* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %33 = load %struct.bwn_b206x_rfinit_entry*, %struct.bwn_b206x_rfinit_entry** %5, align 8
  %34 = getelementptr inbounds %struct.bwn_b206x_rfinit_entry, %struct.bwn_b206x_rfinit_entry* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bwn_b206x_rfinit_entry*, %struct.bwn_b206x_rfinit_entry** %5, align 8
  %37 = getelementptr inbounds %struct.bwn_b206x_rfinit_entry, %struct.bwn_b206x_rfinit_entry* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %25
  br label %57

41:                                               ; preds = %16
  %42 = load %struct.bwn_b206x_rfinit_entry*, %struct.bwn_b206x_rfinit_entry** %5, align 8
  %43 = getelementptr inbounds %struct.bwn_b206x_rfinit_entry, %struct.bwn_b206x_rfinit_entry* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %49 = load %struct.bwn_b206x_rfinit_entry*, %struct.bwn_b206x_rfinit_entry** %5, align 8
  %50 = getelementptr inbounds %struct.bwn_b206x_rfinit_entry, %struct.bwn_b206x_rfinit_entry* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bwn_b206x_rfinit_entry*, %struct.bwn_b206x_rfinit_entry** %5, align 8
  %53 = getelementptr inbounds %struct.bwn_b206x_rfinit_entry, %struct.bwn_b206x_rfinit_entry* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %47, %41
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local i32 @N(%struct.bwn_b206x_rfinit_entry*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
