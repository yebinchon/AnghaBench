; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_multiple.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.parallel_fetch_state = type { i32, i32, i32, %struct.string_list*, i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@append = common dso_local global i32 0, align 4
@dry_run = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"--append\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"--no-auto-gc\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"--end-of-options\00", align 1
@fetch_next_remote = common dso_local global i32 0, align 4
@fetch_failed_to_start = common dso_local global i32 0, align 4
@fetch_finished = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"parallel/fetch\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Fetching %s\0A\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Could not fetch %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i32)* @fetch_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_multiple(%struct.string_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.argv_array, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.parallel_fetch_state, align 8
  %11 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = bitcast %struct.argv_array* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %13 = load i32, i32* @append, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @dry_run, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = call i32 (...) @truncate_fetch_head()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %99

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %15, %2
  %26 = call i32 @argv_array_pushl(%struct.argv_array* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %27 = call i32 @add_options_to_argv(%struct.argv_array* %8)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.string_list*, %struct.string_list** %4, align 8
  %32 = getelementptr inbounds %struct.string_list, %struct.string_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = bitcast %struct.parallel_fetch_state* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 32, i1 false)
  %37 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %37, align 8
  %40 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %10, i32 0, i32 1
  %41 = load %struct.string_list*, %struct.string_list** %4, align 8
  %42 = ptrtoint %struct.string_list* %41 to i32
  store i32 %42, i32* %40, align 4
  %43 = call i32 @argv_array_push(%struct.argv_array* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @run_processes_parallel_tr2(i32 %44, i32* @fetch_next_remote, i32* @fetch_failed_to_start, i32* @fetch_finished, %struct.parallel_fetch_state* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %35
  br label %92

52:                                               ; preds = %30, %25
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.string_list*, %struct.string_list** %4, align 8
  %56 = getelementptr inbounds %struct.string_list, %struct.string_list* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %53
  %60 = load %struct.string_list*, %struct.string_list** %4, align 8
  %61 = getelementptr inbounds %struct.string_list, %struct.string_list* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @argv_array_push(%struct.argv_array* %8, i8* %68)
  %70 = load i64, i64* @verbosity, align 8
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @printf(i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %59
  %77 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RUN_GIT_CMD, align 4
  %80 = call i64 @run_command_v_opt(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @error(i8* %83, i8* %84)
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = call i32 @argv_array_pop(%struct.argv_array* %8)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %53

91:                                               ; preds = %53
  br label %92

92:                                               ; preds = %91, %51
  %93 = call i32 @argv_array_clear(%struct.argv_array* %8)
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %22
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @truncate_fetch_head(...) #2

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @add_options_to_argv(%struct.argv_array*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @run_processes_parallel_tr2(i32, i32*, i32*, i32*, %struct.parallel_fetch_state*, i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i64 @run_command_v_opt(i32, i32) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i32 @argv_array_pop(%struct.argv_array*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
