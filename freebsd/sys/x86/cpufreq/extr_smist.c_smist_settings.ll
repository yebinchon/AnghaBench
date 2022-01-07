; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.smist_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @smist_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smist_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.smist_softc*, align 8
  %9 = alloca %struct.cf_setting, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %13 = icmp eq %struct.cf_setting* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %77

19:                                               ; preds = %14
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  store i32 2, i32* %24, align 4
  %25 = load i32, i32* @E2BIG, align 4
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.smist_softc* @device_get_softc(i32 %27)
  store %struct.smist_softc* %28, %struct.smist_softc** %8, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %67, %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load %struct.smist_softc*, %struct.smist_softc** %8, align 8
  %34 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CPUFREQ_VAL_UNKNOWN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.smist_softc*, %struct.smist_softc** %8, align 8
  %50 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = call i32 @smist_set(i32 %48, %struct.TYPE_3__* %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @smist_get(i32 %56, %struct.cf_setting* %9)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.smist_softc*, %struct.smist_softc** %8, align 8
  %60 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = call i32 @smist_set(i32 %58, %struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %43, %32
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %29

70:                                               ; preds = %29
  %71 = load %struct.smist_softc*, %struct.smist_softc** %8, align 8
  %72 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %75 = call i32 @bcopy(%struct.TYPE_3__* %73, %struct.cf_setting* %74, i32 8)
  %76 = load i32*, i32** %7, align 8
  store i32 2, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %70, %23, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.smist_softc* @device_get_softc(i32) #1

declare dso_local i32 @smist_set(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @smist_get(i32, %struct.cf_setting*) #1

declare dso_local i32 @bcopy(%struct.TYPE_3__*, %struct.cf_setting*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
