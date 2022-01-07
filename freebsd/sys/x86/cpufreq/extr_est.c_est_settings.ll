; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i32, i32, i32 }
%struct.est_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EST_MAX_SETTINGS = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EST_TRANS_LAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @est_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @est_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.est_softc*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.est_softc* @device_get_softc(i32 %11)
  store %struct.est_softc* %12, %struct.est_softc** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EST_MAX_SETTINGS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @E2BIG, align 4
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %20 = load %struct.est_softc*, %struct.est_softc** %8, align 8
  %21 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %9, align 8
  br label %23

23:                                               ; preds = %71, %19
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = load %struct.est_softc*, %struct.est_softc** %8, align 8
  %26 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.est_softc*, %struct.est_softc** %8, align 8
  %29 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %31
  %33 = icmp ult %struct.TYPE_2__* %24, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %23
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %38, i64 %40
  %42 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %41, i32 0, i32 4
  store i32 %37, i32* %42, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %46, i64 %48
  %50 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %49, i32 0, i32 3
  store i32 %45, i32* %50, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %54, i64 %56
  %58 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %57, i32 0, i32 2
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* @EST_TRANS_LAT, align 4
  %60 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %60, i64 %62
  %64 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %66, i64 %68
  %70 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %34
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 1
  store %struct.TYPE_2__* %73, %struct.TYPE_2__** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %23

76:                                               ; preds = %23
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.est_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
