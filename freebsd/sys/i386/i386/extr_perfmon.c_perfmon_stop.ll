; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPMC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@perfmon_inuse = common dso_local global i32 0, align 4
@msr_pmc = common dso_local global i32* null, align 8
@pmc_shadow = common dso_local global i32* null, align 8
@PMCF_EN = common dso_local global i32 0, align 4
@ctl_shadow = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perfmon_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NPMC, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %7
  %14 = load i32, i32* @perfmon_inuse, align 4
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = call i32 (...) @intr_disable()
  store i32 %20, i32* %4, align 4
  %21 = load i32*, i32** @msr_pmc, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rdmsr(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, 1099511627775
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** @pmc_shadow, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @PMCF_EN, align 4
  %35 = shl i32 %34, 16
  %36 = xor i32 %35, -1
  %37 = load i32*, i32** @ctl_shadow, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @writectl(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @intr_restore(i32 %45)
  store i32 0, i32* %2, align 4
  br label %49

47:                                               ; preds = %13
  %48 = load i32, i32* @EBUSY, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %19, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @writectl(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
