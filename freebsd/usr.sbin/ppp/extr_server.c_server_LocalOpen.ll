; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_LocalOpen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_LocalOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64, i64 }
%struct.bundle = type { i32 }
%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Local: %s: Path too long\0A\00", align 1
@SERVER_INVALID = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Local: socket: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Local: bind: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Local: Unable to listen to socket - BUNDLE overload?\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Listening at local socket %s.\0A\00", align 1
@SERVER_OK = common dso_local global i32 0, align 4
@SERVER_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_LocalOpen(%struct.bundle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_un, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 -1, i64* %9, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 0), align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 0), align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i8* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.bundle*, %struct.bundle** %5, align 8
  %23 = call i32 @server_Close(%struct.bundle* %22)
  br label %24

24:                                               ; preds = %21, %16, %3
  %25 = call i32 @memset(%struct.sockaddr_un* %8, i8 signext 0, i32 12)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %31, 3
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @LogERROR, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, ...) @log_Printf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @SERVER_INVALID, align 4
  store i32 %37, i32* %4, align 4
  br label %128

38:                                               ; preds = %24
  %39 = load i32, i32* @AF_LOCAL, align 4
  %40 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcpy(i32 %42, i8* %43)
  %45 = load i32, i32* @PF_LOCAL, align 4
  %46 = load i32, i32* @SOCK_STREAM, align 4
  %47 = call i32 @socket(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load i32, i32* @LogERROR, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i8* @strerror(i32 %52)
  %54 = call i32 (i32, i8*, ...) @log_Printf(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %115

55:                                               ; preds = %38
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @SOL_SOCKET, align 4
  %58 = load i32, i32* @SO_REUSEADDR, align 4
  %59 = call i32 @setsockopt(i32 %56, i32 %57, i32 %58, i32* %10, i32 4)
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @umask(i64 %63)
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* %10, align 4
  %67 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*
  %68 = call i64 @bind(i32 %66, %struct.sockaddr* %67, i32 12)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @umask(i64 %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @LogWARN, align 4
  %78 = load i32, i32* @errno, align 4
  %79 = call i8* @strerror(i32 %78)
  %80 = call i32 (i32, i8*, ...) @log_Printf(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @close(i32 %81)
  br label %115

83:                                               ; preds = %65
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @umask(i64 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @listen(i32 %90, i32 5)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, i32* @LogERROR, align 4
  %95 = call i32 (i32, i8*, ...) @log_Printf(i32 %94, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @unlink(i8* %98)
  br label %115

100:                                              ; preds = %89
  %101 = load %struct.bundle*, %struct.bundle** %5, align 8
  %102 = call i32 @server_Close(%struct.bundle* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 2), align 8
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 0), align 8
  %105 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strncpy(i8* %104, i32 %106, i32 7)
  %108 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 0), align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 7
  store i8 0, i8* %109, align 1
  %110 = load i64, i64* %7, align 8
  store i64 %110, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 1), align 8
  %111 = load i32, i32* @LogPHASE, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 (i32, i8*, ...) @log_Printf(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @SERVER_OK, align 4
  store i32 %114, i32* %4, align 4
  br label %128

115:                                              ; preds = %93, %76, %50
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 2), align 8
  %119 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 0), align 8
  %120 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strncpy(i8* %119, i32 %121, i32 7)
  %123 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 0), align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 7
  store i8 0, i8* %124, align 1
  %125 = load i64, i64* %7, align 8
  store i64 %125, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1, i32 1), align 8
  br label %126

126:                                              ; preds = %118, %115
  %127 = load i32, i32* @SERVER_FAILED, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %100, %33
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @server_Close(%struct.bundle*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @umask(i64) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
