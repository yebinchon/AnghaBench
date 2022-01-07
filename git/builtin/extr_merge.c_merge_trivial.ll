; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_merge_trivial.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_merge_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { %struct.commit* }
%struct.object_id = type { i32 }

@REFRESH_QUIET = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to write index.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Wonderful.\0A\00", align 1
@merge_msg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sign_commit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to write commit object\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"In-index merge\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit_list*)* @merge_trivial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_trivial(%struct.commit* %0, %struct.commit_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.commit_list**, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.commit_list* %1, %struct.commit_list** %5, align 8
  store %struct.commit_list** %8, %struct.commit_list*** %9, align 8
  %10 = load i32, i32* @REFRESH_QUIET, align 4
  %11 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %12 = call i64 @refresh_and_write_cache(i32 %10, i32 %11, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @error(i8* %15)
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = call i32 @write_tree_trivial(%struct.object_id* %6)
  %19 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @printf(i8* %19)
  %21 = load %struct.commit*, %struct.commit** %4, align 8
  %22 = load %struct.commit_list**, %struct.commit_list*** %9, align 8
  %23 = call %struct.commit_list** @commit_list_append(%struct.commit* %21, %struct.commit_list** %22)
  store %struct.commit_list** %23, %struct.commit_list*** %9, align 8
  %24 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %25 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %24, i32 0, i32 0
  %26 = load %struct.commit*, %struct.commit** %25, align 8
  %27 = load %struct.commit_list**, %struct.commit_list*** %9, align 8
  %28 = call %struct.commit_list** @commit_list_append(%struct.commit* %26, %struct.commit_list** %27)
  store %struct.commit_list** %28, %struct.commit_list*** %9, align 8
  %29 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %30 = call i32 @prepare_to_commit(%struct.commit_list* %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @merge_msg, i32 0, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @merge_msg, i32 0, i32 0), align 4
  %33 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %34 = load i32, i32* @sign_commit, align 4
  %35 = call i64 @commit_tree(i32 %31, i32 %32, %struct.object_id* %6, %struct.commit_list* %33, %struct.object_id* %7, i32* null, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @die(i8* %38)
  br label %40

40:                                               ; preds = %37, %17
  %41 = load %struct.commit*, %struct.commit** %4, align 8
  %42 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %43 = call i32 @finish(%struct.commit* %41, %struct.commit_list* %42, %struct.object_id* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @the_repository, align 4
  %45 = call i32 @remove_merge_branch_state(i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @refresh_and_write_cache(i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @write_tree_trivial(%struct.object_id*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.commit_list** @commit_list_append(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @prepare_to_commit(%struct.commit_list*) #1

declare dso_local i64 @commit_tree(i32, i32, %struct.object_id*, %struct.commit_list*, %struct.object_id*, i32*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @finish(%struct.commit*, %struct.commit_list*, %struct.object_id*, i8*) #1

declare dso_local i32 @remove_merge_branch_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
