; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_show.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, i32 }
%struct.option = type { i32 }
%struct.ref_states = type { %struct.string_list*, %struct.string_list, i64, i64, %struct.TYPE_6__*, i64, %struct.string_list, %struct.string_list, %struct.string_list, %struct.TYPE_5__, %struct.ref_states* }
%struct.TYPE_6__ = type { i32, i8**, i32, i8**, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.show_info = type { %struct.string_list*, %struct.string_list, i64, i64, %struct.TYPE_6__*, i64, %struct.string_list, %struct.string_list, %struct.string_list, %struct.TYPE_5__, %struct.show_info* }

@.str = private unnamed_addr constant [21 x i8] c"do not query remotes\00", align 1
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@builtin_remote_show_usage = common dso_local global i32 0, align 4
@GET_REF_STATES = common dso_local global i32 0, align 4
@GET_HEAD_NAMES = common dso_local global i32 0, align 4
@GET_PUSH_REF_STATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"* remote %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  Fetch URL: %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"(no URL)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  Push  URL: %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  HEAD branch: %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"(not queried)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"  HEAD branch (remote HEAD is ambiguous, may be one of the following):\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@add_remote_to_show_info = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"  Remote branch:%s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"  Remote branches:%s\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" (status not queried)\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@show_remote_info_item = common dso_local global i32 0, align 4
@branch_list = common dso_local global %struct.string_list zeroinitializer, align 8
@add_local_to_show_info = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"  Local branch configured for 'git pull':\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"  Local branches configured for 'git pull':\00", align 1
@show_local_info_item = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"  Local refs will be mirrored by 'git push'\00", align 1
@add_push_to_show_info = common dso_local global i32 0, align 4
@cmp_string_with_push = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"  Local ref configured for 'git push'%s:\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"  Local refs configured for 'git push'%s:\00", align 1
@show_push_info_item = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.option], align 4
  %10 = alloca %struct.ref_states, align 8
  %11 = alloca %struct.string_list, align 8
  %12 = alloca %struct.show_info, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %17 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @OPT_BOOL(i8 signext 110, i32* null, i32* %6, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 (...) @OPT_END()
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.string_list* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %27 = load i32, i32* @builtin_remote_show_usage, align 4
  %28 = call i32 @parse_options(i32 %24, i8** %25, i32* null, %struct.option* %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 (...) @show_all()
  store i32 %32, i32* %3, align 4
  br label %303

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @GET_REF_STATES, align 4
  %38 = load i32, i32* @GET_HEAD_NAMES, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @GET_PUSH_REF_STATES, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %33
  %43 = bitcast %struct.ref_states* %10 to %struct.show_info*
  %44 = call i32 @memset(%struct.show_info* %43, i32 0, i32 128)
  %45 = call i32 @memset(%struct.show_info* %12, i32 0, i32 128)
  %46 = bitcast %struct.ref_states* %10 to %struct.show_info*
  %47 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 10
  store %struct.show_info* %46, %struct.show_info** %47, align 8
  %48 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  store %struct.string_list* %11, %struct.string_list** %48, align 8
  br label %49

49:                                               ; preds = %296, %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %301

52:                                               ; preds = %49
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast %struct.ref_states* %10 to %struct.show_info*
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @get_remote_ref_states(i8* %54, %struct.show_info* %55, i32 %56)
  %58 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printf_ln(i8* %58, i8* %60)
  %62 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  br label %77

75:                                               ; preds = %52
  %76 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %68
  %78 = phi i8* [ %74, %68 ], [ %76, %75 ]
  %79 = call i32 (i8*, ...) @printf_ln(i8* %62, i8* %78)
  %80 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i8**, i8*** %88, align 8
  store i8** %89, i8*** %14, align 8
  %90 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %15, align 4
  br label %103

94:                                               ; preds = %77
  %95 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  store i8** %98, i8*** %14, align 8
  %99 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %94, %85
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %116, %103
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i8**, i8*** %14, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i8*, ...) @printf_ln(i8* %109, i8* %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %104

119:                                              ; preds = %104
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %124 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %125 = call i32 (i8*, ...) @printf_ln(i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %131 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %132 = call i32 (i8*, ...) @printf_ln(i8* %130, i8* %131)
  br label %181

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %140 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %141 = call i32 (i8*, ...) @printf_ln(i8* %139, i8* %140)
  br label %180

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 9
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %149 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 9
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, ...) @printf_ln(i8* %148, i8* %154)
  br label %179

156:                                              ; preds = %142
  %157 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %158 = call i32 (i8*, ...) @printf(i8* %157)
  store i32 0, i32* %13, align 4
  br label %159

159:                                              ; preds = %175, %156
  %160 = load i32, i32* %13, align 4
  %161 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 9
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %159

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %178, %147
  br label %180

180:                                              ; preds = %179, %138
  br label %181

181:                                              ; preds = %180, %129
  %182 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 3
  store i64 0, i64* %182, align 8
  %183 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 8
  %184 = load i32, i32* @add_remote_to_show_info, align 4
  %185 = call i32 @for_each_string_list(%struct.string_list* %183, i32 %184, %struct.show_info* %12)
  %186 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 7
  %187 = load i32, i32* @add_remote_to_show_info, align 4
  %188 = call i32 @for_each_string_list(%struct.string_list* %186, i32 %187, %struct.show_info* %12)
  %189 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 6
  %190 = load i32, i32* @add_remote_to_show_info, align 4
  %191 = call i32 @for_each_string_list(%struct.string_list* %189, i32 %190, %struct.show_info* %12)
  %192 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %193 = load %struct.string_list*, %struct.string_list** %192, align 8
  %194 = getelementptr inbounds %struct.string_list, %struct.string_list* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %181
  %198 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %199 = load %struct.string_list*, %struct.string_list** %198, align 8
  %200 = getelementptr inbounds %struct.string_list, %struct.string_list* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @Q_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64 %201)
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %208

207:                                              ; preds = %197
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i8* [ %206, %205 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %207 ]
  %210 = call i32 (i8*, ...) @printf_ln(i8* %202, i8* %209)
  br label %211

211:                                              ; preds = %208, %181
  %212 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %213 = load %struct.string_list*, %struct.string_list** %212, align 8
  %214 = load i32, i32* @show_remote_info_item, align 4
  %215 = call i32 @for_each_string_list(%struct.string_list* %213, i32 %214, %struct.show_info* %12)
  %216 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %217 = load %struct.string_list*, %struct.string_list** %216, align 8
  %218 = call i32 @string_list_clear(%struct.string_list* %217, i32 0)
  %219 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 3
  store i64 0, i64* %219, align 8
  %220 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 5
  store i64 0, i64* %220, align 8
  %221 = load i32, i32* @add_local_to_show_info, align 4
  %222 = call i32 @for_each_string_list(%struct.string_list* @branch_list, i32 %221, %struct.show_info* %12)
  %223 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %224 = load %struct.string_list*, %struct.string_list** %223, align 8
  %225 = getelementptr inbounds %struct.string_list, %struct.string_list* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %211
  %229 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %230 = load %struct.string_list*, %struct.string_list** %229, align 8
  %231 = getelementptr inbounds %struct.string_list, %struct.string_list* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @Q_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i64 %232)
  %234 = call i32 (i8*, ...) @printf_ln(i8* %233)
  br label %235

235:                                              ; preds = %228, %211
  %236 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %237 = load %struct.string_list*, %struct.string_list** %236, align 8
  %238 = load i32, i32* @show_local_info_item, align 4
  %239 = call i32 @for_each_string_list(%struct.string_list* %237, i32 %238, %struct.show_info* %12)
  %240 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %241 = load %struct.string_list*, %struct.string_list** %240, align 8
  %242 = call i32 @string_list_clear(%struct.string_list* %241, i32 0)
  %243 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %235
  %249 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  %250 = call i32 (i8*, ...) @printf_ln(i8* %249)
  br label %251

251:                                              ; preds = %248, %235
  %252 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 2
  store i64 0, i64* %252, align 8
  %253 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 3
  store i64 0, i64* %253, align 8
  %254 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %10, i32 0, i32 1
  %255 = load i32, i32* @add_push_to_show_info, align 4
  %256 = call i32 @for_each_string_list(%struct.string_list* %254, i32 %255, %struct.show_info* %12)
  %257 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %258 = load %struct.string_list*, %struct.string_list** %257, align 8
  %259 = getelementptr inbounds %struct.string_list, %struct.string_list* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %262 = load %struct.string_list*, %struct.string_list** %261, align 8
  %263 = getelementptr inbounds %struct.string_list, %struct.string_list* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* @cmp_string_with_push, align 4
  %266 = call i32 @QSORT(i32 %260, i64 %264, i32 %265)
  %267 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %268 = load %struct.string_list*, %struct.string_list** %267, align 8
  %269 = getelementptr inbounds %struct.string_list, %struct.string_list* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %251
  %273 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %274 = load %struct.string_list*, %struct.string_list** %273, align 8
  %275 = getelementptr inbounds %struct.string_list, %struct.string_list* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i8* @Q_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i64 %276)
  %278 = load i32, i32* %6, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %272
  %281 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %283

282:                                              ; preds = %272
  br label %283

283:                                              ; preds = %282, %280
  %284 = phi i8* [ %281, %280 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %282 ]
  %285 = call i32 (i8*, ...) @printf_ln(i8* %277, i8* %284)
  br label %286

286:                                              ; preds = %283, %251
  %287 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %288 = load %struct.string_list*, %struct.string_list** %287, align 8
  %289 = load i32, i32* @show_push_info_item, align 4
  %290 = call i32 @for_each_string_list(%struct.string_list* %288, i32 %289, %struct.show_info* %12)
  %291 = getelementptr inbounds %struct.show_info, %struct.show_info* %12, i32 0, i32 0
  %292 = load %struct.string_list*, %struct.string_list** %291, align 8
  %293 = call i32 @string_list_clear(%struct.string_list* %292, i32 0)
  %294 = bitcast %struct.ref_states* %10 to %struct.show_info*
  %295 = call i32 @free_remote_ref_states(%struct.show_info* %294)
  br label %296

296:                                              ; preds = %286
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %4, align 4
  %299 = load i8**, i8*** %5, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i32 1
  store i8** %300, i8*** %5, align 8
  br label %49

301:                                              ; preds = %49
  %302 = load i32, i32* %7, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %301, %31
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local i32 @OPT_BOOL(i8 signext, i32*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #1

declare dso_local i32 @show_all(...) #1

declare dso_local i32 @memset(%struct.show_info*, i32, i32) #1

declare dso_local i32 @get_remote_ref_states(i8*, %struct.show_info*, i32) #1

declare dso_local i32 @printf_ln(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @for_each_string_list(%struct.string_list*, i32, %struct.show_info*) #1

declare dso_local i8* @Q_(i8*, i8*, i64) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @QSORT(i32, i64, i32) #1

declare dso_local i32 @free_remote_ref_states(%struct.show_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
