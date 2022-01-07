; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_checkout.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.object_id = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.argv_array = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@option_no_checkout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"remote HEAD refers to nonexistent ref, unable to checkout.\0A\00", align 1
@advice_detached_head = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"HEAD not found below refs/heads!\00", align 1
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@oneway_merge = common dso_local global i32 0, align 4
@option_verbosity = common dso_local global i64 0, align 8
@the_index = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"unable to checkout working tree\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to write new index file\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"post-checkout\00", align 1
@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@option_recurse_submodules = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--init\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"--recursive\00", align 1
@option_shallow_submodules = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"--depth=1\00", align 1
@max_jobs = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"--jobs=%d\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"--progress\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@option_remote_submodules = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"--remote\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"--no-fetch\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @checkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lock_file, align 4
  %7 = alloca %struct.unpack_trees_options, align 8
  %8 = alloca %struct.tree*, align 8
  %9 = alloca %struct.tree_desc, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.argv_array, align 4
  store i32 %0, i32* %3, align 4
  %12 = bitcast %struct.lock_file* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* @option_no_checkout, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

16:                                               ; preds = %1
  %17 = load i32, i32* @RESOLVE_REF_READING, align 4
  %18 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.object_id* %4, i32* null)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @warning(i32 %22)
  store i32 0, i32* %2, align 4
  br label %131

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @advice_detached_head, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @oid_to_hex(%struct.object_id* %4)
  %33 = call i32 @detach_advice(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %43

35:                                               ; preds = %24
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @starts_with(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @die(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @free(i8* %44)
  %46 = call i32 (...) @setup_work_tree()
  %47 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %48 = call i32 @hold_locked_index(%struct.lock_file* %6, i32 %47)
  %49 = call i32 @memset(%struct.unpack_trees_options* %7, i32 0, i32 40)
  %50 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @oneway_merge, align 4
  %54 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 6
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* @option_verbosity, align 8
  %56 = icmp sge i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 5
  store i32* @the_index, i32** %59, align 8
  %60 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 4
  store i32* @the_index, i32** %60, align 8
  %61 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %4)
  store %struct.tree* %61, %struct.tree** %8, align 8
  %62 = load %struct.tree*, %struct.tree** %8, align 8
  %63 = call i32 @parse_tree(%struct.tree* %62)
  %64 = load %struct.tree*, %struct.tree** %8, align 8
  %65 = getelementptr inbounds %struct.tree, %struct.tree* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tree*, %struct.tree** %8, align 8
  %68 = getelementptr inbounds %struct.tree, %struct.tree* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @init_tree_desc(%struct.tree_desc* %9, i32 %66, i32 %69)
  %71 = call i64 @unpack_trees(i32 1, %struct.tree_desc* %9, %struct.unpack_trees_options* %7)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %43
  %74 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @die(i32 %74)
  br label %76

76:                                               ; preds = %73, %43
  %77 = load i32, i32* @COMMIT_LOCK, align 4
  %78 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %6, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @die(i32 %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = call i32 @oid_to_hex(%struct.object_id* @null_oid)
  %85 = call i32 @oid_to_hex(%struct.object_id* %4)
  %86 = call i32 @run_hook_le(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %129, label %91

91:                                               ; preds = %83
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @option_recurse_submodules, i32 0, i32 0), align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %91
  %95 = bitcast %struct.argv_array* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %96 = call i32 @argv_array_pushl(%struct.argv_array* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %97 = load i32, i32* @option_shallow_submodules, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i32, i32* @max_jobs, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @max_jobs, align 4
  %106 = call i32 @argv_array_pushf(%struct.argv_array* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i64, i64* @option_verbosity, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i64, i64* @option_remote_submodules, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %122 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  %124 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %11, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RUN_GIT_CMD, align 4
  %127 = call i32 @run_command_v_opt(i32 %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = call i32 @argv_array_clear(%struct.argv_array* %11)
  br label %129

129:                                              ; preds = %123, %91, %83
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %21, %15
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @detach_advice(i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @setup_work_tree(...) #2

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #2

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #2

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #2

declare dso_local i32 @parse_tree(%struct.tree*) #2

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #2

declare dso_local i64 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #2

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #2

declare dso_local i32 @run_hook_le(i32*, i8*, i32, i32, i8*, i32*) #2

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32) #2

declare dso_local i32 @run_command_v_opt(i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
