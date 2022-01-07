; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_get_rssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_get_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i64, i64, i32 }

@RT2661_NOISE_FLOOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2661_softc*, i32)* @rt2661_get_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_get_rssi(%struct.rt2661_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2661_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 5
  %11 = and i32 %10, 3
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 31
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 2, %18
  %20 = load i32, i32* @RT2661_NOISE_FLOOR, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %23 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %17
  %28 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 64
  store i32 %39, i32* %8, align 4
  br label %54

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 74
  store i32 %45, i32* %8, align 4
  br label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 90
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %37
  br label %83

55:                                               ; preds = %17
  %56 = load %struct.rt2661_softc*, %struct.rt2661_softc** %4, align 8
  %57 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 64
  store i32 %67, i32* %8, align 4
  br label %82

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 86
  store i32 %73, i32* %8, align 4
  br label %81

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 100
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %71
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
