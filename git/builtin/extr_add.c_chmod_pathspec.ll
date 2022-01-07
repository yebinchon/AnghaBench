; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_chmod_pathspec.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_chmod_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8* }
%struct.pathspec = type { i32 }

@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@the_index = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot chmod %cx '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pathspec*, i8)* @chmod_pathspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chmod_pathspec(%struct.pathspec* %0, i8 signext %1) #0 {
  %3 = alloca %struct.pathspec*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.pathspec* %0, %struct.pathspec** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @active_nr, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %12, i64 %14
  %16 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  store %struct.cache_entry* %16, %struct.cache_entry** %6, align 8
  %17 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %18 = icmp ne %struct.pathspec* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %21 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %22 = call i32 @ce_path_match(i32* @the_index, %struct.cache_entry* %20, %struct.pathspec* %21, i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19, %11
  %26 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %27 = load i8, i8* %4, align 1
  %28 = call i64 @chmod_cache_entry(%struct.cache_entry* %26, i8 signext %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8, i8* %4, align 1
  %33 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %34 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %32, i8* %35)
  br label %37

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %7

41:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ce_path_match(i32*, %struct.cache_entry*, %struct.pathspec*, i32*) #1

declare dso_local i64 @chmod_cache_entry(%struct.cache_entry*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
