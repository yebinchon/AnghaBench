; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_dfs.c_dfs_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_dfs.c_dfs_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i8* }
%struct.dfs_softc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cf_setting*, i32*)* @dfs_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_settings(i8* %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dfs_softc*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.dfs_softc* @device_get_softc(i8* %10)
  store %struct.dfs_softc* %11, %struct.dfs_softc** %8, align 8
  %12 = load %struct.dfs_softc*, %struct.dfs_softc** %8, align 8
  %13 = getelementptr inbounds %struct.dfs_softc, %struct.dfs_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 3, i32 2
  store i32 %17, i32* %9, align 4
  %18 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %19 = icmp eq %struct.cf_setting* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @E2BIG, align 4
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %25
  %33 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %34 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(%struct.cf_setting* %33, i32 %34, i32 %38)
  %40 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %41 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %40, i64 0
  %42 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %41, i32 0, i32 0
  store i32 10000, i32* %42, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %45 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %44, i64 0
  %46 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %48 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %47, i64 1
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %48, i32 0, i32 0
  store i32 5000, i32* %49, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %52 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %51, i64 1
  %53 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.dfs_softc*, %struct.dfs_softc** %8, align 8
  %55 = getelementptr inbounds %struct.dfs_softc, %struct.dfs_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %32
  %59 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %60 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %59, i64 2
  %61 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %60, i32 0, i32 0
  store i32 2500, i32* %61, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %64 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %63, i64 2
  %65 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %58, %32
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %30, %23
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.dfs_softc* @device_get_softc(i8*) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
