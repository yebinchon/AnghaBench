; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/pr_atomic/extr_pr_atomic.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/pr_atomic/extr_pr_atomic.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@socket_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mkstemp\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@__const.main.buf = private unnamed_addr constant [10 x i8] c"AAAAAAAAA\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"recvfrom succeeded when failure expected\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@handle_sigalrm = common dso_local global i32 0, align 4
@myjmpbuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_un, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @socket_path, align 4
  %8 = call i32 @mkstemp(i32 %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @PF_LOCAL, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = call i32 @memset(%struct.sockaddr_un* %2, i32 0, i32 8)
  %22 = load i32, i32* @AF_LOCAL, align 4
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %2, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @socket_path, align 4
  %25 = call i32 @unlink(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @socket_path, align 4
  %29 = call i32 @strcpy(i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = bitcast %struct.sockaddr_un* %2 to %struct.sockaddr*
  %32 = call i32 @bind(i32 %30, %struct.sockaddr* %31, i32 8)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %20
  %37 = call i32 (...) @fork()
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.buf, i32 0, i32 0), i64 10, i1 false)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* @AF_LOCAL, align 4
  %50 = load i32, i32* @SOCK_DGRAM, align 4
  %51 = call i32 @socket(i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %45
  %57 = load i32, i32* %5, align 4
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %59 = bitcast %struct.sockaddr_un* %2 to %struct.sockaddr*
  %60 = call i32 @sendto(i32 %57, i8* %58, i32 10, i32 0, %struct.sockaddr* %59, i32 8)
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 10
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @close(i32 %66)
  %68 = call i32 @_exit(i32 0) #5
  unreachable

69:                                               ; preds = %42
  %70 = call i32 @sleep(i32 5)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @recvfrom(i32 %71, i8* inttoptr (i64 -1 to i8*), i32 1, i32 0, i32* null, i32* null)
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* @SIGALRM, align 4
  %78 = load i32, i32* @handle_sigalrm, align 4
  %79 = call i32 @signal(i32 %77, i32 %78)
  %80 = load i32, i32* @myjmpbuf, align 4
  %81 = call i64 @setjmp(i32 %80) #6
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = call i32 @alarm(i32 5)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @recvfrom(i32 %85, i8* inttoptr (i64 -1 to i8*), i32 1, i32 0, i32* null, i32* null)
  br label %87

87:                                               ; preds = %83, %76
  ret i32 0
}

declare dso_local i32 @mkstemp(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @fork(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #4

declare dso_local i32 @alarm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
