; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_list_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_list_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.option = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@git_stash_list_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@ref_stash = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"--format=%gd: %gs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"--first-parent\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @list_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_stash(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.child_process, align 4
  %9 = alloca [1 x %struct.option], align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %11 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %9, i64 0, i64 0
  %12 = call i32 (...) @OPT_END()
  %13 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %9, i64 0, i64 0
  %18 = load i32, i32* @git_stash_list_usage, align 4
  %19 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %20 = call i32 @parse_options(i32 %14, i8** %15, i8* %16, %struct.option* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** @ref_stash, align 8
  %22 = call i32 @ref_exists(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %28 = call i32 @argv_array_pushl(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %30 = load i8**, i8*** %6, align 8
  %31 = call i32 @argv_array_pushv(i32* %29, i8** %30)
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %33 = load i8*, i8** @ref_stash, align 8
  %34 = call i32 @argv_array_push(i32* %32, i8* %33)
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %36 = call i32 @argv_array_push(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 @run_command(%struct.child_process* %8)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @ref_exists(i8*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_pushv(i32*, i8**) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
