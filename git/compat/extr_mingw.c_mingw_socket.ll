; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_socket.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_SOCKET = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unable to make a socket file descriptor: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mingw_socket(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @ensure_socket_initialization()
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @WSASocket(i32 %11, i32 %12, i32 %13, i32* null, i32 0, i32 0)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @INVALID_SOCKET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @WSAGetLastError()
  store i32 %19, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = load i32, i32* @O_BINARY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @_open_osfhandle(i64 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @closesocket(i64 %28)
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %27, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @ensure_socket_initialization(...) #1

declare dso_local i64 @WSASocket(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @_open_osfhandle(i64, i32) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
