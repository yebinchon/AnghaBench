; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_tcp_user_cookie.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_tcp_user_cookie.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@buflen = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Usage: %s port cookie\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to bind to port %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to listen on socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_USER_COOKIE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"setsockopt(SO_USER_COOKIE)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"accept failed\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"failed read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @buflen, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @exit(i32 2) #4
  unreachable

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @PF_INET, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = call i32 @socket(i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 (i32, i8*, ...) @err(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %27
  %45 = call i32 @memset(%struct.sockaddr_in* %6, i32 0, i32 16)
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 16, i32* %46, align 4
  %47 = load i32, i32* @AF_INET, align 4
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @INADDR_ANY, align 4
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @bind(i32 %55, %struct.sockaddr* %56, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load i32, i32* @EX_OSERR, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, ...) @err(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %44
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @listen(i32 %66, i32 5)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EX_OSERR, align 4
  %71 = call i32 (i32, i8*, ...) @err(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SOL_SOCKET, align 4
  %75 = load i32, i32* @SO_USER_COOKIE, align 4
  %76 = call i32 @setsockopt(i32 %73, i32 %74, i32 %75, i32* %10, i32 4)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EX_OSERR, align 4
  %81 = call i32 (i32, i8*, ...) @err(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %111, %82
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @accept(i32 %85, i32* null, i32 0)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EX_OSERR, align 4
  %91 = call i32 (i32, i8*, ...) @err(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @SOL_SOCKET, align 4
  %95 = load i32, i32* @SO_USER_COOKIE, align 4
  %96 = call i32 @setsockopt(i32 %93, i32 %94, i32 %95, i32* %10, i32 4)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @EX_OSERR, align 4
  %101 = call i32 (i32, i8*, ...) @err(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %92
  %103 = load i32, i32* %8, align 4
  %104 = bitcast i8* %17 to i8**
  %105 = load i32, i32* @buflen, align 4
  %106 = call i32 @read(i32 %103, i8** %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %102
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @close(i32 %112)
  br label %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @accept(i32, i32*, i32) #2

declare dso_local i32 @read(i32, i8**, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
