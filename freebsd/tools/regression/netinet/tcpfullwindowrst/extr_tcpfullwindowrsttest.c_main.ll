; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpfullwindowrst/extr_tcpfullwindowrsttest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpfullwindowrst/extr_tcpfullwindowrsttest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"1..1\0A\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@do_alrm = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ok 1 - tcpfullwindowrst\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.pollfd], align 16
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SIGALRM, align 4
  %13 = load i32, i32* @do_alrm, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = call i32 @alarm(i32 20)
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = call i32 @socket(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %156

22:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SOL_SOCKET, align 4
  %25 = load i32, i32* @SO_REUSEADDR, align 4
  %26 = call i32 @setsockopt(i32 %23, i32 %24, i32 %25, i32* %2, i32 4)
  %27 = call i32 @memset(%struct.sockaddr_in* %9, i32 0, i32 12)
  %28 = load i32, i32* @AF_INET, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @INADDR_LOOPBACK, align 4
  %31 = call i32 @htonl(i32 %30)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = call i32 @htons(i32 3737)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %38 = call i32 @bind(i32 %36, %struct.sockaddr* %37, i32 12)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 1, i32* %1, align 4
  br label %156

41:                                               ; preds = %22
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @listen(i32 %42, i32 1)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %1, align 4
  br label %156

46:                                               ; preds = %41
  %47 = load i32, i32* @AF_INET, align 4
  %48 = load i32, i32* @SOCK_STREAM, align 4
  %49 = call i32 @socket(i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %1, align 4
  br label %156

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %56 = call i32 @connect(i32 %54, %struct.sockaddr* %55, i32 12)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %1, align 4
  br label %156

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @accept(i32 %60, i32 0, i32 0)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %1, align 4
  br label %156

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @F_SETFL, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @F_GETFL, align 4
  %72 = call i32 (i32, i32, ...) @fcntl(i32 %70, i32 %71)
  %73 = load i32, i32* @O_NONBLOCK, align 4
  %74 = or i32 %72, %73
  %75 = call i32 (i32, i32, ...) @fcntl(i32 %68, i32 %69, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @F_SETFL, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @F_GETFL, align 4
  %80 = call i32 (i32, i32, ...) @fcntl(i32 %78, i32 %79)
  %81 = load i32, i32* @O_NONBLOCK, align 4
  %82 = or i32 %80, %81
  %83 = call i32 (i32, i32, ...) @fcntl(i32 %76, i32 %77, i32 %82)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %86 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 16
  %87 = load i32, i32* @POLLOUT, align 4
  %88 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %89 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %92 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @POLLOUT, align 4
  %94 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %95 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %153, %116, %65
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ true, %96 ], [ %101, %99 ]
  br i1 %103, label %104, label %154

104:                                              ; preds = %102
  %105 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %106 = call i64 @poll(%struct.pollfd* %105, i32 2, i32 1000)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @close(i32 %112)
  %114 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %115 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %114, i32 0, i32 0
  store i32 -1, i32* %115, align 16
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %111, %108
  br label %96

117:                                              ; preds = %104
  %118 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %119 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @POLLOUT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = load i32, i32* %4, align 4
  %126 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %127 = call i32 @write(i32 %125, i8* %126, i32 4096)
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @close(i32 %130)
  %132 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %133 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %132, i32 0, i32 0
  store i32 -1, i32* %133, align 16
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %129, %124
  br label %135

135:                                              ; preds = %134, %117
  %136 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @POLLOUT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load i32, i32* %5, align 4
  %144 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %145 = call i32 @write(i32 %143, i8* %144, i32 4096)
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @close(i32 %148)
  %150 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %151 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %150, i32 0, i32 0
  store i32 -1, i32* %151, align 4
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %135
  br label %96

154:                                              ; preds = %102
  %155 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %156

156:                                              ; preds = %154, %64, %58, %52, %45, %40, %21
  %157 = load i32, i32* %1, align 4
  ret i32 %157
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @accept(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
