; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_px_to_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_px_to_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_px = type { i32, i32, i32, i32, i32 }
%struct.cf_setting = type { i32*, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@PX_SPEC_CONTROL = common dso_local global i64 0, align 8
@PX_SPEC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_px*, %struct.cf_setting*)* @acpi_px_to_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_px_to_set(i32 %0, %struct.acpi_px* %1, %struct.cf_setting* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_px*, align 8
  %7 = alloca %struct.cf_setting*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.acpi_px* %1, %struct.acpi_px** %6, align 8
  store %struct.cf_setting* %2, %struct.cf_setting** %7, align 8
  %8 = load %struct.acpi_px*, %struct.acpi_px** %6, align 8
  %9 = icmp eq %struct.acpi_px* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %12 = icmp eq %struct.cf_setting* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %53

15:                                               ; preds = %10
  %16 = load %struct.acpi_px*, %struct.acpi_px** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_px, %struct.acpi_px* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %20 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.acpi_px*, %struct.acpi_px** %6, align 8
  %22 = getelementptr inbounds %struct.acpi_px, %struct.acpi_px* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %25 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.acpi_px*, %struct.acpi_px** %6, align 8
  %27 = getelementptr inbounds %struct.acpi_px, %struct.acpi_px* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %30 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %32 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %33 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %36 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.acpi_px*, %struct.acpi_px** %6, align 8
  %38 = getelementptr inbounds %struct.acpi_px, %struct.acpi_px* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %41 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @PX_SPEC_CONTROL, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load %struct.acpi_px*, %struct.acpi_px** %6, align 8
  %46 = getelementptr inbounds %struct.acpi_px, %struct.acpi_px* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @PX_SPEC_STATUS, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %47, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %15, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
