; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_write-tree.c_cmd_write_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_write-tree.c_cmd_write_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.option = type { i8*, i32*, i32, i32, i32*, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"git-write-tree\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"missing-ok\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"allow missing objects\00", align 1
@WRITE_TREE_MISSING_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<prefix>/\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"write tree object for a subdirectory <prefix>\00", align 1
@OPTION_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"ignore-cache-tree\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"only useful for debugging\00", align 1
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@WRITE_TREE_IGNORE_CACHE_TREE = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@write_tree_usage = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: error reading the index\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s: error building trees\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s: prefix %s not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_write_tree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [4 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %13 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @WRITE_TREE_MISSING_OK, align 4
  call void @OPT_BIT(%struct.option* sret %13, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32 %14, i32 %15)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %17 = call i32 @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, i32 %17, i32 %18)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  %21 = load i32, i32* @OPTION_BIT, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %20, align 8
  %24 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 2
  store i32 ptrtoint ([18 x i8]* @.str.6 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 3
  %27 = ptrtoint i32* %7 to i32
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 5
  %30 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 6
  %32 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %33 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %34 = or i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %31, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 7
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 8
  %39 = load i32, i32* @WRITE_TREE_IGNORE_CACHE_TREE, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %40)
  %41 = load i32, i32* @git_default_config, align 4
  %42 = call i32 @git_config(i32 %41, i32* null)
  %43 = load i32, i32* %4, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %47 = load i32, i32* @write_tree_usage, align 4
  %48 = call i32 @parse_options(i32 %43, i8** %44, i8* %45, %struct.option* %46, i32 %47, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @write_cache_as_tree(%struct.object_id* %10, i32 %49, i8* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %66 [
    i32 0, label %53
    i32 128, label %56
    i32 129, label %59
    i32 130, label %62
  ]

53:                                               ; preds = %3
  %54 = call i8* @oid_to_hex(%struct.object_id* %10)
  %55 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  br label %66

56:                                               ; preds = %3
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %57)
  br label %66

59:                                               ; preds = %3
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %60)
  br label %66

62:                                               ; preds = %3
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %3, %62, %59, %56, %53
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local void @OPT_BIT(%struct.option* sret, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local void @OPT_STRING(%struct.option* sret, i32, i8*, i8**, i32, i32) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @write_cache_as_tree(%struct.object_id*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
