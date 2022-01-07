; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_name-rev.c_cmd_name_rev.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_name-rev.c_cmd_name_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.object* }
%struct.object = type { i64 }
%struct.name_ref_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.option = type { i8*, i32*, i32, i32, i32*, i32, i32*, i32, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i64 }

@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 8
@STRING_LIST_INIT_NODUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"name-only\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"print only names (no SHA-1)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"only use tags to name the commits\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"only use refs matching <pattern>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ignore refs matching <pattern>\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"list all commits reachable from all refs\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"read from stdin\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"allow to print `undefined` names (default)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"show abbreviated commit object as fallback\00", align 1
@OPTION_SET_INT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"peel-tag\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"dereference tags in the input (internal use)\00", align 1
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@rev_names = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@name_rev_usage = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [43 x i8] c"Specify either a list, or --all, not both!\00", align 1
@cutoff = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [38 x i8] c"Could not get sha1 for %s. Skipping.\0A\00", align 1
@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [40 x i8] c"Could not get object for %s. Skipping.\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Could not get commit for %s. Skipping.\0A\00", align 1
@TIME_MIN = common dso_local global i64 0, align 8
@CUTOFF_DATE_SLOP = common dso_local global i64 0, align 8
@name_ref = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_name_rev(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_array, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.name_ref_data, align 4
  %14 = alloca [11 x %struct.option], align 16
  %15 = alloca %struct.object_id, align 4
  %16 = alloca %struct.object*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca %struct.object*, align 8
  %19 = alloca [2048 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.object*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %25 = bitcast %struct.object_array* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = bitcast %struct.name_ref_data* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 32, i1 false)
  %27 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 2
  %28 = load i32, i32* @STRING_LIST_INIT_NODUP, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 3
  %30 = load i32, i32* @STRING_LIST_INIT_NODUP, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %14, i64 0, i64 0
  %32 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 0
  %33 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %31, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %32, i32 %33)
  %34 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %35 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 1
  %36 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %34, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %35, i32 %36)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %38 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 3
  %39 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %40 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  call void @OPT_STRING_LIST(%struct.option* sret %37, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %38, i32 %39, i32 %40)
  %41 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %42 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 2
  %43 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  call void @OPT_STRING_LIST(%struct.option* sret %41, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %42, i32 %43, i32 %44)
  %45 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  call void @OPT_GROUP(%struct.option* sret %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.option, %struct.option* %45, i64 1
  %47 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %46, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %8, i32 %47)
  %48 = getelementptr inbounds %struct.option, %struct.option* %46, i64 1
  %49 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %48, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %9, i32 %49)
  %50 = getelementptr inbounds %struct.option, %struct.option* %48, i64 1
  %51 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %50, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* %10, i32 %51)
  %52 = getelementptr inbounds %struct.option, %struct.option* %50, i64 1
  %53 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %52, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32* %11, i32 %53)
  %54 = getelementptr inbounds %struct.option, %struct.option* %52, i64 1
  %55 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  %56 = load i32, i32* @OPTION_SET_INT, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %55, align 8
  %59 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 2
  store i32 ptrtoint ([9 x i8]* @.str.18 to i32), i32* %60, align 8
  %61 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 3
  %62 = ptrtoint i32* %12 to i32
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 4
  store i32* null, i32** %63, align 8
  %64 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 5
  %65 = call i32 @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 6
  %67 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %68 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %69 = or i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %66, align 8
  %72 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 7
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 8
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.option, %struct.option* %54, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %74)
  %75 = call i32 @init_commit_rev_name(i32* @rev_names)
  %76 = load i32, i32* @git_default_config, align 4
  %77 = call i32 @git_config(i32 %76, i32* null)
  %78 = load i32, i32* %4, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %14, i64 0, i64 0
  %82 = load i32, i32* @name_rev_usage, align 4
  %83 = call i32 @parse_options(i32 %78, i8** %79, i8* %80, %struct.option* %81, i32 %82, i32 0)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = add nsw i32 %86, %91
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %99

94:                                               ; preds = %3
  %95 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0))
  %96 = load i32, i32* @name_rev_usage, align 4
  %97 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %14, i64 0, i64 0
  %98 = call i32 @usage_with_options(i32 %96, %struct.option* %97)
  br label %99

99:                                               ; preds = %94, %3
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %99
  store i64 0, i64* @cutoff, align 8
  br label %106

106:                                              ; preds = %105, %102
  br label %107

107:                                              ; preds = %184, %106
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %189

110:                                              ; preds = %107
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @get_oid(i8* %112, %struct.object_id* %15)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8**, i8*** %5, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @fprintf(i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i8* %118)
  br label %184

120:                                              ; preds = %110
  store %struct.commit* null, %struct.commit** %17, align 8
  %121 = load i32, i32* @the_repository, align 4
  %122 = call %struct.object* @parse_object(i32 %121, %struct.object_id* %15)
  store %struct.object* %122, %struct.object** %16, align 8
  %123 = load %struct.object*, %struct.object** %16, align 8
  %124 = icmp ne %struct.object* %123, null
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load i32, i32* @the_repository, align 4
  %127 = load %struct.object*, %struct.object** %16, align 8
  %128 = load i8**, i8*** %5, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = call %struct.object* @deref_tag(i32 %126, %struct.object* %127, i8* %129, i32 0)
  store %struct.object* %130, %struct.object** %18, align 8
  %131 = load %struct.object*, %struct.object** %18, align 8
  %132 = icmp ne %struct.object* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %125
  %134 = load %struct.object*, %struct.object** %18, align 8
  %135 = getelementptr inbounds %struct.object, %struct.object* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @OBJ_COMMIT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.object*, %struct.object** %18, align 8
  %141 = bitcast %struct.object* %140 to %struct.commit*
  store %struct.commit* %141, %struct.commit** %17, align 8
  br label %142

142:                                              ; preds = %139, %133, %125
  br label %143

143:                                              ; preds = %142, %120
  %144 = load %struct.object*, %struct.object** %16, align 8
  %145 = icmp ne %struct.object* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @stderr, align 4
  %148 = load i8**, i8*** %5, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @fprintf(i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* %149)
  br label %184

151:                                              ; preds = %143
  %152 = load %struct.commit*, %struct.commit** %17, align 8
  %153 = icmp ne %struct.commit* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load i64, i64* @cutoff, align 8
  %156 = load %struct.commit*, %struct.commit** %17, align 8
  %157 = getelementptr inbounds %struct.commit, %struct.commit* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %155, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load %struct.commit*, %struct.commit** %17, align 8
  %162 = getelementptr inbounds %struct.commit, %struct.commit* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* @cutoff, align 8
  br label %164

164:                                              ; preds = %160, %154
  br label %165

165:                                              ; preds = %164, %151
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load %struct.commit*, %struct.commit** %17, align 8
  %170 = icmp ne %struct.commit* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* @stderr, align 4
  %173 = load i8**, i8*** %5, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @fprintf(i32 %172, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* %174)
  br label %184

176:                                              ; preds = %168
  %177 = load %struct.commit*, %struct.commit** %17, align 8
  %178 = bitcast %struct.commit* %177 to %struct.object*
  store %struct.object* %178, %struct.object** %16, align 8
  br label %179

179:                                              ; preds = %176, %165
  %180 = load %struct.object*, %struct.object** %16, align 8
  %181 = load i8**, i8*** %5, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @add_object_array(%struct.object* %180, i8* %182, %struct.object_array* %7)
  br label %184

184:                                              ; preds = %179, %171, %146, %115
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %4, align 4
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i32 1
  store i8** %188, i8*** %5, align 8
  br label %107

189:                                              ; preds = %107
  %190 = load i64, i64* @cutoff, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load i64, i64* @cutoff, align 8
  %194 = load i64, i64* @TIME_MIN, align 8
  %195 = load i64, i64* @CUTOFF_DATE_SLOP, align 8
  %196 = add nsw i64 %194, %195
  %197 = icmp sgt i64 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load i64, i64* @cutoff, align 8
  %200 = load i64, i64* @CUTOFF_DATE_SLOP, align 8
  %201 = sub nsw i64 %199, %200
  store i64 %201, i64* @cutoff, align 8
  br label %204

202:                                              ; preds = %192
  %203 = load i64, i64* @TIME_MIN, align 8
  store i64 %203, i64* @cutoff, align 8
  br label %204

204:                                              ; preds = %202, %198
  br label %205

205:                                              ; preds = %204, %189
  %206 = load i32, i32* @name_ref, align 4
  %207 = call i32 @for_each_ref(i32 %206, %struct.name_ref_data* %13)
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %223, %210
  %212 = load i32, i32* @stdin, align 4
  %213 = call i32 @feof(i32 %212)
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %218 = load i32, i32* @stdin, align 4
  %219 = call i8* @fgets(i8* %217, i32 2048, i32 %218)
  store i8* %219, i8** %20, align 8
  %220 = load i8*, i8** %20, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %216
  br label %226

223:                                              ; preds = %216
  %224 = load i8*, i8** %20, align 8
  %225 = call i32 @name_rev_line(i8* %224, %struct.name_ref_data* %13)
  br label %211

226:                                              ; preds = %222, %211
  br label %290

227:                                              ; preds = %205
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %227
  %231 = call i32 (...) @get_max_object_index()
  store i32 %231, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %232

232:                                              ; preds = %255, %230
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %22, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %258

236:                                              ; preds = %232
  %237 = load i32, i32* %21, align 4
  %238 = call %struct.object* @get_indexed_object(i32 %237)
  store %struct.object* %238, %struct.object** %23, align 8
  %239 = load %struct.object*, %struct.object** %23, align 8
  %240 = icmp ne %struct.object* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load %struct.object*, %struct.object** %23, align 8
  %243 = getelementptr inbounds %struct.object, %struct.object* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @OBJ_COMMIT, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %241, %236
  br label %255

248:                                              ; preds = %241
  %249 = load %struct.object*, %struct.object** %23, align 8
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %10, align 4
  %252 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @show_name(%struct.object* %249, i32* null, i32 %250, i32 %251, i32 %253)
  br label %255

255:                                              ; preds = %248, %247
  %256 = load i32, i32* %21, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %21, align 4
  br label %232

258:                                              ; preds = %232
  br label %289

259:                                              ; preds = %227
  store i32 0, i32* %24, align 4
  br label %260

260:                                              ; preds = %285, %259
  %261 = load i32, i32* %24, align 4
  %262 = getelementptr inbounds %struct.object_array, %struct.object_array* %7, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %288

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.object_array, %struct.object_array* %7, i32 0, i32 1
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  %272 = load %struct.object*, %struct.object** %271, align 8
  %273 = getelementptr inbounds %struct.object_array, %struct.object_array* %7, i32 0, i32 1
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = load i32, i32* %24, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* %10, align 4
  %282 = getelementptr inbounds %struct.name_ref_data, %struct.name_ref_data* %13, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @show_name(%struct.object* %272, i32* %279, i32 %280, i32 %281, i32 %283)
  br label %285

285:                                              ; preds = %265
  %286 = load i32, i32* %24, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %24, align 4
  br label %260

288:                                              ; preds = %260
  br label %289

289:                                              ; preds = %288, %258
  br label %290

290:                                              ; preds = %289, %226
  %291 = bitcast %struct.object_array* %7 to { i32, %struct.TYPE_2__* }*
  %292 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %291, i32 0, i32 1
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = call i32 @UNLEAK(i32 %293, %struct.TYPE_2__* %295)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i32, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT_STRING_LIST(%struct.option* sret, i32, i8*, i32*, i32, i32) #2

declare dso_local void @OPT_GROUP(%struct.option* sret, i8*) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @init_commit_rev_name(i32*) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #2

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i8*, i32) #2

declare dso_local i32 @add_object_array(%struct.object*, i8*, %struct.object_array*) #2

declare dso_local i32 @for_each_ref(i32, %struct.name_ref_data*) #2

declare dso_local i32 @feof(i32) #2

declare dso_local i8* @fgets(i8*, i32, i32) #2

declare dso_local i32 @name_rev_line(i8*, %struct.name_ref_data*) #2

declare dso_local i32 @get_max_object_index(...) #2

declare dso_local %struct.object* @get_indexed_object(i32) #2

declare dso_local i32 @show_name(%struct.object*, i32*, i32, i32, i32) #2

declare dso_local i32 @UNLEAK(i32, %struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
