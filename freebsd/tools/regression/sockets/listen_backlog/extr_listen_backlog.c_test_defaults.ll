; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_test_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_test_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PF_INET\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SOCK_STREAM\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"test_defaults\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"default_0_listen_0\00", align 1
@somaxconn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"default_0_listen_-1\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"default_0_listen_1\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"default_0_listen_somaxconn\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"default_0_listen_somaxconn+1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_defaults() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PF_INET, align 4
  %3 = load i32, i32* @SOCK_STREAM, align 4
  %4 = call i64 @socket_listen(i32 %2, i32 %3, i32 0, i32 0, i32 0, i32 0, i32* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @exit(i32 -1) #3
  unreachable

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @close(i32 %9)
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = load i32, i32* @somaxconn, align 4
  %14 = call i64 @socket_listen(i32 %11, i32 %12, i32 0, i32 -1, i32 0, i32 %13, i32* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @exit(i32 -1) #3
  unreachable

18:                                               ; preds = %8
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @close(i32 %19)
  %21 = load i32, i32* @PF_INET, align 4
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = call i64 @socket_listen(i32 %21, i32 %22, i32 0, i32 1, i32 0, i32 1, i32* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @exit(i32 -1) #3
  unreachable

27:                                               ; preds = %18
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* @PF_INET, align 4
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = load i32, i32* @somaxconn, align 4
  %33 = load i32, i32* @somaxconn, align 4
  %34 = call i64 @socket_listen(i32 %30, i32 %31, i32 0, i32 %32, i32 0, i32 %33, i32* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @exit(i32 -1) #3
  unreachable

38:                                               ; preds = %27
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* @PF_INET, align 4
  %42 = load i32, i32* @SOCK_STREAM, align 4
  %43 = load i32, i32* @somaxconn, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @somaxconn, align 4
  %46 = call i64 @socket_listen(i32 %41, i32 %42, i32 0, i32 %44, i32 0, i32 %45, i32* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 @exit(i32 -1) #3
  unreachable

50:                                               ; preds = %38
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @close(i32 %51)
  ret void
}

declare dso_local i64 @socket_listen(i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
