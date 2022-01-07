; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_filter_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_filter_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT3070_BB_LOOPBACK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2860_softc*, i32, i32, i32*)* @rt3090_filter_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3090_filter_calib(%struct.rt2860_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2860_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %17 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %16, i32 24)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = and i32 %18, 192
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %22, i32 24, i32 %23)
  %25 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %26 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %25, i32 22)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RT3070_BB_LOOPBACK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %27, i32 22, i32 %30)
  %32 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %33 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %32, i32 24, i32 0)
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %47, %4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 100
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %39 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %38, i32 25, i32 144)
  %40 = call i32 @DELAY(i32 1000)
  %41 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %42 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %41, i32 55)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %50

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %34

50:                                               ; preds = %45, %34
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 100
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %54, i32* %5, align 4
  br label %110

55:                                               ; preds = %50
  %56 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %57 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %56, i32 24, i32 6)
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %80, %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 100
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %63 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %62, i32 25, i32 144)
  %64 = call i32 @DELAY(i32 1000)
  %65 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %66 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %65, i32 55)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %83

74:                                               ; preds = %61
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %77, i32 24, i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %58

83:                                               ; preds = %73, %58
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 100
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %96, i32 24, i32 %97)
  br label %99

99:                                               ; preds = %93, %83
  %100 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %101 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %100, i32 24, i32 0)
  %102 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %103 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %102, i32 22)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @RT3070_BB_LOOPBACK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %104, i32 22, i32 %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %99, %53
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @rt3090_rf_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt3090_rf_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
