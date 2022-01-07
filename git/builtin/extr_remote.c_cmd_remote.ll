; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_cmd_remote.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_cmd_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"be verbose; must be placed before a subcommand\00", align 1
@builtin_remote_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"set-head\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"set-branches\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"get-url\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"set-url\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Unknown subcommand: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_remote(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x %struct.option], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %10 = call i32 @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @OPT__VERBOSE(i32* @verbose, i32 %10)
  %12 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %14 = call i32 (...) @OPT_END()
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %20 = load i32, i32* @builtin_remote_usage, align 4
  %21 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %22 = call i32 @parse_options(i32 %16, i8** %17, i8* %18, %struct.option* %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (...) @show_all()
  store i32 %26, i32* %8, align 4
  br label %152

27:                                               ; preds = %3
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @add(i32 %34, i8** %35)
  store i32 %36, i32* %8, align 4
  br label %151

37:                                               ; preds = %27
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @mv(i32 %44, i8** %45)
  store i32 %46, i32* %8, align 4
  br label %150

47:                                               ; preds = %37
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = call i32 @rm(i32 %60, i8** %61)
  store i32 %62, i32* %8, align 4
  br label %149

63:                                               ; preds = %53
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = call i32 @set_head(i32 %70, i8** %71)
  store i32 %72, i32* %8, align 4
  br label %148

73:                                               ; preds = %63
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = call i32 @set_branches(i32 %80, i8** %81)
  store i32 %82, i32* %8, align 4
  br label %147

83:                                               ; preds = %73
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %4, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = call i32 @get_url(i32 %90, i8** %91)
  store i32 %92, i32* %8, align 4
  br label %146

93:                                               ; preds = %83
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %4, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = call i32 @set_url(i32 %100, i8** %101)
  store i32 %102, i32* %8, align 4
  br label %145

103:                                              ; preds = %93
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = call i32 @show(i32 %110, i8** %111)
  store i32 %112, i32* %8, align 4
  br label %144

113:                                              ; preds = %103
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %4, align 4
  %121 = load i8**, i8*** %5, align 8
  %122 = call i32 @prune(i32 %120, i8** %121)
  store i32 %122, i32* %8, align 4
  br label %143

123:                                              ; preds = %113
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  %131 = load i8**, i8*** %5, align 8
  %132 = call i32 @update(i32 %130, i8** %131)
  store i32 %132, i32* %8, align 4
  br label %142

133:                                              ; preds = %123
  %134 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @error(i32 %134, i8* %137)
  %139 = load i32, i32* @builtin_remote_usage, align 4
  %140 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %141 = call i32 @usage_with_options(i32 %139, %struct.option* %140)
  br label %142

142:                                              ; preds = %133, %129
  br label %143

143:                                              ; preds = %142, %119
  br label %144

144:                                              ; preds = %143, %109
  br label %145

145:                                              ; preds = %144, %99
  br label %146

146:                                              ; preds = %145, %89
  br label %147

147:                                              ; preds = %146, %79
  br label %148

148:                                              ; preds = %147, %69
  br label %149

149:                                              ; preds = %148, %59
  br label %150

150:                                              ; preds = %149, %43
  br label %151

151:                                              ; preds = %150, %33
  br label %152

152:                                              ; preds = %151, %25
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  ret i32 %156
}

declare dso_local i32 @OPT__VERBOSE(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @show_all(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @add(i32, i8**) #1

declare dso_local i32 @mv(i32, i8**) #1

declare dso_local i32 @rm(i32, i8**) #1

declare dso_local i32 @set_head(i32, i8**) #1

declare dso_local i32 @set_branches(i32, i8**) #1

declare dso_local i32 @get_url(i32, i8**) #1

declare dso_local i32 @set_url(i32, i8**) #1

declare dso_local i32 @show(i32, i8**) #1

declare dso_local i32 @prune(i32, i8**) #1

declare dso_local i32 @update(i32, i8**) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
