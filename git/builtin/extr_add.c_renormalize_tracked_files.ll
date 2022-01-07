; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_renormalize_tracked_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_renormalize_tracked_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.pathspec = type { i32 }

@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@the_index = common dso_local global i32 0, align 4
@ADD_CACHE_RENORMALIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec*, i32)* @renormalize_tracked_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renormalize_tracked_files(%struct.pathspec* %0, i32 %1) #0 {
  %3 = alloca %struct.pathspec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.pathspec* %0, %struct.pathspec** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @active_nr, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %13, i64 %15
  %17 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  store %struct.cache_entry* %17, %struct.cache_entry** %7, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %19 = call i64 @ce_stage(%struct.cache_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %54

22:                                               ; preds = %12
  %23 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISREG(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %30 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @S_ISLNK(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %54

35:                                               ; preds = %28, %22
  %36 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %37 = icmp ne %struct.pathspec* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %40 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %41 = call i32 @ce_path_match(i32* @the_index, %struct.cache_entry* %39, %struct.pathspec* %40, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %54

44:                                               ; preds = %38, %35
  %45 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ADD_CACHE_RENORMALIZE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @add_file_to_cache(i32 %47, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %44, %43, %34, %21
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %8

57:                                               ; preds = %8
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @ce_path_match(i32*, %struct.cache_entry*, %struct.pathspec*, i32*) #1

declare dso_local i32 @add_file_to_cache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
