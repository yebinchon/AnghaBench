; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.ichss_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @ichss_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichss_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ichss_softc*, align 8
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
  %28 = call %struct.ichss_softc* @device_get_softc(i32 %27)
  store %struct.ichss_softc* %28, %struct.ichss_softc** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ichss_get(i32 %29, %struct.cf_setting* %9)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %67, %26
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load %struct.ichss_softc*, %struct.ichss_softc** %8, align 8
  %36 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CPUFREQ_VAL_UNKNOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.ichss_softc*, %struct.ichss_softc** %8, align 8
  %52 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = call i32 @ichss_set(i32 %50, %struct.TYPE_3__* %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ichss_softc*, %struct.ichss_softc** %8, align 8
  %60 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = call i32 @ichss_set(i32 %58, %struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %45, %34
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %31

70:                                               ; preds = %31
  %71 = load %struct.ichss_softc*, %struct.ichss_softc** %8, align 8
  %72 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %71, i32 0, i32 0
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

declare dso_local %struct.ichss_softc* @device_get_softc(i32) #1

declare dso_local i32 @ichss_get(i32, %struct.cf_setting*) #1

declare dso_local i32 @ichss_set(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_3__*, %struct.cf_setting*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
