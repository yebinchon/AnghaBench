; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_diff_tree_stdin.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_diff_tree_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i64 }
%struct.commit = type { i32 }
%struct.tree = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@OBJ_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Object %s is a %s, not a commit or tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @diff_tree_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_tree_stdin(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %12, %1
  store i32 -1, i32* %2, align 4
  br label %67

22:                                               ; preds = %12
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @parse_oid_hex(i8* %28, %struct.object_id* %5, i8** %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %67

32:                                               ; preds = %22
  %33 = load i32, i32* @the_repository, align 4
  %34 = call %struct.object* @parse_object(i32 %33, %struct.object_id* %5)
  store %struct.object* %34, %struct.object** %6, align 8
  %35 = load %struct.object*, %struct.object** %6, align 8
  %36 = icmp ne %struct.object* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %67

38:                                               ; preds = %32
  %39 = load %struct.object*, %struct.object** %6, align 8
  %40 = getelementptr inbounds %struct.object, %struct.object* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OBJ_COMMIT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.object*, %struct.object** %6, align 8
  %46 = bitcast %struct.object* %45 to %struct.commit*
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @stdin_diff_commit(%struct.commit* %46, i8* %47)
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %38
  %50 = load %struct.object*, %struct.object** %6, align 8
  %51 = getelementptr inbounds %struct.object, %struct.object* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OBJ_TREE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.object*, %struct.object** %6, align 8
  %57 = bitcast %struct.object* %56 to %struct.tree*
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @stdin_diff_trees(%struct.tree* %57, i8* %58)
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %49
  %61 = call i32 @oid_to_hex(%struct.object_id* %5)
  %62 = load %struct.object*, %struct.object** %6, align 8
  %63 = getelementptr inbounds %struct.object, %struct.object* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @type_name(i64 %64)
  %66 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %65)
  store i32 -1, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %55, %44, %37, %31, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @stdin_diff_commit(%struct.commit*, i8*) #1

declare dso_local i32 @stdin_diff_trees(%struct.tree*, i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @type_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
