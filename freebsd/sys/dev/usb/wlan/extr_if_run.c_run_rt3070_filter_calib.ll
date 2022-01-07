; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_filter_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_filter_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*, i32, i32, i32*)* @run_rt3070_filter_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rt3070_filter_calib(%struct.run_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.run_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %17 = call i32 @run_rt3070_rf_read(%struct.run_softc* %16, i32 24, i32* %11)
  %18 = load i32, i32* %11, align 4
  %19 = and i32 %18, 192
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @run_rt3070_rf_write(%struct.run_softc* %22, i32 24, i32 %23)
  %25 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %26 = call i32 @run_rt3070_rf_read(%struct.run_softc* %25, i32 22, i32* %10)
  %27 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, 1
  %30 = call i32 @run_rt3070_rf_write(%struct.run_softc* %27, i32 22, i32 %29)
  %31 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %32 = call i32 @run_bbp_write(%struct.run_softc* %31, i32 24, i32 0)
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %47, %4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 100
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %38 = call i32 @run_bbp_write(%struct.run_softc* %37, i32 25, i32 144)
  %39 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %40 = call i32 @run_delay(%struct.run_softc* %39, i32 10)
  %41 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %42 = call i32 @run_bbp_read(%struct.run_softc* %41, i32 55, i32* %12)
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %33

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 100
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %54, i32* %5, align 4
  br label %109

55:                                               ; preds = %50
  %56 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %57 = call i32 @run_bbp_write(%struct.run_softc* %56, i32 24, i32 6)
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %81, %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 100
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %63 = call i32 @run_bbp_write(%struct.run_softc* %62, i32 25, i32 144)
  %64 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %65 = call i32 @run_delay(%struct.run_softc* %64, i32 10)
  %66 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %67 = call i32 @run_bbp_read(%struct.run_softc* %66, i32 55, i32* %13)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %84

75:                                               ; preds = %61
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @run_rt3070_rf_write(%struct.run_softc* %78, i32 24, i32 %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %58

84:                                               ; preds = %74, %58
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 100
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @run_rt3070_rf_write(%struct.run_softc* %97, i32 24, i32 %98)
  br label %100

100:                                              ; preds = %94, %84
  %101 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %102 = call i32 @run_bbp_write(%struct.run_softc* %101, i32 24, i32 0)
  %103 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %104 = call i32 @run_rt3070_rf_read(%struct.run_softc* %103, i32 22, i32* %10)
  %105 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, -2
  %108 = call i32 @run_rt3070_rf_write(%struct.run_softc* %105, i32 22, i32 %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %100, %53
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
