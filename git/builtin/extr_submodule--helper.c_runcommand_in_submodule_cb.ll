; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_runcommand_in_submodule_cb.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_runcommand_in_submodule_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i8*, i32, i32, i32 }
%struct.strbuf = type { i32 }
%struct.cache_entry = type { i8*, %struct.object_id }
%struct.object_id = type { i32 }
%struct.cb_foreach = type { i32, i64*, i64, i64, i32 }
%struct.submodule = type { i8* }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"No url found for submodule path '%s' in .gitmodules\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sm_path=%s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"displaypath=%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sha1=%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"toplevel=%s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"path=%s; %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Entering '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"run_command returned non-zero status for %s\0A.\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"--super-prefix\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"submodule--helper\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"--recursive\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.16 = private unnamed_addr constant [86 x i8] c"run_command returned non-zero status while recursing in the nested submodules of %s\0A.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, i8*)* @runcommand_in_submodule_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runcommand_in_submodule_cb(%struct.cache_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cb_foreach*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.submodule*, align 8
  %9 = alloca %struct.child_process, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.child_process, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.cb_foreach*
  store %struct.cb_foreach* %15, %struct.cb_foreach** %5, align 8
  %16 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %17 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %20 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %19, i32 0, i32 1
  store %struct.object_id* %20, %struct.object_id** %7, align 8
  %21 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %24 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @get_submodule_displaypath(i8* %22, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i32, i32* @the_repository, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call %struct.submodule* @submodule_from_path(i32 %27, i32* @null_oid, i8* %28)
  store %struct.submodule* %29, %struct.submodule** %8, align 8
  %30 = load %struct.submodule*, %struct.submodule** %8, align 8
  %31 = icmp ne %struct.submodule* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @die(i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @is_submodule_populated_gently(i8* %37, i32* null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %159

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %43 = call i32 @prepare_submodule_repo_env(i32* %42)
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %48 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %88

51:                                               ; preds = %41
  %52 = call i8* (...) @xgetcwd()
  store i8* %52, i8** %11, align 8
  %53 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %55 = load %struct.submodule*, %struct.submodule** %8, align 8
  %56 = getelementptr inbounds %struct.submodule, %struct.submodule* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %66 = load %struct.object_id*, %struct.object_id** %7, align 8
  %67 = call i8* @oid_to_hex(%struct.object_id* %66)
  %68 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @sq_quote_buf(%struct.strbuf* %12, i8* %72)
  %74 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 3
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %80 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %78, i64 %83)
  %85 = call i32 @strbuf_release(%struct.strbuf* %12)
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @free(i8* %86)
  br label %94

88:                                               ; preds = %41
  %89 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 3
  %90 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %91 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = call i32 @argv_array_pushv(i32* %89, i64* %92)
  br label %94

94:                                               ; preds = %88, %51
  %95 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %96 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @printf(i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %105 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = call i64 @run_command(%struct.child_process* %9)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @die(i8* %114, i8* %115)
  br label %117

117:                                              ; preds = %113, %110, %103
  %118 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %119 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %117
  %123 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %124 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  store i32 1, i32* %124, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i8* %125, i8** %126, align 8
  %127 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 4
  %128 = call i32 @prepare_submodule_repo_env(i32* %127)
  %129 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %130 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushl(i32* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* null)
  %131 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %132)
  %134 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %135 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushl(i32* %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %136 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %137 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %122
  %141 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %142 = call i32 @argv_array_push(i32* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %122
  %144 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %145 = call i32 @argv_array_push(i32* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %146 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %147 = load %struct.cb_foreach*, %struct.cb_foreach** %5, align 8
  %148 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = call i32 @argv_array_pushv(i32* %146, i64* %149)
  %151 = call i64 @run_command(%struct.child_process* %13)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = call i8* @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.16, i64 0, i64 0))
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 @die(i8* %154, i8* %155)
  br label %157

157:                                              ; preds = %153, %143
  br label %158

158:                                              ; preds = %157, %117
  br label %159

159:                                              ; preds = %158, %40
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @free(i8* %160)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @get_submodule_displaypath(i8*, i32) #2

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @is_submodule_populated_gently(i8*, i32*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i8* @xgetcwd(...) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i8*, ...) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @sq_quote_buf(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @argv_array_pushv(i32*, i64*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, ...) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
