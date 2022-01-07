; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_apply_autostash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_apply_autostash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.child_process = type { i32, i32, i32, i32, i32 }
%struct.argv_array = type { i32 }
%struct.rebase_options = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"autostash\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not read '%s'\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"^0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Applied autostash.\0A\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"Cannot store %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [140 x i8] c"Applying autostash resulted in conflicts.\0AYour changes are safe in the stash.\0AYou can run \22git stash pop\22 or \22git stash drop\22 at any time.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*)* @apply_autostash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_autostash(%struct.rebase_options* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rebase_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.child_process, align 4
  %7 = alloca %struct.argv_array, align 4
  %8 = alloca i32, align 4
  store %struct.rebase_options* %0, %struct.rebase_options** %3, align 8
  %9 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %10 = call i8* @state_dir_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.rebase_options* %9)
  store i8* %10, i8** %4, align 8
  %11 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 20, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @file_exists(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @read_one(i8* %18, %struct.strbuf* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @error(i8* %22, i8* %23)
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %17
  %26 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 4
  %28 = bitcast i32* %27 to %struct.argv_array*
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct.argv_array*, i8*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %30, i8* null)
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = call i32 @run_command(%struct.child_process* %6)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %40 = call i32 @printf(i8* %39)
  br label %67

41:                                               ; preds = %25
  %42 = bitcast %struct.argv_array* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct.argv_array*, i8*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %44, i8* null)
  %46 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RUN_GIT_CMD, align 4
  %49 = call i64 @run_command_v_opt(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @error(i8* %52, i8* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %41
  %57 = call i32 @argv_array_clear(%struct.argv_array* %7)
  %58 = call i32 @strbuf_release(%struct.strbuf* %5)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @stderr, align 4
  %65 = call i8* @_(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.10, i64 0, i64 0))
  %66 = call i32 @fprintf(i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %38
  %68 = call i32 @strbuf_release(%struct.strbuf* %5)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %61, %21, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @state_dir_path(i8*, %struct.rebase_options*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @file_exists(i8*) #1

declare dso_local i64 @read_one(i8*, %struct.strbuf*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @run_command(%struct.child_process*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @run_command_v_opt(i32, i32) #1

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
