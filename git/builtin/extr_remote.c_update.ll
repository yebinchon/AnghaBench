; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_update.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32* }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"prune remotes after fetching\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@builtin_remote_update_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--prune\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--no-prune\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"--multiple\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@get_remote_default = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.option], align 4
  %8 = alloca %struct.argv_array, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %6, align 4
  %11 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %12 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @OPT_BOOL(i8 signext 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %12)
  %14 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %16 = call i32 (...) @OPT_END()
  %17 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = bitcast %struct.argv_array* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %22 = load i32, i32* @builtin_remote_update_usage, align 4
  %23 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %24 = call i32 @parse_options(i32 %19, i8** %20, i32* null, %struct.option* %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = call i32 @argv_array_push(%struct.argv_array* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %33 = call i32 @argv_array_push(%struct.argv_array* %8, i8* %32)
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i64, i64* @verbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @argv_array_push(%struct.argv_array* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = call i32 @argv_array_push(%struct.argv_array* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @argv_array_push(%struct.argv_array* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i8**, i8*** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @argv_array_push(%struct.argv_array* %8, i8* %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %46

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strcmp(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %60
  %72 = load i32, i32* @get_remote_default, align 4
  %73 = call i32 @git_config(i32 %72, i32* %9)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = call i32 @argv_array_pop(%struct.argv_array* %8)
  %78 = call i32 @argv_array_push(%struct.argv_array* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %60
  %81 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @RUN_GIT_CMD, align 4
  %84 = call i32 @run_command_v_opt(i32* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = call i32 @argv_array_clear(%struct.argv_array* %8)
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @argv_array_pop(%struct.argv_array*) #1

declare dso_local i32 @run_command_v_opt(i32*, i32) #1

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
