; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_parse_archive_args.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_parse_archive_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.archiver = type { i32 }
%struct.archiver_args = type { i32, i32, i8*, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"archive format\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"prepend prefix to each pathname in the archive\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"write the archive to this file\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"worktree-attributes\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"read .gitattributes in working directory\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"report archived files on stderr\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"store only\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"compress faster\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"compress better\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"list supported archive formats\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"repo\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"retrieve the archive from remote repository <repo>\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"path to the remote git-upload-archive command\00", align 1
@archive_usage = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [27 x i8] c"Unexpected option --remote\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"Option --exec can only be used together with --remote\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Unexpected option --output\00", align 1
@nr_archivers = common dso_local global i32 0, align 4
@archivers = common dso_local global %struct.TYPE_2__** null, align 8
@ARCHIVER_REMOTE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"Unknown archive format '%s'\00", align 1
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@ARCHIVER_WANT_COMPRESSION_LEVELS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [44 x i8] c"Argument not supported for format '%s': -%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.archiver**, %struct.archiver_args*, i8*, i32)* @parse_archive_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_archive_args(i32 %0, i8** %1, %struct.archiver** %2, %struct.archiver_args* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.archiver**, align 8
  %10 = alloca %struct.archiver_args*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [22 x %struct.option], align 16
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.archiver** %2, %struct.archiver*** %9, align 8
  store %struct.archiver_args* %3, %struct.archiver_args** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %24 = getelementptr inbounds [22 x %struct.option], [22 x %struct.option]* %23, i64 0, i64 0
  %25 = call i32 @OPT_GROUP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %28 = call i32 @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @N_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @OPT_STRING(i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %13, i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %33 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %35 = call i32 @OPT_STRING(i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %14, i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.option, %struct.option* %32, i64 1
  %38 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %39 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %40 = call i32 @OPT_STRING(i8 signext 111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %17, i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %43 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %44 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32* %22, i32 %43)
  %45 = getelementptr inbounds %struct.option, %struct.option* %42, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.option, %struct.option* %42, i64 1
  %47 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %48 = call i32 @OPT__VERBOSE(i32* %19, i32 %47)
  %49 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.option, %struct.option* %46, i64 1
  %51 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %52 = call i32 @OPT__COMPR(i8 signext 48, i32* %18, i32 %51, i32 0)
  %53 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.option, %struct.option* %50, i64 1
  %55 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %56 = call i32 @OPT__COMPR(i8 signext 49, i32* %18, i32 %55, i32 1)
  %57 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.option, %struct.option* %54, i64 1
  %59 = call i32 @OPT__COMPR_HIDDEN(i8 signext 50, i32* %18, i32 2)
  %60 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %62 = call i32 @OPT__COMPR_HIDDEN(i8 signext 51, i32* %18, i32 3)
  %63 = getelementptr inbounds %struct.option, %struct.option* %61, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.option, %struct.option* %61, i64 1
  %65 = call i32 @OPT__COMPR_HIDDEN(i8 signext 52, i32* %18, i32 4)
  %66 = getelementptr inbounds %struct.option, %struct.option* %64, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.option, %struct.option* %64, i64 1
  %68 = call i32 @OPT__COMPR_HIDDEN(i8 signext 53, i32* %18, i32 5)
  %69 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.option, %struct.option* %67, i64 1
  %71 = call i32 @OPT__COMPR_HIDDEN(i8 signext 54, i32* %18, i32 6)
  %72 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.option, %struct.option* %70, i64 1
  %74 = call i32 @OPT__COMPR_HIDDEN(i8 signext 55, i32* %18, i32 7)
  %75 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.option, %struct.option* %73, i64 1
  %77 = call i32 @OPT__COMPR_HIDDEN(i8 signext 56, i32* %18, i32 8)
  %78 = getelementptr inbounds %struct.option, %struct.option* %76, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.option, %struct.option* %76, i64 1
  %80 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %81 = call i32 @OPT__COMPR(i8 signext 57, i32* %18, i32 %80, i32 9)
  %82 = getelementptr inbounds %struct.option, %struct.option* %79, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.option, %struct.option* %79, i64 1
  %84 = call i32 @OPT_GROUP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.option, %struct.option* %83, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.option, %struct.option* %83, i64 1
  %87 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %88 = call i32 @OPT_BOOL(i8 signext 108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* %21, i32 %87)
  %89 = getelementptr inbounds %struct.option, %struct.option* %86, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.option, %struct.option* %86, i64 1
  %91 = call i32 @OPT_GROUP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %92 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.option, %struct.option* %90, i64 1
  %94 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %95 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0))
  %96 = call i32 @OPT_STRING(i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %15, i32 %94, i32 %95)
  %97 = getelementptr inbounds %struct.option, %struct.option* %93, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.option, %struct.option* %93, i64 1
  %99 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %100 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0))
  %101 = call i32 @OPT_STRING(i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %16, i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.option, %struct.option* %98, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.option, %struct.option* %98, i64 1
  %104 = call i32 (...) @OPT_END()
  %105 = getelementptr inbounds %struct.option, %struct.option* %103, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i8**, i8*** %8, align 8
  %108 = getelementptr inbounds [22 x %struct.option], [22 x %struct.option]* %23, i64 0, i64 0
  %109 = load i32, i32* @archive_usage, align 4
  %110 = call i32 @parse_options(i32 %106, i8** %107, i32* null, %struct.option* %108, i32 %109, i32 0)
  store i32 %110, i32* %7, align 4
  %111 = load i8*, i8** %15, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %6
  %114 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %115 = call i32 (i32, ...) @die(i32 %114)
  br label %116

116:                                              ; preds = %113, %6
  %117 = load i8*, i8** %16, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0))
  %121 = call i32 (i32, ...) @die(i32 %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i8*, i8** %17, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %127 = call i32 (i32, ...) @die(i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i8*, i8** %14, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %132
  store i32 0, i32* %20, align 4
  br label %136

136:                                              ; preds = %164, %135
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* @nr_archivers, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %136
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @archivers, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %144, i64 %146
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @ARCHIVER_REMOTE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %143, %140
  %155 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @archivers, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %155, i64 %157
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %154, %143
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %20, align 4
  br label %136

167:                                              ; preds = %136
  %168 = call i32 @exit(i32 0) #3
  unreachable

169:                                              ; preds = %132
  %170 = load i8*, i8** %13, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = load i8*, i8** %11, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %11, align 8
  %177 = call i8* @archive_format_from_filename(i8* %176)
  store i8* %177, i8** %13, align 8
  br label %178

178:                                              ; preds = %175, %172, %169
  %179 = load i8*, i8** %13, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8** %13, align 8
  br label %182

182:                                              ; preds = %181, %178
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i32, i32* @archive_usage, align 4
  %187 = getelementptr inbounds [22 x %struct.option], [22 x %struct.option]* %23, i64 0, i64 0
  %188 = call i32 @usage_with_options(i32 %186, %struct.option* %187)
  br label %189

189:                                              ; preds = %185, %182
  %190 = load i8*, i8** %13, align 8
  %191 = call %struct.archiver* @lookup_archiver(i8* %190)
  %192 = load %struct.archiver**, %struct.archiver*** %9, align 8
  store %struct.archiver* %191, %struct.archiver** %192, align 8
  %193 = load %struct.archiver**, %struct.archiver*** %9, align 8
  %194 = load %struct.archiver*, %struct.archiver** %193, align 8
  %195 = icmp ne %struct.archiver* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %189
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %196
  %200 = load %struct.archiver**, %struct.archiver*** %9, align 8
  %201 = load %struct.archiver*, %struct.archiver** %200, align 8
  %202 = getelementptr inbounds %struct.archiver, %struct.archiver* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ARCHIVER_REMOTE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %199, %189
  %208 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  %209 = load i8*, i8** %13, align 8
  %210 = call i32 (i32, ...) @die(i32 %208, i8* %209)
  br label %211

211:                                              ; preds = %207, %199, %196
  %212 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %213 = load %struct.archiver_args*, %struct.archiver_args** %10, align 8
  %214 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %18, align 4
  %216 = icmp ne i32 %215, -1
  br i1 %216, label %217, label %235

217:                                              ; preds = %211
  %218 = load %struct.archiver**, %struct.archiver*** %9, align 8
  %219 = load %struct.archiver*, %struct.archiver** %218, align 8
  %220 = getelementptr inbounds %struct.archiver, %struct.archiver* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ARCHIVER_WANT_COMPRESSION_LEVELS, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %217
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.archiver_args*, %struct.archiver_args** %10, align 8
  %228 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  br label %234

229:                                              ; preds = %217
  %230 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0))
  %231 = load i8*, i8** %13, align 8
  %232 = load i32, i32* %18, align 4
  %233 = call i32 (i32, ...) @die(i32 %230, i8* %231, i32 %232)
  br label %234

234:                                              ; preds = %229, %225
  br label %235

235:                                              ; preds = %234, %211
  %236 = load i32, i32* %19, align 4
  %237 = load %struct.archiver_args*, %struct.archiver_args** %10, align 8
  %238 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load i8*, i8** %14, align 8
  %240 = load %struct.archiver_args*, %struct.archiver_args** %10, align 8
  %241 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  %242 = load i8*, i8** %14, align 8
  %243 = call i32 @strlen(i8* %242)
  %244 = load %struct.archiver_args*, %struct.archiver_args** %10, align 8
  %245 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %22, align 4
  %247 = load %struct.archiver_args*, %struct.archiver_args** %10, align 8
  %248 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* %7, align 4
  ret i32 %249
}

declare dso_local i32 @OPT_GROUP(i8*) #1

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @OPT__VERBOSE(i32*, i32) #1

declare dso_local i32 @OPT__COMPR(i8 signext, i32*, i32, i32) #1

declare dso_local i32 @OPT__COMPR_HIDDEN(i8 signext, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @archive_format_from_filename(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.archiver* @lookup_archiver(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
