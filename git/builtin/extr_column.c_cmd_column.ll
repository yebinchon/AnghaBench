; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_column.c_cmd_column.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_column.c_cmd_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.strbuf = type { i32 }
%struct.column_options = type { i32, i8*, i32, i32 }
%struct.option = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"lookup config vars\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@colopts = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"layout to use\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"raw-mode\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Maximum width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Padding space on left border\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Padding space on right border\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Padding space between columns\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"--command=\00", align 1
@column_config = common dso_local global i32 0, align 4
@builtin_column_usage = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"--command must be the first argument\00", align 1
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_column(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.column_options, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [8 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = bitcast %struct.string_list* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %14 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = getelementptr inbounds [8 x %struct.option], [8 x %struct.option]* %12, i64 0, i64 0
  %16 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %21 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @OPT_COLUMN(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* @colopts, i32 %21)
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %25 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* @colopts, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %29 = getelementptr inbounds %struct.column_options, %struct.column_options* %9, i32 0, i32 0
  %30 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %29, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %34 = getelementptr inbounds %struct.column_options, %struct.column_options* %9, i32 0, i32 1
  %35 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %36 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %37 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %40 = getelementptr inbounds %struct.column_options, %struct.column_options* %9, i32 0, i32 2
  %41 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %42 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %40, i32 %41)
  %43 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.option, %struct.option* %39, i64 1
  %45 = getelementptr inbounds %struct.column_options, %struct.column_options* %9, i32 0, i32 3
  %46 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %47 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* %45, i32 %46)
  %48 = getelementptr inbounds %struct.option, %struct.option* %44, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.option, %struct.option* %44, i64 1
  %50 = call i32 (...) @OPT_END()
  %51 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %68

54:                                               ; preds = %3
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @starts_with(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 10
  store i8* %64, i8** %10, align 8
  %65 = load i32, i32* @column_config, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @git_config(i32 %65, i8* %66)
  br label %71

68:                                               ; preds = %54, %3
  %69 = load i32, i32* @column_config, align 4
  %70 = call i32 @git_config(i32 %69, i8* null)
  br label %71

71:                                               ; preds = %68, %60
  %72 = call i32 @memset(%struct.column_options* %9, i32 0, i32 24)
  %73 = getelementptr inbounds %struct.column_options, %struct.column_options* %9, i32 0, i32 3
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds [8 x %struct.option], [8 x %struct.option]* %12, i64 0, i64 0
  %78 = load i32, i32* @builtin_column_usage, align 4
  %79 = call i32 @parse_options(i32 %74, i8** %75, i8* %76, %struct.option* %77, i32 %78, i32 0)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load i32, i32* @builtin_column_usage, align 4
  %84 = getelementptr inbounds [8 x %struct.option], [8 x %struct.option]* %12, i64 0, i64 0
  %85 = call i32 @usage_with_options(i32 %83, %struct.option* %84)
  br label %86

86:                                               ; preds = %82, %71
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %89, %86
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i8*, i8** %10, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i64 @strcmp(i8* %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98, %95, %92
  %104 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  %105 = call i32 @die(i32 %104)
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %89
  %108 = call i32 @finalize_colopts(i32* @colopts, i32 -1)
  br label %109

109:                                              ; preds = %114, %107
  %110 = load i32, i32* @stdin, align 4
  %111 = call i32 @strbuf_getline(%struct.strbuf* %8, i32 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @string_list_append(%struct.string_list* %7, i32 %116)
  br label %109

118:                                              ; preds = %109
  %119 = load i32, i32* @colopts, align 4
  %120 = call i32 @print_columns(%struct.string_list* %7, i32 %119, %struct.column_options* %9)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_COLUMN(i32, i8*, i32*, i32) #2

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @git_config(i32, i8*) #2

declare dso_local i32 @memset(%struct.column_options*, i32, i32) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @finalize_colopts(i32*, i32) #2

declare dso_local i32 @strbuf_getline(%struct.strbuf*, i32) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @print_columns(%struct.string_list*, i32, %struct.column_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
