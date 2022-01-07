; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_rf_bank4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_rf_bank4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_BANK4_BMODE_LF_SYNTH_FREQ = common dso_local global i32 0, align 4
@AR_BANK4_CHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otus_set_rf_bank4(%struct.otus_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.otus_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %10 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %11 = call i32 @OTUS_LOCK_ASSERT(%struct.otus_softc* %10)
  store i32 0, i32* %6, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 4800
  %20 = sdiv i32 %19, 5
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = call i32 @AR_BANK4_AMODE_REFSEL(i32 2)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %15
  %29 = call i32 @AR_BANK4_AMODE_REFSEL(i32 1)
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %61

33:                                               ; preds = %2
  %34 = call i32 @AR_BANK4_AMODE_REFSEL(i32 2)
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2484
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i32, i32* @AR_BANK4_BMODE_LF_SYNTH_FREQ, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 2274
  %49 = sdiv i32 %48, 5
  %50 = add nsw i32 10, %49
  store i32 %50, i32* %5, align 4
  br label %58

51:                                               ; preds = %33
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 2272
  %56 = sdiv i32 %55, 5
  %57 = add nsw i32 16, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %41
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 2
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %32
  %62 = call i32 @AR_BANK4_ADDR(i32 1)
  %63 = load i32, i32* @AR_BANK4_CHUP, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @otus_reverse_bits(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 31
  %71 = shl i32 %70, 5
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 31
  %74 = or i32 %71, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %76 = call i32 @AR_PHY(i32 44)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @otus_write(%struct.otus_softc* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 5
  %81 = shl i32 %80, 5
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 5
  %84 = or i32 %81, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %86 = call i32 @AR_PHY(i32 58)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @otus_write(%struct.otus_softc* %85, i32 %86, i32 %87)
  %89 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %90 = call i32 @otus_write_barrier(%struct.otus_softc* %89)
  store i32 %90, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %61
  %93 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %94 = call i32 @otus_delay_ms(%struct.otus_softc* %93, i32 10)
  br label %95

95:                                               ; preds = %92, %61
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @OTUS_LOCK_ASSERT(%struct.otus_softc*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @AR_BANK4_AMODE_REFSEL(i32) #1

declare dso_local i32 @AR_BANK4_ADDR(i32) #1

declare dso_local i32 @otus_reverse_bits(i32) #1

declare dso_local i32 @otus_write(%struct.otus_softc*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

declare dso_local i32 @otus_delay_ms(%struct.otus_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
