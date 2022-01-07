; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/udps/extr_udps.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/udps/extr_udps.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }
%struct.sockaddr = type { i32 }

@pps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Packets per second=%d\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"select()\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"read died\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"sorbo\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Got signal from %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Sending stuff to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Stopping send\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [17 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 6969, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* @pps, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @pps, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @PF_INET, align 4
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = load i32, i32* @IPPROTO_UDP, align 4
  %29 = call i32 @socket(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* @PF_INET, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @INADDR_ANY, align 4
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %45 = call i64 @bind(i32 %43, %struct.sockaddr* %44, i32 12)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %118
  %52 = load i32, i32* %13, align 4
  %53 = icmp sge i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  store i32 12, i32* %10, align 4
  %56 = call i32 @memset(%struct.timeval* %12, i32 0, i32 4)
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 10000, i32* %57, align 4
  %58 = call i32 @FD_ZERO(i32* %14)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @FD_SET(i32 %59, i32* %14)
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @select(i32 %62, i32* %14, i32* null, i32* null, %struct.timeval* %12)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %51
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @FD_ISSET(i32 %73, i32* %14)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %79 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %80 = call i32 @recvfrom(i32 %77, i8* %78, i32 64, i32 0, %struct.sockaddr* %79, i32* %10)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %85 = call i32 @exit(i32 1) #3
  unreachable

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 5
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %91 = call i64 @memcmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 0
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @inet_ntoa(i32 %97)
  %99 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  %100 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 0
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  store i32 2, i32* %13, align 4
  br label %102

102:                                              ; preds = %93, %89, %86
  br label %103

103:                                              ; preds = %102, %72, %69
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 0
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @own(i32 %109, %struct.sockaddr_in* %7)
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %106
  br label %118

118:                                              ; preds = %117, %103
  br label %51
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @own(i32, %struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
