; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPMC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@perfmon_inuse = common dso_local global i32 0, align 4
@ctl_shadow = common dso_local global i32* null, align 8
@PMCF_EN = common dso_local global i32 0, align 4
@msr_pmc = common dso_local global i32* null, align 8
@pmc_shadow = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perfmon_read(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NPMC, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %8
  %15 = load i32, i32* @perfmon_inuse, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load i32*, i32** @ctl_shadow, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PMCF_EN, align 4
  %27 = shl i32 %26, 16
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load i32*, i32** @msr_pmc, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rdmsr(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 1099511627775
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %48

41:                                               ; preds = %20
  %42 = load i32*, i32** @pmc_shadow, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %30
  store i32 0, i32* %3, align 4
  br label %51

49:                                               ; preds = %14
  %50 = load i32, i32* @EBUSY, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %48, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @rdmsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
