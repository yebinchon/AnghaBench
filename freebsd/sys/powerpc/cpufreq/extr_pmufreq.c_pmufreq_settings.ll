; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmufreq.c_pmufreq_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmufreq.c_pmufreq_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i8*, i8*, i32 }
%struct.pmufreq_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cf_setting*, i32*)* @pmufreq_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmufreq_settings(i8* %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pmufreq_softc*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.pmufreq_softc* @device_get_softc(i8* %9)
  store %struct.pmufreq_softc* %10, %struct.pmufreq_softc** %8, align 8
  %11 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %12 = icmp eq %struct.cf_setting* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %13
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @E2BIG, align 4
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %18
  %25 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %26 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %27 = call i32 @memset(%struct.cf_setting* %25, i32 %26, i32 48)
  %28 = load %struct.pmufreq_softc*, %struct.pmufreq_softc** %8, align 8
  %29 = getelementptr inbounds %struct.pmufreq_softc, %struct.pmufreq_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %32 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %31, i64 0
  %33 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %36 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %35, i64 0
  %37 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.pmufreq_softc*, %struct.pmufreq_softc** %8, align 8
  %39 = getelementptr inbounds %struct.pmufreq_softc, %struct.pmufreq_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %42 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %41, i64 1
  %43 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %46 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %45, i64 1
  %47 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @INT_MAX, align 8
  %49 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %50 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %49, i64 0
  %51 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @INT_MAX, align 8
  %53 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %54 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %53, i64 1
  %55 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32*, i32** %7, align 8
  store i32 2, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %24, %22, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.pmufreq_softc* @device_get_softc(i8*) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
