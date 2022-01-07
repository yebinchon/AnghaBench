; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_env--helper.c_cmd_env__helper.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_env--helper.c_cmd_env__helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@cmdmode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"value is given this type\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@option_parse_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"default for git_env_*(...) to fall back on\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"exit-code\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"be quiet only use git_env_*() value as exit code\00", align 1
@env__helper_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [72 x i8] c"option `--default' expects a boolean value with `--type=bool`, not `%s`\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"option `--default' expects an unsigned long value with `--type=ulong`, not `%s`\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"unknown <type> value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_env__helper(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %16 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %15, i64 0, i64 0
  %17 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %20 = load i32, i32* @option_parse_type, align 4
  %21 = call i32 @OPT_CALLBACK_F(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* @cmdmode, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %24 = call i32 @N_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %29 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %7, i32 %29)
  %31 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %33 = call i32 (...) @OPT_END()
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %15, i64 0, i64 0
  %39 = load i32, i32* @env__helper_usage, align 4
  %40 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %41 = call i32 @parse_options(i32 %35, i8** %36, i8* %37, %struct.option* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @env__helper_usage, align 4
  %50 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %15, i64 0, i64 0
  %51 = call i32 @usage_with_options(i32 %49, %struct.option* %50)
  br label %52

52:                                               ; preds = %48, %44, %3
  %53 = load i32, i32* @cmdmode, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @env__helper_usage, align 4
  %57 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %15, i64 0, i64 0
  %58 = call i32 @usage_with_options(i32 %56, %struct.option* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @env__helper_usage, align 4
  %64 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %15, i64 0, i64 0
  %65 = call i32 @usage_with_options(i32 %63, %struct.option* %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %8, align 8
  %70 = load i32, i32* @cmdmode, align 4
  switch i32 %70, label %130 [
    i32 129, label %71
    i32 128, label %102
  ]

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @git_parse_maybe_bool(i8* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @error(i32 %80, i8* %81)
  %83 = load i32, i32* @env__helper_usage, align 4
  %84 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %15, i64 0, i64 0
  %85 = call i32 @usage_with_options(i32 %83, %struct.option* %84)
  br label %86

86:                                               ; preds = %79, %74
  br label %88

87:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @git_env_bool(i8* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %99 = call i32 @puts(i8* %98)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %10, align 4
  br label %132

102:                                              ; preds = %66
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @git_parse_ulong(i8* %106, i64* %14)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = call i32 @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0))
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @error(i32 %110, i8* %111)
  %113 = load i32, i32* @env__helper_usage, align 4
  %114 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %15, i64 0, i64 0
  %115 = call i32 @usage_with_options(i32 %113, %struct.option* %114)
  br label %116

116:                                              ; preds = %109, %105
  br label %118

117:                                              ; preds = %102
  store i64 0, i64* %14, align 8
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i64 @git_env_ulong(i8* %119, i64 %120)
  store i64 %121, i64* %13, align 8
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load i64, i64* %13, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %10, align 4
  br label %132

130:                                              ; preds = %66
  %131 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127, %100
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  ret i32 %136
}

declare dso_local i32 @OPT_CALLBACK_F(i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @git_env_bool(i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @git_parse_ulong(i8*, i64*) #1

declare dso_local i64 @git_env_ulong(i8*, i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
