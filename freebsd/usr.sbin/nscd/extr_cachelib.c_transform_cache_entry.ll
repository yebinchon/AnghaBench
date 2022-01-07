; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_transform_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_transform_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry_ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transform_cache_entry(%struct.cache_entry_* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry_*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_entry_* %0, %struct.cache_entry_** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @TRACE_IN(i32 (%struct.cache_entry_*, i32)* @transform_cache_entry)
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %16 [
    i32 129, label %8
    i32 128, label %12
  ]

8:                                                ; preds = %2
  %9 = load %struct.cache_entry_*, %struct.cache_entry_** %4, align 8
  %10 = call i32 @clear_cache_entry(%struct.cache_entry_* %9)
  %11 = call i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i32)* @transform_cache_entry)
  store i32 0, i32* %3, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.cache_entry_*, %struct.cache_entry_** %4, align 8
  %14 = call i32 @flush_cache_entry(%struct.cache_entry_* %13)
  %15 = call i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i32)* @transform_cache_entry)
  store i32 0, i32* %3, align 4
  br label %18

16:                                               ; preds = %2
  %17 = call i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i32)* @transform_cache_entry)
  store i32 -1, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %12, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @TRACE_IN(i32 (%struct.cache_entry_*, i32)*) #1

declare dso_local i32 @clear_cache_entry(%struct.cache_entry_*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i32)*) #1

declare dso_local i32 @flush_cache_entry(%struct.cache_entry_*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
