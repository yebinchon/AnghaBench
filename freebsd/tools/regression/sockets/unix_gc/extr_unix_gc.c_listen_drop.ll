; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_listen_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_listen_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"listen_drop_unp1\00", align 1
@test = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@dpath = common dso_local global i8* null, align 8
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"listen_drop_unp2\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"listen_drop_inet1\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"listen_drop_inet2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @listen_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listen_drop() #0 {
  %1 = alloca %struct.sockaddr_un, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = call i32 @bzero(%struct.sockaddr_un* %1, i32 12)
  %8 = load i32, i32* @AF_LOCAL, align 4
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 0
  store i32 12, i32* %10, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** @test, align 8
  %11 = load i8*, i8** @test, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** @dpath, align 8
  %16 = load i8*, i8** @test, align 8
  %17 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %15, i8* %16)
  %18 = call i32 @save_sysctls(i32* %3, i32* %4)
  %19 = load i32, i32* @PF_LOCAL, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = call i32 @my_socket(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %24 = call i32 @my_bind(i32 %22, %struct.sockaddr* %23, i32 12)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @my_listen(i32 %25, i32 -1)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %28 = call i32 @my_socketpair(i32* %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sendfd(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @close3(i32 %33, i32 %35, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @test_sysctls(i32 %39, i32 %40)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** @test, align 8
  %42 = load i8*, i8** @test, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** @dpath, align 8
  %47 = load i8*, i8** @test, align 8
  %48 = call i32 @snprintf(i32 %45, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47)
  %49 = call i32 @save_sysctls(i32* %3, i32* %4)
  %50 = load i32, i32* @PF_LOCAL, align 4
  %51 = load i32, i32* @SOCK_STREAM, align 4
  %52 = call i32 @my_socket(i32 %50, i32 %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %55 = call i32 @my_bind(i32 %53, %struct.sockaddr* %54, i32 12)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @my_listen(i32 %56, i32 -1)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %59 = call i32 @my_socketpair(i32* %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @sendfd(i32 %61, i32 %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @close3(i32 %65, i32 %67, i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @test_sysctls(i32 %70, i32 %71)
  %73 = load i32, i32* @AF_INET, align 4
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 16, i32* %75, align 4
  %76 = load i32, i32* @INADDR_LOOPBACK, align 4
  %77 = call i32 @htonl(i32 %76)
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = call i32 @htons(i32 0)
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** @test, align 8
  %82 = load i8*, i8** @test, align 8
  %83 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  %84 = call i32 @bzero(%struct.sockaddr_un* %1, i32 12)
  %85 = call i32 @save_sysctls(i32* %3, i32* %4)
  %86 = load i32, i32* @PF_INET, align 4
  %87 = load i32, i32* @SOCK_STREAM, align 4
  %88 = call i32 @my_socket(i32 %86, i32 %87, i32 0)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %91 = call i32 @my_bind(i32 %89, %struct.sockaddr* %90, i32 16)
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @my_listen(i32 %92, i32 -1)
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %95 = call i32 @my_socketpair(i32* %94)
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @sendfd(i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @close3(i32 %100, i32 %102, i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @test_sysctls(i32 %106, i32 %107)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** @test, align 8
  %109 = load i8*, i8** @test, align 8
  %110 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  %111 = call i32 @bzero(%struct.sockaddr_un* %1, i32 12)
  %112 = call i32 @save_sysctls(i32* %3, i32* %4)
  %113 = load i32, i32* @PF_INET, align 4
  %114 = load i32, i32* @SOCK_STREAM, align 4
  %115 = call i32 @my_socket(i32 %113, i32 %114, i32 0)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %118 = call i32 @my_bind(i32 %116, %struct.sockaddr* %117, i32 16)
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @my_listen(i32 %119, i32 -1)
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %122 = call i32 @my_socketpair(i32* %121)
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @sendfd(i32 %124, i32 %125)
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @close3(i32 %128, i32 %130, i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @test_sysctls(i32 %133, i32 %134)
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @save_sysctls(i32*, i32*) #1

declare dso_local i32 @my_socket(i32, i32, i32) #1

declare dso_local i32 @my_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @my_listen(i32, i32) #1

declare dso_local i32 @my_socketpair(i32*) #1

declare dso_local i32 @sendfd(i32, i32) #1

declare dso_local i32 @close3(i32, i32, i32) #1

declare dso_local i32 @test_sysctls(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
