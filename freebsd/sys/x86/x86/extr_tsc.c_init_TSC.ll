; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_init_TSC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_init_TSC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_TSC = common dso_local global i32 0, align 4
@tsc_disabled = common dso_local global i64 0, align 8
@tsc_freq = common dso_local global i64 0, align 8
@rdtsc = common dso_local global i32 0, align 4
@tsc_is_invariant = common dso_local global i64 0, align 8
@cpufreq_pre_change = common dso_local global i32 0, align 4
@tsc_freq_changing = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@tsc_pre_tag = common dso_local global i8* null, align 8
@cpufreq_post_change = common dso_local global i32 0, align 4
@tsc_freq_changed = common dso_local global i32 0, align 4
@tsc_post_tag = common dso_local global i8* null, align 8
@cpufreq_levels_changed = common dso_local global i32 0, align 4
@tsc_levels_changed = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@tsc_levels_tag = common dso_local global i8* null, align 8
@CPUID_STEPPING = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_TSC() #0 {
  %1 = load i32, i32* @cpu_feature, align 4
  %2 = load i32, i32* @CPUID_TSC, align 4
  %3 = and i32 %1, %2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @tsc_disabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  br label %38

9:                                                ; preds = %5
  %10 = call i32 (...) @probe_tsc_freq()
  %11 = load i64, i64* @tsc_freq, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* @rdtsc, align 4
  %15 = load i64, i64* @tsc_freq, align 8
  %16 = load i64, i64* @tsc_is_invariant, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @set_cputicker(i32 %14, i64 %15, i32 %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load i64, i64* @tsc_is_invariant, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %38

25:                                               ; preds = %21
  %26 = load i32, i32* @cpufreq_pre_change, align 4
  %27 = load i32, i32* @tsc_freq_changing, align 4
  %28 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %29 = call i8* @EVENTHANDLER_REGISTER(i32 %26, i32 %27, i32* null, i32 %28)
  store i8* %29, i8** @tsc_pre_tag, align 8
  %30 = load i32, i32* @cpufreq_post_change, align 4
  %31 = load i32, i32* @tsc_freq_changed, align 4
  %32 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %33 = call i8* @EVENTHANDLER_REGISTER(i32 %30, i32 %31, i32* null, i32 %32)
  store i8* %33, i8** @tsc_post_tag, align 8
  %34 = load i32, i32* @cpufreq_levels_changed, align 4
  %35 = load i32, i32* @tsc_levels_changed, align 4
  %36 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %37 = call i8* @EVENTHANDLER_REGISTER(i32 %34, i32 %35, i32* null, i32 %36)
  store i8* %37, i8** @tsc_levels_tag, align 8
  br label %38

38:                                               ; preds = %25, %24, %8
  ret void
}

declare dso_local i32 @probe_tsc_freq(...) #1

declare dso_local i32 @set_cputicker(i32, i64, i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
