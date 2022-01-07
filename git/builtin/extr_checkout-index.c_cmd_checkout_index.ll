; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_cmd_checkout_index.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_cmd_checkout_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32*, i8* }
%struct.strbuf = type { i8* }
%struct.option = type { i8*, i8*, i32, i32, i32, i32*, i32, i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"check out all files in the index\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"force overwrite of existing files\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"no warning for existing files and files not in index\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"don't checkout new files\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"update stat information in the index file\00", align 1
@nul_term_line = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"paths are separated with NUL character\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"read list of paths from the standard input\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@to_tempfile = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"write the content to temporary files\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"when creating files, prepend <string>\00", align 1
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"stage\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"(1|2|3|all)\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"copy out the files from named stage\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@option_parse_stage = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@builtin_checkout_index_usage = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"invalid cache\00", align 1
@the_index = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [61 x i8] c"git checkout-index: don't mix '--all' and explicit filenames\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"git checkout-index: don't mix '--stdin' and explicit filenames\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [52 x i8] c"git checkout-index: don't mix '--all' and '--stdin'\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"line is badly quoted\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [31 x i8] c"Unable to write new index file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_checkout_index(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lock_file, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [11 x %struct.option], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.strbuf, align 8
  %20 = alloca %struct.strbuf, align 8
  %21 = alloca i64 (%struct.strbuf*, i32)*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %23 = bitcast %struct.lock_file* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %16, i64 0, i64 0
  %25 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %24, i8 signext 97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9, i32 %25)
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %27 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  call void @OPT__FORCE(%struct.option* sret %26, i32* %12, i32 %27, i32 0)
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %29 = call i32 @N_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT__QUIET(%struct.option* sret %28, i32* %13, i32 %29)
  %30 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %31 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %30, i8 signext 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %14, i32 %31)
  %32 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %33 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %32, i8 signext 117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %15, i32 %33)
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i64 1
  %35 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %34, i8 signext 122, i8* null, i32* @nul_term_line, i32 %35)
  %36 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %37 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %36, i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %10, i32 %37)
  %38 = getelementptr inbounds %struct.option, %struct.option* %36, i64 1
  %39 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %38, i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* @to_tempfile, i32 %39)
  %40 = getelementptr inbounds %struct.option, %struct.option* %38, i64 1
  %41 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %42 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %40, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), i32 %41, i32 %42)
  %43 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %44 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 0
  %45 = load i32, i32* @OPTION_CALLBACK, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %44, align 16
  %48 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 1
  store i8* null, i8** %48, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 2
  store i32 ptrtoint ([6 x i8]* @.str.16 to i32), i32* %49, align 16
  %50 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 4
  store i32 ptrtoint ([12 x i8]* @.str.17 to i32), i32* %51, align 8
  %52 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 5
  %53 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %52, align 16
  %56 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 6
  %57 = load i32, i32* @PARSE_OPT_NONEG, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 7
  %59 = load i32, i32* @option_parse_stage, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.option, %struct.option* %43, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %60)
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %73

63:                                               ; preds = %3
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @builtin_checkout_index_usage, align 4
  %71 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %16, i64 0, i64 0
  %72 = call i32 @usage_with_options(i32 %70, %struct.option* %71)
  br label %73

73:                                               ; preds = %69, %63, %3
  %74 = load i32, i32* @git_default_config, align 4
  %75 = call i32 @git_config(i32 %74, i32* null)
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @strlen(i8* %79)
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i8* [ %80, %78 ], [ null, %81 ]
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = call i64 (...) @read_cache()
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i32, i32* %4, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %16, i64 0, i64 0
  %94 = load i32, i32* @builtin_checkout_index_usage, align 4
  %95 = call i32 @parse_options(i32 %90, i8** %91, i8* %92, %struct.option* %93, i32 %94, i32 0)
  store i32 %95, i32* %4, align 4
  store i32* @the_index, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 5), align 8
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 1), align 8
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 2), align 4
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 3), align 8
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %104 = call i8* @strlen(i8* %103)
  store i8* %104, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 6), align 8
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 6), align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @to_tempfile, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 4), align 4
  store i32* @the_index, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 5), align 8
  %114 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %115 = call i32 @hold_locked_index(%struct.lock_file* %8, i32 %114)
  br label %116

116:                                              ; preds = %113, %110, %107, %102
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %146, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %17, align 8
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = call i32 @die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %121
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 @die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i8*, i8** %17, align 8
  %140 = call i8* @prefix_path(i8* %137, i32 %138, i8* %139)
  store i8* %140, i8** %18, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @checkout_file(i8* %141, i8* %142)
  %144 = load i8*, i8** %18, align 8
  %145 = call i32 @free(i8* %144)
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %117

149:                                              ; preds = %117
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %204

152:                                              ; preds = %149
  %153 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %154 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %152
  %160 = load i32, i32* @nul_term_line, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i64 (%struct.strbuf*, i32)* @strbuf_getline_nul, i64 (%struct.strbuf*, i32)* @strbuf_getline_lf
  store i64 (%struct.strbuf*, i32)* %163, i64 (%struct.strbuf*, i32)** %21, align 8
  br label %164

164:                                              ; preds = %190, %159
  %165 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %21, align 8
  %166 = load i32, i32* @stdin, align 4
  %167 = call i64 %165(%struct.strbuf* %19, i32 %166)
  %168 = load i64, i64* @EOF, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %164
  %171 = load i32, i32* @nul_term_line, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %190, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 34
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = call i32 @strbuf_reset(%struct.strbuf* %20)
  %182 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @unquote_c_style(%struct.strbuf* %20, i8* %183, i32* null)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %180
  %189 = call i32 @strbuf_swap(%struct.strbuf* %19, %struct.strbuf* %20)
  br label %190

190:                                              ; preds = %188, %173, %170
  %191 = load i8*, i8** %6, align 8
  %192 = load i32, i32* %11, align 4
  %193 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @prefix_path(i8* %191, i32 %192, i8* %194)
  store i8* %195, i8** %22, align 8
  %196 = load i8*, i8** %22, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = call i32 @checkout_file(i8* %196, i8* %197)
  %199 = load i8*, i8** %22, align 8
  %200 = call i32 @free(i8* %199)
  br label %164

201:                                              ; preds = %164
  %202 = call i32 @strbuf_release(%struct.strbuf* %20)
  %203 = call i32 @strbuf_release(%struct.strbuf* %19)
  br label %204

204:                                              ; preds = %201, %149
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i8*, i8** %6, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @checkout_all(i8* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %204
  %212 = call i64 @is_lock_file_locked(%struct.lock_file* %8)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, i32* @COMMIT_LOCK, align 4
  %216 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %8, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %214, %211
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i8 signext, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT__FORCE(%struct.option* sret, i32*, i32, i32) #2

declare dso_local void @OPT__QUIET(%struct.option* sret, i32*, i32) #2

declare dso_local void @OPT_STRING(%struct.option* sret, i32, i8*, i8**, i32, i32) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i64 @read_cache(...) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #2

declare dso_local i8* @prefix_path(i8*, i32, i8*) #2

declare dso_local i32 @checkout_file(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @strbuf_getline_nul(%struct.strbuf*, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @unquote_c_style(%struct.strbuf*, i8*, i32*) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @checkout_all(i8*, i32) #2

declare dso_local i64 @is_lock_file_locked(%struct.lock_file*) #2

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
