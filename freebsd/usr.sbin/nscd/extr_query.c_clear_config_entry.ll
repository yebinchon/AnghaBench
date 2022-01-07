; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_clear_config_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_clear_config_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i64, i32**, i32*, i32* }

@CELT_POSITIVE = common dso_local global i32 0, align 4
@CTT_CLEAR = common dso_local global i32 0, align 4
@CELT_NEGATIVE = common dso_local global i32 0, align 4
@CELT_MULTIPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.configuration_entry*)* @clear_config_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_config_entry(%struct.configuration_entry* %0) #0 {
  %2 = alloca %struct.configuration_entry*, align 8
  %3 = alloca i64, align 8
  store %struct.configuration_entry* %0, %struct.configuration_entry** %2, align 8
  %4 = call i32 @TRACE_IN(void (%struct.configuration_entry*)* @clear_config_entry)
  %5 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %6 = load i32, i32* @CELT_POSITIVE, align 4
  %7 = call i32 @configuration_lock_entry(%struct.configuration_entry* %5, i32 %6)
  %8 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %9 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %14 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @CTT_CLEAR, align 4
  %17 = call i32 @transform_cache_entry(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %20 = load i32, i32* @CELT_POSITIVE, align 4
  %21 = call i32 @configuration_unlock_entry(%struct.configuration_entry* %19, i32 %20)
  %22 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %23 = load i32, i32* @CELT_NEGATIVE, align 4
  %24 = call i32 @configuration_lock_entry(%struct.configuration_entry* %22, i32 %23)
  %25 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %26 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %31 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @CTT_CLEAR, align 4
  %34 = call i32 @transform_cache_entry(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %18
  %36 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %37 = load i32, i32* @CELT_NEGATIVE, align 4
  %38 = call i32 @configuration_unlock_entry(%struct.configuration_entry* %36, i32 %37)
  %39 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %40 = load i32, i32* @CELT_MULTIPART, align 4
  %41 = call i32 @configuration_lock_entry(%struct.configuration_entry* %39, i32 %40)
  store i64 0, i64* %3, align 8
  br label %42

42:                                               ; preds = %57, %35
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %45 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %50 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @CTT_CLEAR, align 4
  %56 = call i32 @transform_cache_entry(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %62 = load i32, i32* @CELT_MULTIPART, align 4
  %63 = call i32 @configuration_unlock_entry(%struct.configuration_entry* %61, i32 %62)
  %64 = call i32 @TRACE_OUT(void (%struct.configuration_entry*)* @clear_config_entry)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.configuration_entry*)*) #1

declare dso_local i32 @configuration_lock_entry(%struct.configuration_entry*, i32) #1

declare dso_local i32 @transform_cache_entry(i32*, i32) #1

declare dso_local i32 @configuration_unlock_entry(%struct.configuration_entry*, i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.configuration_entry*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
