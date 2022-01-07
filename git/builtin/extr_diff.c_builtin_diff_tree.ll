; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.object_array_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.object_id }
%struct.object_id = type { i32 }

@builtin_diff_usage = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i32, i8**, %struct.object_array_entry*, %struct.object_array_entry*)* @builtin_diff_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_diff_tree(%struct.rev_info* %0, i32 %1, i8** %2, %struct.object_array_entry* %3, %struct.object_array_entry* %4) #0 {
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.object_array_entry*, align 8
  %10 = alloca %struct.object_array_entry*, align 8
  %11 = alloca [2 x %struct.object_id*], align 16
  %12 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store %struct.object_array_entry* %3, %struct.object_array_entry** %9, align 8
  store %struct.object_array_entry* %4, %struct.object_array_entry** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @builtin_diff_usage, align 4
  %17 = call i32 @usage(i32 %16)
  br label %18

18:                                               ; preds = %15, %5
  %19 = load %struct.object_array_entry*, %struct.object_array_entry** %10, align 8
  %20 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UNINTERESTING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %30 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x %struct.object_id*], [2 x %struct.object_id*]* %11, i64 0, i64 %34
  store %struct.object_id* %32, %struct.object_id** %35, align 8
  %36 = load %struct.object_array_entry*, %struct.object_array_entry** %10, align 8
  %37 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x %struct.object_id*], [2 x %struct.object_id*]* %11, i64 0, i64 %42
  store %struct.object_id* %39, %struct.object_id** %43, align 8
  %44 = getelementptr inbounds [2 x %struct.object_id*], [2 x %struct.object_id*]* %11, i64 0, i64 0
  %45 = load %struct.object_id*, %struct.object_id** %44, align 16
  %46 = getelementptr inbounds [2 x %struct.object_id*], [2 x %struct.object_id*]* %11, i64 0, i64 1
  %47 = load %struct.object_id*, %struct.object_id** %46, align 8
  %48 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 0
  %50 = call i32 @diff_tree_oid(%struct.object_id* %45, %struct.object_id* %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %49)
  %51 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %52 = call i32 @log_tree_diff_flush(%struct.rev_info* %51)
  ret i32 0
}

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @diff_tree_oid(%struct.object_id*, %struct.object_id*, i8*, i32*) #1

declare dso_local i32 @log_tree_diff_flush(%struct.rev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
