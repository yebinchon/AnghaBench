; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_listen_connect_nothing.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_listen_connect_nothing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"listen_connect_nothing\00", align 1
@test = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @listen_connect_nothing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listen_connect_nothing() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @test, align 8
  %8 = load i8*, i8** @test, align 8
  %9 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = call i32 @save_sysctls(i32* %5, i32* %6)
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @my_socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %16 = call i32 @my_bind(i32 %14, %struct.sockaddr* %15, i32 4)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @my_listen(i32 %17, i32 -1)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %20 = call i32 @my_socketpair(i32* %19)
  store i32 4, i32* %7, align 4
  %21 = load i32, i32* %2, align 4
  %22 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %23 = call i32 @my_getsockname(i32 %21, %struct.sockaddr* %22, i32* %7)
  %24 = load i32, i32* @PF_INET, align 4
  %25 = load i32, i32* @SOCK_STREAM, align 4
  %26 = call i32 @my_socket(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @setnonblock(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @my_connect(i32 %29, %struct.sockaddr* %30, i32 %31)
  %33 = call i32 @sleep(i32 1)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @close4(i32 %34, i32 %35, i32 %37, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @test_sysctls(i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @save_sysctls(i32*, i32*) #1

declare dso_local i32 @my_socket(i32, i32, i32) #1

declare dso_local i32 @my_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @my_listen(i32, i32) #1

declare dso_local i32 @my_socketpair(i32*) #1

declare dso_local i32 @my_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @setnonblock(i32) #1

declare dso_local i32 @my_connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @close4(i32, i32, i32, i32) #1

declare dso_local i32 @test_sysctls(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
