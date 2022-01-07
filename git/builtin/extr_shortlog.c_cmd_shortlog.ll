; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_cmd_shortlog.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_cmd_shortlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.shortlog = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.rev_info = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.option = type { i8, i32*, i32, i32, i32, %struct.shortlog*, i32*, i32 }
%struct.parse_opt_ctx_t = type { i32 }

@STRING_LIST_INIT_NODUP = common dso_local global i32 0, align 4
@startup_info = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"committer\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Group by committer rather than author\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"numbered\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"sort output according to the number of commits per author\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Suppress commit descriptions, only provides commit count\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Show the email address of each author\00", align 1
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"<w>[,<i1>[,<i2>]]\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Linewrap output\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@parse_wrap_args = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@shortlog_usage = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"too many arguments given outside repository\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"unrecognized argument: %s\00", align 1
@CMIT_FMT_USERFORMAT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"(reading log message from standard input)\0A\00", align 1
@stdout = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_shortlog(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.shortlog, align 8
  %8 = alloca %struct.rev_info, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x %struct.option], align 16
  %11 = alloca %struct.parse_opt_ctx_t, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = bitcast %struct.shortlog* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 0
  %14 = load i32, i32* @STRING_LIST_INIT_NODUP, align 4
  store i32 %14, i32* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @startup_info, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %10, i64 0, i64 0
  %22 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 6
  %23 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %21, i8 signext 99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %22, i32 %23)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %25 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 5
  %26 = call i32 @N_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %24, i8 signext 110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %25, i32 %26)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %28 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 4
  %29 = call i32 @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %27, i8 signext 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %28, i32 %29)
  %30 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %31 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 3
  %32 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %30, i8 signext 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %31, i32 %32)
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  %35 = load i32, i32* @OPTION_CALLBACK, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %34, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 1
  store i32* inttoptr (i64 119 to i32*), i32** %37, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 3
  %40 = ptrtoint %struct.shortlog* %7 to i32
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 4
  %42 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 5
  %44 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.shortlog*
  store %struct.shortlog* %46, %struct.shortlog** %43, align 8
  %47 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 6
  %48 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %47, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 7
  store i32 ptrtoint (i32* @parse_wrap_args to i32), i32* %51, align 8
  %52 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %52)
  %53 = load i32, i32* @git_default_config, align 4
  %54 = call i32 @git_config(i32 %53, i32* null)
  %55 = call i32 @shortlog_init(%struct.shortlog* %7)
  %56 = load i32, i32* @the_repository, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @repo_init_revisions(i32 %56, %struct.rev_info* %8, i8* %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %10, i64 0, i64 0
  %63 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %64 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @parse_options_start(%struct.parse_opt_ctx_t* %11, i32 %59, i8** %60, i8* %61, %struct.option* %62, i32 %65)
  br label %67

67:                                               ; preds = %76, %3
  %68 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %10, i64 0, i64 0
  %69 = load i32, i32* @shortlog_usage, align 4
  %70 = call i32 @parse_options_step(%struct.parse_opt_ctx_t* %11, %struct.option* %68, i32 %69)
  switch i32 %70, label %76 [
    i32 128, label %71
    i32 129, label %71
    i32 131, label %73
    i32 130, label %75
  ]

71:                                               ; preds = %67, %67
  %72 = call i32 @exit(i32 129) #4
  unreachable

73:                                               ; preds = %67
  %74 = call i32 @exit(i32 0) #4
  unreachable

75:                                               ; preds = %67
  br label %80

76:                                               ; preds = %67
  %77 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %10, i64 0, i64 0
  %78 = load i32, i32* @shortlog_usage, align 4
  %79 = call i32 @parse_revision_opt(%struct.rev_info* %8, %struct.parse_opt_ctx_t* %11, %struct.option* %77, i32 %78)
  br label %67

80:                                               ; preds = %75
  %81 = call i32 @parse_options_end(%struct.parse_opt_ctx_t* %11)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @error(i8* %88)
  %90 = load i32, i32* @shortlog_usage, align 4
  %91 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %10, i64 0, i64 0
  %92 = call i32 @usage_with_options(i32 %90, %struct.option* %91)
  br label %93

93:                                               ; preds = %87, %84, %80
  %94 = load i32, i32* %4, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = call i32 @setup_revisions(i32 %94, i8** %95, %struct.rev_info* %8, i32* null)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @error(i8* %99, i8* %102)
  %104 = load i32, i32* @shortlog_usage, align 4
  %105 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %10, i64 0, i64 0
  %106 = call i32 @usage_with_options(i32 %104, %struct.option* %105)
  br label %107

107:                                              ; preds = %98, %93
  %108 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CMIT_FMT_USERFORMAT, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 2
  store i32 %115, i32* %116, align 8
  %117 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %107
  %124 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = call i64 @isatty(i32 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @add_head_to_pending(%struct.rev_info* %8)
  br label %133

133:                                              ; preds = %131, %128, %123, %107
  %134 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = call i64 @isatty(i32 0)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @stderr, align 4
  %143 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %144 = call i32 @fprintf(i32 %142, i8* %143)
  br label %145

145:                                              ; preds = %141, %138
  %146 = call i32 @read_from_stdin(%struct.shortlog* %7)
  br label %149

147:                                              ; preds = %133
  %148 = call i32 @get_from_rev(%struct.rev_info* %8, %struct.shortlog* %7)
  br label %149

149:                                              ; preds = %147, %145
  %150 = call i32 @shortlog_output(%struct.shortlog* %7)
  %151 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @stdout, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %7, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @fclose(i64 %157)
  br label %159

159:                                              ; preds = %155, %149
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i8 signext, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @shortlog_init(%struct.shortlog*) #2

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #2

declare dso_local i32 @parse_options_start(%struct.parse_opt_ctx_t*, i32, i8**, i8*, %struct.option*, i32) #2

declare dso_local i32 @parse_options_step(%struct.parse_opt_ctx_t*, %struct.option*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @parse_revision_opt(%struct.rev_info*, %struct.parse_opt_ctx_t*, %struct.option*, i32) #2

declare dso_local i32 @parse_options_end(%struct.parse_opt_ctx_t*) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #2

declare dso_local i64 @isatty(i32) #2

declare dso_local i32 @add_head_to_pending(%struct.rev_info*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @read_from_stdin(%struct.shortlog*) #2

declare dso_local i32 @get_from_rev(%struct.rev_info*, %struct.shortlog*) #2

declare dso_local i32 @shortlog_output(%struct.shortlog*) #2

declare dso_local i32 @fclose(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
