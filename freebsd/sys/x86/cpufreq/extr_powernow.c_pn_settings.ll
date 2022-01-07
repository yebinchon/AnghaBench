; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i32, i32, i32 }
%struct.pn_softc = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @pn_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pn_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %11 = icmp eq %struct.cf_setting* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %100

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.pn_softc* @device_get_softc(i32 %18)
  store %struct.pn_softc* %19, %struct.pn_softc** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pn_softc*, %struct.pn_softc** %8, align 8
  %23 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @E2BIG, align 4
  store i32 %27, i32* %4, align 4
  br label %100

28:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %92, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.pn_softc*, %struct.pn_softc** %8, align 8
  %32 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %29
  %36 = load %struct.pn_softc*, %struct.pn_softc** %8, align 8
  %37 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %43, 1000
  %45 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %45, i64 %47
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load %struct.pn_softc*, %struct.pn_softc** %8, align 8
  %51 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %58, i64 %60
  %62 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %61, i32 0, i32 4
  store i32 %57, i32* %62, align 4
  %63 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %63, i64 %65
  %67 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %66, i32 0, i32 1
  store i32 200, i32* %67, align 4
  %68 = load %struct.pn_softc*, %struct.pn_softc** %8, align 8
  %69 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.pn_softc*, %struct.pn_softc** %8, align 8
  %72 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %70, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %81, i64 %83
  %85 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %84, i32 0, i32 3
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %87, i64 %89
  %91 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %90, i32 0, i32 2
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %35
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %29

95:                                               ; preds = %29
  %96 = load %struct.pn_softc*, %struct.pn_softc** %8, align 8
  %97 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %26, %15
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.pn_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
