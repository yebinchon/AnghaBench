; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff-files.c_cmd_diff_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff-files.c_cmd_diff_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@diff_files_usage = common dso_local global i32 0, align 4
@git_diff_basic_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"--base\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--ours\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"--theirs\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@DIFF_SILENT_ON_REMOVED = common dso_local global i32 0, align 4
@DIFF_FORMAT_RAW = common dso_local global i32 0, align 4
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"read_cache_preload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_diff_files(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @diff_files_usage, align 4
  %21 = call i32 @usage(i32 %20)
  br label %22

22:                                               ; preds = %19, %13, %3
  %23 = load i32, i32* @git_diff_basic_config, align 4
  %24 = call i32 @git_config(i32 %23, i32* null)
  %25 = load i32, i32* @the_repository, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @repo_init_revisions(i32 %25, %struct.rev_info* %8, i8* %26)
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i8**, i8*** %6, align 8
  %31 = call i32 @precompose_argv(i32 %29, i8** %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = call i32 @setup_revisions(i32 %32, i8** %33, %struct.rev_info* %8, i32* null)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %88, %22
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 1, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br label %46

46:                                               ; preds = %38, %35
  %47 = phi i1 [ false, %35 ], [ %45, %38 ]
  br i1 %47, label %48, label %93

48:                                               ; preds = %46
  %49 = load i8**, i8*** %6, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %88

56:                                               ; preds = %48
  %57 = load i8**, i8*** %6, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  store i32 2, i32* %63, align 8
  br label %87

64:                                               ; preds = %56
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  store i32 3, i32* %71, align 8
  br label %86

72:                                               ; preds = %64
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @DIFF_SILENT_ON_REMOVED, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @diff_files_usage, align 4
  %84 = call i32 @usage(i32 %83)
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %70
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i8**, i8*** %6, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %5, align 4
  br label %35

93:                                               ; preds = %46
  %94 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @DIFF_FORMAT_RAW, align 4
  %100 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 3, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115, %111, %107, %102
  %120 = load i32, i32* @diff_files_usage, align 4
  %121 = call i32 @usage(i32 %120)
  br label %122

122:                                              ; preds = %119, %115
  %123 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  store i32 1, i32* %138, align 8
  %139 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %130, %126, %122
  %141 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = call i64 @read_cache_preload(i32* %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %153

147:                                              ; preds = %140
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @run_diff_files(%struct.rev_info* %8, i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @diff_result_code(%struct.TYPE_4__* %150, i32 %151)
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %147, %145
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @precompose_argv(i32, i8**) #1

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #1

declare dso_local i64 @read_cache_preload(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @run_diff_files(%struct.rev_info*, i32) #1

declare dso_local i32 @diff_result_code(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
