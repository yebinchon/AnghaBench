; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_thr_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_thr_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPU_MAX_SPEED = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @acpi_thr_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thr_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
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
  br label %58

17:                                               ; preds = %12
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CPU_MAX_SPEED, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @E2BIG, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %17
  %25 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %26 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %27 = load i32, i32* @CPU_MAX_SPEED, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(%struct.cf_setting* %25, i32 %26, i32 %30)
  store i32 0, i32* %8, align 4
  %32 = load i32, i32* @CPU_MAX_SPEED, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %50, %24
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @CPU_SPEED_PERCENT(i32 %37)
  %39 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %39, i64 %41
  %43 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %45, i64 %47
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load i32, i32* @CPU_MAX_SPEED, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %22, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

declare dso_local i32 @CPU_SPEED_PERCENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
