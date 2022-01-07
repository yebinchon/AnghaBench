; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_entry_find_mp_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_entry_find_mp_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i32, i32 }

@configuration_entry_cache_mp_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @configuration_entry_find_mp_cache_entry(%struct.configuration_entry* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.configuration_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  store %struct.configuration_entry* %0, %struct.configuration_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @TRACE_IN(i32* (%struct.configuration_entry*, i8*)* @configuration_entry_find_mp_cache_entry)
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %10 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %13 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @configuration_entry_cache_mp_cmp, align 4
  %16 = call i32** @bsearch(i8* %8, i32 %11, i32 %14, i32 8, i32 %15)
  store i32** %16, i32*** %6, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = icmp eq i32** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @TRACE_OUT(i32* (%struct.configuration_entry*, i8*)* @configuration_entry_find_mp_cache_entry)
  store i32* null, i32** %3, align 8
  br label %25

21:                                               ; preds = %2
  %22 = call i32 @TRACE_OUT(i32* (%struct.configuration_entry*, i8*)* @configuration_entry_find_mp_cache_entry)
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i32 @TRACE_IN(i32* (%struct.configuration_entry*, i8*)*) #1

declare dso_local i32** @bsearch(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @TRACE_OUT(i32* (%struct.configuration_entry*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
