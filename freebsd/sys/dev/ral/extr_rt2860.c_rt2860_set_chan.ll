; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfprog = type { i64, i32, i32, i32, i32 }
%struct.rt2860_softc = type { i32, i32, i32*, i32*, i32 }

@rt2860_rf2850 = common dso_local global %struct.rfprog* null, align 8
@RT2860_RF1 = common dso_local global i32 0, align 4
@RT2860_RF2 = common dso_local global i32 0, align 4
@RT2860_RF3 = common dso_local global i32 0, align 4
@RT2860_RF4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, i64)* @rt2860_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_set_chan(%struct.rt2860_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rfprog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.rfprog*, %struct.rfprog** @rt2860_rf2850, align 8
  store %struct.rfprog* %12, %struct.rfprog** %5, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %22, %2
  %14 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %15 = load i64, i64* %11, align 8
  %16 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %14, i64 %15
  %17 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %11, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %26, i64 %27
  %29 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, 4096
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, 32784
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %38
  %47 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %48 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, 16
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %57 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %63 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i64, i64* %4, align 8
  %69 = icmp ugt i64 %68, 14
  br i1 %69, label %70, label %93

70:                                               ; preds = %55
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %74, 1
  %76 = or i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 7, %78
  %80 = shl i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 %85, 1
  %87 = or i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %92

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 7, %89
  %91 = shl i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %55
  %94 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %94, i64 %95
  %97 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %99, 7
  %101 = or i32 %98, %100
  store i32 %101, i32* %7, align 4
  %102 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %102, i64 %103
  %105 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %108 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 13
  %111 = or i32 %106, %110
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 %112, 4
  %114 = or i32 %111, %113
  store i32 %114, i32* %8, align 4
  %115 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %116 = load i32, i32* @RT2860_RF1, align 4
  %117 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %117, i64 %118
  %120 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %115, i32 %116, i32 %121)
  %123 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %124 = load i32, i32* @RT2860_RF2, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %123, i32 %124, i32 %125)
  %127 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %128 = load i32, i32* @RT2860_RF3, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %127, i32 %128, i32 %129)
  %131 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %132 = load i32, i32* @RT2860_RF4, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %131, i32 %132, i32 %133)
  %135 = call i32 @DELAY(i32 200)
  %136 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %137 = load i32, i32* @RT2860_RF1, align 4
  %138 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %139 = load i64, i64* %11, align 8
  %140 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %138, i64 %139
  %141 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %136, i32 %137, i32 %142)
  %144 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %145 = load i32, i32* @RT2860_RF2, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %144, i32 %145, i32 %146)
  %148 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %149 = load i32, i32* @RT2860_RF3, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, 1
  %152 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %148, i32 %149, i32 %151)
  %153 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %154 = load i32, i32* @RT2860_RF4, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %153, i32 %154, i32 %155)
  %157 = call i32 @DELAY(i32 200)
  %158 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %159 = load i32, i32* @RT2860_RF1, align 4
  %160 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %160, i64 %161
  %163 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %158, i32 %159, i32 %164)
  %166 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %167 = load i32, i32* @RT2860_RF2, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %166, i32 %167, i32 %168)
  %170 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %171 = load i32, i32* @RT2860_RF3, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %170, i32 %171, i32 %172)
  %174 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %175 = load i32, i32* @RT2860_RF4, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @rt2860_rf_write(%struct.rt2860_softc* %174, i32 %175, i32 %176)
  ret void
}

declare dso_local i32 @rt2860_rf_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
