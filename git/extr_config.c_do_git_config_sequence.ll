; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_do_git_config_sequence.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_do_git_config_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_options = type { i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"~/.gitconfig\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/config\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"git_dir without commondir\00", align 1
@CONFIG_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@current_parsing_scope = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@ACCESS_EACCES_OK = common dso_local global i32 0, align 4
@CONFIG_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@CONFIG_SCOPE_REPO = common dso_local global i32 0, align 4
@repository_format_worktree_config = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"config.worktree\00", align 1
@CONFIG_SCOPE_CMDLINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"unable to parse command-line config\00", align 1
@CONFIG_SCOPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_options*, i32, i8*)* @do_git_config_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_git_config_sequence(%struct.config_options* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.config_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.config_options* %0, %struct.config_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = call i8* @xdg_config_home(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = call i8* @expand_user_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %13, i8** %9, align 8
  %14 = load %struct.config_options*, %struct.config_options** %4, align 8
  %15 = getelementptr inbounds %struct.config_options, %struct.config_options* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.config_options*, %struct.config_options** %4, align 8
  %20 = getelementptr inbounds %struct.config_options, %struct.config_options* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @mkpathdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  store i8* %22, i8** %10, align 8
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.config_options*, %struct.config_options** %4, align 8
  %25 = getelementptr inbounds %struct.config_options, %struct.config_options* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @BUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %31

30:                                               ; preds = %23
  store i8* null, i8** %10, align 8
  br label %31

31:                                               ; preds = %30, %28
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* @CONFIG_SCOPE_SYSTEM, align 4
  store i32 %33, i32* @current_parsing_scope, align 4
  %34 = call i64 (...) @git_config_system()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = call i8* (...) @git_etc_gitconfig()
  %38 = load i32, i32* @R_OK, align 4
  %39 = load %struct.config_options*, %struct.config_options** %4, align 8
  %40 = getelementptr inbounds %struct.config_options, %struct.config_options* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ACCESS_EACCES_OK, align 4
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = call i32 @access_or_die(i8* %37, i32 %38, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = call i8* (...) @git_etc_gitconfig()
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @git_config_from_file(i32 %51, i8* %52, i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %50, %46, %32
  %60 = load i32, i32* @CONFIG_SCOPE_GLOBAL, align 4
  store i32 %60, i32* @current_parsing_scope, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @R_OK, align 4
  %66 = load i32, i32* @ACCESS_EACCES_OK, align 4
  %67 = call i32 @access_or_die(i8* %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @git_config_from_file(i32 %70, i8* %71, i8* %72)
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %69, %63, %59
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* @R_OK, align 4
  %84 = load i32, i32* @ACCESS_EACCES_OK, align 4
  %85 = call i32 @access_or_die(i8* %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @git_config_from_file(i32 %88, i8* %89, i8* %90)
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %87, %81, %78
  %97 = load i32, i32* @CONFIG_SCOPE_REPO, align 4
  store i32 %97, i32* @current_parsing_scope, align 4
  %98 = load %struct.config_options*, %struct.config_options** %4, align 8
  %99 = getelementptr inbounds %struct.config_options, %struct.config_options* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %119, label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* @R_OK, align 4
  %108 = call i32 @access_or_die(i8* %106, i32 %107, i32 0)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @git_config_from_file(i32 %111, i8* %112, i8* %113)
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %110, %105, %102, %96
  %120 = load %struct.config_options*, %struct.config_options** %4, align 8
  %121 = getelementptr inbounds %struct.config_options, %struct.config_options* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %119
  %125 = load i64, i64* @repository_format_worktree_config, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = call i8* @git_pathdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %128, i8** %11, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i32, i32* @R_OK, align 4
  %131 = call i32 @access_or_die(i8* %129, i32 %130, i32 0)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %5, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i64 @git_config_from_file(i32 %134, i8* %135, i8* %136)
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %133, %127
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %124, %119
  %146 = load i32, i32* @CONFIG_SCOPE_CMDLINE, align 4
  store i32 %146, i32* @current_parsing_scope, align 4
  %147 = load %struct.config_options*, %struct.config_options** %4, align 8
  %148 = getelementptr inbounds %struct.config_options, %struct.config_options* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %5, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = call i64 @git_config_from_parameters(i32 %152, i8* %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %158 = call i32 @die(i32 %157)
  br label %159

159:                                              ; preds = %156, %151, %145
  %160 = load i32, i32* @CONFIG_SCOPE_UNKNOWN, align 4
  store i32 %160, i32* @current_parsing_scope, align 4
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @free(i8* %163)
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i8* @xdg_config_home(i8*) #1

declare dso_local i8* @expand_user_path(i8*, i32) #1

declare dso_local i8* @mkpathdup(i8*, i64) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @git_config_system(...) #1

declare dso_local i32 @access_or_die(i8*, i32, i32) #1

declare dso_local i8* @git_etc_gitconfig(...) #1

declare dso_local i64 @git_config_from_file(i32, i8*, i8*) #1

declare dso_local i8* @git_pathdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @git_config_from_parameters(i32, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
