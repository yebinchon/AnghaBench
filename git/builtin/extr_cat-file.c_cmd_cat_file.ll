; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_cat-file.c_cmd_cat_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_cat-file.c_cmd_cat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batch_options = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.option = type { i8*, i8*, i32, i32, i32, %struct.batch_options*, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"<type> can be one of: blob, tree, commit, tag\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"show object type\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"show object size\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"exit with zero when there's no error\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"pretty-print object's content\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"textconv\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"for blob objects, run textconv on object's content\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"for blob objects, run filters on object's content\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@force_path = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"use a specific path for --textconv/--filters\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"allow-unknown-type\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"allow -s and -t to work with broken/corrupt objects\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"buffer --batch output\00", align 1
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"show info and content of objects fed from the standard input\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@batch_option_callback = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"batch-check\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"show info about objects fed from the standard input\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"follow-symlinks\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"follow in-tree symlinks (used with --batch or --batch-check)\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"batch-all-objects\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"show all objects with --batch or --batch-check\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"unordered\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"do not order --batch-all-objects output\00", align 1
@git_cat_file_config = common dso_local global i32 0, align 4
@cat_file_usage = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [74 x i8] c"--batch-all-objects cannot be combined with --textconv nor with --filters\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"--path=<path> needs --textconv or --filters\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"--path=<path> incompatible with --batch\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"git cat-file --allow-unknown-type: use with -s or -t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_cat_file(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.batch_options, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = bitcast %struct.batch_options* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  store i32 0, i32* %12, align 4
  %15 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %16 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  call void @OPT_GROUP(%struct.option* sret %15, i32 %16)
  %17 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %18 = call i32 @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %17, i8 signext 116, i8* null, i32* %8, i32 %18, i8 signext 116)
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %20 = call i32 @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %19, i8 signext 115, i8* null, i32* %8, i32 %20, i8 signext 115)
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %22 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %21, i8 signext 101, i8* null, i32* %8, i32 %22, i8 signext 101)
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %24 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %23, i8 signext 112, i8* null, i32* %8, i32 %24, i8 signext 112)
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %26 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %25, i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32 %26, i8 signext 99)
  %27 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %28 = call i32 @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %27, i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %8, i32 %28, i8 signext 119)
  %29 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %30 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %31 = call i32 @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %29, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64* @force_path, i32 %30, i32 %31)
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %33 = call i32 @N_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %32, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* %12, i32 %33)
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i64 1
  %35 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 0
  %36 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %34, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* %35, i32 %36)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  %39 = load i32, i32* @OPTION_CALLBACK, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %38, align 16
  %42 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 1
  store i8* null, i8** %42, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 2
  store i32 ptrtoint ([6 x i8]* @.str.16 to i32), i32* %43, align 16
  %44 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 3
  %45 = ptrtoint %struct.batch_options* %11 to i32
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 4
  store i32 ptrtoint ([7 x i8]* @.str.17 to i32), i32* %46, align 8
  %47 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 5
  %48 = call i32 @N_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0))
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.batch_options*
  store %struct.batch_options* %50, %struct.batch_options** %47, align 16
  %51 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 6
  %52 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %53 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %51, align 8
  %55 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 7
  %56 = load i32, i32* @batch_option_callback, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %58 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 0
  %59 = load i32, i32* @OPTION_CALLBACK, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %58, align 16
  %62 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 1
  store i8* null, i8** %62, align 8
  %63 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 2
  store i32 ptrtoint ([12 x i8]* @.str.19 to i32), i32* %63, align 16
  %64 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 3
  %65 = ptrtoint %struct.batch_options* %11 to i32
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 4
  store i32 ptrtoint ([7 x i8]* @.str.17 to i32), i32* %66, align 8
  %67 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 5
  %68 = call i32 @N_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0))
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.batch_options*
  store %struct.batch_options* %70, %struct.batch_options** %67, align 16
  %71 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 6
  %72 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %73 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %71, align 8
  %75 = getelementptr inbounds %struct.option, %struct.option* %57, i32 0, i32 7
  %76 = load i32, i32* @batch_option_callback, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds %struct.option, %struct.option* %57, i64 1
  %78 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 1
  %79 = call i32 @N_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %77, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32* %78, i32 %79)
  %80 = getelementptr inbounds %struct.option, %struct.option* %77, i64 1
  %81 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 2
  %82 = call i32 @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %80, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32* %81, i32 %82)
  %83 = getelementptr inbounds %struct.option, %struct.option* %80, i64 1
  %84 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 3
  %85 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %83, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32* %84, i32 %85)
  %86 = getelementptr inbounds %struct.option, %struct.option* %83, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %86)
  %87 = load i32, i32* @git_cat_file_config, align 4
  %88 = call i32 @git_config(i32 %87, i32* null)
  %89 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %94 = load i32, i32* @cat_file_usage, align 4
  %95 = call i32 @parse_options(i32 %90, i8** %91, i8* %92, %struct.option* %93, i32 %94, i32 0)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %3
  %99 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 99
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 119
  br i1 %107, label %108, label %111

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %8, align 4
  %110 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 4
  store i32 %109, i32* %110, align 8
  br label %123

111:                                              ; preds = %105, %98
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8**, i8*** %6, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %10, align 8
  br label %122

118:                                              ; preds = %111
  %119 = load i32, i32* @cat_file_usage, align 4
  %120 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %121 = call i32 @usage_with_options(i32 %119, %struct.option* %120)
  br label %122

122:                                              ; preds = %118, %114
  br label %123

123:                                              ; preds = %122, %108
  br label %124

124:                                              ; preds = %123, %3
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i8**, i8*** %6, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %9, align 8
  %138 = load i8**, i8*** %6, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %10, align 8
  br label %145

141:                                              ; preds = %131
  %142 = load i32, i32* @cat_file_usage, align 4
  %143 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %144 = call i32 @usage_with_options(i32 %142, %struct.option* %143)
  br label %145

145:                                              ; preds = %141, %134
  br label %146

146:                                              ; preds = %145, %127, %124
  %147 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155, %150
  %159 = load i32, i32* @cat_file_usage, align 4
  %160 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %161 = call i32 @usage_with_options(i32 %159, %struct.option* %160)
  br label %162

162:                                              ; preds = %158, %155
  %163 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = call i32 @die(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.27, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %166, %162
  br label %173

173:                                              ; preds = %172, %146
  %174 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %177, %173
  %182 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* @cat_file_usage, align 4
  %187 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %188 = call i32 @usage_with_options(i32 %186, %struct.option* %187)
  br label %189

189:                                              ; preds = %185, %181, %177
  %190 = load i64, i64* @force_path, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 99
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 119
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0))
  %200 = load i32, i32* @cat_file_usage, align 4
  %201 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %202 = call i32 @usage_with_options(i32 %200, %struct.option* %201)
  br label %203

203:                                              ; preds = %198, %195, %192, %189
  %204 = load i64, i64* @force_path, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0))
  %212 = load i32, i32* @cat_file_usage, align 4
  %213 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %13, i64 0, i64 0
  %214 = call i32 @usage_with_options(i32 %212, %struct.option* %213)
  br label %215

215:                                              ; preds = %210, %206, %203
  %216 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 0
  store i32 %221, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %215
  %224 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %11, i32 0, i32 5
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = call i32 @batch_objects(%struct.batch_options* %11)
  store i32 %228, i32* %4, align 4
  br label %246

229:                                              ; preds = %223
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 116
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 115
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = call i32 @die(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %235, %232, %229
  %241 = load i32, i32* %8, align 4
  %242 = load i8*, i8** %9, align 8
  %243 = load i8*, i8** %10, align 8
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @cat_one_file(i32 %241, i8* %242, i8* %243, i32 %244)
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %240, %227
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @OPT_GROUP(%struct.option* sret, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT_CMDMODE(%struct.option* sret, i8 signext, i8*, i32*, i32, i8 signext) #2

declare dso_local void @OPT_STRING(%struct.option* sret, i32, i8*, i64*, i32, i32) #2

declare dso_local void @OPT_BOOL(%struct.option* sret, i32, i8*, i32*, i32) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @batch_objects(%struct.batch_options*) #2

declare dso_local i32 @cat_one_file(i32, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
