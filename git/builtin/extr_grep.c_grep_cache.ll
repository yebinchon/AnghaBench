; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_cache.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.grep_opt = type { i64, %struct.repository* }
%struct.repository = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i64, i32, i32 }
%struct.pathspec = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@CE_VALID = common dso_local global i32 0, align 4
@recurse_submodules = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.pathspec*, i32)* @grep_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_cache(%struct.grep_opt* %0, %struct.pathspec* %1, i32 %2) #0 {
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca %struct.pathspec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_entry*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %4, align 8
  store %struct.pathspec* %1, %struct.pathspec** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %14 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %13, i32 0, i32 1
  %15 = load %struct.repository*, %struct.repository** %14, align 8
  store %struct.repository* %15, %struct.repository** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %17 = load %struct.repository*, %struct.repository** %7, align 8
  %18 = getelementptr inbounds %struct.repository, %struct.repository* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.repository*, %struct.repository** %7, align 8
  %23 = getelementptr inbounds %struct.repository, %struct.repository* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @strlen(i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.repository*, %struct.repository** %7, align 8
  %27 = getelementptr inbounds %struct.repository, %struct.repository* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @strbuf_addstr(%struct.strbuf* %10, i64 %28)
  br label %30

30:                                               ; preds = %21, %3
  %31 = load %struct.repository*, %struct.repository** %7, align 8
  %32 = call i64 @repo_read_index(%struct.repository* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @die(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %216, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.repository*, %struct.repository** %7, align 8
  %41 = getelementptr inbounds %struct.repository, %struct.repository* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %219

46:                                               ; preds = %38
  %47 = load %struct.repository*, %struct.repository** %7, align 8
  %48 = getelementptr inbounds %struct.repository, %struct.repository* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.cache_entry**, %struct.cache_entry*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %51, i64 %53
  %55 = load %struct.cache_entry*, %struct.cache_entry** %54, align 8
  store %struct.cache_entry* %55, %struct.cache_entry** %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @strbuf_setlen(%struct.strbuf* %10, i32 %56)
  %58 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %59 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @strbuf_addstr(%struct.strbuf* %10, i64 %60)
  %62 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %63 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @S_ISREG(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %134

67:                                               ; preds = %46
  %68 = load %struct.repository*, %struct.repository** %7, align 8
  %69 = getelementptr inbounds %struct.repository, %struct.repository* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %77 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @S_ISDIR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %67
  %82 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %83 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @S_ISGITLINK(i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %81, %67
  %88 = phi i1 [ true, %67 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  %90 = call i64 @match_pathspec(%struct.TYPE_3__* %70, %struct.pathspec* %71, i32 %73, i32 %75, i32 0, i32* null, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %97 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CE_VALID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %104 = call i64 @ce_skip_worktree(%struct.cache_entry* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %102, %95, %92
  %107 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %108 = call i64 @ce_stage(%struct.cache_entry* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %112 = call i64 @ce_intent_to_add(%struct.cache_entry* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %106
  br label %216

115:                                              ; preds = %110
  %116 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %117 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %118 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @grep_oid(%struct.grep_opt* %116, i32* %118, i32 %120, i32 0, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %133

126:                                              ; preds = %102
  %127 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @grep_file(%struct.grep_opt* %127, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %126, %115
  br label %167

134:                                              ; preds = %87, %46
  %135 = load i64, i64* @recurse_submodules, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %165

137:                                              ; preds = %134
  %138 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %139 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @S_ISGITLINK(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %137
  %144 = load %struct.repository*, %struct.repository** %7, align 8
  %145 = getelementptr inbounds %struct.repository, %struct.repository* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %148 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @submodule_path_match(%struct.TYPE_3__* %146, %struct.pathspec* %147, i32 %149, i32* null)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %143
  %153 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %154 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %155 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %156 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %159 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @grep_submodule(%struct.grep_opt* %153, %struct.pathspec* %154, i32* null, i64 %157, i64 %160, i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %166

165:                                              ; preds = %143, %137, %134
  br label %216

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %133
  %168 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %169 = call i64 @ce_stage(%struct.cache_entry* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %206

171:                                              ; preds = %167
  br label %172

172:                                              ; preds = %201, %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.repository*, %struct.repository** %7, align 8
  %178 = getelementptr inbounds %struct.repository, %struct.repository* %177, i32 0, i32 0
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %176, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %175
  %184 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %185 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.repository*, %struct.repository** %7, align 8
  %188 = getelementptr inbounds %struct.repository, %struct.repository* %187, i32 0, i32 0
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load %struct.cache_entry**, %struct.cache_entry*** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %191, i64 %193
  %195 = load %struct.cache_entry*, %struct.cache_entry** %194, align 8
  %196 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @strcmp(i64 %186, i64 %197)
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %183, %175
  %202 = phi i1 [ false, %175 ], [ %200, %183 ]
  br i1 %202, label %172, label %203

203:                                              ; preds = %201
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %203, %167
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %211 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %219

215:                                              ; preds = %209, %206
  br label %216

216:                                              ; preds = %215, %165, %114
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %38

219:                                              ; preds = %214, %38
  %220 = call i32 @strbuf_release(%struct.strbuf* %10)
  %221 = load i32, i32* %8, align 4
  ret i32 %221
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64) #2

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @match_pathspec(%struct.TYPE_3__*, %struct.pathspec*, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #2

declare dso_local i64 @ce_stage(%struct.cache_entry*) #2

declare dso_local i64 @ce_intent_to_add(%struct.cache_entry*) #2

declare dso_local i32 @grep_oid(%struct.grep_opt*, i32*, i32, i32, i32) #2

declare dso_local i32 @grep_file(%struct.grep_opt*, i32) #2

declare dso_local i64 @submodule_path_match(%struct.TYPE_3__*, %struct.pathspec*, i32, i32*) #2

declare dso_local i32 @grep_submodule(%struct.grep_opt*, %struct.pathspec*, i32*, i64, i64, i32) #2

declare dso_local i32 @strcmp(i64, i64) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
