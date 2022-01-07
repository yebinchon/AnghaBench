; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_rf_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_rf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RT2860_TX_SW_CFG1 = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt3090_rf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt3090_rf_setup(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sge i32 %7, 529
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %11 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %10, i32 103, i32 192)
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %13 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %12, i32 31)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -4
  %17 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %14, i32 31, i32 %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %20 = load i32, i32* @RT2860_TX_SW_CFG1, align 4
  %21 = call i32 @RAL_WRITE(%struct.rt2860_softc* %19, i32 %20, i32 0)
  %22 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 529
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %28 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %29 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 44, i32 15
  %35 = call i32 @RAL_WRITE(%struct.rt2860_softc* %27, i32 %28, i32 %34)
  br label %40

36:                                               ; preds = %18
  %37 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %38 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %39 = call i32 @RAL_WRITE(%struct.rt2860_softc* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %36, %26
  %41 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 21392
  br i1 %44, label %45, label %93

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %89, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  %50 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %51 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %49
  %60 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %61 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 255
  br i1 %68, label %69, label %70

69:                                               ; preds = %59, %49
  br label %89

70:                                               ; preds = %59
  %71 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %72 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %73 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %81 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %71, i32 %79, i32 %87)
  br label %89

89:                                               ; preds = %70, %69
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %46

92:                                               ; preds = %46
  br label %93

93:                                               ; preds = %92, %40
  ret void
}

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt3090_rf_write(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
