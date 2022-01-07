; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-file.c_cmd_merge_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-file.c_cmd_merge_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64, i8* }
%struct.TYPE_16__ = type { i8*, i64, i32, i32* }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i64, i64, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"send results to standard output\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"diff3\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"use a diff3 based merge\00", align 1
@XDL_MERGE_DIFF3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"for conflicts, use our version\00", align 1
@XDL_MERGE_FAVOR_OURS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"for conflicts, use their version\00", align 1
@XDL_MERGE_FAVOR_THEIRS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"for conflicts, use a union version\00", align 1
@XDL_MERGE_FAVOR_UNION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"marker-size\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"for conflicts, use this marker size\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"do not warn about conflicts\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"set labels for file1/orig-file/file2\00", align 1
@label_cb = common dso_local global i32 0, align 4
@XDL_MERGE_ZEALOUS_ALNUM = common dso_local global i32 0, align 4
@startup_info = common dso_local global %struct.TYPE_12__* null, align 8
@git_xmerge_config = common dso_local global i32 0, align 4
@git_xmerge_style = common dso_local global i64 0, align 8
@merge_file_usage = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"failed to redirect stderr to /dev/null\00", align 1
@MAX_XDIFF_SIZE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [30 x i8] c"Cannot merge binary files: %s\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Could not open %s for writing\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Could not write to %s\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Could not close %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_merge_file(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca [3 x %struct.TYPE_15__], align 16
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [9 x %struct.option], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 24, i1 false)
  %23 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = bitcast %struct.TYPE_14__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 56, i1 false)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %16, i64 0, i64 0
  %26 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @OPT_BOOL(i8 signext 112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %31 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @XDL_MERGE_DIFF3, align 4
  %33 = call i32 @OPT_SET_INT(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  %37 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32, i32* @XDL_MERGE_FAVOR_OURS, align 4
  %39 = call i32 @OPT_SET_INT(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64* %36, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %35, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %35, i64 1
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  %43 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32, i32* @XDL_MERGE_FAVOR_THEIRS, align 4
  %45 = call i32 @OPT_SET_INT(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64* %42, i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  %49 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %50 = load i32, i32* @XDL_MERGE_FAVOR_UNION, align 4
  %51 = call i32 @OPT_SET_INT(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64* %48, i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.option, %struct.option* %47, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.option, %struct.option* %47, i64 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 6
  %55 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %56 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %54, i32 %55)
  %57 = getelementptr inbounds %struct.option, %struct.option* %53, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.option, %struct.option* %53, i64 1
  %59 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %60 = call i32 @OPT__QUIET(i32* %15, i32 %59)
  %61 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %64 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %65 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %66 = call i32 @OPT_CALLBACK(i8 signext 76, i32* null, i8** %63, i32 %64, i32 %65, i32* @label_cb)
  %67 = getelementptr inbounds %struct.option, %struct.option* %62, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.option, %struct.option* %62, i64 1
  %69 = call i32 (...) @OPT_END()
  %70 = getelementptr inbounds %struct.option, %struct.option* %68, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @XDL_MERGE_ZEALOUS_ALNUM, align 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 5
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @startup_info, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %3
  %80 = load i32, i32* @git_xmerge_config, align 4
  %81 = call i32 @git_config(i32 %80, i32* null)
  %82 = load i64, i64* @git_xmerge_style, align 8
  %83 = icmp sle i64 0, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* @git_xmerge_style, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %3
  %89 = load i32, i32* %5, align 4
  %90 = load i8**, i8*** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %16, i64 0, i64 0
  %93 = load i32, i32* @merge_file_usage, align 4
  %94 = call i32 @parse_options(i32 %89, i8** %90, i8* %91, %struct.option* %92, i32 %93, i32 0)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 3
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @merge_file_usage, align 4
  %99 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %16, i64 0, i64 0
  %100 = call i32 @usage_with_options(i32 %98, %struct.option* %99)
  br label %101

101:                                              ; preds = %97, %88
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @error_errno(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  store i32 %109, i32* %4, align 4
  br label %273

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %101
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %178, %111
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %181

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %115
  %122 = load i8**, i8*** %6, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %128
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %121, %115
  %131 = load i8*, i8** %7, align 8
  %132 = load i8**, i8*** %6, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @prefix_filename(i8* %131, i8* %136)
  store i8* %137, i8** %17, align 8
  %138 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 0
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i64 %140
  %142 = load i8*, i8** %17, align 8
  %143 = call i32 @read_mmfile(%struct.TYPE_15__* %141, i8* %142)
  store i32 %143, i32* %18, align 4
  %144 = load i8*, i8** %17, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %130
  store i32 -1, i32* %4, align 4
  br label %273

149:                                              ; preds = %130
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 16
  %155 = load i64, i64* @MAX_XDIFF_SIZE, align 8
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %170, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 16
  %168 = call i64 @buffer_is_binary(i8* %162, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %157, %149
  %171 = load i8**, i8*** %6, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %175)
  store i32 %176, i32* %4, align 4
  br label %273

177:                                              ; preds = %157
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %112

181:                                              ; preds = %112
  %182 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i8* %183, i8** %184, align 8
  %185 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %186 = load i8*, i8** %185, align 16
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i8* %186, i8** %187, align 8
  %188 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %189 = load i8*, i8** %188, align 16
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i8* %189, i8** %190, align 8
  %191 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i64 1
  %193 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i64 0
  %195 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i64 2
  %197 = call i32 @xdl_merge(%struct.TYPE_15__* %192, %struct.TYPE_15__* %194, %struct.TYPE_15__* %196, %struct.TYPE_14__* %11, %struct.TYPE_16__* %10)
  store i32 %197, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %198

198:                                              ; preds = %208, %181
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %199, 3
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %9, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @free(i8* %206)
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %198

211:                                              ; preds = %198
  %212 = load i32, i32* %12, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %267

214:                                              ; preds = %211
  %215 = load i8**, i8*** %6, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %19, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = load i8**, i8*** %6, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i8* @prefix_filename(i8* %218, i8* %221)
  store i8* %222, i8** %20, align 8
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %214
  %226 = load i32*, i32** @stdout, align 8
  br label %230

227:                                              ; preds = %214
  %228 = load i8*, i8** %20, align 8
  %229 = call i32* @fopen(i8* %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %230

230:                                              ; preds = %227, %225
  %231 = phi i32* [ %226, %225 ], [ %229, %227 ]
  store i32* %231, i32** %21, align 8
  %232 = load i32*, i32** %21, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load i8*, i8** %19, align 8
  %236 = call i32 (i8*, ...) @error_errno(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i8* %235)
  store i32 %236, i32* %12, align 4
  br label %261

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i32*, i32** %21, align 8
  %247 = call i32 @fwrite(i8* %243, i64 %245, i32 1, i32* %246)
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i8*, i8** %19, align 8
  %251 = call i32 (i8*, ...) @error_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* %250)
  store i32 %251, i32* %12, align 4
  br label %260

252:                                              ; preds = %241, %237
  %253 = load i32*, i32** %21, align 8
  %254 = call i64 @fclose(i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load i8*, i8** %19, align 8
  %258 = call i32 (i8*, ...) @error_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* %257)
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %256, %252
  br label %260

260:                                              ; preds = %259, %249
  br label %261

261:                                              ; preds = %260, %234
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @free(i8* %263)
  %265 = load i8*, i8** %20, align 8
  %266 = call i32 @free(i8* %265)
  br label %267

267:                                              ; preds = %261, %211
  %268 = load i32, i32* %12, align 4
  %269 = icmp sgt i32 %268, 127
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  store i32 127, i32* %12, align 4
  br label %271

271:                                              ; preds = %270, %267
  %272 = load i32, i32* %12, align 4
  store i32 %272, i32* %4, align 4
  br label %273

273:                                              ; preds = %271, %170, %148, %108
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_SET_INT(i32, i8*, i64*, i32, i32) #2

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i32) #2

declare dso_local i32 @OPT__QUIET(i32*, i32) #2

declare dso_local i32 @OPT_CALLBACK(i8 signext, i32*, i8**, i32, i32, i32*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @freopen(i8*, i8*, i32) #2

declare dso_local i32 @error_errno(i8*, ...) #2

declare dso_local i8* @prefix_filename(i8*, i8*) #2

declare dso_local i32 @read_mmfile(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @buffer_is_binary(i8*, i64) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i32 @xdl_merge(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_16__*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

declare dso_local i64 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
