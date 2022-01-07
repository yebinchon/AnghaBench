; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_for-each-ref.c_cmd_for_each_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_for-each-ref.c_cmd_for_each_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i8*, i32, i32 }
%struct.ref_sorting = type { i32 }
%struct.ref_array = type { i32, i8**, i32, i32, i32*, i32, i32, i32 }
%struct.ref_filter = type { i32, i8**, i32, i32, i32*, i32, i32, i32 }
%struct.option = type { i32 }

@REF_FORMAT_INIT = common dso_local global %struct.ref_format zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"quote placeholders suitably for shells\00", align 1
@QUOTE_SHELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"perl\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"quote placeholders suitably for perl\00", align 1
@QUOTE_PERL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"python\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"quote placeholders suitably for python\00", align 1
@QUOTE_PYTHON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tcl\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"quote placeholders suitably for Tcl\00", align 1
@QUOTE_TCL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"show only <n> matched refs\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"format to use for the output\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"respect format colors\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"points-at\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"print only refs which points at the given object\00", align 1
@parse_opt_object_name = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [32 x i8] c"print only refs that are merged\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"print only refs that are not merged\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"print only refs which contain the commit\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"print only refs which don't contain the commit\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"sorting and filtering are case insensitive\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"%(objectname) %(objecttype)\09%(refname)\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@for_each_ref_usage = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"invalid --count argument: `%d'\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"more than one quoting style?\00", align 1
@FILTER_REFS_ALL = common dso_local global i32 0, align 4
@FILTER_REFS_INCLUDE_BROKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_for_each_ref(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_sorting*, align 8
  %9 = alloca %struct.ref_sorting**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ref_array, align 8
  %13 = alloca %struct.ref_filter, align 8
  %14 = alloca %struct.ref_format, align 8
  %15 = alloca [16 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.ref_sorting* null, %struct.ref_sorting** %8, align 8
  store %struct.ref_sorting** %8, %struct.ref_sorting*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = bitcast %struct.ref_format* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.ref_format* @REF_FORMAT_INIT to i8*), i64 16, i1 false)
  %17 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %15, i64 0, i64 0
  %18 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 1
  %19 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @QUOTE_SHELL, align 4
  %21 = call i32 @OPT_BIT(i8 signext 115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %24 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 1
  %25 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @QUOTE_PERL, align 4
  %27 = call i32 @OPT_BIT(i8 signext 112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %24, i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %30 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 1
  %31 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* @QUOTE_PYTHON, align 4
  %33 = call i32 @OPT_BIT(i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %36 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 1
  %37 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i32, i32* @QUOTE_TCL, align 4
  %39 = call i32 @OPT_BIT(i8 signext 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %36, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %35, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %35, i64 1
  %42 = call i32 @OPT_GROUP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  %45 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %46 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %10, i32 %45)
  %47 = getelementptr inbounds %struct.option, %struct.option* %44, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.option, %struct.option* %44, i64 1
  %49 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 0
  %50 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %51 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %52 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %49, i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.option, %struct.option* %48, i64 1
  %55 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 2
  %56 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %57 = call i32 @OPT__COLOR(i32* %55, i32 %56)
  %58 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.option, %struct.option* %54, i64 1
  %60 = load %struct.ref_sorting**, %struct.ref_sorting*** %9, align 8
  %61 = call i32 @OPT_REF_SORT(%struct.ref_sorting** %60)
  %62 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.option, %struct.option* %59, i64 1
  %64 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %13, i32 0, i32 7
  %65 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %66 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  %67 = load i32, i32* @parse_opt_object_name, align 4
  %68 = call i32 @OPT_CALLBACK(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* %64, i32 %65, i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.option, %struct.option* %63, i64 1
  %71 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %72 = call i32 @OPT_MERGED(%struct.ref_filter* %13, i32 %71)
  %73 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.option, %struct.option* %70, i64 1
  %75 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %76 = call i32 @OPT_NO_MERGED(%struct.ref_filter* %13, i32 %75)
  %77 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.option, %struct.option* %74, i64 1
  %79 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %13, i32 0, i32 6
  %80 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  %81 = call i32 @OPT_CONTAINS(i32* %79, i32 %80)
  %82 = getelementptr inbounds %struct.option, %struct.option* %78, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.option, %struct.option* %78, i64 1
  %84 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %13, i32 0, i32 5
  %85 = call i32 @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %86 = call i32 @OPT_NO_CONTAINS(i32* %84, i32 %85)
  %87 = getelementptr inbounds %struct.option, %struct.option* %83, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.option, %struct.option* %83, i64 1
  %89 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  %90 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32* %11, i32 %89)
  %91 = getelementptr inbounds %struct.option, %struct.option* %88, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.option, %struct.option* %88, i64 1
  %93 = call i32 (...) @OPT_END()
  %94 = getelementptr inbounds %struct.option, %struct.option* %92, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = bitcast %struct.ref_array* %12 to %struct.ref_filter*
  %96 = call i32 @memset(%struct.ref_filter* %95, i32 0, i32 48)
  %97 = call i32 @memset(%struct.ref_filter* %13, i32 0, i32 48)
  %98 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8** %98, align 8
  %99 = load i32, i32* @git_default_config, align 4
  %100 = call i32 @git_config(i32 %99, i32* null)
  %101 = load i32, i32* %4, align 4
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %15, i64 0, i64 0
  %105 = load i32, i32* @for_each_ref_usage, align 4
  %106 = call i32 @parse_options(i32 %101, i8** %102, i8* %103, %struct.option* %104, i32 %105, i32 0)
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %3
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @for_each_ref_usage, align 4
  %113 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %15, i64 0, i64 0
  %114 = call i32 @usage_with_options(i32 %112, %struct.option* %113)
  br label %115

115:                                              ; preds = %109, %3
  %116 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %14, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @HAS_MULTI_BITS(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %122 = load i32, i32* @for_each_ref_usage, align 4
  %123 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %15, i64 0, i64 0
  %124 = call i32 @usage_with_options(i32 %122, %struct.option* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = call i64 @verify_ref_format(%struct.ref_format* %14)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @for_each_ref_usage, align 4
  %130 = getelementptr inbounds [16 x %struct.option], [16 x %struct.option]* %15, i64 0, i64 0
  %131 = call i32 @usage_with_options(i32 %129, %struct.option* %130)
  br label %132

132:                                              ; preds = %128, %125
  %133 = load %struct.ref_sorting*, %struct.ref_sorting** %8, align 8
  %134 = icmp ne %struct.ref_sorting* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = call %struct.ref_sorting* (...) @ref_default_sorting()
  store %struct.ref_sorting* %136, %struct.ref_sorting** %8, align 8
  br label %137

137:                                              ; preds = %135, %132
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.ref_sorting*, %struct.ref_sorting** %8, align 8
  %140 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %13, i32 0, i32 0
  store i32 %141, i32* %142, align 8
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %13, i32 0, i32 1
  store i8** %143, i8*** %144, align 8
  %145 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %13, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = bitcast %struct.ref_array* %12 to %struct.ref_filter*
  %147 = load i32, i32* @FILTER_REFS_ALL, align 4
  %148 = load i32, i32* @FILTER_REFS_INCLUDE_BROKEN, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @filter_refs(%struct.ref_filter* %146, %struct.ref_filter* %13, i32 %149)
  %151 = load %struct.ref_sorting*, %struct.ref_sorting** %8, align 8
  %152 = bitcast %struct.ref_array* %12 to %struct.ref_filter*
  %153 = call i32 @ref_array_sort(%struct.ref_sorting* %151, %struct.ref_filter* %152)
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %137
  %157 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %12, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156, %137
  %162 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %12, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %161, %156
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %177, %164
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %12, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @show_ref_array_item(i32 %175, %struct.ref_format* %14)
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %165

180:                                              ; preds = %165
  %181 = bitcast %struct.ref_array* %12 to %struct.ref_filter*
  %182 = call i32 @ref_array_clear(%struct.ref_filter* %181)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BIT(i8 signext, i8*, i32*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_GROUP(i8*) #2

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i32) #2

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #2

declare dso_local i32 @OPT__COLOR(i32*, i32) #2

declare dso_local i32 @OPT_REF_SORT(%struct.ref_sorting**) #2

declare dso_local i32 @OPT_CALLBACK(i32, i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @OPT_MERGED(%struct.ref_filter*, i32) #2

declare dso_local i32 @OPT_NO_MERGED(%struct.ref_filter*, i32) #2

declare dso_local i32 @OPT_CONTAINS(i32*, i32) #2

declare dso_local i32 @OPT_NO_CONTAINS(i32*, i32) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @memset(%struct.ref_filter*, i32, i32) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i64 @HAS_MULTI_BITS(i32) #2

declare dso_local i64 @verify_ref_format(%struct.ref_format*) #2

declare dso_local %struct.ref_sorting* @ref_default_sorting(...) #2

declare dso_local i32 @filter_refs(%struct.ref_filter*, %struct.ref_filter*, i32) #2

declare dso_local i32 @ref_array_sort(%struct.ref_sorting*, %struct.ref_filter*) #2

declare dso_local i32 @show_ref_array_item(i32, %struct.ref_format*) #2

declare dso_local i32 @ref_array_clear(%struct.ref_filter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
