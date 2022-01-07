; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/shutdown/extr_shutdown.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/shutdown/extr_shutdown.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@SHUT_RDWR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"shutdown() for invalid file descriptor does not return EBADF\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"socket(PF_INET, SOCK_STREAM, 0) for listen socket: %s\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"bind(%s, %d) for listen socket: %s\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"getsockname() for listen socket: %s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"listen() for listen socket: %s\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"socket(PF_INET, SOCK_STREAM, 0) for connect socket: %s\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"connect() for connect socket: %s\00", align 1
@SHUT_RD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"shutdown(SHUT_RD - 1) does not return EINVAL\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"shutdown(SHUT_RDWR + 1) does not return EINVAL\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"shutdown(SHUT_RD) for connect socket: %s\00", align 1
@SHUT_WR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [41 x i8] c"shutdown(SHUT_WR) for connect socket: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i64, i64* @SHUT_RDWR, align 8
  %9 = call i32 @shutdown(i32 %7, i64 %8)
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EBADF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11, %0
  %18 = load i32, i32* @PF_INET, align 4
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = call i32 @socket(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* @errno, align 8
  %25 = call i32 @strerror(i64 %24)
  %26 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = call i32 @bzero(%struct.sockaddr_in* %2, i32 32)
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load i8*, i8** @AF_INET, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @INADDR_LOOPBACK, align 4
  %33 = call i8* @htonl(i32 %32)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %39 = call i64 @bind(i32 %37, %struct.sockaddr* %38, i32 32)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @inet_ntoa(i8* %44)
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @strerror(i64 %48)
  %50 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %45, i64 %47, i32 %49)
  br label %51

51:                                               ; preds = %41, %27
  store i32 32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %54 = call i64 @getsockname(i32 %52, %struct.sockaddr* %53, i32* %3)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @strerror(i64 %57)
  %59 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @listen(i32 %63, i32 -1)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* @errno, align 8
  %68 = call i32 @strerror(i64 %67)
  %69 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32, i32* @PF_INET, align 4
  %72 = load i32, i32* @SOCK_STREAM, align 4
  %73 = call i32 @socket(i32 %71, i32 %72, i32 0)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = call i32 @bzero(%struct.sockaddr_in* %2, i32 32)
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 32, i32* %82, align 8
  %83 = load i8*, i8** @AF_INET, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 3
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @INADDR_LOOPBACK, align 4
  %86 = call i8* @htonl(i32 %85)
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %93 = call i64 @connect(i32 %91, %struct.sockaddr* %92, i32 32)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %80
  %96 = load i64, i64* @errno, align 8
  %97 = call i32 @strerror(i64 %96)
  %98 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %80
  %100 = load i32, i32* %5, align 4
  %101 = load i64, i64* @SHUT_RD, align 8
  %102 = sub nsw i64 %101, 1
  %103 = call i32 @shutdown(i32 %100, i64 %102)
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i64, i64* @errno, align 8
  %107 = load i64, i64* @EINVAL, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %105, %99
  %112 = load i32, i32* %5, align 4
  %113 = load i64, i64* @SHUT_RDWR, align 8
  %114 = add nsw i64 %113, 1
  %115 = call i32 @shutdown(i32 %112, i64 %114)
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EINVAL, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117, %111
  %124 = load i32, i32* %5, align 4
  %125 = load i64, i64* @SHUT_RD, align 8
  %126 = call i32 @shutdown(i32 %124, i64 %125)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i64, i64* @errno, align 8
  %130 = call i32 @strerror(i64 %129)
  %131 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %5, align 4
  %134 = load i64, i64* @SHUT_WR, align 8
  %135 = call i32 @shutdown(i32 %133, i64 %134)
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i64, i64* @errno, align 8
  %139 = call i32 @strerror(i64 %138)
  %140 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @close(i32 %144)
  ret i32 0
}

declare dso_local i32 @shutdown(i32, i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @inet_ntoa(i8*) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
