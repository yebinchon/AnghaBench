; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_socket_get_backlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_socket_get_backlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LISTENQLIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"%s: %s: %s: socket_get_backlog: getsockopt(SOL_SOCKET, SO_LISTENQLIMIT)\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"%s: %s: %s: socket_get_backlog: getsockopt(SOL_SOCKET, SO_LISTENQLIMIT): returned size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i8*, i8*)* @socket_get_backlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_get_backlog(i32 %0, i32* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 4, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SOL_SOCKET, align 4
  %16 = load i32, i32* @SO_LISTENQLIMIT, align 4
  %17 = call i64 @getsockopt(i32 %14, i32 %15, i32 %16, i32* %13, i32* %12)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21, i8* %22)
  store i32 -1, i32* %6, align 4
  br label %37

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @warnx(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30, i8* %31, i32 %32)
  store i32 -1, i32* %6, align 4
  br label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %28, %19
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @warn(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
