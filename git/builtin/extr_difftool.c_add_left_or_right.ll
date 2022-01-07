; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_difftool.c_add_left_or_right.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_difftool.c_add_left_or_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.pair_entry = type { i8*, i8*, i32 }

@entry = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, i8*, i8*, i32)* @add_left_or_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_left_or_right(%struct.hashmap* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pair_entry*, align 8
  %10 = alloca %struct.pair_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @FLEX_ALLOC_STR(%struct.pair_entry* %11, i8* %12, i8* %13)
  %15 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %16 = getelementptr inbounds %struct.pair_entry, %struct.pair_entry* %15, i32 0, i32 2
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strhash(i8* %17)
  %19 = call i32 @hashmap_entry_init(i32* %16, i32 %18)
  %20 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %21 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %22 = load i32, i32* @entry, align 4
  %23 = call %struct.pair_entry* @hashmap_get_entry(%struct.hashmap* %20, %struct.pair_entry* %21, i32 %22, i32* null)
  store %struct.pair_entry* %23, %struct.pair_entry** %10, align 8
  %24 = load %struct.pair_entry*, %struct.pair_entry** %10, align 8
  %25 = icmp ne %struct.pair_entry* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %28 = call i32 @free(%struct.pair_entry* %27)
  %29 = load %struct.pair_entry*, %struct.pair_entry** %10, align 8
  store %struct.pair_entry* %29, %struct.pair_entry** %9, align 8
  br label %43

30:                                               ; preds = %4
  %31 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %32 = getelementptr inbounds %struct.pair_entry, %struct.pair_entry* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  %35 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %36 = getelementptr inbounds %struct.pair_entry, %struct.pair_entry* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %40 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %41 = getelementptr inbounds %struct.pair_entry, %struct.pair_entry* %40, i32 0, i32 2
  %42 = call i32 @hashmap_add(%struct.hashmap* %39, i32* %41)
  br label %43

43:                                               ; preds = %30, %26
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %48 = getelementptr inbounds %struct.pair_entry, %struct.pair_entry* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.pair_entry*, %struct.pair_entry** %9, align 8
  %52 = getelementptr inbounds %struct.pair_entry, %struct.pair_entry* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i8* [ %49, %46 ], [ %53, %50 ]
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @PATH_MAX, align 4
  %58 = call i32 @strlcpy(i8* %55, i8* %56, i32 %57)
  ret void
}

declare dso_local i32 @FLEX_ALLOC_STR(%struct.pair_entry*, i8*, i8*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i8*) #1

declare dso_local %struct.pair_entry* @hashmap_get_entry(%struct.hashmap*, %struct.pair_entry*, i32, i32*) #1

declare dso_local i32 @free(%struct.pair_entry*) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
