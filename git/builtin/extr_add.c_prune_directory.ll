; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_prune_directory.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_prune_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32, %struct.dir_entry** }
%struct.dir_entry = type { i32 }
%struct.pathspec = type { i32 }

@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dir_struct*, %struct.pathspec*, i32)* @prune_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prune_directory(%struct.dir_struct* %0, %struct.pathspec* %1, i32 %2) #0 {
  %4 = alloca %struct.dir_struct*, align 8
  %5 = alloca %struct.pathspec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dir_entry**, align 8
  %10 = alloca %struct.dir_entry**, align 8
  %11 = alloca %struct.dir_entry*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %4, align 8
  store %struct.pathspec* %1, %struct.pathspec** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %13 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @xcalloc(i32 %14, i32 1)
  store i8* %15, i8** %7, align 8
  %16 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %17 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %16, i32 0, i32 1
  %18 = load %struct.dir_entry**, %struct.dir_entry*** %17, align 8
  store %struct.dir_entry** %18, %struct.dir_entry*** %10, align 8
  store %struct.dir_entry** %18, %struct.dir_entry*** %9, align 8
  %19 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %20 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %40, %3
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %8, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.dir_entry**, %struct.dir_entry*** %9, align 8
  %28 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %27, i32 1
  store %struct.dir_entry** %28, %struct.dir_entry*** %9, align 8
  %29 = load %struct.dir_entry*, %struct.dir_entry** %27, align 8
  store %struct.dir_entry* %29, %struct.dir_entry** %11, align 8
  %30 = load %struct.dir_entry*, %struct.dir_entry** %11, align 8
  %31 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @dir_path_match(i32* @the_index, %struct.dir_entry* %30, %struct.pathspec* %31, i32 %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.dir_entry*, %struct.dir_entry** %11, align 8
  %38 = load %struct.dir_entry**, %struct.dir_entry*** %10, align 8
  %39 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %38, i32 1
  store %struct.dir_entry** %39, %struct.dir_entry*** %10, align 8
  store %struct.dir_entry* %37, %struct.dir_entry** %38, align 8
  br label %40

40:                                               ; preds = %36, %26
  br label %22

41:                                               ; preds = %22
  %42 = load %struct.dir_entry**, %struct.dir_entry*** %10, align 8
  %43 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %44 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %43, i32 0, i32 1
  %45 = load %struct.dir_entry**, %struct.dir_entry*** %44, align 8
  %46 = ptrtoint %struct.dir_entry** %42 to i64
  %47 = ptrtoint %struct.dir_entry** %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %52 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @add_pathspec_matches_against_index(%struct.pathspec* %53, i32* @the_index, i8* %54)
  %56 = load i8*, i8** %7, align 8
  ret i8* %56
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i64 @dir_path_match(i32*, %struct.dir_entry*, %struct.pathspec*, i32, i8*) #1

declare dso_local i32 @add_pathspec_matches_against_index(%struct.pathspec*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
