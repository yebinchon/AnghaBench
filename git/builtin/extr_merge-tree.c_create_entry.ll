; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_create_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_create_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_list = type { i32, i8*, i32, i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.merge_list* (i32, i32, %struct.object_id*, i8*)* @create_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.merge_list* @create_entry(i32 %0, i32 %1, %struct.object_id* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.merge_list*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call %struct.merge_list* @xcalloc(i32 1, i32 24)
  store %struct.merge_list* %10, %struct.merge_list** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  %13 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  %16 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  %19 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @the_repository, align 4
  %21 = load %struct.object_id*, %struct.object_id** %7, align 8
  %22 = call i32 @lookup_blob(i32 %20, %struct.object_id* %21)
  %23 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  %24 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  ret %struct.merge_list* %25
}

declare dso_local %struct.merge_list* @xcalloc(i32, i32) #1

declare dso_local i32 @lookup_blob(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
