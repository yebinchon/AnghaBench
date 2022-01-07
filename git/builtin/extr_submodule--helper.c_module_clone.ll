; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_clone.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list = type { i32 }
%struct.option = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"alternative anchor for relative paths\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"where the new submodule will be cloned to\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"name of the new submodule\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"url where to clone the submodule from\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"repo\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"reference repository\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dissociate\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"use --reference only while cloning\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"depth for shallow clones\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Suppress output for cloning a submodule\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"force cloning progress\00", align 1
@.str.19 = private unnamed_addr constant [143 x i8] c"git submodule--helper clone [--prefix=<path>] [--quiet] [--reference <repository>] [--name <name>] [--depth <depth>] --url <url> --path <path>\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"%s/modules/%s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"could not create directory '%s'\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"clone of '%s' into submodule path '%s' failed\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%s/index\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"could not get submodule directory for '%s'\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"submodule.alternateLocation\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"submodule.alternateErrorStrategy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_clone(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca %struct.string_list, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [10 x %struct.option], align 16
  %21 = alloca [2 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %22 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %23 = bitcast %struct.string_list* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %24 = getelementptr inbounds [10 x %struct.option], [10 x %struct.option]* %20, i64 0, i64 0
  %25 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i8* @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, i8* %25, i8* %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %30 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i8* @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %13, i8* %30, i8* %31)
  %33 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %35 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %37 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, i8* %35, i8* %36)
  %38 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %40 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %41 = call i8* @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %42 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %8, i8* %40, i8* %41)
  %43 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.option, %struct.option* %39, i64 1
  %45 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %46 = call i8* @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %47 = call i32 @OPT_STRING_LIST(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.string_list* %16, i8* %45, i8* %46)
  %48 = getelementptr inbounds %struct.option, %struct.option* %44, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.option, %struct.option* %44, i64 1
  %50 = call i8* @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %51 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32* %17, i8* %50)
  %52 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.option, %struct.option* %49, i64 1
  %54 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %55 = call i8* @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %56 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %9, i8* %54, i8* %55)
  %57 = getelementptr inbounds %struct.option, %struct.option* %53, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.option, %struct.option* %53, i64 1
  %59 = call i32 @OPT__QUIET(i32* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %62 = call i8* @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %63 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32* %11, i8* %62)
  %64 = getelementptr inbounds %struct.option, %struct.option* %61, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.option, %struct.option* %61, i64 1
  %66 = call i32 (...) @OPT_END()
  %67 = getelementptr inbounds %struct.option, %struct.option* %65, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0, i64 0
  %69 = call i8* @N_(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.19, i64 0, i64 0))
  store i8* %69, i8** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* null, i8** %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds [10 x %struct.option], [10 x %struct.option]* %20, i64 0, i64 0
  %75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0, i64 0
  %76 = call i32 @parse_options(i32 %71, i8** %72, i8* %73, %struct.option* %74, i8** %75, i32 0)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %3
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %13, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85, %82, %79, %3
  %90 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0, i64 0
  %91 = getelementptr inbounds [10 x %struct.option], [10 x %struct.option]* %20, i64 0, i64 0
  %92 = call i32 @usage_with_options(i8** %90, %struct.option* %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = call i32 (...) @get_git_dir()
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %96, i8* %97)
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @absolute_pathdup(i32 %100)
  store i8* %101, i8** %14, align 8
  %102 = call i32 @strbuf_reset(%struct.strbuf* %15)
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @is_absolute_path(i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %93
  %107 = call i32 (...) @get_git_work_tree()
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* %109, i8* %110)
  %112 = call i8* @strbuf_detach(%struct.strbuf* %15, i32* null)
  store i8* %112, i8** %13, align 8
  br label %116

113:                                              ; preds = %93
  %114 = load i8*, i8** %13, align 8
  %115 = call i8* @xstrdup(i8* %114)
  store i8* %115, i8** %13, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 @file_exists(i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %146, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %14, align 8
  %122 = call i64 @safe_create_leading_directories_const(i8* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 (i32, i8*, ...) @die(i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @prepare_possible_alternates(i8* %129, %struct.string_list* %16)
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @clone_submodule(i8* %131, i8* %132, i8* %133, i8* %134, %struct.string_list* %16, i32 %135, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %128
  %141 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0))
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 (i32, i8*, ...) @die(i32 %141, i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %140, %128
  br label %161

146:                                              ; preds = %116
  %147 = load i8*, i8** %13, align 8
  %148 = call i64 @safe_create_leading_directories_const(i8* %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 (i32, i8*, ...) @die(i32 %151, i8* %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* %155)
  %157 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @unlink_or_warn(i32 %158)
  %160 = call i32 @strbuf_reset(%struct.strbuf* %15)
  br label %161

161:                                              ; preds = %154, %145
  %162 = load i8*, i8** %13, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = call i32 @connect_work_tree_and_git_dir(i8* %162, i8* %163, i32 0)
  %165 = load i8*, i8** %13, align 8
  %166 = call i8* @git_pathdup_submodule(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  store i8* %166, i8** %12, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %161
  %170 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0))
  %171 = load i8*, i8** %13, align 8
  %172 = call i32 (i32, i8*, ...) @die(i32 %170, i8* %171)
  br label %173

173:                                              ; preds = %169, %161
  %174 = call i32 @git_config_get_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i8** %18)
  %175 = load i8*, i8** %18, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i8*, i8** %12, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = call i32 @git_config_set_in_file(i8* %178, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %177, %173
  %182 = call i32 @git_config_get_string(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8** %19)
  %183 = load i8*, i8** %19, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load i8*, i8** %12, align 8
  %187 = load i8*, i8** %19, align 8
  %188 = call i32 @git_config_set_in_file(i8* %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %185, %181
  %190 = load i8*, i8** %18, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i8*, i8** %19, align 8
  %193 = call i32 @free(i8* %192)
  %194 = call i32 @strbuf_release(%struct.strbuf* %15)
  %195 = load i8*, i8** %14, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load i8*, i8** %13, align 8
  %198 = call i32 @free(i8* %197)
  %199 = load i8*, i8** %12, align 8
  %200 = call i32 @free(i8* %199)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i8*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_STRING_LIST(i32, i8*, %struct.string_list*, i8*, i8*) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i8*) #2

declare dso_local i32 @OPT__QUIET(i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i8* @absolute_pathdup(i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @is_absolute_path(i8*) #2

declare dso_local i32 @get_git_work_tree(...) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i64 @safe_create_leading_directories_const(i8*) #2

declare dso_local i32 @die(i32, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @prepare_possible_alternates(i8*, %struct.string_list*) #2

declare dso_local i64 @clone_submodule(i8*, i8*, i8*, i8*, %struct.string_list*, i32, i32, i32) #2

declare dso_local i32 @unlink_or_warn(i32) #2

declare dso_local i32 @connect_work_tree_and_git_dir(i8*, i8*, i32) #2

declare dso_local i8* @git_pathdup_submodule(i8*, i8*) #2

declare dso_local i32 @git_config_get_string(i8*, i8**) #2

declare dso_local i32 @git_config_set_in_file(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
