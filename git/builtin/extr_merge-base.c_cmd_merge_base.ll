; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-base.c_cmd_merge_base.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-base.c_cmd_merge_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"output all common ancestors\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"octopus\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"find ancestors for a single n-way merge\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"independent\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"list revs not reachable from others\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"is-ancestor\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"is the first one ancestor of the other?\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"fork-point\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"find where <commit> forked from reflog of <ref>\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@merge_base_usage = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"--is-ancestor cannot be used with --all\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"--independent cannot be used with --all\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_merge_base(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %12, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @OPT_BOOL(i8 signext 97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %18 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 %18, float 1.110000e+02)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %11, i32 %22, float 1.140000e+02)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %26 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %11, i32 %26, float 9.700000e+01)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %31 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %11, i32 %30, float 1.020000e+02)
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %34 = call i32 (...) @OPT_END()
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @git_default_config, align 4
  %37 = call i32 @git_config(i32 %36, i32* null)
  %38 = load i32, i32* %5, align 4
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %12, i64 0, i64 0
  %42 = load i32, i32* @merge_base_usage, align 4
  %43 = call i32 @parse_options(i32 %38, i8** %39, i8* %40, %struct.option* %41, i32 %42, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 97
  br i1 %45, label %46, label %62

46:                                               ; preds = %3
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @merge_base_usage, align 4
  %51 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %12, i64 0, i64 0
  %52 = call i32 @usage_with_options(i32 %50, %struct.option* %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %5, align 4
  %60 = load i8**, i8*** %6, align 8
  %61 = call i32 @handle_is_ancestor(i32 %59, i8** %60)
  store i32 %61, i32* %4, align 4
  br label %133

62:                                               ; preds = %3
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 114
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65, %62
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 111
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @handle_octopus(i32 %74, i8** %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %133

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 114
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = load i8**, i8*** %6, align 8
  %84 = call i32 @handle_independent(i32 %82, i8** %83)
  store i32 %84, i32* %4, align 4
  br label %133

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 102
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 2, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @merge_base_usage, align 4
  %96 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %12, i64 0, i64 0
  %97 = call i32 @usage_with_options(i32 %95, %struct.option* %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %5, align 4
  %100 = load i8**, i8*** %6, align 8
  %101 = call i32 @handle_fork_point(i32 %99, i8** %100)
  store i32 %101, i32* %4, align 4
  br label %133

102:                                              ; preds = %85
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @merge_base_usage, align 4
  %107 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %12, i64 0, i64 0
  %108 = call i32 @usage_with_options(i32 %106, %struct.option* %107)
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.commit**, %struct.commit*** %8, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @ALLOC_ARRAY(%struct.commit** %110, i32 %111)
  br label %113

113:                                              ; preds = %117, %109
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %5, align 4
  %116 = icmp sgt i32 %114, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i8**, i8*** %6, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %6, align 8
  %120 = load i8*, i8** %118, align 8
  %121 = ptrtoint i8* %120 to i32
  %122 = call %struct.commit* @get_commit_reference(i32 %121)
  %123 = load %struct.commit**, %struct.commit*** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds %struct.commit*, %struct.commit** %123, i64 %126
  store %struct.commit* %122, %struct.commit** %127, align 8
  br label %113

128:                                              ; preds = %113
  %129 = load %struct.commit**, %struct.commit*** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @show_merge_base(%struct.commit** %129, i32 %130, i32 %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %128, %98, %81, %73, %58
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_CMDMODE(i32, i8*, i32*, i32, float) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @handle_is_ancestor(i32, i8**) #1

declare dso_local i32 @handle_octopus(i32, i8**, i32) #1

declare dso_local i32 @handle_independent(i32, i8**) #1

declare dso_local i32 @handle_fork_point(i32, i8**) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.commit**, i32) #1

declare dso_local %struct.commit* @get_commit_reference(i32) #1

declare dso_local i32 @show_merge_base(%struct.commit**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
