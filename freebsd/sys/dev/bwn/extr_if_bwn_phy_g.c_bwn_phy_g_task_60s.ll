; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_task_60s.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_task_60s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_phy = type { i32, i32, i32 }

@BHND_BFL_ADCDIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_phy_g_task_60s(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 1
  store %struct.bwn_phy* %7, %struct.bwn_phy** %3, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %4, align 8
  %11 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BHND_BFL_ADCDIV, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %23)
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %26 = call i32 @bwn_nrssi_slope_11g(%struct.bwn_mac* %25)
  %27 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %28 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 8272
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %33 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 8
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 13
  %42 = call i32 @bwn_switch_channel(%struct.bwn_mac* %37, i32 %41)
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @bwn_switch_channel(%struct.bwn_mac* %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %31, %22
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = call i32 @bwn_mac_enable(%struct.bwn_mac* %47)
  br label %49

49:                                               ; preds = %46, %21
  ret void
}

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nrssi_slope_11g(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_switch_channel(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_mac_enable(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
