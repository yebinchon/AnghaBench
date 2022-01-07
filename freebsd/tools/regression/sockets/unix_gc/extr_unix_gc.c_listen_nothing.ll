; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_listen_nothing.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_listen_nothing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"listen_nothing_unp\00", align 1
@test = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@dpath = common dso_local global i8* null, align 8
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"listen_nothing_inet\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @listen_nothing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listen_nothing() #0 {
  %1 = alloca %struct.sockaddr_un, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** @test, align 8
  %6 = load i8*, i8** @test, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = call i32 @bzero(%struct.sockaddr_un* %1, i32 28)
  %9 = load i32, i32* @AF_LOCAL, align 4
  %10 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 6
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 0
  store i32 28, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** @dpath, align 8
  %15 = load i8*, i8** @test, align 8
  %16 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %14, i8* %15)
  %17 = call i32 @save_sysctls(i32* %3, i32* %4)
  %18 = load i32, i32* @PF_LOCAL, align 4
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = call i32 @my_socket(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %23 = call i32 @my_bind(i32 %21, %struct.sockaddr* %22, i32 28)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @my_listen(i32 %24, i32 -1)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @close(i32 %26)
  %28 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @unlink(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @test_sysctls(i32 %31, i32 %32)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** @test, align 8
  %34 = load i8*, i8** @test, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr_un*
  %37 = call i32 @bzero(%struct.sockaddr_un* %36, i32 28)
  %38 = load i32, i32* @AF_INET, align 4
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i32 28, i32* %40, align 4
  %41 = load i32, i32* @INADDR_LOOPBACK, align 4
  %42 = call i32 @htonl(i32 %41)
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = call i32 @htons(i32 0)
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = call i32 @save_sysctls(i32* %3, i32* %4)
  %48 = load i32, i32* @PF_INET, align 4
  %49 = load i32, i32* @SOCK_STREAM, align 4
  %50 = call i32 @my_socket(i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %53 = call i32 @my_bind(i32 %51, %struct.sockaddr* %52, i32 28)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @my_listen(i32 %54, i32 -1)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @test_sysctls(i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @save_sysctls(i32*, i32*) #1

declare dso_local i32 @my_socket(i32, i32, i32) #1

declare dso_local i32 @my_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @my_listen(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @test_sysctls(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
