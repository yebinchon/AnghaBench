; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_class = common dso_local global i32 0, align 4
@perfmon_cpuok = common dso_local global i32 0, align 4
@MSR_P5_CESR = common dso_local global i32 0, align 4
@msr_ctl = common dso_local global i32* null, align 8
@MSR_P5_CTR0 = common dso_local global i32 0, align 4
@msr_pmc = common dso_local global i32* null, align 8
@MSR_P5_CTR1 = common dso_local global i32 0, align 4
@writectl5 = common dso_local global i32 0, align 4
@writectl = common dso_local global i32 0, align 4
@MSR_EVNTSEL0 = common dso_local global i32 0, align 4
@MSR_EVNTSEL1 = common dso_local global i32 0, align 4
@MSR_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_PERFCTR1 = common dso_local global i32 0, align 4
@writectl6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perfmon_init() #0 {
  %1 = load i32, i32* @cpu_class, align 4
  switch i32 %1, label %30 [
    i32 129, label %2
    i32 128, label %16
  ]

2:                                                ; preds = %0
  store i32 1, i32* @perfmon_cpuok, align 4
  %3 = load i32, i32* @MSR_P5_CESR, align 4
  %4 = load i32*, i32** @msr_ctl, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @MSR_P5_CESR, align 4
  %7 = load i32*, i32** @msr_ctl, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MSR_P5_CTR0, align 4
  %10 = load i32*, i32** @msr_pmc, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @MSR_P5_CTR1, align 4
  %13 = load i32*, i32** @msr_pmc, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @writectl5, align 4
  store i32 %15, i32* @writectl, align 4
  br label %31

16:                                               ; preds = %0
  store i32 1, i32* @perfmon_cpuok, align 4
  %17 = load i32, i32* @MSR_EVNTSEL0, align 4
  %18 = load i32*, i32** @msr_ctl, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MSR_EVNTSEL1, align 4
  %21 = load i32*, i32** @msr_ctl, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @MSR_PERFCTR0, align 4
  %24 = load i32*, i32** @msr_pmc, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @MSR_PERFCTR1, align 4
  %27 = load i32*, i32** @msr_pmc, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @writectl6, align 4
  store i32 %29, i32* @writectl, align 4
  br label %31

30:                                               ; preds = %0
  store i32 0, i32* @perfmon_cpuok, align 4
  br label %31

31:                                               ; preds = %30, %16, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
