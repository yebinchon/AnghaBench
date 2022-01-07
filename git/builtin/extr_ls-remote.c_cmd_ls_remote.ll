; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-remote.c_cmd_ls_remote.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-remote.c_cmd_ls_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.string_list = type { i64 }
%struct.ref_sorting = type { i32 }
%struct.remote = type { i8**, i32 }
%struct.transport = type { %struct.string_list* }
%struct.ref = type { i32, i32, i32, %struct.ref* }
%struct.ref_array = type { i32, %struct.ref_array_item** }
%struct.ref_array_item = type { i8*, i8*, i32 }
%struct.option = type { i8*, i8**, i32, i32, i32, i32, i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@cmd_ls_remote.sorting = internal global %struct.ref_sorting* null, align 8
@cmd_ls_remote.sorting_tail = internal global %struct.ref_sorting** @cmd_ls_remote.sorting, align 8
@.str = private unnamed_addr constant [24 x i8] c"do not print remote URL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"upload-pack\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"path of git-upload-pack on the remote host\00", align 1
@OPTION_STRING = common dso_local global i32 0, align 4
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"limit to tags\00", align 1
@REF_TAGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"heads\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"limit to heads\00", align 1
@REF_HEADS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"do not show peeled tags\00", align 1
@REF_NORMAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"get-url\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"take url.<base>.insteadOf into account\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"exit-code\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"exit with exit code 2 if no matching refs are found\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"symref\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"show underlying ref in addition to the object pointed by it\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"server-option\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"server-specific\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"option to transmit\00", align 1
@ls_remote_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"*/%s\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"bad repository '%s'\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"No remote configured to list refs from.\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"remote %s has no configured URL\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TRANS_OPT_UPLOADPACK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"From %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"ref: %s\09%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_ls_remote(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.argv_array, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.string_list, align 8
  %19 = alloca %struct.remote*, align 8
  %20 = alloca %struct.transport*, align 8
  %21 = alloca %struct.ref*, align 8
  %22 = alloca %struct.ref_array, align 8
  %23 = alloca [12 x %struct.option], align 16
  %24 = alloca i32, align 4
  %25 = alloca %struct.ref_array_item*, align 8
  %26 = alloca %struct.ref_array_item*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8** null, i8*** %15, align 8
  %27 = bitcast %struct.argv_array* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %28 = bitcast %struct.string_list* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 8, i1 false)
  %29 = getelementptr inbounds [12 x %struct.option], [12 x %struct.option]* %23, i64 0, i64 0
  %30 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  call void @OPT__QUIET(%struct.option* sret %29, i32* %11, i32 %30)
  %31 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %32 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %31, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %14, i32 %32, i32 %33)
  %34 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  %36 = load i32, i32* @OPTION_STRING, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %35, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 1
  store i8** null, i8*** %39, align 8
  %40 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 2
  store i32 ptrtoint ([5 x i8]* @.str.2 to i32), i32* %40, align 8
  %41 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 3
  %42 = ptrtoint i8** %14 to i32
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 4
  %44 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 5
  %46 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 6
  %48 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %50 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i32, i32* @REF_TAGS, align 4
  call void @OPT_BIT(%struct.option* sret %49, i8 signext 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %9, i32 %50, i32 %51)
  %52 = getelementptr inbounds %struct.option, %struct.option* %49, i64 1
  %53 = call i32 @N_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32, i32* @REF_HEADS, align 4
  call void @OPT_BIT(%struct.option* sret %52, i8 signext 104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %9, i32 %53, i32 %54)
  %55 = getelementptr inbounds %struct.option, %struct.option* %52, i64 1
  %56 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %57 = load i32, i32* @REF_NORMAL, align 4
  call void @OPT_BIT(%struct.option* sret %55, i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %9, i32 %56, i32 %57)
  %58 = getelementptr inbounds %struct.option, %struct.option* %55, i64 1
  %59 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %58, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %10, i32 %59)
  %60 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %61 = load %struct.ref_sorting**, %struct.ref_sorting*** @cmd_ls_remote.sorting_tail, align 8
  call void @OPT_REF_SORT(%struct.option* sret %60, %struct.ref_sorting** %61)
  %62 = getelementptr inbounds %struct.option, %struct.option* %60, i64 1
  %63 = call i32 @N_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %64 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  call void @OPT_SET_INT_F(%struct.option* sret %62, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %12, i32 %63, i32 2, i32 %64)
  %65 = getelementptr inbounds %struct.option, %struct.option* %62, i64 1
  %66 = call i32 @N_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %65, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* %13, i32 %66)
  %67 = getelementptr inbounds %struct.option, %struct.option* %65, i64 1
  %68 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %69 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  call void @OPT_STRING_LIST(%struct.option* sret %67, i8 signext 111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), %struct.string_list* %18, i32 %68, i32 %69)
  %70 = getelementptr inbounds %struct.option, %struct.option* %67, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %70)
  %71 = call i32 @memset(%struct.ref_array* %22, i32 0, i32 16)
  %72 = load i32, i32* %5, align 4
  %73 = load i8**, i8*** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds [12 x %struct.option], [12 x %struct.option]* %23, i64 0, i64 0
  %76 = load i32, i32* @ls_remote_usage, align 4
  %77 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %78 = call i32 @parse_options(i32 %72, i8** %73, i8* %74, %struct.option* %75, i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %107

84:                                               ; preds = %3
  %85 = load i32, i32* %5, align 4
  %86 = call i8** @xcalloc(i32 %85, i32 8)
  store i8** %86, i8*** %15, align 8
  store i32 1, i32* %24, align 4
  br label %87

87:                                               ; preds = %103, %84
  %88 = load i32, i32* %24, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load i8**, i8*** %6, align 8
  %93 = load i32, i32* %24, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %96)
  %98 = load i8**, i8*** %15, align 8
  %99 = load i32, i32* %24, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  store i8* %97, i8** %102, align 8
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %24, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %24, align 4
  br label %87

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106, %3
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @REF_TAGS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @argv_array_push(%struct.argv_array* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @REF_HEADS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @argv_array_push(%struct.argv_array* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i8*, i8** %8, align 8
  %123 = call %struct.remote* @remote_get(i8* %122)
  store %struct.remote* %123, %struct.remote** %19, align 8
  %124 = load %struct.remote*, %struct.remote** %19, align 8
  %125 = icmp ne %struct.remote* %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %8, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %121
  %135 = load %struct.remote*, %struct.remote** %19, align 8
  %136 = getelementptr inbounds %struct.remote, %struct.remote* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.remote*, %struct.remote** %19, align 8
  %147 = getelementptr inbounds %struct.remote, %struct.remote* %146, i32 0, i32 0
  %148 = load i8**, i8*** %147, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %149)
  %151 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_ls_remote.sorting, align 8
  %152 = call i32 @UNLEAK(%struct.ref_sorting* %151)
  store i32 0, i32* %4, align 4
  br label %277

153:                                              ; preds = %142
  %154 = load %struct.remote*, %struct.remote** %19, align 8
  %155 = call %struct.transport* @transport_get(%struct.remote* %154, i32* null)
  store %struct.transport* %155, %struct.transport** %20, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.transport*, %struct.transport** %20, align 8
  %160 = load i32, i32* @TRANS_OPT_UPLOADPACK, align 4
  %161 = load i8*, i8** %14, align 8
  %162 = call i32 @transport_set_option(%struct.transport* %159, i32 %160, i8* %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.transport*, %struct.transport** %20, align 8
  %169 = getelementptr inbounds %struct.transport, %struct.transport* %168, i32 0, i32 0
  store %struct.string_list* %18, %struct.string_list** %169, align 8
  br label %170

170:                                              ; preds = %167, %163
  %171 = load %struct.transport*, %struct.transport** %20, align 8
  %172 = call %struct.ref* @transport_get_remote_refs(%struct.transport* %171, %struct.argv_array* %16)
  store %struct.ref* %172, %struct.ref** %21, align 8
  %173 = load %struct.transport*, %struct.transport** %20, align 8
  %174 = call i64 @transport_disconnect(%struct.transport* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_ls_remote.sorting, align 8
  %178 = call i32 @UNLEAK(%struct.ref_sorting* %177)
  store i32 1, i32* %4, align 4
  br label %277

179:                                              ; preds = %170
  %180 = load i8*, i8** %8, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @stderr, align 4
  %187 = load %struct.remote*, %struct.remote** %19, align 8
  %188 = getelementptr inbounds %struct.remote, %struct.remote* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @fprintf(i32 %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %185, %182, %179
  br label %193

193:                                              ; preds = %223, %192
  %194 = load %struct.ref*, %struct.ref** %21, align 8
  %195 = icmp ne %struct.ref* %194, null
  br i1 %195, label %196, label %227

196:                                              ; preds = %193
  %197 = load %struct.ref*, %struct.ref** %21, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @check_ref_type(%struct.ref* %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  br label %223

202:                                              ; preds = %196
  %203 = load i8**, i8*** %15, align 8
  %204 = load %struct.ref*, %struct.ref** %21, align 8
  %205 = getelementptr inbounds %struct.ref, %struct.ref* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @tail_match(i8** %203, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %202
  br label %223

210:                                              ; preds = %202
  %211 = load %struct.ref*, %struct.ref** %21, align 8
  %212 = getelementptr inbounds %struct.ref, %struct.ref* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.ref*, %struct.ref** %21, align 8
  %215 = getelementptr inbounds %struct.ref, %struct.ref* %214, i32 0, i32 1
  %216 = call %struct.ref_array_item* @ref_array_push(%struct.ref_array* %22, i32 %213, i32* %215)
  store %struct.ref_array_item* %216, %struct.ref_array_item** %25, align 8
  %217 = load %struct.ref*, %struct.ref** %21, align 8
  %218 = getelementptr inbounds %struct.ref, %struct.ref* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @xstrdup_or_null(i32 %219)
  %221 = load %struct.ref_array_item*, %struct.ref_array_item** %25, align 8
  %222 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %210, %209, %201
  %224 = load %struct.ref*, %struct.ref** %21, align 8
  %225 = getelementptr inbounds %struct.ref, %struct.ref* %224, i32 0, i32 3
  %226 = load %struct.ref*, %struct.ref** %225, align 8
  store %struct.ref* %226, %struct.ref** %21, align 8
  br label %193

227:                                              ; preds = %193
  %228 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_ls_remote.sorting, align 8
  %229 = icmp ne %struct.ref_sorting* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_ls_remote.sorting, align 8
  %232 = call i32 @ref_array_sort(%struct.ref_sorting* %231, %struct.ref_array* %22)
  br label %233

233:                                              ; preds = %230, %227
  store i32 0, i32* %17, align 4
  br label %234

234:                                              ; preds = %269, %233
  %235 = load i32, i32* %17, align 4
  %236 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %22, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %272

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %22, i32 0, i32 1
  %241 = load %struct.ref_array_item**, %struct.ref_array_item*** %240, align 8
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ref_array_item*, %struct.ref_array_item** %241, i64 %243
  %245 = load %struct.ref_array_item*, %struct.ref_array_item** %244, align 8
  store %struct.ref_array_item* %245, %struct.ref_array_item** %26, align 8
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %239
  %249 = load %struct.ref_array_item*, %struct.ref_array_item** %26, align 8
  %250 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load %struct.ref_array_item*, %struct.ref_array_item** %26, align 8
  %255 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.ref_array_item*, %struct.ref_array_item** %26, align 8
  %258 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* %256, i8* %259)
  br label %261

261:                                              ; preds = %253, %248, %239
  %262 = load %struct.ref_array_item*, %struct.ref_array_item** %26, align 8
  %263 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %262, i32 0, i32 2
  %264 = call i8* @oid_to_hex(i32* %263)
  %265 = load %struct.ref_array_item*, %struct.ref_array_item** %26, align 8
  %266 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %265, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %264, i8* %267)
  store i32 0, i32* %12, align 4
  br label %269

269:                                              ; preds = %261
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %17, align 4
  br label %234

272:                                              ; preds = %234
  %273 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_ls_remote.sorting, align 8
  %274 = call i32 @UNLEAK(%struct.ref_sorting* %273)
  %275 = call i32 @ref_array_clear(%struct.ref_array* %22)
  %276 = load i32, i32* %12, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %272, %176, %145
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @OPT__QUIET(%struct.option* sret, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT_STRING(%struct.option* sret, i32, i8*, i8**, i32, i32) #2

declare dso_local void @OPT_BIT(%struct.option* sret, i8 signext, i8*, i32*, i32, i32) #2

declare dso_local void @OPT_BOOL(%struct.option* sret, i32, i8*, i32*, i32) #2

declare dso_local void @OPT_REF_SORT(%struct.option* sret, %struct.ref_sorting**) #2

declare dso_local void @OPT_SET_INT_F(%struct.option* sret, i32, i8*, i32*, i32, i32, i32) #2

declare dso_local void @OPT_STRING_LIST(%struct.option* sret, i8 signext, i8*, %struct.string_list*, i32, i32) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @memset(%struct.ref_array*, i32, i32) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i8** @xcalloc(i32, i32) #2

declare dso_local i8* @xstrfmt(i8*, i8*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local %struct.remote* @remote_get(i8*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @UNLEAK(%struct.ref_sorting*) #2

declare dso_local %struct.transport* @transport_get(%struct.remote*, i32*) #2

declare dso_local i32 @transport_set_option(%struct.transport*, i32, i8*) #2

declare dso_local %struct.ref* @transport_get_remote_refs(%struct.transport*, %struct.argv_array*) #2

declare dso_local i64 @transport_disconnect(%struct.transport*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @check_ref_type(%struct.ref*, i32) #2

declare dso_local i32 @tail_match(i8**, i32) #2

declare dso_local %struct.ref_array_item* @ref_array_push(%struct.ref_array*, i32, i32*) #2

declare dso_local i8* @xstrdup_or_null(i32) #2

declare dso_local i32 @ref_array_sort(%struct.ref_sorting*, %struct.ref_array*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @ref_array_clear(%struct.ref_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
