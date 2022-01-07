; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_stdin_diff_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_stdin_diff_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }
%struct.TYPE_2__ = type { %struct.commit_list* }

@the_repository = common dso_local global i32 0, align 4
@log_tree_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, i8*)* @stdin_diff_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdin_diff_commit(%struct.commit* %0, i8* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.commit_list**, align 8
  %7 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.commit_list** null, %struct.commit_list*** %6, align 8
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  %13 = call i64 @isspace(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @parse_oid_hex(i8* %16, %struct.object_id* %5, i8** %4)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i1 [ false, %8 ], [ %19, %15 ]
  br i1 %21, label %22, label %45

22:                                               ; preds = %20
  %23 = load i32, i32* @the_repository, align 4
  %24 = call %struct.commit* @lookup_commit(i32 %23, %struct.object_id* %5)
  store %struct.commit* %24, %struct.commit** %7, align 8
  %25 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %26 = icmp ne %struct.commit_list** %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.commit*, %struct.commit** %3, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 0
  %30 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  %31 = call i32 @free_commit_list(%struct.commit_list* %30)
  %32 = load %struct.commit*, %struct.commit** %3, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  store %struct.commit_list* null, %struct.commit_list** %33, align 8
  %34 = load %struct.commit*, %struct.commit** %3, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0
  store %struct.commit_list** %35, %struct.commit_list*** %6, align 8
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.commit*, %struct.commit** %7, align 8
  %38 = icmp ne %struct.commit* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.commit*, %struct.commit** %7, align 8
  %41 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %42 = call %struct.TYPE_2__* @commit_list_insert(%struct.commit* %40, %struct.commit_list** %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.commit_list** %43, %struct.commit_list*** %6, align 8
  br label %44

44:                                               ; preds = %39, %36
  br label %8

45:                                               ; preds = %20
  %46 = load %struct.commit*, %struct.commit** %3, align 8
  %47 = call i32 @log_tree_commit(i32* @log_tree_opt, %struct.commit* %46)
  ret i32 %47
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local %struct.TYPE_2__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @log_tree_commit(i32*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
