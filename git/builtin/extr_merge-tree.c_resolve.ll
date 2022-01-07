; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_resolve.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { i32 }
%struct.name_entry = type { i32, i32 }
%struct.merge_list = type { %struct.merge_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traverse_info*, %struct.name_entry*, %struct.name_entry*)* @resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve(%struct.traverse_info* %0, %struct.name_entry* %1, %struct.name_entry* %2) #0 {
  %4 = alloca %struct.traverse_info*, align 8
  %5 = alloca %struct.name_entry*, align 8
  %6 = alloca %struct.name_entry*, align 8
  %7 = alloca %struct.merge_list*, align 8
  %8 = alloca %struct.merge_list*, align 8
  %9 = alloca i8*, align 8
  store %struct.traverse_info* %0, %struct.traverse_info** %4, align 8
  store %struct.name_entry* %1, %struct.name_entry** %5, align 8
  store %struct.name_entry* %2, %struct.name_entry** %6, align 8
  %10 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %11 = icmp ne %struct.name_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %36

13:                                               ; preds = %3
  %14 = load %struct.traverse_info*, %struct.traverse_info** %4, align 8
  %15 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %16 = call i8* @traverse_path(%struct.traverse_info* %14, %struct.name_entry* %15)
  store i8* %16, i8** %9, align 8
  %17 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %18 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %21 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %20, i32 0, i32 0
  %22 = load i8*, i8** %9, align 8
  %23 = call %struct.merge_list* @create_entry(i32 2, i32 %19, i32* %21, i8* %22)
  store %struct.merge_list* %23, %struct.merge_list** %7, align 8
  %24 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %25 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %28 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %27, i32 0, i32 0
  %29 = load i8*, i8** %9, align 8
  %30 = call %struct.merge_list* @create_entry(i32 0, i32 %26, i32* %28, i8* %29)
  store %struct.merge_list* %30, %struct.merge_list** %8, align 8
  %31 = load %struct.merge_list*, %struct.merge_list** %7, align 8
  %32 = load %struct.merge_list*, %struct.merge_list** %8, align 8
  %33 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %32, i32 0, i32 0
  store %struct.merge_list* %31, %struct.merge_list** %33, align 8
  %34 = load %struct.merge_list*, %struct.merge_list** %8, align 8
  %35 = call i32 @add_merge_entry(%struct.merge_list* %34)
  br label %36

36:                                               ; preds = %13, %12
  ret void
}

declare dso_local i8* @traverse_path(%struct.traverse_info*, %struct.name_entry*) #1

declare dso_local %struct.merge_list* @create_entry(i32, i32, i32*, i8*) #1

declare dso_local i32 @add_merge_entry(%struct.merge_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
