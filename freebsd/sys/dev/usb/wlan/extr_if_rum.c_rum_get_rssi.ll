; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_get_rssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_get_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32, i64, i64, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@RT2573_NOISE_FLOOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, i32)* @rum_get_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_get_rssi(%struct.rum_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %11 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %10, i32 0, i32 3
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 5
  %14 = and i32 %13, 3
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 31
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 2, %21
  %23 = load i32, i32* @RT2573_NOISE_FLOOR, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %20
  %31 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %32 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 64
  store i32 %42, i32* %9, align 4
  br label %57

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 74
  store i32 %48, i32* %9, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 90
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56, %40
  br label %97

58:                                               ; preds = %20
  %59 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %60 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %67 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %70, %58
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 64
  store i32 %81, i32* %9, align 4
  br label %96

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 86
  store i32 %87, i32* %9, align 4
  br label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, 100
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %85
  br label %96

96:                                               ; preds = %95, %79
  br label %97

97:                                               ; preds = %96, %57
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
