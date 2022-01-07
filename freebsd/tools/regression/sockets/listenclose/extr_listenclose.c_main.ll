; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/listenclose/extr_listenclose.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/listenclose/extr_listenclose.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"socket(PF_INET, SOCK_STREAM, 0) for listen socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"bind(%s, %d) for listen socket: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"getsockname() for listen socket: %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"listen() for listen socket: %s\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"socket(PF_INET, SOCK_STREAM, 0) for connect socket: %s\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"connect() for connect socket: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @PF_INET, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %0
  %18 = call i32 @bzero(%struct.sockaddr_in* %4, i32 32)
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 32, i32* %19, align 8
  %20 = load i8*, i8** @AF_INET, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @INADDR_LOOPBACK, align 4
  %23 = call i8* @htonl(i32 %22)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %2, align 4
  %28 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %29 = call i64 @bind(i32 %27, %struct.sockaddr* %28, i32 32)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @inet_ntoa(i8* %34)
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %31, %17
  store i32 32, i32* %5, align 4
  %40 = load i32, i32* %2, align 4
  %41 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %42 = call i64 @getsockname(i32 %40, %struct.sockaddr* %41, i32* %5)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %6, align 8
  %51 = load i32, i32* %2, align 4
  %52 = call i64 @listen(i32 %51, i32 -1)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* @PF_INET, align 4
  %60 = load i32, i32* @SOCK_STREAM, align 4
  %61 = call i32 @socket(i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* @O_NONBLOCK, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @F_SETFL, align 4
  %72 = call i64 @fcntl(i32 %70, i32 %71, i32* %7)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = call i32 @bzero(%struct.sockaddr_in* %4, i32 32)
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 32, i32* %80, align 8
  %81 = load i8*, i8** @AF_INET, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 3
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* @INADDR_LOOPBACK, align 4
  %84 = call i8* @htonl(i32 %83)
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* %3, align 4
  %90 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %91 = call i64 @connect(i32 %89, %struct.sockaddr* %90, i32 32)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %78
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @close(i32 %98)
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @close(i32 %100)
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @inet_ntoa(i8*) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
