; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_cmd_fmt_merge_msg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_cmd_fmt_merge_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.option = type { i8*, i32*, i32, i32, i32*, i32, i32, i32, i32 }
%struct.fmt_merge_msg_opts = type { i32, i32, i32 }

@OPTION_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"populate log with at most <n> entries from shortlog\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@DEFAULT_MERGE_LOG_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"alias for --log (deprecated)\00", align 1
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"use <text> as start of message\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"file to read from\00", align 1
@stdin = common dso_local global i32* null, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@fmt_merge_msg_config = common dso_local global i32 0, align 4
@fmt_merge_msg_usage = common dso_local global i32 0, align 4
@merge_log_config = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"could not read input file\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_fmt_merge_msg(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [5 x %struct.option], align 16
  %12 = alloca i32*, align 8
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fmt_merge_msg_opts, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 -1, i32* %10, align 4
  %17 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  %19 = load i32, i32* @OPTION_INTEGER, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %18, align 16
  %22 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 2
  store i32 ptrtoint ([4 x i8]* @.str to i32), i32* %23, align 16
  %24 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 3
  %25 = ptrtoint i32* %10 to i32
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 4
  %27 = call i32 @N_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 5
  %31 = call i32 @N_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %30, align 16
  %32 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 6
  %33 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 7
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 8
  %36 = load i32, i32* @DEFAULT_MERGE_LOG_LEN, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  %39 = load i32, i32* @OPTION_INTEGER, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %38, align 16
  %42 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 2
  store i32 ptrtoint ([8 x i8]* @.str.3 to i32), i32* %43, align 16
  %44 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 3
  %45 = ptrtoint i32* %10 to i32
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 4
  %47 = call i32 @N_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %46, align 8
  %50 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 5
  %51 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 %51, i32* %50, align 16
  %52 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 6
  %53 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %54 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %52, align 4
  %56 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 7
  store i32 0, i32* %56, align 8
  %57 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 8
  %58 = load i32, i32* @DEFAULT_MERGE_LOG_LEN, align 4
  store i32 %58, i32* %57, align 4
  %59 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %60 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %61 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %59, i8 signext 109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %9, i32 %60, i32 %61)
  %62 = getelementptr inbounds %struct.option, %struct.option* %59, i64 1
  %63 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  call void @OPT_FILENAME(%struct.option* sret %62, float 7.000000e+01, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %8, i32 %63)
  %64 = getelementptr inbounds %struct.option, %struct.option* %62, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %64)
  %65 = load i32*, i32** @stdin, align 8
  store i32* %65, i32** %12, align 8
  %66 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %67 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %68 = load i32, i32* @fmt_merge_msg_config, align 4
  %69 = call i32 @git_config(i32 %68, i32* null)
  %70 = load i32, i32* %5, align 4
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %11, i64 0, i64 0
  %74 = load i32, i32* @fmt_merge_msg_usage, align 4
  %75 = call i32 @parse_options(i32 %70, i8** %71, i8* %72, %struct.option* %73, i32 %74, i32 0)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %3
  %79 = load i32, i32* @fmt_merge_msg_usage, align 4
  %80 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %11, i64 0, i64 0
  %81 = call i32 @usage_with_options(i32 %79, %struct.option* %80)
  br label %82

82:                                               ; preds = %78, %3
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i64, i64* @merge_log_config, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i64, i64* @merge_log_config, align 8
  br label %91

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i64 [ %89, %88 ], [ 0, %90 ]
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i8*, i8** %8, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i8*, i8** %8, align 8
  %103 = call i32* @fopen(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %103, i32** %12, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %101
  br label %110

110:                                              ; preds = %109, %97, %94
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @fileno(i32* %111)
  %113 = call i64 @strbuf_read(%struct.strbuf* %13, i32 %112, i32 0)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i8*, i8** %9, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = call i32 @memset(%struct.fmt_merge_msg_opts* %16, i32 0, i32 12)
  %125 = load i8*, i8** %9, align 8
  %126 = icmp ne i8* %125, null
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %16, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %16, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %132 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %16, i32 0, i32 2
  store i32 %131, i32* %132, align 4
  %133 = call i32 @fmt_merge_msg(%struct.strbuf* %13, %struct.strbuf* %14, %struct.fmt_merge_msg_opts* %16)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %4, align 4
  br label %145

138:                                              ; preds = %123
  %139 = load i32, i32* @STDOUT_FILENO, align 4
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @write_in_full(i32 %139, i32 %141, i32 %143)
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %138, %136
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @N_(i8*) #1

declare dso_local void @OPT_STRING(%struct.option* sret, i8 signext, i8*, i8**, i32, i32) #1

declare dso_local void @OPT_FILENAME(%struct.option* sret, float, i8*, i8**, i32) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @die_errno(i8*, ...) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @memset(%struct.fmt_merge_msg_opts*, i32, i32) #1

declare dso_local i32 @fmt_merge_msg(%struct.strbuf*, %struct.strbuf*, %struct.fmt_merge_msg_opts*) #1

declare dso_local i32 @write_in_full(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
