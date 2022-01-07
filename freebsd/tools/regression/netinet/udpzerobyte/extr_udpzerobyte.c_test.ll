; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/udpzerobyte/extr_udpzerobyte.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/udpzerobyte/extr_udpzerobyte.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"socket(%s, SOCK_DGRAM, 0)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Protocol %s bind(sock_receive)\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Protocll %s fcntl(sock_receive, FL_SETFL, O_NONBLOCK)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Protocol %s connect(sock_send)\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Protocol %s recv(sock_receive, NULL, 0) before: %zd\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Protocol %s recv(sock_receive, NULL, 0) before\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Protocol %s send(sock_send, NULL, 0)\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Protocol %s recv(sock_receive, NULL, 0) test\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Protocol %s recv(sock_receive, NULL, 0) after: %zd\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Protocol %s recv(sock_receive, NULL, 0) after\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.sockaddr*, i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i32 %0, i8* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @err(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SOCK_DGRAM, align 4
  %23 = call i32 @socket(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @err(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @bind(i32 %30, %struct.sockaddr* %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @err(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @F_SETFL, align 4
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = call i64 @fcntl(i32 %39, i32 %40, i32 %41, i32 1)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @err(i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @connect(i32 %48, %struct.sockaddr* %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @err(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @recv(i32 %57, i32* null, i32 0, i32 0)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %62, i64 %63)
  br label %72

65:                                               ; preds = %56
  %66 = load i64, i64* %11, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @err(i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @send(i32 %73, i32* null, i32 0, i32 0)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = call i32 @sleep(i32 1)
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @recv(i32 %82, i32* null, i32 0, i32 0)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @err(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @recv(i32 %90, i32* null, i32 0, i32 0)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %95, i64 %96)
  br label %105

98:                                               ; preds = %89
  %99 = load i64, i64* %11, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @err(i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %94
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, i64) #1

declare dso_local i64 @send(i32, i32*, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
