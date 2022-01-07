; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_deinit_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_deinit_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.strbuf = type { i64 }
%struct.submodule = type { i8*, i8* }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [127 x i8] c"Submodule work tree '%s' contains a .git directory (use 'rm -rf' if you really want to remove it including all of its history)\00", align 1
@OPT_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-qn\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"Submodule work tree '%s' contains local modifications; use '-f' to discard them\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Cleared directory '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Could not remove submodule work tree '%s'\0A\00", align 1
@OPT_QUIET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"could not create empty submodule directory %s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"--get-regexp\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"submodule.%s\\.\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"submodule.%s\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Submodule '%s' (%s) unregistered for path '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @deinit_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinit_submodule(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.submodule*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.child_process, align 4
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.child_process, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %16 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %17 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @xstrfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i8* %19, i8** %11, align 8
  %20 = load i32, i32* @the_repository, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct.submodule* @submodule_from_path(i32 %20, i32* @null_oid, i8* %21)
  store %struct.submodule* %22, %struct.submodule** %7, align 8
  %23 = load %struct.submodule*, %struct.submodule** %7, align 8
  %24 = icmp ne %struct.submodule* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.submodule*, %struct.submodule** %7, align 8
  %27 = getelementptr inbounds %struct.submodule, %struct.submodule* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %3
  br label %135

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @get_submodule_displaypath(i8* %32, i8* %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @is_directory(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %87

38:                                               ; preds = %31
  %39 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @is_directory(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i8* @_(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @die(i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @OPT_FORCE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = bitcast %struct.child_process* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %14, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.child_process, %struct.child_process* %14, i32 0, i32 1
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %56, i8* null)
  %58 = call i64 @run_command(%struct.child_process* %14)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @die(i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %52
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %66)
  %68 = call i32 @remove_dir_recursively(%struct.strbuf* %12, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i8* %71, i8** %13, align 8
  br label %74

72:                                               ; preds = %65
  %73 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  store i8* %73, i8** %13, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @OPT_QUIET, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i8*, i8*, ...) @printf(i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.submodule*, %struct.submodule** %7, align 8
  %85 = call i32 @submodule_unset_core_worktree(%struct.submodule* %84)
  %86 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %87

87:                                               ; preds = %83, %31
  %88 = load i8*, i8** %4, align 8
  %89 = call i64 @mkdir(i8* %88, i32 511)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 (i8*, i8*, ...) @printf(i8* %92, i8* %93)
  br label %95

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %98 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null)
  %99 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %100 = load %struct.submodule*, %struct.submodule** %7, align 8
  %101 = getelementptr inbounds %struct.submodule, %struct.submodule* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @argv_array_pushf(i32* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  %104 = call i32 @capture_command(%struct.child_process* %9, %struct.strbuf* %10, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %134, label %106

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %106
  %111 = load %struct.submodule*, %struct.submodule** %7, align 8
  %112 = getelementptr inbounds %struct.submodule, %struct.submodule* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @xstrfmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %113)
  store i8* %114, i8** %15, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @git_config_rename_section_in_file(i32* null, i8* %115, i32* null)
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @OPT_QUIET, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %110
  %122 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  %123 = load %struct.submodule*, %struct.submodule** %7, align 8
  %124 = getelementptr inbounds %struct.submodule, %struct.submodule* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.submodule*, %struct.submodule** %7, align 8
  %127 = getelementptr inbounds %struct.submodule, %struct.submodule* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 (i8*, i8*, ...) @printf(i8* %122, i8* %125, i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %121, %110
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 @free(i8* %132)
  br label %134

134:                                              ; preds = %131, %106, %95
  br label %135

135:                                              ; preds = %134, %30
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @free(i8* %138)
  %140 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xstrfmt(i8*, i8*) #2

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #2

declare dso_local i8* @get_submodule_displaypath(i8*, i8*) #2

declare dso_local i64 @is_directory(i8*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, ...) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @remove_dir_recursively(%struct.strbuf*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @submodule_unset_core_worktree(%struct.submodule*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i8*) #2

declare dso_local i32 @capture_command(%struct.child_process*, %struct.strbuf*, i32) #2

declare dso_local i32 @git_config_rename_section_in_file(i32*, i8*, i32*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
