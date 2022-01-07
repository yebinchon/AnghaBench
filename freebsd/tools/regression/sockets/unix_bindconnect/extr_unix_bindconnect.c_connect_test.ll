; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_bindconnect/extr_unix_bindconnect.c_connect_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_bindconnect/extr_unix_bindconnect.c_connect_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"connect_test: socket(PF_UNIX, SOCK_STREAM, 0)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SOCK_NAME_TWO = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"connect_test: snprintf(socket_path)\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"connect_test: snprintf(sun.sun_path)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"connect_test: connect(sun) #1 succeeded\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"connect_test: connect(sun) #1\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"connect_test: bind(sun) #1\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"connect_test: listen(sock1)\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"socket(PF_UNIX, SOCK_STREAM, 0)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"connect(sun) #2\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"connect(sun) #3 succeeded\00", align 1
@ECONNREFUSED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"connect(sun) #3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @connect_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @PF_UNIX, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

21:                                               ; preds = %1
  %22 = trunc i64 %11 to i32
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** @SOCK_NAME_TWO, align 8
  %25 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

32:                                               ; preds = %21
  %33 = call i32 @bzero(%struct.sockaddr_un* %6, i32 12)
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 0
  store i32 12, i32* %34, align 4
  %35 = load i32, i32* @AF_UNIX, align 4
  %36 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %40, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @close(i32 %45)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

47:                                               ; preds = %32
  %48 = load i32, i32* %7, align 4
  %49 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %50 = call i64 @connect(i32 %48, %struct.sockaddr* %49, i32 12)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @close(i32 %54)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

56:                                               ; preds = %47
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENOENT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @close(i32 %62)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %67 = call i64 @bind(i32 %65, %struct.sockaddr* %66, i32 12)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @close(i32 %71)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @listen(i32 %74, i32 3)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @close(i32 %79)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

81:                                               ; preds = %73
  %82 = call i32 @push_path(i8* %13)
  %83 = load i32, i32* @PF_UNIX, align 4
  %84 = load i32, i32* @SOCK_STREAM, align 4
  %85 = call i32 @socket(i32 %83, i32 %84, i32 0)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @close(i32 %90)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %95 = call i64 @connect(i32 %93, %struct.sockaddr* %94, i32 12)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @close(i32 %99)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

101:                                              ; preds = %92
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @close(i32 %104)
  %106 = load i32, i32* @PF_UNIX, align 4
  %107 = load i32, i32* @SOCK_STREAM, align 4
  %108 = call i32 @socket(i32 %106, i32 %107, i32 0)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

113:                                              ; preds = %101
  %114 = load i32, i32* %8, align 4
  %115 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %116 = call i64 @connect(i32 %114, %struct.sockaddr* %115, i32 12)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @close(i32 %120)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

122:                                              ; preds = %113
  %123 = load i64, i64* @errno, align 8
  %124 = load i64, i64* @ECONNREFUSED, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @close(i32 %128)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @close(i32 %131)
  %133 = call i32 @unlink(i8* %13)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %134

134:                                              ; preds = %130, %126, %118, %111, %97, %88, %77, %69, %60, %52, %43, %28, %19
  %135 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @push_path(i8*) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
