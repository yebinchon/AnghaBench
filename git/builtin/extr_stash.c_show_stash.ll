; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_show_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_show_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }
%struct.stash_info = type { i32, i32 }
%struct.rev_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.option = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@git_diff_ui_config = common dso_local global i32 0, align 4
@git_stash_config = common dso_local global i32 0, align 4
@show_stat = common dso_local global i64 0, align 8
@DIFF_FORMAT_DIFFSTAT = common dso_local global i32 0, align 4
@show_patch = common dso_local global i64 0, align 8
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@git_stash_show_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @show_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_stash(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stash_info, align 4
  %11 = alloca %struct.rev_info, align 4
  %12 = alloca %struct.argv_array, align 4
  %13 = alloca %struct.argv_array, align 4
  %14 = alloca [1 x %struct.option], align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = bitcast %struct.argv_array* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %16 = bitcast %struct.argv_array* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %17 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %14, i64 0, i64 0
  %18 = call i32 (...) @OPT_END()
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = call i32 (...) @init_diff_ui_defaults()
  %21 = load i32, i32* @git_diff_ui_config, align 4
  %22 = call i32 @git_config(i32 %21, i32* null)
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @init_revisions(%struct.rev_info* %11, i8* %23)
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @argv_array_push(%struct.argv_array* %13, i8* %27)
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %58, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @argv_array_push(%struct.argv_array* %12, i8* %48)
  br label %57

50:                                               ; preds = %33
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @argv_array_push(%struct.argv_array* %13, i8* %55)
  br label %57

57:                                               ; preds = %50, %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %29

61:                                               ; preds = %29
  %62 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %12, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @get_stash_info(%struct.stash_info* %10, i32 %63, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = call i32 @argv_array_clear(%struct.argv_array* %12)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %140

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load i32, i32* @git_stash_config, align 4
  %77 = call i32 @git_config(i32 %76, i32* null)
  %78 = load i64, i64* @show_stat, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @DIFF_FORMAT_DIFFSTAT, align 4
  %82 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i64, i64* @show_patch, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %89 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load i64, i64* @show_stat, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @show_patch, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = call i32 @free_stash_info(%struct.stash_info* %10)
  store i32 0, i32* %4, align 4
  br label %140

101:                                              ; preds = %96, %93
  br label %102

102:                                              ; preds = %101, %71
  %103 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %13, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %13, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @setup_revisions(i32 %104, i32 %106, %struct.rev_info* %11, i32* null)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = call i32 @free_stash_info(%struct.stash_info* %10)
  %112 = load i32, i32* @git_stash_show_usage, align 4
  %113 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %14, i64 0, i64 0
  %114 = call i32 @usage_with_options(i32 %112, %struct.option* %113)
  br label %115

115:                                              ; preds = %110, %102
  %116 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %122 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %125 = call i32 @diff_setup_done(%struct.TYPE_7__* %124)
  br label %126

126:                                              ; preds = %120, %115
  %127 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 4
  %130 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %131 = call i32 @setup_diff_pager(%struct.TYPE_7__* %130)
  %132 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %10, i32 0, i32 1
  %133 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %10, i32 0, i32 0
  %134 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %135 = call i32 @diff_tree_oid(i32* %132, i32* %133, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %134)
  %136 = call i32 @log_tree_diff_flush(%struct.rev_info* %11)
  %137 = call i32 @free_stash_info(%struct.stash_info* %10)
  %138 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %139 = call i32 @diff_result_code(%struct.TYPE_7__* %138, i32 0)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %126, %99, %70
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @init_diff_ui_defaults(...) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @init_revisions(%struct.rev_info*, i8*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @get_stash_info(%struct.stash_info*, i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @free_stash_info(%struct.stash_info*) #2

declare dso_local i32 @setup_revisions(i32, i32, %struct.rev_info*, i32*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @diff_setup_done(%struct.TYPE_7__*) #2

declare dso_local i32 @setup_diff_pager(%struct.TYPE_7__*) #2

declare dso_local i32 @diff_tree_oid(i32*, i32*, i8*, %struct.TYPE_7__*) #2

declare dso_local i32 @log_tree_diff_flush(%struct.rev_info*) #2

declare dso_local i32 @diff_result_code(%struct.TYPE_7__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
