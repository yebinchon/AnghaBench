; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote-ext.c_run_child.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote-ext.c_run_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i64 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't run specified command\00", align 1
@git_req = common dso_local global i64 0, align 8
@git_req_vhost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @run_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_child(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_process, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %8 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i32 -1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 -1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @parse_argv(i32* %11, i8* %12, i8* %13)
  %15 = call i64 @start_command(%struct.child_process* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i64, i64* @git_req, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* @git_req, align 8
  %27 = load i32, i32* @git_req_vhost, align 4
  %28 = call i32 @send_git_request(i32 %24, i8* %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %19
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bidirectional_transfer_loop(i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = call i32 @finish_command(%struct.child_process* %6)
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %29
  %40 = call i32 @finish_command(%struct.child_process* %6)
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @parse_argv(i32*, i8*, i8*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @send_git_request(i32, i8*, i64, i32) #2

declare dso_local i32 @bidirectional_transfer_loop(i32, i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
