; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_try_threeway.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_try_threeway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.apply_state = type { i64 }
%struct.image = type { i8*, i32 }
%struct.patch = type { i8*, i8*, i32, i32*, i64, i32, i32, i32, i64 }
%struct.stat = type { i32 }
%struct.cache_entry = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@blob_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"repository lacks the necessary blob to fall back on 3-way merge.\00", align 1
@verbosity_silent = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Falling back to three-way merge...\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"cannot read the current contents of '%s'\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to fall back on three-way merge...\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Applied patch to '%s' with conflicts.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Applied patch to '%s' cleanly.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.patch*, %struct.stat*, %struct.cache_entry*)* @try_threeway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_threeway(%struct.apply_state* %0, %struct.image* %1, %struct.patch* %2, %struct.stat* %3, %struct.cache_entry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.apply_state*, align 8
  %8 = alloca %struct.image*, align 8
  %9 = alloca %struct.patch*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.image, align 8
  store %struct.apply_state* %0, %struct.apply_state** %7, align 8
  store %struct.image* %1, %struct.image** %8, align 8
  store %struct.patch* %2, %struct.patch** %9, align 8
  store %struct.stat* %3, %struct.stat** %10, align 8
  store %struct.cache_entry* %4, %struct.cache_entry** %11, align 8
  %20 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = load %struct.patch*, %struct.patch** %9, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %5
  %26 = load %struct.patch*, %struct.patch** %9, align 8
  %27 = getelementptr inbounds %struct.patch, %struct.patch* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @S_ISGITLINK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.patch*, %struct.patch** %9, align 8
  %33 = getelementptr inbounds %struct.patch, %struct.patch* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @S_ISGITLINK(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25, %5
  store i32 -1, i32* %6, align 4
  br label %210

38:                                               ; preds = %31
  %39 = load %struct.patch*, %struct.patch** %9, align 8
  %40 = getelementptr inbounds %struct.patch, %struct.patch* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @blob_type, align 4
  %45 = call i32 @write_object_file(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %44, %struct.object_id* %12)
  br label %62

46:                                               ; preds = %38
  %47 = load %struct.patch*, %struct.patch** %9, align 8
  %48 = getelementptr inbounds %struct.patch, %struct.patch* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @get_oid(i32 %49, %struct.object_id* %12)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.patch*, %struct.patch** %9, align 8
  %54 = getelementptr inbounds %struct.patch, %struct.patch* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @read_blob_object(%struct.strbuf* %15, %struct.object_id* %12, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %46
  %59 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @error(i8* %59)
  store i32 %60, i32* %6, align 4
  br label %210

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %64 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @verbosity_silent, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @stderr, align 4
  %70 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %62
  %73 = call i8* @strbuf_detach(%struct.strbuf* %15, i64* %16)
  store i8* %73, i8** %18, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @prepare_image(%struct.image* %19, i8* %74, i64 %75, i32 1)
  %77 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %78 = load %struct.patch*, %struct.patch** %9, align 8
  %79 = call i64 @apply_fragments(%struct.apply_state* %77, %struct.image* %19, %struct.patch* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = call i32 @clear_image(%struct.image* %19)
  store i32 -1, i32* %6, align 4
  br label %210

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.image, %struct.image* %19, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds %struct.image, %struct.image* %19, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @blob_type, align 4
  %89 = call i32 @write_object_file(i8* %85, i32 %87, i32 %88, %struct.object_id* %13)
  %90 = call i32 @clear_image(%struct.image* %19)
  %91 = load %struct.patch*, %struct.patch** %9, align 8
  %92 = getelementptr inbounds %struct.patch, %struct.patch* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %83
  %96 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %97 = load %struct.patch*, %struct.patch** %9, align 8
  %98 = call i64 @load_current(%struct.apply_state* %96, %struct.image* %19, %struct.patch* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.patch*, %struct.patch** %9, align 8
  %103 = getelementptr inbounds %struct.patch, %struct.patch* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @error(i8* %101, i8* %104)
  store i32 %105, i32* %6, align 4
  br label %210

106:                                              ; preds = %95
  br label %121

107:                                              ; preds = %83
  %108 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %109 = load %struct.patch*, %struct.patch** %9, align 8
  %110 = load %struct.stat*, %struct.stat** %10, align 8
  %111 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %112 = call i64 @load_preimage(%struct.apply_state* %108, %struct.image* %19, %struct.patch* %109, %struct.stat* %110, %struct.cache_entry* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.patch*, %struct.patch** %9, align 8
  %117 = getelementptr inbounds %struct.patch, %struct.patch* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, ...) @error(i8* %115, i8* %118)
  store i32 %119, i32* %6, align 4
  br label %210

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %106
  %122 = getelementptr inbounds %struct.image, %struct.image* %19, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds %struct.image, %struct.image* %19, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @blob_type, align 4
  %127 = call i32 @write_object_file(i8* %123, i32 %125, i32 %126, %struct.object_id* %14)
  %128 = call i32 @clear_image(%struct.image* %19)
  %129 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %130 = load %struct.image*, %struct.image** %8, align 8
  %131 = load %struct.patch*, %struct.patch** %9, align 8
  %132 = getelementptr inbounds %struct.patch, %struct.patch* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @three_way_merge(%struct.apply_state* %129, %struct.image* %130, i8* %133, %struct.object_id* %12, %struct.object_id* %14, %struct.object_id* %13)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %121
  %138 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %139 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @verbosity_silent, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* @stderr, align 4
  %145 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* %145)
  br label %147

147:                                              ; preds = %143, %137
  %148 = load i32, i32* %17, align 4
  store i32 %148, i32* %6, align 4
  br label %210

149:                                              ; preds = %121
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %149
  %153 = load %struct.patch*, %struct.patch** %9, align 8
  %154 = getelementptr inbounds %struct.patch, %struct.patch* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  %155 = load %struct.patch*, %struct.patch** %9, align 8
  %156 = getelementptr inbounds %struct.patch, %struct.patch* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load %struct.patch*, %struct.patch** %9, align 8
  %161 = getelementptr inbounds %struct.patch, %struct.patch* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = call i32 @oidclr(i32* %163)
  br label %171

165:                                              ; preds = %152
  %166 = load %struct.patch*, %struct.patch** %9, align 8
  %167 = getelementptr inbounds %struct.patch, %struct.patch* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = call i32 @oidcpy(i32* %169, %struct.object_id* %12)
  br label %171

171:                                              ; preds = %165, %159
  %172 = load %struct.patch*, %struct.patch** %9, align 8
  %173 = getelementptr inbounds %struct.patch, %struct.patch* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = call i32 @oidcpy(i32* %175, %struct.object_id* %14)
  %177 = load %struct.patch*, %struct.patch** %9, align 8
  %178 = getelementptr inbounds %struct.patch, %struct.patch* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = call i32 @oidcpy(i32* %180, %struct.object_id* %13)
  %182 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %183 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @verbosity_silent, align 8
  %186 = icmp sgt i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %171
  %188 = load i32, i32* @stderr, align 4
  %189 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %190 = load %struct.patch*, %struct.patch** %9, align 8
  %191 = getelementptr inbounds %struct.patch, %struct.patch* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* %189, i8* %192)
  br label %194

194:                                              ; preds = %187, %171
  br label %209

195:                                              ; preds = %149
  %196 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %197 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @verbosity_silent, align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load i32, i32* @stderr, align 4
  %203 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %204 = load %struct.patch*, %struct.patch** %9, align 8
  %205 = getelementptr inbounds %struct.patch, %struct.patch* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* %203, i8* %206)
  br label %208

208:                                              ; preds = %201, %195
  br label %209

209:                                              ; preds = %208, %194
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %209, %147, %114, %100, %81, %58, %37
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i32 @write_object_file(i8*, i32, i32, %struct.object_id*) #2

declare dso_local i64 @get_oid(i32, %struct.object_id*) #2

declare dso_local i64 @read_blob_object(%struct.strbuf*, %struct.object_id*, i32) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #2

declare dso_local i32 @prepare_image(%struct.image*, i8*, i64, i32) #2

declare dso_local i64 @apply_fragments(%struct.apply_state*, %struct.image*, %struct.patch*) #2

declare dso_local i32 @clear_image(%struct.image*) #2

declare dso_local i64 @load_current(%struct.apply_state*, %struct.image*, %struct.patch*) #2

declare dso_local i64 @load_preimage(%struct.apply_state*, %struct.image*, %struct.patch*, %struct.stat*, %struct.cache_entry*) #2

declare dso_local i32 @three_way_merge(%struct.apply_state*, %struct.image*, i8*, %struct.object_id*, %struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @oidclr(i32*) #2

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
