; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_cherry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_cherry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.patch_ids = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.branch = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"be verbose\00", align 1
@cherry_usage = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Could not find a tracked remote branch, please specify <upstream> manually.\0A\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"unknown commit %s\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_cherry(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info, align 8
  %9 = alloca %struct.patch_ids, align 4
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.branch*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x %struct.option], align 4
  %19 = alloca %struct.object_array_entry*, align 8
  %20 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.commit_list* null, %struct.commit_list** %11, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %18, i64 0, i64 0
  %22 = call i32 @OPT__ABBREV(i32* %17)
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %25 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @OPT__VERBOSE(i32* %16, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %29 = call i32 (...) @OPT_END()
  %30 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %18, i64 0, i64 0
  %35 = load i32, i32* @cherry_usage, align 4
  %36 = call i32 @parse_options(i32 %31, i8** %32, i8* %33, %struct.option* %34, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %50 [
    i32 3, label %38
    i32 2, label %42
    i32 1, label %46
  ]

38:                                               ; preds = %3
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %15, align 8
  br label %42

42:                                               ; preds = %3, %38
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  br label %46

46:                                               ; preds = %3, %42
  %47 = load i8**, i8*** %6, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %13, align 8
  br label %64

50:                                               ; preds = %3
  %51 = call %struct.branch* @branch_get(i32* null)
  store %struct.branch* %51, %struct.branch** %12, align 8
  %52 = load %struct.branch*, %struct.branch** %12, align 8
  %53 = call i8* @branch_get_upstream(%struct.branch* %52, i32* null)
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @stderr, align 4
  %58 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @fprintf(i32 %57, i8* %58)
  %60 = load i32, i32* @cherry_usage, align 4
  %61 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %18, i64 0, i64 0
  %62 = call i32 @usage_with_options(i32 %60, %struct.option* %61)
  br label %63

63:                                               ; preds = %56, %50
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* @the_repository, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @repo_init_revisions(i32 %65, %struct.rev_info* %8, i8* %66)
  %68 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i64 @add_pending_commit(i8* %69, %struct.rev_info* %8, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 (i8*, ...) @die(i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %64
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @UNINTERESTING, align 4
  %79 = call i64 @add_pending_commit(i8* %77, %struct.rev_info* %8, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 (i8*, ...) @die(i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.object_array_entry*, %struct.object_array_entry** %92, align 8
  store %struct.object_array_entry* %93, %struct.object_array_entry** %19, align 8
  %94 = load %struct.object_array_entry*, %struct.object_array_entry** %19, align 8
  %95 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %94, i64 0
  %96 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.object_array_entry*, %struct.object_array_entry** %19, align 8
  %100 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %99, i64 1
  %101 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i64 @oideq(i32* %98, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %160

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %85
  %109 = call i32 @get_patch_ids(%struct.rev_info* %8, %struct.patch_ids* %9)
  %110 = load i8*, i8** %15, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i8*, i8** %15, align 8
  %114 = load i32, i32* @UNINTERESTING, align 4
  %115 = call i64 @add_pending_commit(i8* %113, %struct.rev_info* %8, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 (i8*, ...) @die(i8* %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %112, %108
  %122 = call i64 @prepare_revision_walk(%struct.rev_info* %8)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @die(i8* %125)
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %131, %127
  %129 = call %struct.commit* @get_revision(%struct.rev_info* %8)
  store %struct.commit* %129, %struct.commit** %10, align 8
  %130 = icmp ne %struct.commit* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.commit*, %struct.commit** %10, align 8
  %133 = call i32 @commit_list_insert(%struct.commit* %132, %struct.commit_list** %11)
  br label %128

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %146, %134
  %136 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %137 = icmp ne %struct.commit_list* %136, null
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  store i8 43, i8* %20, align 1
  %139 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %140 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %139, i32 0, i32 1
  %141 = load %struct.commit*, %struct.commit** %140, align 8
  store %struct.commit* %141, %struct.commit** %10, align 8
  %142 = load %struct.commit*, %struct.commit** %10, align 8
  %143 = call i64 @has_commit_patch_id(%struct.commit* %142, %struct.patch_ids* %9)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i8 45, i8* %20, align 1
  br label %146

146:                                              ; preds = %145, %138
  %147 = load i8, i8* %20, align 1
  %148 = load %struct.commit*, %struct.commit** %10, align 8
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @print_commit(i8 signext %147, %struct.commit* %148, i32 %149, i32 %150, i32 %153)
  %155 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %156 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %155, i32 0, i32 0
  %157 = load %struct.commit_list*, %struct.commit_list** %156, align 8
  store %struct.commit_list* %157, %struct.commit_list** %11, align 8
  br label %135

158:                                              ; preds = %135
  %159 = call i32 @free_patch_ids(%struct.patch_ids* %9)
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %106
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @OPT__ABBREV(i32*) #1

declare dso_local i32 @OPT__VERBOSE(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local %struct.branch* @branch_get(i32*) #1

declare dso_local i8* @branch_get_upstream(%struct.branch*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i64 @add_pending_commit(i8*, %struct.rev_info*, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @get_patch_ids(%struct.rev_info*, %struct.patch_ids*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i64 @has_commit_patch_id(%struct.commit*, %struct.patch_ids*) #1

declare dso_local i32 @print_commit(i8 signext, %struct.commit*, i32, i32, i32) #1

declare dso_local i32 @free_patch_ids(%struct.patch_ids*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
