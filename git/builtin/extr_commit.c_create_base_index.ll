; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_create_base_index.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_create_base_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tree = type { i32, i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, i32*, i32* }
%struct.tree_desc = type { i32 }

@the_index = common dso_local global i32 0, align 4
@oneway_merge = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to unpack HEAD tree object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*)* @create_base_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_base_index(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.unpack_trees_options, align 8
  %5 = alloca %struct.tree_desc, align 4
  store %struct.commit* %0, %struct.commit** %2, align 8
  %6 = load %struct.commit*, %struct.commit** %2, align 8
  %7 = icmp ne %struct.commit* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @discard_cache()
  br label %42

10:                                               ; preds = %1
  %11 = call i32 @memset(%struct.unpack_trees_options* %4, i32 0, i32 32)
  %12 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %4, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %4, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %4, i32 0, i32 2
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %4, i32 0, i32 5
  store i32* @the_index, i32** %15, align 8
  %16 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %4, i32 0, i32 4
  store i32* @the_index, i32** %16, align 8
  %17 = load i32, i32* @oneway_merge, align 4
  %18 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %4, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load %struct.commit*, %struct.commit** %2, align 8
  %20 = getelementptr inbounds %struct.commit, %struct.commit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call %struct.tree* @parse_tree_indirect(i32* %21)
  store %struct.tree* %22, %struct.tree** %3, align 8
  %23 = load %struct.tree*, %struct.tree** %3, align 8
  %24 = icmp ne %struct.tree* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %10
  %26 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @die(i32 %26)
  br label %28

28:                                               ; preds = %25, %10
  %29 = load %struct.tree*, %struct.tree** %3, align 8
  %30 = call i32 @parse_tree(%struct.tree* %29)
  %31 = load %struct.tree*, %struct.tree** %3, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tree*, %struct.tree** %3, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @init_tree_desc(%struct.tree_desc* %5, i32 %33, i32 %36)
  %38 = call i64 @unpack_trees(i32 1, %struct.tree_desc* %5, %struct.unpack_trees_options* %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 @exit(i32 128) #3
  unreachable

42:                                               ; preds = %8, %28
  ret void
}

declare dso_local i32 @discard_cache(...) #1

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #1

declare dso_local %struct.tree* @parse_tree_indirect(i32*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_tree(%struct.tree*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
