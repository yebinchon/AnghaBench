; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_find_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_find_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry_ = type { i32 }
%struct.cache_ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_entry_* @find_cache_entry(%struct.cache_* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_entry_*, align 8
  %4 = alloca %struct.cache_*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cache_entry_**, align 8
  store %struct.cache_* %0, %struct.cache_** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @TRACE_IN(%struct.cache_entry_* (%struct.cache_*, i8*)* @find_cache_entry)
  %8 = load %struct.cache_*, %struct.cache_** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.cache_entry_** @find_cache_entry_p(%struct.cache_* %8, i8* %9)
  store %struct.cache_entry_** %10, %struct.cache_entry_*** %6, align 8
  %11 = load %struct.cache_entry_**, %struct.cache_entry_*** %6, align 8
  %12 = icmp eq %struct.cache_entry_** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @TRACE_OUT(%struct.cache_entry_* (%struct.cache_*, i8*)* @find_cache_entry)
  store %struct.cache_entry_* null, %struct.cache_entry_** %3, align 8
  br label %19

15:                                               ; preds = %2
  %16 = call i32 @TRACE_OUT(%struct.cache_entry_* (%struct.cache_*, i8*)* @find_cache_entry)
  %17 = load %struct.cache_entry_**, %struct.cache_entry_*** %6, align 8
  %18 = load %struct.cache_entry_*, %struct.cache_entry_** %17, align 8
  store %struct.cache_entry_* %18, %struct.cache_entry_** %3, align 8
  br label %19

19:                                               ; preds = %15, %13
  %20 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  ret %struct.cache_entry_* %20
}

declare dso_local i32 @TRACE_IN(%struct.cache_entry_* (%struct.cache_*, i8*)*) #1

declare dso_local %struct.cache_entry_** @find_cache_entry_p(%struct.cache_*, i8*) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_entry_* (%struct.cache_*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
