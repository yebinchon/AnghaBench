; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_dbgport.c_dbg_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_dbgport.c_dbg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@BVM_DBG_SIG = common dso_local global i8 0, align 1
@conn_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Waiting for connection from gdb\0D\0A\00", align 1
@listen_fd = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i8*, i8*)* @dbg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 1, i32* %19, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8, i8* @BVM_DBG_SIG, align 1
  %28 = load i8*, i8** %14, align 8
  store i8 %27, i8* %28, align 1
  store i32 0, i32* %8, align 4
  br label %103

29:                                               ; preds = %23, %7
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  br label %103

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %98, %86, %33
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* @conn_fd, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* @listen_fd, align 4
  %45 = load i32, i32* @SOCK_NONBLOCK, align 4
  %46 = call i32 @accept4(i32 %44, i32* null, i32* null, i32 %45)
  store i32 %46, i32* @conn_fd, align 4
  %47 = load i32, i32* @conn_fd, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* @conn_fd, align 4
  %51 = load i32, i32* @SOL_SOCKET, align 4
  %52 = load i32, i32* @SO_NOSIGPIPE, align 4
  %53 = call i32 @setsockopt(i32 %50, i32 %51, i32 %52, i32* %19, i32 4)
  %54 = load i32, i32* @conn_fd, align 4
  %55 = load i32, i32* @IPPROTO_TCP, align 4
  %56 = load i32, i32* @TCP_NODELAY, align 4
  %57 = call i32 @setsockopt(i32 %54, i32 %55, i32 %56, i32* %19, i32 4)
  br label %65

58:                                               ; preds = %43
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINTR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %49
  br label %35

66:                                               ; preds = %35
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load i32, i32* @conn_fd, align 4
  %71 = call i32 @read(i32 %70, i8* %20, i32 1)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EAGAIN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i8*, i8** %14, align 8
  store i8 -1, i8* %79, align 1
  br label %90

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8, i8* %20, align 1
  %85 = load i8*, i8** %14, align 8
  store i8 %84, i8* %85, align 1
  br label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @conn_fd, align 4
  %88 = call i32 @close(i32 %87)
  store i32 -1, i32* @conn_fd, align 4
  br label %34

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %78
  br label %102

91:                                               ; preds = %66
  %92 = load i8*, i8** %14, align 8
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %20, align 1
  %94 = load i32, i32* @conn_fd, align 4
  %95 = call i32 @write(i32 %94, i8* %20, i32 1)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @conn_fd, align 4
  %100 = call i32 @close(i32 %99)
  store i32 -1, i32* @conn_fd, align 4
  br label %34

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %90
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %32, %26
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @accept4(i32, i32*, i32*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
