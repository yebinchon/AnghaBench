; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }
%struct.dir_struct = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@show_others = common dso_local global i64 0, align 8
@show_killed = common dso_local global i64 0, align 8
@DIR_COLLECT_KILLED_ONLY = common dso_local global i32 0, align 4
@pathspec = common dso_local global i32 0, align 4
@show_cached = common dso_local global i64 0, align 8
@show_stage = common dso_local global i64 0, align 8
@DIR_SHOW_IGNORED = common dso_local global i32 0, align 4
@show_unmerged = common dso_local global i64 0, align 8
@CE_UPDATE = common dso_local global i32 0, align 4
@tag_unmerged = common dso_local global i32 0, align 4
@tag_skip_worktree = common dso_local global i32 0, align 4
@tag_cached = common dso_local global i32 0, align 4
@show_deleted = common dso_local global i64 0, align 8
@show_modified = common dso_local global i64 0, align 8
@tag_removed = common dso_local global i32 0, align 4
@tag_modified = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.dir_struct*)* @show_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_files(%struct.repository* %0, %struct.dir_struct* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.dir_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.dir_struct* %1, %struct.dir_struct** %4, align 8
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load i64, i64* @show_others, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @show_killed, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14, %2
  %18 = load i64, i64* @show_others, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @DIR_COLLECT_KILLED_ONLY, align 4
  %22 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %23 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %28 = load %struct.repository*, %struct.repository** %3, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @fill_directory(%struct.dir_struct* %27, %struct.TYPE_6__* %30, i32* @pathspec)
  %32 = load i64, i64* @show_others, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.repository*, %struct.repository** %3, align 8
  %36 = getelementptr inbounds %struct.repository, %struct.repository* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %39 = call i32 @show_other_files(%struct.TYPE_6__* %37, %struct.dir_struct* %38)
  br label %40

40:                                               ; preds = %34, %26
  %41 = load i64, i64* @show_killed, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.repository*, %struct.repository** %3, align 8
  %45 = getelementptr inbounds %struct.repository, %struct.repository* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %48 = call i32 @show_killed_files(%struct.TYPE_6__* %46, %struct.dir_struct* %47)
  br label %49

49:                                               ; preds = %43, %40
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i64, i64* @show_cached, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* @show_stage, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %53, %50
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %135, %56
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.repository*, %struct.repository** %3, align 8
  %60 = getelementptr inbounds %struct.repository, %struct.repository* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %138

65:                                               ; preds = %57
  %66 = load %struct.repository*, %struct.repository** %3, align 8
  %67 = getelementptr inbounds %struct.repository, %struct.repository* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.cache_entry**, %struct.cache_entry*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %70, i64 %72
  %74 = load %struct.cache_entry*, %struct.cache_entry** %73, align 8
  store %struct.cache_entry* %74, %struct.cache_entry** %7, align 8
  %75 = load %struct.repository*, %struct.repository** %3, align 8
  %76 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %77 = call i32 @construct_fullname(%struct.strbuf* %6, %struct.repository* %75, %struct.cache_entry* %76)
  %78 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %79 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %65
  %85 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %86 = load %struct.repository*, %struct.repository** %3, align 8
  %87 = getelementptr inbounds %struct.repository, %struct.repository* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %92 = call i32 @ce_excluded(%struct.dir_struct* %85, %struct.TYPE_6__* %88, i32 %90, %struct.cache_entry* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %135

95:                                               ; preds = %84, %65
  %96 = load i64, i64* @show_unmerged, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %100 = call i64 @ce_stage(%struct.cache_entry* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %135

103:                                              ; preds = %98, %95
  %104 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %105 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CE_UPDATE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %135

111:                                              ; preds = %103
  %112 = load %struct.repository*, %struct.repository** %3, align 8
  %113 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %114 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %118 = call i64 @ce_stage(%struct.cache_entry* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @tag_unmerged, align 4
  br label %132

122:                                              ; preds = %111
  %123 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %124 = call i64 @ce_skip_worktree(%struct.cache_entry* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @tag_skip_worktree, align 4
  br label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @tag_cached, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  br label %132

132:                                              ; preds = %130, %120
  %133 = phi i32 [ %121, %120 ], [ %131, %130 ]
  %134 = call i32 @show_ce(%struct.repository* %112, %struct.dir_struct* %113, %struct.cache_entry* %114, i32 %116, i32 %133)
  br label %135

135:                                              ; preds = %132, %110, %102, %94
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %57

138:                                              ; preds = %57
  br label %139

139:                                              ; preds = %138, %53
  %140 = load i64, i64* @show_deleted, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i64, i64* @show_modified, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %237

145:                                              ; preds = %142, %139
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %233, %145
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.repository*, %struct.repository** %3, align 8
  %149 = getelementptr inbounds %struct.repository, %struct.repository* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %147, %152
  br i1 %153, label %154, label %236

154:                                              ; preds = %146
  %155 = load %struct.repository*, %struct.repository** %3, align 8
  %156 = getelementptr inbounds %struct.repository, %struct.repository* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load %struct.cache_entry**, %struct.cache_entry*** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %159, i64 %161
  %163 = load %struct.cache_entry*, %struct.cache_entry** %162, align 8
  store %struct.cache_entry* %163, %struct.cache_entry** %8, align 8
  %164 = load %struct.repository*, %struct.repository** %3, align 8
  %165 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %166 = call i32 @construct_fullname(%struct.strbuf* %6, %struct.repository* %164, %struct.cache_entry* %165)
  %167 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %168 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %154
  %174 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %175 = load %struct.repository*, %struct.repository** %3, align 8
  %176 = getelementptr inbounds %struct.repository, %struct.repository* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %181 = call i32 @ce_excluded(%struct.dir_struct* %174, %struct.TYPE_6__* %177, i32 %179, %struct.cache_entry* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %173
  br label %233

184:                                              ; preds = %173, %154
  %185 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %186 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @CE_UPDATE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %233

192:                                              ; preds = %184
  %193 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %194 = call i64 @ce_skip_worktree(%struct.cache_entry* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %233

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @lstat(i32 %199, %struct.stat* %9)
  store i32 %200, i32* %10, align 4
  %201 = load i64, i64* @show_deleted, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %197
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load %struct.repository*, %struct.repository** %3, align 8
  %208 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %209 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %210 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @tag_removed, align 4
  %213 = call i32 @show_ce(%struct.repository* %207, %struct.dir_struct* %208, %struct.cache_entry* %209, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %206, %203, %197
  %215 = load i64, i64* @show_modified, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = load %struct.repository*, %struct.repository** %3, align 8
  %219 = getelementptr inbounds %struct.repository, %struct.repository* %218, i32 0, i32 0
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %222 = call i64 @ie_modified(%struct.TYPE_6__* %220, %struct.cache_entry* %221, %struct.stat* %9, i32 0)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %217
  %225 = load %struct.repository*, %struct.repository** %3, align 8
  %226 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %227 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %228 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @tag_modified, align 4
  %231 = call i32 @show_ce(%struct.repository* %225, %struct.dir_struct* %226, %struct.cache_entry* %227, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %224, %217, %214
  br label %233

233:                                              ; preds = %232, %196, %191, %183
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %5, align 4
  br label %146

236:                                              ; preds = %146
  br label %237

237:                                              ; preds = %236, %142
  %238 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fill_directory(%struct.dir_struct*, %struct.TYPE_6__*, i32*) #2

declare dso_local i32 @show_other_files(%struct.TYPE_6__*, %struct.dir_struct*) #2

declare dso_local i32 @show_killed_files(%struct.TYPE_6__*, %struct.dir_struct*) #2

declare dso_local i32 @construct_fullname(%struct.strbuf*, %struct.repository*, %struct.cache_entry*) #2

declare dso_local i32 @ce_excluded(%struct.dir_struct*, %struct.TYPE_6__*, i32, %struct.cache_entry*) #2

declare dso_local i64 @ce_stage(%struct.cache_entry*) #2

declare dso_local i32 @show_ce(%struct.repository*, %struct.dir_struct*, %struct.cache_entry*, i32, i32) #2

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #2

declare dso_local i32 @lstat(i32, %struct.stat*) #2

declare dso_local i64 @ie_modified(%struct.TYPE_6__*, %struct.cache_entry*, %struct.stat*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
