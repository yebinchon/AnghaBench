; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_dfs.c_dfs_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_dfs.c_dfs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32 }
%struct.dfs_softc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@SPR_HID1 = common dso_local global i32 0, align 4
@HID1_DFS2 = common dso_local global i32 0, align 4
@HID1_DFS4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @dfs_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.dfs_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %8 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %9 = icmp eq %struct.cf_setting* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.dfs_softc* @device_get_softc(i32 %13)
  store %struct.dfs_softc* %14, %struct.dfs_softc** %6, align 8
  %15 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %16 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %17 = call i32 @memset(%struct.cf_setting* %15, i32 %16, i32 8)
  %18 = load i32, i32* @SPR_HID1, align 4
  %19 = call i32 @mfspr(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %21 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %20, i32 0, i32 0
  store i32 10000, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @HID1_DFS2, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %28 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %27, i32 0, i32 0
  store i32 5000, i32* %28, align 4
  br label %43

29:                                               ; preds = %12
  %30 = load %struct.dfs_softc*, %struct.dfs_softc** %6, align 8
  %31 = getelementptr inbounds %struct.dfs_softc, %struct.dfs_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @HID1_DFS4, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %41 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %40, i32 0, i32 0
  store i32 2500, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %34, %29
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %46 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.dfs_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
