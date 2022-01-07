; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_entry_find_mp_cache_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_entry_find_mp_cache_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configuration_entry_find_mp_cache_entries(%struct.configuration_entry* %0, i8* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.configuration_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  store %struct.configuration_entry* %0, %struct.configuration_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = call i32 @TRACE_IN(i32 (%struct.configuration_entry*, i8*, i32**, i32**)* @configuration_entry_find_mp_cache_entries)
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.configuration_entry*, %struct.configuration_entry** %6, align 8
  %14 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.configuration_entry*, %struct.configuration_entry** %6, align 8
  %17 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @bsearch(i8* %12, i32* %15, i32 %18, i32 4, i64 (i8*, i32*)* @configuration_entry_cache_mp_part_cmp)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @TRACE_OUT(i32 (%struct.configuration_entry*, i8*, i32**, i32**)* @configuration_entry_find_mp_cache_entries)
  store i32 -1, i32* %5, align 4
  br label %79

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32**, i32*** %8, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32**, i32*** %9, align 8
  store i32* %28, i32** %29, align 8
  br label %30

30:                                               ; preds = %50, %24
  %31 = load i32**, i32*** %8, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.configuration_entry*, %struct.configuration_entry** %6, align 8
  %34 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load i32**, i32*** %8, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  %42 = call i64 @configuration_entry_cache_mp_part_cmp(i8* %38, i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32**, i32*** %8, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -1
  %48 = load i32**, i32*** %8, align 8
  store i32* %47, i32** %48, align 8
  br label %50

49:                                               ; preds = %37
  br label %51

50:                                               ; preds = %44
  br label %30

51:                                               ; preds = %49, %30
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32**, i32*** %9, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.configuration_entry*, %struct.configuration_entry** %6, align 8
  %56 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.configuration_entry*, %struct.configuration_entry** %6, align 8
  %59 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = icmp ne i32* %54, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %52
  %65 = load i8*, i8** %7, align 8
  %66 = load i32**, i32*** %9, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @configuration_entry_cache_mp_part_cmp(i8* %65, i32* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32**, i32*** %9, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32**, i32*** %9, align 8
  store i32* %73, i32** %74, align 8
  br label %76

75:                                               ; preds = %64
  br label %77

76:                                               ; preds = %70
  br label %52

77:                                               ; preds = %75, %52
  %78 = call i32 @TRACE_OUT(i32 (%struct.configuration_entry*, i8*, i32**, i32**)* @configuration_entry_find_mp_cache_entries)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @TRACE_IN(i32 (%struct.configuration_entry*, i8*, i32**, i32**)*) #1

declare dso_local i32* @bsearch(i8*, i32*, i32, i32, i64 (i8*, i32*)*) #1

declare dso_local i64 @configuration_entry_cache_mp_part_cmp(i8*, i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.configuration_entry*, i8*, i32**, i32**)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
