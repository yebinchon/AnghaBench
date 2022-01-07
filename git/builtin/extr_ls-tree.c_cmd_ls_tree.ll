; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-tree.c_cmd_ls_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-tree.c_cmd_ls_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.tree = type { i32 }
%struct.option = type { i32 }

@ls_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"only show trees\00", align 1
@LS_TREE_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"recurse into subtrees\00", align 1
@LS_RECURSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"show trees when recursing\00", align 1
@LS_SHOW_TREES = common dso_local global i32 0, align 4
@line_termination = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"terminate entries with NUL byte\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"include object size\00", align 1
@LS_SHOW_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"name-only\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"list only filenames\00", align 1
@LS_NAME_ONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"name-status\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"full-name\00", align 1
@chomp_prefix = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"use full path names\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"full-tree\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"list entire tree; not just current directory (implies --full-name)\00", align 1
@abbrev = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@ls_tree_prefix = common dso_local global i8* null, align 8
@ls_tree_usage = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"Not a valid object name %s\00", align 1
@pathspec = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PATHSPEC_ALL_MAGIC = common dso_local global i32 0, align 4
@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_PREFER_CWD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"not a tree object\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@show_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_ls_tree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [11 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %11, i64 0, i64 0
  %13 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @LS_TREE_ONLY, align 4
  %15 = call i32 @OPT_BIT(i8 signext 100, i8* null, i32* @ls_options, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %18 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @LS_RECURSIVE, align 4
  %20 = call i32 @OPT_BIT(i8 signext 114, i8* null, i32* @ls_options, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %23 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @LS_SHOW_TREES, align 4
  %25 = call i32 @OPT_BIT(i8 signext 116, i8* null, i32* @ls_options, i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %28 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @OPT_SET_INT(i8 signext 122, i8* null, i64* @line_termination, i32 %28, i32 0)
  %30 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %32 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32, i32* @LS_SHOW_SIZE, align 4
  %34 = call i32 @OPT_BIT(i8 signext 108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* @ls_options, i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %37 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i32, i32* @LS_NAME_ONLY, align 4
  %39 = call i32 @OPT_BIT(i8 signext 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* @ls_options, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %36, i64 1
  %42 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i32, i32* @LS_NAME_ONLY, align 4
  %44 = call i32 @OPT_BIT(i8 signext 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* @ls_options, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  %47 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %48 = call i32 @OPT_SET_INT(i8 signext 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64* @chomp_prefix, i32 %47, i32 0)
  %49 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.option, %struct.option* %46, i64 1
  %51 = call i32 @N_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0))
  %52 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %10, i32 %51)
  %53 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.option, %struct.option* %50, i64 1
  %55 = call i32 @OPT__ABBREV(i32* @abbrev)
  %56 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.option, %struct.option* %54, i64 1
  %58 = call i32 (...) @OPT_END()
  %59 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @git_default_config, align 4
  %61 = call i32 @git_config(i32 %60, i32* null)
  %62 = load i8*, i8** %6, align 8
  store i8* %62, i8** @ls_tree_prefix, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %3
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strlen(i8* %71)
  store i64 %72, i64* @chomp_prefix, align 8
  br label %73

73:                                               ; preds = %70, %65, %3
  %74 = load i32, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %11, i64 0, i64 0
  %78 = load i32, i32* @ls_tree_usage, align 4
  %79 = call i32 @parse_options(i32 %74, i8** %75, i8* %76, %struct.option* %77, i32 %78, i32 0)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i8* null, i8** %6, align 8
  store i8* null, i8** @ls_tree_prefix, align 8
  store i64 0, i64* @chomp_prefix, align 8
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i32, i32* @LS_TREE_ONLY, align 4
  %85 = load i32, i32* @LS_RECURSIVE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @LS_TREE_ONLY, align 4
  %88 = load i32, i32* @LS_RECURSIVE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @ls_options, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %86, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32, i32* @LS_SHOW_TREES, align 4
  %95 = load i32, i32* @ls_options, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* @ls_options, align 4
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @ls_tree_usage, align 4
  %102 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %11, i64 0, i64 0
  %103 = call i32 @usage_with_options(i32 %101, %struct.option* %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @get_oid(i8* %107, %struct.object_id* %7)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %110, %104
  %116 = load i32, i32* @PATHSPEC_ALL_MAGIC, align 4
  %117 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %118 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %116, %120
  %122 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = call i32 @parse_pathspec(%struct.TYPE_6__* @pathspec, i32 %121, i32 %122, i8* %123, i8** %125)
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %143, %115
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pathspec, i32 0, i32 0), align 8
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pathspec, i32 0, i32 2), align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pathspec, i32 0, i32 2), align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %127

146:                                              ; preds = %127
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pathspec, i32 0, i32 1), align 8
  %147 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %7)
  store %struct.tree* %147, %struct.tree** %8, align 8
  %148 = load %struct.tree*, %struct.tree** %8, align 8
  %149 = icmp ne %struct.tree* %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %146
  %153 = load i32, i32* @the_repository, align 4
  %154 = load %struct.tree*, %struct.tree** %8, align 8
  %155 = load i32, i32* @show_tree, align 4
  %156 = call i32 @read_tree_recursive(i32 %153, %struct.tree* %154, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 0, %struct.TYPE_6__* @pathspec, i32 %155, i32* null)
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  ret i32 %160
}

declare dso_local i32 @OPT_BIT(i8 signext, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_SET_INT(i8 signext, i8*, i64*, i32, i32) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT__ABBREV(i32*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @parse_pathspec(%struct.TYPE_6__*, i32, i32, i8*, i8**) #1

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #1

declare dso_local i32 @read_tree_recursive(i32, %struct.tree*, i8*, i32, i32, %struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
