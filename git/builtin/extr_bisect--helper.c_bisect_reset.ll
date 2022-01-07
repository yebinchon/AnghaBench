; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_reset.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.argv_array = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"We are not bisecting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"'%s' is not a valid commit\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [73 x i8] c"could not check out original HEAD '%s'. Try 'git bisect reset <commit>'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bisect_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisect_reset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.argv_array, align 4
  store i8* %0, i8** %3, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @git_path_bisect_start()
  %12 = call i32 @strbuf_read_file(%struct.strbuf* %4, i32 %11, i32 0)
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @printf(i8* %15)
  store i32 0, i32* %2, align 4
  br label %56

17:                                               ; preds = %10
  %18 = call i32 @strbuf_rtrim(%struct.strbuf* %4)
  br label %30

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @get_oid_commit(i8* %20, %struct.object_id* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @error(i8* %24, i8* %25)
  store i32 %26, i32* %2, align 4
  br label %56

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = call i32 (...) @git_path_bisect_head()
  %32 = call i32 @file_exists(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %30
  %35 = bitcast %struct.argv_array* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @argv_array_pushl(%struct.argv_array* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %39 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RUN_GIT_CMD, align 4
  %42 = call i64 @run_command_v_opt(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = call i32 @strbuf_release(%struct.strbuf* %4)
  %46 = call i32 @argv_array_clear(%struct.argv_array* %6)
  %47 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @error(i8* %47, i8* %49)
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %34
  %52 = call i32 @argv_array_clear(%struct.argv_array* %6)
  br label %53

53:                                               ; preds = %51, %30
  %54 = call i32 @strbuf_release(%struct.strbuf* %4)
  %55 = call i32 (...) @bisect_clean_state()
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %44, %23, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_read_file(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @git_path_bisect_start(...) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i64 @get_oid_commit(i8*, %struct.object_id*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @file_exists(i32) #2

declare dso_local i32 @git_path_bisect_head(...) #2

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i8*, i32*) #2

declare dso_local i64 @run_command_v_opt(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @bisect_clean_state(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
