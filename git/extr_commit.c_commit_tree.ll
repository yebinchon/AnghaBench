; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_commit_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_commit_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }
%struct.commit_extra_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commit_tree(i8* %0, i64 %1, %struct.object_id* %2, %struct.commit_list* %3, %struct.object_id* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.commit_extra_header*, align 8
  %16 = alloca %struct.commit_extra_header**, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.object_id* %2, %struct.object_id** %10, align 8
  store %struct.commit_list* %3, %struct.commit_list** %11, align 8
  store %struct.object_id* %4, %struct.object_id** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store %struct.commit_extra_header* null, %struct.commit_extra_header** %15, align 8
  store %struct.commit_extra_header** %15, %struct.commit_extra_header*** %16, align 8
  %18 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %19 = call i32 @append_merge_tag_headers(%struct.commit_list* %18, %struct.commit_extra_header*** %16)
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.object_id*, %struct.object_id** %10, align 8
  %23 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %24 = load %struct.object_id*, %struct.object_id** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load %struct.commit_extra_header*, %struct.commit_extra_header** %15, align 8
  %28 = call i32 @commit_tree_extended(i8* %20, i64 %21, %struct.object_id* %22, %struct.commit_list* %23, %struct.object_id* %24, i8* %25, i8* %26, %struct.commit_extra_header* %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.commit_extra_header*, %struct.commit_extra_header** %15, align 8
  %30 = call i32 @free_commit_extra_headers(%struct.commit_extra_header* %29)
  %31 = load i32, i32* %17, align 4
  ret i32 %31
}

declare dso_local i32 @append_merge_tag_headers(%struct.commit_list*, %struct.commit_extra_header***) #1

declare dso_local i32 @commit_tree_extended(i8*, i64, %struct.object_id*, %struct.commit_list*, %struct.object_id*, i8*, i8*, %struct.commit_extra_header*) #1

declare dso_local i32 @free_commit_extra_headers(%struct.commit_extra_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
