; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_update_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_update_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_ = type { i32 }
%struct.cache_policy_item_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32* }
%struct.cache_lfu_policy_item_ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CACHELIB_MAX_FREQUENCY = common dso_local global double 0.000000e+00, align 8
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_update_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_lfu_policy_update_item(%struct.cache_policy_* %0, %struct.cache_policy_item_* %1) #0 {
  %3 = alloca %struct.cache_policy_*, align 8
  %4 = alloca %struct.cache_policy_item_*, align 8
  %5 = alloca %struct.cache_lfu_policy_*, align 8
  %6 = alloca %struct.cache_lfu_policy_item_*, align 8
  %7 = alloca i32, align 4
  store %struct.cache_policy_* %0, %struct.cache_policy_** %3, align 8
  store %struct.cache_policy_item_* %1, %struct.cache_policy_item_** %4, align 8
  %8 = call i32 @TRACE_IN(void (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_update_item)
  %9 = load %struct.cache_policy_*, %struct.cache_policy_** %3, align 8
  %10 = bitcast %struct.cache_policy_* %9 to %struct.cache_lfu_policy_*
  store %struct.cache_lfu_policy_* %10, %struct.cache_lfu_policy_** %5, align 8
  %11 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %12 = bitcast %struct.cache_policy_item_* %11 to %struct.cache_lfu_policy_item_*
  store %struct.cache_lfu_policy_item_* %12, %struct.cache_lfu_policy_item_** %6, align 8
  %13 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %14 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %19 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %2
  %25 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %26 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sitofp i64 %28 to double
  %30 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %31 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sitofp i64 %33 to double
  %35 = fmul double %29, %34
  %36 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %37 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %42 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %40, %45
  %47 = add nsw i64 %46, 1
  %48 = sitofp i64 %47 to double
  %49 = fdiv double %35, %48
  %50 = load double, double* @CACHELIB_MAX_FREQUENCY, align 8
  %51 = fmul double %49, %50
  %52 = fptosi double %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sitofp i32 %53 to double
  %55 = load double, double* @CACHELIB_MAX_FREQUENCY, align 8
  %56 = fcmp oge double %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %24
  %58 = load double, double* @CACHELIB_MAX_FREQUENCY, align 8
  %59 = fsub double %58, 1.000000e+00
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %24
  br label %66

62:                                               ; preds = %2
  %63 = load double, double* @CACHELIB_MAX_FREQUENCY, align 8
  %64 = fsub double %63, 1.000000e+00
  %65 = fptosi double %64 to i32
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %5, align 8
  %68 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %71 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %75 = load i32, i32* @entries, align 4
  %76 = call i32 @TAILQ_REMOVE(i32* %73, %struct.cache_lfu_policy_item_* %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %80 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %5, align 8
  %82 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %88 = load i32, i32* @entries, align 4
  %89 = call i32 @TAILQ_INSERT_HEAD(i32* %86, %struct.cache_lfu_policy_item_* %87, i32 %88)
  %90 = call i32 @TRACE_OUT(void (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_update_item)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cache_lfu_policy_item_*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.cache_lfu_policy_item_*, i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
