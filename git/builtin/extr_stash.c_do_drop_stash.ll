; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_do_drop_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_do_drop_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.stash_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"reflog\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--updateref\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"--rewrite\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Dropped %s (%s)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: Could not drop stash entry\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"rev-parse\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"--verify\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s@{0}\00", align 1
@ref_stash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stash_info*, i32)* @do_drop_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_drop_stash(%struct.stash_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stash_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.child_process, align 4
  %8 = alloca %struct.child_process, align 4
  store %struct.stash_info* %0, %struct.stash_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.child_process* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %10 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  %13 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  %15 = load %struct.stash_info*, %struct.stash_info** %4, align 8
  %16 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @argv_array_push(i32* %14, i32 %18)
  %20 = call i32 @run_command(%struct.child_process* %7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %28 = load %struct.stash_info*, %struct.stash_info** %4, align 8
  %29 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.stash_info*, %struct.stash_info** %4, align 8
  %33 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %32, i32 0, i32 1
  %34 = call i32 @oid_to_hex(i32* %33)
  %35 = call i32 @printf_ln(i32 %27, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %26, %23
  br label %44

37:                                               ; preds = %2
  %38 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %39 = load %struct.stash_info*, %struct.stash_info** %4, align 8
  %40 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @error(i32 %38, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  %48 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* null)
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  %50 = load i32, i32* @ref_stash, align 4
  %51 = call i32 @argv_array_pushf(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = call i32 @run_command(%struct.child_process* %8)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 (...) @do_clear_stash()
  br label %57

57:                                               ; preds = %55, %44
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @argv_array_push(i32*, i32) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @printf_ln(i32, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @do_clear_stash(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
