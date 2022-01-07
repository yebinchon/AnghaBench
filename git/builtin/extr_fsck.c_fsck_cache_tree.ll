; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_cache_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cache_tree = type { i64, i32, %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { %struct.cache_tree* }
%struct.object = type { i64, i32 }

@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Checking cache tree\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: invalid sha1 pointer in cache-tree\00", align 1
@ERROR_REFS = common dso_local global i32 0, align 4
@errors_found = common dso_local global i32 0, align 4
@USED = common dso_local global i32 0, align 4
@name_objects = common dso_local global i64 0, align 8
@fsck_walk_options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@OBJ_TREE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"non-tree in cache-tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_tree*)* @fsck_cache_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_cache_tree(%struct.cache_tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  store %struct.cache_tree* %0, %struct.cache_tree** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* @verbose, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @fprintf_ln(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %15 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 0, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %13
  %19 = load i32, i32* @the_repository, align 4
  %20 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %21 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %20, i32 0, i32 3
  %22 = call %struct.object* @parse_object(i32 %19, i32* %21)
  store %struct.object* %22, %struct.object** %6, align 8
  %23 = load %struct.object*, %struct.object** %6, align 8
  %24 = icmp ne %struct.object* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %28 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %27, i32 0, i32 3
  %29 = call i32 @oid_to_hex(i32* %28)
  %30 = call i32 @error(i32 %26, i32 %29)
  %31 = load i32, i32* @ERROR_REFS, align 4
  %32 = load i32, i32* @errors_found, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @errors_found, align 4
  store i32 1, i32* %2, align 4
  br label %87

34:                                               ; preds = %18
  %35 = load i32, i32* @USED, align 4
  %36 = load %struct.object*, %struct.object** %6, align 8
  %37 = getelementptr inbounds %struct.object, %struct.object* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i64, i64* @name_objects, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fsck_walk_options, i32 0, i32 0), align 4
  %44 = load %struct.object*, %struct.object** %6, align 8
  %45 = call i32 @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @add_decoration(i32 %43, %struct.object* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %34
  %48 = load %struct.object*, %struct.object** %6, align 8
  %49 = call i32 @mark_object_reachable(%struct.object* %48)
  %50 = load %struct.object*, %struct.object** %6, align 8
  %51 = getelementptr inbounds %struct.object, %struct.object* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OBJ_TREE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.object*, %struct.object** %6, align 8
  %57 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @objerror(%struct.object* %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %47
  br label %62

62:                                               ; preds = %61, %13
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %82, %62
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %66 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %71 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.cache_tree*, %struct.cache_tree** %77, align 8
  %79 = call i32 @fsck_cache_tree(%struct.cache_tree* %78)
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %63

85:                                               ; preds = %63
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %25
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @fprintf_ln(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.object* @parse_object(i32, i32*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @add_decoration(i32, %struct.object*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @mark_object_reachable(%struct.object*) #1

declare dso_local i32 @objerror(%struct.object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
