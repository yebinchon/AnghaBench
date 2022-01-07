; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_run_update_hook.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_run_update_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i8**, i8* }
%struct.command = type { i8*, i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"update\00", align 1
@use_sideband = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.command*)* @run_update_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_update_hook(%struct.command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.command*, align 8
  %4 = alloca [5 x i8*], align 16
  %5 = alloca %struct.child_process, align 8
  %6 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  %7 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %8 = call i8* @find_hook(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* %8, i8** %9, align 16
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %11 = load i8*, i8** %10, align 16
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.command*, %struct.command** %3, align 8
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* %17, i8** %18, align 8
  %19 = load %struct.command*, %struct.command** %3, align 8
  %20 = getelementptr inbounds %struct.command, %struct.command* %19, i32 0, i32 2
  %21 = call i8* @oid_to_hex(i32* %20)
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* %21, i8** %22, align 16
  %23 = load %struct.command*, %struct.command** %3, align 8
  %24 = getelementptr inbounds %struct.command, %struct.command* %23, i32 0, i32 1
  %25 = call i8* @oid_to_hex(i32* %24)
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 4
  store i8* null, i8** %27, align 16
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i64, i64* @use_sideband, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 -1, i32 0
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  store i8** %35, i8*** %36, align 8
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = call i32 @start_command(%struct.child_process* %5)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %14
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %14
  %44 = load i64, i64* @use_sideband, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @copy_to_sideband(i32 %48, i32 -1, i32* null)
  br label %50

50:                                               ; preds = %46, %43
  %51 = call i32 @finish_command(%struct.child_process* %5)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %41, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @find_hook(i8*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

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
