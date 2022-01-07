; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i8* }
%struct.pcr_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cf_setting*, i32*)* @pcr_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcr_settings(i8* %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pcr_softc*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.pcr_softc* @device_get_softc(i8* %9)
  store %struct.pcr_softc* %10, %struct.pcr_softc** %8, align 8
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
  br label %68

18:                                               ; preds = %13
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pcr_softc*, %struct.pcr_softc** %8, align 8
  %22 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @E2BIG, align 4
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %18
  %28 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %29 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %30 = load %struct.pcr_softc*, %struct.pcr_softc** %8, align 8
  %31 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 16, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.cf_setting* %28, i32 %29, i32 %35)
  %37 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %38 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %37, i64 0
  %39 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %38, i32 0, i32 0
  store i32 10000, i32* %39, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %42 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %41, i64 0
  %43 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %45 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %44, i64 1
  %46 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %45, i32 0, i32 0
  store i32 5000, i32* %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %48, i64 1
  %50 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.pcr_softc*, %struct.pcr_softc** %8, align 8
  %52 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %63

55:                                               ; preds = %27
  %56 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %57 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %56, i64 2
  %58 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %57, i32 0, i32 0
  store i32 2500, i32* %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %61 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %60, i64 2
  %62 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %27
  %64 = load %struct.pcr_softc*, %struct.pcr_softc** %8, align 8
  %65 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %25, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.pcr_softc* @device_get_softc(i8*) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
