; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_px_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_px_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_perf_softc = type { i64, i64, i32, i32*, i32 }
%struct.cf_setting = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_PPC\00", align 1
@CPUFREQ_VAL_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_perf_softc*)* @acpi_px_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_px_available(%struct.acpi_perf_softc* %0) #0 {
  %2 = alloca %struct.acpi_perf_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_setting, align 4
  store %struct.acpi_perf_softc* %0, %struct.acpi_perf_softc** %2, align 8
  %5 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %8, i32 0, i32 0
  %10 = call i32 @acpi_GetInteger(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ACPI_SUCCESS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CPUFREQ_VAL_UNKNOWN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %25 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %30 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %33 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %36 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = call i32 @acpi_px_to_set(i32 %31, i32* %38, %struct.cf_setting* %4)
  %40 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %41 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @acpi_px_set(i32 %42, %struct.cf_setting* %4)
  br label %44

44:                                               ; preds = %28, %20, %14
  br label %48

45:                                               ; preds = %1
  %46 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %2, align 8
  %47 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @acpi_GetInteger(i32, i8*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_px_to_set(i32, i32*, %struct.cf_setting*) #1

declare dso_local i32 @acpi_px_set(i32, %struct.cf_setting*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
