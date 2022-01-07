; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_force_invalidate_cache_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_force_invalidate_cache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_clflush_line_size = common dso_local global i32 0, align 4
@PMAP_CLFLUSH_THRESHOLD = common dso_local global i64 0, align 8
@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_CLFLUSHOPT = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@lapic_paddr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_force_invalidate_cache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @cpu_clflush_line_size, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = xor i64 %7, -1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* @PMAP_CLFLUSH_THRESHOLD, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @pmap_invalidate_cache()
  br label %65

18:                                               ; preds = %2
  %19 = load i32, i32* @cpu_stdext_feature, align 4
  %20 = load i32, i32* @CPUID_STDEXT_CLFLUSHOPT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = call i32 (...) @sfence()
  br label %25

25:                                               ; preds = %32, %23
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @clflushopt(i64 %30)
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @cpu_clflush_line_size, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %3, align 8
  br label %25

37:                                               ; preds = %25
  %38 = call i32 (...) @sfence()
  br label %65

39:                                               ; preds = %18
  %40 = load i64, i64* @cpu_vendor_id, align 8
  %41 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (...) @mfence()
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @clflush(i64 %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @cpu_clflush_line_size, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %3, align 8
  br label %46

58:                                               ; preds = %46
  %59 = load i64, i64* @cpu_vendor_id, align 8
  %60 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (...) @mfence()
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %16, %64, %37
  ret void
}

declare dso_local i32 @pmap_invalidate_cache(...) #1

declare dso_local i32 @sfence(...) #1

declare dso_local i32 @clflushopt(i64) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i32 @clflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
