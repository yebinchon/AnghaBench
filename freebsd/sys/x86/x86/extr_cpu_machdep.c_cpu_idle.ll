; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cpu_idle(%d) at %d\00", align 1
@curcpu = common dso_local global i32 0, align 4
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_MON = common dso_local global i32 0, align 4
@idle_mwait = common dso_local global i64 0, align 8
@cpu_ident_amdc1e = common dso_local global i64 0, align 8
@cpu_disable_c3_sleep = common dso_local global i64 0, align 8
@MSR_AMDK8_IPM = common dso_local global i32 0, align 4
@AMDK8_CMPHALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cpu_idle(%d) at %d done\00", align 1
@cpuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %4, align 4
  %5 = load i32, i32* @KTR_SPARE2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @curcpu, align 4
  %8 = call i32 @CTR2(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @cpu_feature2, align 4
  %13 = load i32, i32* @CPUID2_MON, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i64, i64* @idle_mwait, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @cpu_idle_mwait(i32 %20)
  br label %59

22:                                               ; preds = %16, %11
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @critical_enter()
  %28 = call i32 (...) @cpu_idleclock()
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @cpu_ident_amdc1e, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i64, i64* @cpu_disable_c3_sleep, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* @MSR_AMDK8_IPM, align 4
  %37 = call i32 @rdmsr(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @AMDK8_CMPHALT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @MSR_AMDK8_IPM, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @AMDK8_CMPHALT, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i32 @wrmsr(i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49, %32, %29
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @cpu_idle_fn(i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = call i32 (...) @cpu_activeclock()
  %57 = call i32 (...) @critical_exit()
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %19
  %60 = load i32, i32* @KTR_SPARE2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @curcpu, align 4
  %63 = call i32 @CTR2(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @cpu_idle_mwait(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @cpu_idleclock(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @cpu_idle_fn(i32) #1

declare dso_local i32 @cpu_activeclock(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
