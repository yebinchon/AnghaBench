; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_invalidate_cache_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_invalidate_cache_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAP_CLFLUSH_THRESHOLD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_CLFSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_invalidate_cache_pages(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PMAP_CLFLUSH_THRESHOLD, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = sdiv i32 %7, %8
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @cpu_feature, align 4
  %13 = load i32, i32* @CPUID_CLFSH, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = call i32 (...) @pmap_invalidate_cache()
  br label %34

18:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pmap_flush_page(i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %19

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @pmap_invalidate_cache(...) #1

declare dso_local i32 @pmap_flush_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
