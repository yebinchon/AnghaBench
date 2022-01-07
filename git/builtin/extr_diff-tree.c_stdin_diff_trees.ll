; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_stdin_diff_trees.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_stdin_diff_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tree = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Need exactly two trees, separated by a space\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@log_tree_opt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*, i8*)* @stdin_diff_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdin_diff_trees(%struct.tree* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %5, align 8
  %10 = load i8, i8* %8, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @isspace(i32 %11) #3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @parse_oid_hex(i8* %15, %struct.object_id* %6, i8** %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %14, %2
  %24 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load i32, i32* @the_repository, align 4
  %27 = call %struct.tree* @lookup_tree(i32 %26, %struct.object_id* %6)
  store %struct.tree* %27, %struct.tree** %7, align 8
  %28 = load %struct.tree*, %struct.tree** %7, align 8
  %29 = icmp ne %struct.tree* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.tree*, %struct.tree** %7, align 8
  %32 = call i64 @parse_tree(%struct.tree* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %25
  store i32 -1, i32* %3, align 4
  br label %53

35:                                               ; preds = %30
  %36 = load %struct.tree*, %struct.tree** %4, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i8* @oid_to_hex(i32* %38)
  %40 = load %struct.tree*, %struct.tree** %7, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i8* @oid_to_hex(i32* %42)
  %44 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %43)
  %45 = load %struct.tree*, %struct.tree** %4, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.tree*, %struct.tree** %7, align 8
  %49 = getelementptr inbounds %struct.tree, %struct.tree* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @diff_tree_oid(i32* %47, i32* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @log_tree_opt, i32 0, i32 0))
  %52 = call i32 @log_tree_diff_flush(%struct.TYPE_5__* @log_tree_opt)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %35, %34, %23
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #2

declare dso_local i32 @error(i8*) #2

declare dso_local %struct.tree* @lookup_tree(i32, %struct.object_id*) #2

declare dso_local i64 @parse_tree(%struct.tree*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @diff_tree_oid(i32*, i32*, i8*, i32*) #2

declare dso_local i32 @log_tree_diff_flush(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
