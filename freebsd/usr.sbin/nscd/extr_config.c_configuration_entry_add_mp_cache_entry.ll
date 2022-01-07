; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_entry_add_mp_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_entry_add_mp_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i32, i32* }

@configuration_entry_cache_mp_sort_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configuration_entry_add_mp_cache_entry(%struct.configuration_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.configuration_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.configuration_entry* %0, %struct.configuration_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @TRACE_IN(i32 (%struct.configuration_entry*, i32)* @configuration_entry_add_mp_cache_entry)
  %8 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %9 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %13 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32* @malloc(i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %27 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %35 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %38 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32* %33, i32* %36, i32 %43)
  br label %45

45:                                               ; preds = %31, %2
  %46 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %47 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %51 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @free(i32* %52)
  %54 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %55 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.configuration_entry*, %struct.configuration_entry** %3, align 8
  %58 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @configuration_entry_cache_mp_sort_cmp, align 4
  %61 = call i32 @qsort(i32* %56, i32 %59, i32 4, i32 %60)
  %62 = call i32 @TRACE_OUT(i32 (%struct.configuration_entry*, i32)* @configuration_entry_add_mp_cache_entry)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32 (%struct.configuration_entry*, i32)*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.configuration_entry*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
