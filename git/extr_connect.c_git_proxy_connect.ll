; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_git_proxy_connect.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_git_proxy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }

@DEFAULT_GIT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"strange hostname '%s' blocked\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"strange port '%s' blocked\00", align 1
@git_proxy_command = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot start proxy %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.child_process* (i32*, i8*)* @git_proxy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.child_process* @git_proxy_connect(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.child_process*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @DEFAULT_GIT_PORT, align 4
  %8 = call i8* @STR(i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = call i32 @get_host_and_port(i8** %4, i8** %5)
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @looks_like_command_line_option(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @die(i32 %14, i8* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @looks_like_command_line_option(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @die(i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = call %struct.child_process* @xmalloc(i32 12)
  store %struct.child_process* %26, %struct.child_process** %6, align 8
  %27 = load %struct.child_process*, %struct.child_process** %6, align 8
  %28 = call i32 @child_process_init(%struct.child_process* %27)
  %29 = load %struct.child_process*, %struct.child_process** %6, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %29, i32 0, i32 2
  %31 = load i8*, i8** @git_proxy_command, align 8
  %32 = call i32 @argv_array_push(i32* %30, i8* %31)
  %33 = load %struct.child_process*, %struct.child_process** %6, align 8
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %33, i32 0, i32 2
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @argv_array_push(i32* %34, i8* %35)
  %37 = load %struct.child_process*, %struct.child_process** %6, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 2
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @argv_array_push(i32* %38, i8* %39)
  %41 = load %struct.child_process*, %struct.child_process** %6, align 8
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 4
  %43 = load %struct.child_process*, %struct.child_process** %6, align 8
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load %struct.child_process*, %struct.child_process** %6, align 8
  %46 = call i64 @start_command(%struct.child_process* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** @git_proxy_command, align 8
  %51 = call i32 @die(i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %25
  %53 = load %struct.child_process*, %struct.child_process** %6, align 8
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.child_process*, %struct.child_process** %6, align 8
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.child_process*, %struct.child_process** %6, align 8
  ret %struct.child_process* %63
}

declare dso_local i8* @STR(i32) #1

declare dso_local i32 @get_host_and_port(i8**, i8**) #1

declare dso_local i64 @looks_like_command_line_option(i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.child_process* @xmalloc(i32) #1

declare dso_local i32 @child_process_init(%struct.child_process*) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i64 @start_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
