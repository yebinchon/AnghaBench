; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_spitfire.c_spitfire_cache_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_spitfire.c_spitfire_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@cache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ASI_DCACHE_TAG = common dso_local global i32 0, align 4
@ASI_ICACHE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spitfire_cache_flush() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cache, i32 0, i32 3), align 4
  %5 = call i64 @PCPU_GET(i32 %4)
  %6 = icmp slt i64 %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i64, i64* %1, align 8
  %9 = load i32, i32* @ASI_DCACHE_TAG, align 4
  %10 = call i32 @stxa_sync(i64 %8, i32 %9, i32 0)
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cache, i32 0, i32 2), align 4
  %13 = call i64 @PCPU_GET(i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = add nsw i64 %14, %13
  store i64 %15, i64* %1, align 8
  br label %2

16:                                               ; preds = %2
  store i64 0, i64* %1, align 8
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i64, i64* %1, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cache, i32 0, i32 1), align 4
  %20 = call i64 @PCPU_GET(i32 %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i64, i64* %1, align 8
  %24 = load i32, i32* @ASI_ICACHE_TAG, align 4
  %25 = call i32 @stxa_sync(i64 %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cache, i32 0, i32 0), align 4
  %28 = call i64 @PCPU_GET(i32 %27)
  %29 = load i64, i64* %1, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %1, align 8
  br label %17

31:                                               ; preds = %17
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @stxa_sync(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
