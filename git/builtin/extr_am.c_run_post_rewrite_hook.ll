; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_run_post_rewrite_hook.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_run_post_rewrite_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i8*, i32, i32 }
%struct.am_state = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"post-rewrite\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rewritten\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*)* @run_post_rewrite_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_post_rewrite_hook(%struct.am_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.am_state*, align 8
  %4 = alloca %struct.child_process, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.am_state* %0, %struct.am_state** %3, align 8
  %7 = bitcast %struct.child_process* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %8 = call i8* @find_hook(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @argv_array_push(i32* %13, i8* %14)
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 3
  %17 = call i32 @argv_array_push(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.am_state*, %struct.am_state** %3, align 8
  %19 = call i32 @am_path(%struct.am_state* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @xopen(i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = call i32 @run_command(%struct.child_process* %4)
  store i32 %25, i32* %6, align 4
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @close(i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %12, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @find_hook(i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @xopen(i32, i32) #2

declare dso_local i32 @am_path(%struct.am_state*, i8*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
