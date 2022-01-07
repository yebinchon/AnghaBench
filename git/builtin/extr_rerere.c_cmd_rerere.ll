; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rerere.c_cmd_rerere.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rerere.c_cmd_rerere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %struct.rerere_id* }
%struct.rerere_id = type { i32 }
%struct.option = type { i32 }
%struct.pathspec = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"rerere-autoupdate\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"register clean resolutions in index\00", align 1
@rerere_usage = common dso_local global i32 0, align 4
@git_xmerge_config = common dso_local global i32 0, align 4
@RERERE_AUTOUPDATE = common dso_local global i32 0, align 4
@RERERE_NOAUTOUPDATE = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"forget\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"'git rerere forget' without paths is deprecated\00", align 1
@PATHSPEC_PREFER_CWD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@RERERE_READONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"remaining\00", align 1
@RERERE_RESOLVED = common dso_local global %struct.rerere_id* null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"preimage\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to generate diff for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_rerere(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.string_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.option], align 4
  %13 = alloca %struct.pathspec, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.rerere_id*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %12, i64 0, i64 0
  %18 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @OPT_SET_INT(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %18, i32 1)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = call i32 (...) @OPT_END()
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %12, i64 0, i64 0
  %28 = load i32, i32* @rerere_usage, align 4
  %29 = call i32 @parse_options(i32 %24, i8** %25, i8* %26, %struct.option* %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @git_xmerge_config, align 4
  %31 = call i32 @git_config(i32 %30, i32* null)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @RERERE_AUTOUPDATE, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %3
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @RERERE_NOAUTOUPDATE, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @the_repository, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @repo_rerere(i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %226

48:                                               ; preds = %41
  %49 = load i8**, i8*** %6, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @warning(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i8**, i8*** %6, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = call i32 @parse_pathspec(%struct.pathspec* %13, i32 0, i32 %61, i8* %62, i8** %64)
  %66 = load i32, i32* @the_repository, align 4
  %67 = call i32 @rerere_forget(i32 %66, %struct.pathspec* %13)
  store i32 %67, i32* %4, align 4
  br label %226

68:                                               ; preds = %48
  %69 = load i8**, i8*** %6, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @the_repository, align 4
  %76 = call i32 @rerere_clear(i32 %75, %struct.string_list* %8)
  br label %224

77:                                               ; preds = %68
  %78 = load i8**, i8*** %6, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @the_repository, align 4
  %85 = call i32 @rerere_gc(i32 %84, %struct.string_list* %8)
  br label %223

86:                                               ; preds = %77
  %87 = load i8**, i8*** %6, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @the_repository, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @RERERE_READONLY, align 4
  %96 = or i32 %94, %95
  %97 = call i64 @setup_rerere(i32 %93, %struct.string_list* %8, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %226

100:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %101

118:                                              ; preds = %101
  br label %222

119:                                              ; preds = %86
  %120 = load i8**, i8*** %6, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %164, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @the_repository, align 4
  %127 = call i32 @rerere_remaining(i32 %126, %struct.string_list* %8)
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %160, %125
  %129 = load i32, i32* %9, align 4
  %130 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load %struct.rerere_id*, %struct.rerere_id** %139, align 8
  %141 = load %struct.rerere_id*, %struct.rerere_id** @RERERE_RESOLVED, align 8
  %142 = icmp ne %struct.rerere_id* %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %150)
  br label %159

152:                                              ; preds = %133
  %153 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store %struct.rerere_id* null, %struct.rerere_id** %158, align 8
  br label %159

159:                                              ; preds = %152, %143
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %128

163:                                              ; preds = %128
  br label %221

164:                                              ; preds = %119
  %165 = load i8**, i8*** %6, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %216, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* @the_repository, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @RERERE_READONLY, align 4
  %174 = or i32 %172, %173
  %175 = call i64 @setup_rerere(i32 %171, %struct.string_list* %8, i32 %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %226

178:                                              ; preds = %170
  store i32 0, i32* %9, align 4
  br label %179

179:                                              ; preds = %212, %178
  %180 = load i32, i32* %9, align 4
  %181 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %215

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %14, align 8
  %192 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load %struct.rerere_id*, %struct.rerere_id** %197, align 8
  store %struct.rerere_id* %198, %struct.rerere_id** %15, align 8
  %199 = load %struct.rerere_id*, %struct.rerere_id** %15, align 8
  %200 = call i32 @rerere_path(%struct.rerere_id* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %201 = load i8*, i8** %14, align 8
  %202 = load i8*, i8** %14, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = call i64 @diff_two(i32 %200, i8* %201, i8* %202, i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %184
  %207 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %208 = load %struct.rerere_id*, %struct.rerere_id** %15, align 8
  %209 = call i32 @rerere_path(%struct.rerere_id* %208, i8* null)
  %210 = call i32 @die(i32 %207, i32 %209)
  br label %211

211:                                              ; preds = %206, %184
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %179

215:                                              ; preds = %179
  br label %220

216:                                              ; preds = %164
  %217 = load i32, i32* @rerere_usage, align 4
  %218 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %12, i64 0, i64 0
  %219 = call i32 @usage_with_options(i32 %217, %struct.option* %218)
  br label %220

220:                                              ; preds = %216, %215
  br label %221

221:                                              ; preds = %220, %163
  br label %222

222:                                              ; preds = %221, %118
  br label %223

223:                                              ; preds = %222, %83
  br label %224

224:                                              ; preds = %223, %74
  %225 = call i32 @string_list_clear(%struct.string_list* %8, i32 1)
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %224, %177, %99, %60, %44
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_SET_INT(i32, i8*, i32*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @repo_rerere(i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #2

declare dso_local i32 @rerere_forget(i32, %struct.pathspec*) #2

declare dso_local i32 @rerere_clear(i32, %struct.string_list*) #2

declare dso_local i32 @rerere_gc(i32, %struct.string_list*) #2

declare dso_local i64 @setup_rerere(i32, %struct.string_list*, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @rerere_remaining(i32, %struct.string_list*) #2

declare dso_local i64 @diff_two(i32, i8*, i8*, i8*) #2

declare dso_local i32 @rerere_path(%struct.rerere_id*, i8*) #2

declare dso_local i32 @die(i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
