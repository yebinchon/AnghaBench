; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.iwn_softc* }
%struct.iwn_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IWN_NBANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @iwn_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.iwn_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load %struct.iwn_softc*, %struct.iwn_softc** %12, align 8
  store %struct.iwn_softc* %13, %struct.iwn_softc** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %31, %4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = load %struct.iwn_softc*, %struct.iwn_softc** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %30 = call i32 @iwn_read_eeprom_band(%struct.iwn_softc* %25, i32 %26, i32 %27, i32* %28, %struct.ieee80211_channel* %29)
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %14

34:                                               ; preds = %22
  store i32 5, i32* %10, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @IWN_NBANDS, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %57

47:                                               ; preds = %45
  %48 = load %struct.iwn_softc*, %struct.iwn_softc** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %53 = call i32 @iwn_read_eeprom_ht40(%struct.iwn_softc* %48, i32 %49, i32 %50, i32* %51, %struct.ieee80211_channel* %52)
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %35

57:                                               ; preds = %45
  ret void
}

declare dso_local i32 @iwn_read_eeprom_band(%struct.iwn_softc*, i32, i32, i32*, %struct.ieee80211_channel*) #1

declare dso_local i32 @iwn_read_eeprom_ht40(%struct.iwn_softc*, i32, i32, i32*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
