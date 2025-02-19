; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_platform_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_platform_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@end = common dso_local global i32 0, align 4
@edata = common dso_local global i32 0, align 4
@bcm_platform_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bcm_init_platform_data() failed: %d\00", align 1
@CFE_EPTSEAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_start(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 ptrtoint (i32* @end to i64), i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = sub nsw i64 %12, ptrtoint (i32* @edata to i64)
  %14 = call i32 @memset(i32* @edata, i32 0, i64 %13)
  %15 = call i32 (...) @mips_postboot_fixup()
  %16 = call i32 (...) @mips_pcpu0_init()
  %17 = call i32 @bcm_init_platform_data(i32* @bcm_platform_data)
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = call i32 (...) @bcm_get_platform()
  %24 = call i32 @bcm_get_cpufreq(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 2
  %27 = call i32 @mips_timer_early_init(i32 %26)
  %28 = call i32 (...) @cninit()
  %29 = call i32 (...) @mips_init()
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @mips_timer_init_params(i32 %30, i32 1)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @mips_postboot_fixup(...) #1

declare dso_local i32 @mips_pcpu0_init(...) #1

declare dso_local i32 @bcm_init_platform_data(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bcm_get_cpufreq(i32) #1

declare dso_local i32 @bcm_get_platform(...) #1

declare dso_local i32 @mips_timer_early_init(i32) #1

declare dso_local i32 @cninit(...) #1

declare dso_local i32 @mips_init(...) #1

declare dso_local i32 @mips_timer_init_params(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
