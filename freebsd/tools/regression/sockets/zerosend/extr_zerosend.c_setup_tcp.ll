; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/zerosend/extr_zerosend.c_setup_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/zerosend/extr_zerosend.c_setup_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: setup_tcp: socket\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: bind(%s, %d)\00", align 1
@PORT1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s: listen\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: setup_tcp: fcntl(O_NONBLOCK)\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: setup_tcp: connect(%s, %d)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s: sleep(1)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s: accept\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: setup_tcp: select\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: setup_tcp: select: exception\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s: setup_tcp: select: not writable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @setup_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tcp(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = call i32 @bzero(%struct.sockaddr_in* %9, i32 16)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 16, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @INADDR_LOOPBACK, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @PF_INET, align 4
  %27 = load i32, i32* @SOCK_STREAM, align 4
  %28 = call i32 @socket(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %3
  %35 = load i32, i32* %11, align 4
  %36 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %37 = call i64 @bind(i32 %35, %struct.sockaddr* %36, i32 16)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @inet_ntoa(i32 %43)
  %45 = load i32, i32* @PORT1, align 4
  %46 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @listen(i32 %48, i32 -1)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* @PF_INET, align 4
  %56 = load i32, i32* @SOCK_STREAM, align 4
  %57 = call i32 @socket(i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @F_SETFL, align 4
  %66 = load i32, i32* @O_NONBLOCK, align 4
  %67 = call i64 @fcntl(i32 %64, i32 %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32, i32* %12, align 4
  %74 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %75 = call i64 @connect(i32 %73, %struct.sockaddr* %74, i32 16)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @EINPROGRESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @inet_ntoa(i32 %85)
  %87 = load i32, i32* @PORT1, align 4
  %88 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %82, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %77, %72
  %90 = call i64 @sleep(i32 1)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @accept(i32 %96, i32* null, i32* null)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = call i64 @sleep(i32 1)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = call i32 @FD_ZERO(i32* %7)
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @FD_SET(i32 %111, i32* %7)
  %113 = call i32 @FD_ZERO(i32* %8)
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @FD_SET(i32 %114, i32* %8)
  %116 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @select(i32 %119, i32* null, i32* %7, i32* %8, %struct.timeval* %14)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %109
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %123, %109
  %127 = load i32, i32* %12, align 4
  %128 = call i64 @FD_ISSET(i32 %127, i32* %8)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i32, i32* %12, align 4
  %135 = call i64 @FD_ISSET(i32 %134, i32* %7)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @close(i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %146, i32* %148, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @sleep(i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
