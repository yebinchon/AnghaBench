; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_link_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_link_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { i32 }
%struct.name_entry = type { i32, i32 }
%struct.merge_list = type { i8*, %struct.merge_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.merge_list* (i32, %struct.traverse_info*, %struct.name_entry*, %struct.merge_list*)* @link_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.merge_list* @link_entry(i32 %0, %struct.traverse_info* %1, %struct.name_entry* %2, %struct.merge_list* %3) #0 {
  %5 = alloca %struct.merge_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.traverse_info*, align 8
  %8 = alloca %struct.name_entry*, align 8
  %9 = alloca %struct.merge_list*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.merge_list*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.traverse_info* %1, %struct.traverse_info** %7, align 8
  store %struct.name_entry* %2, %struct.name_entry** %8, align 8
  store %struct.merge_list* %3, %struct.merge_list** %9, align 8
  %12 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %13 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  store %struct.merge_list* %17, %struct.merge_list** %5, align 8
  br label %42

18:                                               ; preds = %4
  %19 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  %20 = icmp ne %struct.merge_list* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  %23 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.traverse_info*, %struct.traverse_info** %7, align 8
  %27 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %28 = call i8* @traverse_path(%struct.traverse_info* %26, %struct.name_entry* %27)
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %32 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %35 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %10, align 8
  %37 = call %struct.merge_list* @create_entry(i32 %30, i32 %33, i32* %35, i8* %36)
  store %struct.merge_list* %37, %struct.merge_list** %11, align 8
  %38 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  %39 = load %struct.merge_list*, %struct.merge_list** %11, align 8
  %40 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %39, i32 0, i32 1
  store %struct.merge_list* %38, %struct.merge_list** %40, align 8
  %41 = load %struct.merge_list*, %struct.merge_list** %11, align 8
  store %struct.merge_list* %41, %struct.merge_list** %5, align 8
  br label %42

42:                                               ; preds = %29, %16
  %43 = load %struct.merge_list*, %struct.merge_list** %5, align 8
  ret %struct.merge_list* %43
}

declare dso_local i8* @traverse_path(%struct.traverse_info*, %struct.name_entry*) #1

declare dso_local %struct.merge_list* @create_entry(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
