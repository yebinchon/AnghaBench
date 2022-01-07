; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_cmd_update_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_cmd_update_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.object_id = type { i32 }
%struct.option = type { i32 }
%struct.ref_transaction = type { i32 }

@msg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"reason of the update\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"delete the reference\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"no-deref\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"update <refname> not the one it points to\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"stdin has NUL-terminated arguments\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"read updates from stdin\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"create-reflog\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"create a reflog\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@git_update_ref_usage = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"Refusing to perform update with empty message.\00", align 1
@REF_FORCE_CREATE_REFLOG = common dso_local global i32 0, align 4
@create_reflog_flag = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@default_flags = common dso_local global i32 0, align 4
@update_flags = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@line_termination = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"%s: not a valid SHA1\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%s: not a valid old SHA1\00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_update_ref(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [7 x %struct.option], align 16
  %18 = alloca %struct.strbuf, align 8
  %19 = alloca %struct.ref_transaction*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %22 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @OPT_STRING(i8 signext 109, i32* null, i32** @msg, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %27 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @OPT_BOOL(i8 signext 100, i8* null, i32* %12, i32 %27)
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %31 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %13, i32 %31)
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %35 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @OPT_BOOL(i8 signext 122, i8* null, i32* %15, i32 %35)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %39 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %40 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %14, i32 %39)
  %41 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.option, %struct.option* %38, i64 1
  %43 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %44 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %16, i32 %43)
  %45 = getelementptr inbounds %struct.option, %struct.option* %42, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.option, %struct.option* %42, i64 1
  %47 = call i32 (...) @OPT_END()
  %48 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @git_default_config, align 4
  %50 = call i32 @git_config(i32 %49, i32* null)
  %51 = load i32, i32* %5, align 4
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %55 = load i32, i32* @git_update_ref_usage, align 4
  %56 = call i32 @parse_options(i32 %51, i8** %52, i8* %53, %struct.option* %54, i32 %55, i32 0)
  store i32 %56, i32* %5, align 4
  %57 = load i32*, i32** @msg, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %3
  %60 = load i32*, i32** @msg, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59, %3
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @REF_FORCE_CREATE_REFLOG, align 4
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  store i32 %72, i32* @create_reflog_flag, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @REF_NO_DEREF, align 4
  store i32 %76, i32* @default_flags, align 4
  %77 = load i32, i32* @default_flags, align 4
  store i32 %77, i32* @update_flags, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %78
  %82 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %83 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %18)
  store %struct.ref_transaction* %83, %struct.ref_transaction** %19, align 8
  %84 = load %struct.ref_transaction*, %struct.ref_transaction** %19, align 8
  %85 = icmp ne %struct.ref_transaction* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @git_update_ref_usage, align 4
  %98 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %99 = call i32 @usage_with_options(i32 %97, %struct.option* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i8 0, i8* @line_termination, align 1
  br label %104

104:                                              ; preds = %103, %100
  %105 = load %struct.ref_transaction*, %struct.ref_transaction** %19, align 8
  %106 = call i32 @update_refs_stdin(%struct.ref_transaction* %105)
  %107 = load %struct.ref_transaction*, %struct.ref_transaction** %19, align 8
  %108 = call i64 @ref_transaction_commit(%struct.ref_transaction* %107, %struct.strbuf* %18)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %110, %104
  %115 = load %struct.ref_transaction*, %struct.ref_transaction** %19, align 8
  %116 = call i32 @ref_transaction_free(%struct.ref_transaction* %115)
  %117 = call i32 @strbuf_release(%struct.strbuf* %18)
  store i32 0, i32* %4, align 4
  br label %221

118:                                              ; preds = %78
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* @git_update_ref_usage, align 4
  %123 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %124 = call i32 @usage_with_options(i32 %122, %struct.option* %123)
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = icmp sgt i32 %132, 2
  br i1 %133, label %134, label %138

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @git_update_ref_usage, align 4
  %136 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %137 = call i32 @usage_with_options(i32 %135, %struct.option* %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i8**, i8*** %6, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %8, align 8
  %142 = load i8**, i8*** %6, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %9, align 8
  br label %172

145:                                              ; preds = %125
  %146 = load i32, i32* %5, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %5, align 4
  %150 = icmp sgt i32 %149, 3
  br i1 %150, label %151, label %155

151:                                              ; preds = %148, %145
  %152 = load i32, i32* @git_update_ref_usage, align 4
  %153 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %154 = call i32 @usage_with_options(i32 %152, %struct.option* %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i8**, i8*** %6, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %8, align 8
  %159 = load i8**, i8*** %6, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %20, align 8
  %162 = load i8**, i8*** %6, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 2
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %9, align 8
  %165 = load i8*, i8** %20, align 8
  %166 = call i64 @get_oid(i8* %165, %struct.object_id* %10)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %155
  %169 = load i8*, i8** %20, align 8
  %170 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %168, %155
  br label %172

172:                                              ; preds = %171, %138
  %173 = load i8*, i8** %9, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load i8*, i8** %9, align 8
  %177 = load i8, i8* %176, align 1
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = call i32 @oidclr(%struct.object_id* %11)
  br label %189

181:                                              ; preds = %175
  %182 = load i8*, i8** %9, align 8
  %183 = call i64 @get_oid(i8* %182, %struct.object_id* %11)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %186)
  br label %188

188:                                              ; preds = %185, %181
  br label %189

189:                                              ; preds = %188, %179
  br label %190

190:                                              ; preds = %189, %172
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load i32*, i32** @msg, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = call i32 @is_null_oid(%struct.object_id* %11)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  br label %203

202:                                              ; preds = %198, %193
  br label %203

203:                                              ; preds = %202, %201
  %204 = phi %struct.object_id* [ %11, %201 ], [ null, %202 ]
  %205 = load i32, i32* @default_flags, align 4
  %206 = call i32 @delete_ref(i32* %194, i8* %195, %struct.object_id* %204, i32 %205)
  store i32 %206, i32* %4, align 4
  br label %221

207:                                              ; preds = %190
  %208 = load i32*, i32** @msg, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %214

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %212
  %215 = phi %struct.object_id* [ %11, %212 ], [ null, %213 ]
  %216 = load i32, i32* @default_flags, align 4
  %217 = load i32, i32* @create_reflog_flag, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %220 = call i32 @update_ref(i32* %208, i8* %209, %struct.object_id* %10, %struct.object_id* %215, i32 %218, i32 %219)
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %214, %203, %114
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @OPT_STRING(i8 signext, i32*, i32**, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @die(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @update_refs_stdin(%struct.ref_transaction*) #1

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local i32 @delete_ref(i32*, i8*, %struct.object_id*, i32) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @update_ref(i32*, i8*, %struct.object_id*, %struct.object_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
