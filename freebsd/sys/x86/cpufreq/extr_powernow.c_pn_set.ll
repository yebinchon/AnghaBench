; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.pn_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PENDING_STUCK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @pn_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.pn_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %11 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %12 = icmp eq %struct.cf_setting* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %86

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.pn_softc* @device_get_softc(i32 %16)
  store %struct.pn_softc* %17, %struct.pn_softc** %6, align 8
  %18 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %19 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PENDING_STUCK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %3, align 4
  br label %86

26:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %30 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %35 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 1000
  %43 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %44 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @CPUFREQ_CMP(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %53

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %27

53:                                               ; preds = %48, %27
  %54 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %55 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %63 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @ENODEV, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %72 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %84 [
    i32 129, label %74
    i32 128, label %79
  ]

74:                                               ; preds = %53
  %75 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @pn7_setfidvid(%struct.pn_softc* %75, i32 %76, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %84

79:                                               ; preds = %53
  %80 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @pn8_setfidvid(%struct.pn_softc* %80, i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %53, %79, %74
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %24, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.pn_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPUFREQ_CMP(i32, i32) #1

declare dso_local i32 @pn7_setfidvid(%struct.pn_softc*, i32, i32) #1

declare dso_local i32 @pn8_setfidvid(%struct.pn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
