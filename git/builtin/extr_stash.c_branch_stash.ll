; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_branch_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_branch_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.stash_info = type { i64, i32 }
%struct.option = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@git_stash_branch_usage = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No branch name specified\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @branch_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_stash(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stash_info, align 8
  %11 = alloca %struct.child_process, align 4
  %12 = alloca [1 x %struct.option], align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %13 = bitcast %struct.child_process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %14 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %12, i64 0, i64 0
  %15 = call i32 (...) @OPT_END()
  %16 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %12, i64 0, i64 0
  %21 = load i32, i32* @git_stash_branch_usage, align 4
  %22 = call i32 @parse_options(i32 %17, i8** %18, i8* %19, %struct.option* %20, i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @fprintf_ln(i32 %26, i32 %27)
  store i32 -1, i32* %4, align 4
  br label %69

29:                                               ; preds = %3
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = call i64 @get_stash_info(%struct.stash_info* %10, i32 %34, i8** %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %69

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  %43 = call i32 @argv_array_pushl(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @argv_array_push(i32* %44, i8* %45)
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  %48 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %10, i32 0, i32 1
  %49 = call i8* @oid_to_hex(i32* %48)
  %50 = call i32 @argv_array_push(i32* %47, i8* %49)
  %51 = call i32 @run_command(%struct.child_process* %11)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @do_apply_stash(i8* %55, %struct.stash_info* %10, i32 1, i32 0)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %40
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %10, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @do_drop_stash(%struct.stash_info* %10, i32 0)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %60, %57
  %67 = call i32 @free_stash_info(%struct.stash_info* %10)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %39, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @fprintf_ln(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @get_stash_info(%struct.stash_info*, i32, i8**) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @do_apply_stash(i8*, %struct.stash_info*, i32, i32) #2

declare dso_local i32 @do_drop_stash(%struct.stash_info*, i32) #2

declare dso_local i32 @free_stash_info(%struct.stash_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
