; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_interpret-trailers.c_cmd_interpret_trailers.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_interpret-trailers.c_cmd_interpret_trailers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_trailer_options = type { i64, i64, i64, i64, i64, i64 }
%struct.option = type { i8*, i32, i32, i32, i32*, %struct.process_trailer_options*, i32, i32 }

@PROCESS_TRAILER_OPTIONS_INIT = common dso_local global %struct.process_trailer_options zeroinitializer, align 8
@trailers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"in-place\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"edit files in place\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"trim-empty\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"trim empty trailers\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"where to place the new trailer\00", align 1
@option_parse_where = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"if-exists\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"action if trailer already exists\00", align 1
@option_parse_if_exists = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"if-missing\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"action if trailer is missing\00", align 1
@option_parse_if_missing = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"only-trailers\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"output only the trailers\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"only-input\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"do not apply config rules\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"unfold\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"join whitespace-continued values\00", align 1
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"set parsing options\00", align 1
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@parse_opt_parse = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"no-divider\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"do not treat --- specially\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"trailer\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"trailer(s) to add\00", align 1
@option_parse_trailer = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@git_interpret_trailers_usage = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [48 x i8] c"--trailer with --only-input does not make sense\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"no input file given for in-place editing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_interpret_trailers(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.process_trailer_options, align 8
  %8 = alloca [12 x %struct.option], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.process_trailer_options* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.process_trailer_options* @PROCESS_TRAILER_OPTIONS_INIT to i8*), i64 48, i1 false)
  %11 = load i32, i32* @trailers, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = getelementptr inbounds [12 x %struct.option], [12 x %struct.option]* %8, i64 0, i64 0
  %14 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 0
  %15 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %13, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %14, i32 %15)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %17 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 5
  %18 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %16, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %17, i32 %18)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %20 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32, i32* @option_parse_where, align 4
  call void @OPT_CALLBACK(%struct.option* sret %19, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %20, i32 %21, i32 %22)
  %23 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %24 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %26 = load i32, i32* @option_parse_if_exists, align 4
  call void @OPT_CALLBACK(%struct.option* sret %23, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %24, i32 %25, i32 %26)
  %27 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %28 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %30 = load i32, i32* @option_parse_if_missing, align 4
  call void @OPT_CALLBACK(%struct.option* sret %27, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %28, i32 %29, i32 %30)
  %31 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %32 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 4
  %33 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %31, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64* %32, i32 %33)
  %34 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %35 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 1
  %36 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %34, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64* %35, i32 %36)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %38 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 3
  %39 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %37, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64* %38, i32 %39)
  %40 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 0
  %42 = load i32, i32* @OPTION_CALLBACK, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %41, align 16
  %45 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 2
  store i32 ptrtoint ([6 x i8]* @.str.17 to i32), i32* %46, align 4
  %47 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 3
  %48 = ptrtoint %struct.process_trailer_options* %7 to i32
  store i32 %48, i32* %47, align 16
  %49 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 5
  %51 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.process_trailer_options*
  store %struct.process_trailer_options* %53, %struct.process_trailer_options** %50, align 16
  %54 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 6
  %55 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %56 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %54, align 8
  %58 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 7
  %59 = load i32, i32* @parse_opt_parse, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %61 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 2
  %62 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %60, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64* %61, i32 %62)
  %63 = getelementptr inbounds %struct.option, %struct.option* %60, i64 1
  %64 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %65 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %66 = load i32, i32* @option_parse_trailer, align 4
  call void @OPT_CALLBACK(%struct.option* sret %63, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32* @trailers, i32 %64, i32 %65, i32 %66)
  %67 = getelementptr inbounds %struct.option, %struct.option* %63, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %67)
  %68 = load i32, i32* @git_default_config, align 4
  %69 = call i32 @git_config(i32 %68, i32* null)
  %70 = load i32, i32* %4, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds [12 x %struct.option], [12 x %struct.option]* %8, i64 0, i64 0
  %74 = load i32, i32* @git_interpret_trailers_usage, align 4
  %75 = call i32 @parse_options(i32 %70, i8** %71, i8* %72, %struct.option* %73, i32 %74, i32 0)
  store i32 %75, i32* %4, align 4
  %76 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %3
  %80 = call i32 @list_empty(i32* @trailers)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0))
  %84 = load i32, i32* @git_interpret_trailers_usage, align 4
  %85 = getelementptr inbounds [12 x %struct.option], [12 x %struct.option]* %8, i64 0, i64 0
  %86 = call i32 @usage_msg_opt(i32 %83, i32 %84, %struct.option* %85)
  br label %87

87:                                               ; preds = %82, %79, %3
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %102, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @process_trailers(i8* %100, %struct.process_trailer_options* %7, i32* @trailers)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %91

105:                                              ; preds = %91
  br label %115

106:                                              ; preds = %87
  %107 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %7, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  %112 = call i32 @die(i32 %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = call i32 @process_trailers(i8* null, %struct.process_trailer_options* %7, i32* @trailers)
  br label %115

115:                                              ; preds = %113, %105
  %116 = call i32 @new_trailers_clear(i32* @trailers)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LIST_HEAD(i32) #2

declare dso_local void @OPT_BOOL(%struct.option* sret, i32, i8*, i64*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT_CALLBACK(%struct.option* sret, i32, i8*, i32*, i32, i32, i32) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @usage_msg_opt(i32, i32, %struct.option*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @process_trailers(i8*, %struct.process_trailer_options*, i32*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @new_trailers_clear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
