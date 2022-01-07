; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_run_update_post_hook.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_run_update_post_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.command = type { i8*, i64, i64, %struct.command* }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"post-update\00", align 1
@use_sideband = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*)* @run_update_post_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_update_post_hook(%struct.command* %0) #0 {
  %2 = alloca %struct.command*, align 8
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.child_process, align 8
  %5 = alloca i8*, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  %6 = bitcast %struct.child_process* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %7 = call i8* @find_hook(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %72

11:                                               ; preds = %1
  %12 = load %struct.command*, %struct.command** %2, align 8
  store %struct.command* %12, %struct.command** %3, align 8
  br label %13

13:                                               ; preds = %42, %11
  %14 = load %struct.command*, %struct.command** %3, align 8
  %15 = icmp ne %struct.command* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load %struct.command*, %struct.command** %3, align 8
  %18 = getelementptr inbounds %struct.command, %struct.command* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.command*, %struct.command** %3, align 8
  %23 = getelementptr inbounds %struct.command, %struct.command* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  br label %42

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @argv_array_push(%struct.TYPE_2__* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 4
  %38 = load %struct.command*, %struct.command** %3, align 8
  %39 = getelementptr inbounds %struct.command, %struct.command* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @argv_array_push(%struct.TYPE_2__* %37, i8* %40)
  br label %42

42:                                               ; preds = %36, %26
  %43 = load %struct.command*, %struct.command** %3, align 8
  %44 = getelementptr inbounds %struct.command, %struct.command* %43, i32 0, i32 3
  %45 = load %struct.command*, %struct.command** %44, align 8
  store %struct.command* %45, %struct.command** %3, align 8
  br label %13

46:                                               ; preds = %13
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %72

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i64, i64* @use_sideband, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 -1, i32 0
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %60, align 8
  %61 = call i32 @start_command(%struct.child_process* %4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %52
  %64 = load i64, i64* @use_sideband, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @copy_to_sideband(i32 %68, i32 -1, i32* null)
  br label %70

70:                                               ; preds = %66, %63
  %71 = call i32 @finish_command(%struct.child_process* %4)
  br label %72

72:                                               ; preds = %10, %51, %70, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @find_hook(i8*) #2

declare dso_local i32 @argv_array_push(%struct.TYPE_2__*, i8*) #2

declare dso_local i32 @start_command(%struct.child_process*) #2

declare dso_local i32 @copy_to_sideband(i32, i32, i32*) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
