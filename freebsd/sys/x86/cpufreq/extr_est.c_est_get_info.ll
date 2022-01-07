; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.est_softc = type { i32, i32 }

@MSR_PERF_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"est: CPU supports Enhanced Speedstep, but is not recognized.\0Aest: cpu_vendor %s, msr %0jx\0A\00", align 1
@cpu_vendor = common dso_local global i8* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @est_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @est_get_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.est_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.est_softc* @device_get_softc(i32 %7)
  store %struct.est_softc* %8, %struct.est_softc** %4, align 8
  %9 = load i32, i32* @MSR_PERF_STATUS, align 4
  %10 = call i32 @rdmsr(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %14 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %13, i32 0, i32 1
  %15 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %16 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %15, i32 0, i32 0
  %17 = call i32 @est_table_info(i32 %11, i32 %12, i32* %14, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %23 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %22, i32 0, i32 1
  %24 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %25 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %24, i32 0, i32 0
  %26 = call i32 @est_acpi_info(i32 %21, i32* %23, i32* %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %34 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %33, i32 0, i32 1
  %35 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %36 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %35, i32 0, i32 0
  %37 = call i32 @est_msr_info(i32 %31, i32 %32, i32* %34, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** @cpu_vendor, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.est_softc* @device_get_softc(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @est_table_info(i32, i32, i32*, i32*) #1

declare dso_local i32 @est_acpi_info(i32, i32*, i32*) #1

declare dso_local i32 @est_msr_info(i32, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
