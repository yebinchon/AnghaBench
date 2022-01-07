; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_read-tree.c_debug_merge.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_read-tree.c_debug_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"* %d-way merge\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ent#%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry**, %struct.unpack_trees_options*)* @debug_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_merge(%struct.cache_entry** %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca %struct.cache_entry**, align 8
  %4 = alloca %struct.unpack_trees_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [24 x i8], align 16
  store %struct.cache_entry** %0, %struct.cache_entry*** %3, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %4, align 8
  %7 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %8 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.cache_entry**, %struct.cache_entry*** %3, align 8
  %12 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %11, i64 0
  %13 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %14 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %15 = call i32 @debug_stage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.cache_entry* %13, %struct.unpack_trees_options* %14)
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %19 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @xsnprintf(i8* %23, i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %27 = load %struct.cache_entry**, %struct.cache_entry*** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %27, i64 %29
  %31 = load %struct.cache_entry*, %struct.cache_entry** %30, align 8
  %32 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %33 = call i32 @debug_stage(i8* %26, %struct.cache_entry* %31, %struct.unpack_trees_options* %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @debug_stage(i8*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
