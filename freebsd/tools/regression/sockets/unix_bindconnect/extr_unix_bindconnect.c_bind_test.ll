; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_bindconnect/extr_unix_bindconnect.c_bind_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_bindconnect/extr_unix_bindconnect.c_bind_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"bind_test: socket(PF_UNIX, SOCK_STREAM, 0)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SOCK_NAME_ONE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"bind_test: snprintf(socket_path)\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"bind_test: snprintf(sun.sun_path)\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"bind_test: bind(sun) #1\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"bind_test: bind(sun) #2 succeeded\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"bind_test: bind(sun) #2\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"bind_test: bind(sun) #3 succeeded\00", align 1
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"bind_test: bind(sun) #4 succeeded\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"bind_test: bind(sun) #4\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"bind_test: bind(sun) #5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bind_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_test(i8* %0) #0 {
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
  %20 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

21:                                               ; preds = %1
  %22 = trunc i64 %11 to i32
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** @SOCK_NAME_ONE, align 8
  %25 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

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
  %44 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @close(i32 %45)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

47:                                               ; preds = %32
  %48 = load i32, i32* %7, align 4
  %49 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %50 = call i64 @bind(i32 %48, %struct.sockaddr* %49, i32 12)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @close(i32 %54)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

56:                                               ; preds = %47
  %57 = call i32 @push_path(i8* %13)
  %58 = load i32, i32* %7, align 4
  %59 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %60 = call i64 @bind(i32 %58, %struct.sockaddr* %59, i32 12)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @close(i32 %64)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

66:                                               ; preds = %56
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINVAL, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @close(i32 %72)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

74:                                               ; preds = %66
  %75 = load i32, i32* @PF_UNIX, align 4
  %76 = load i32, i32* @SOCK_STREAM, align 4
  %77 = call i32 @socket(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @close(i32 %82)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %87 = call i64 @bind(i32 %85, %struct.sockaddr* %86, i32 12)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @close(i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @close(i32 %93)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

95:                                               ; preds = %84
  %96 = load i64, i64* @errno, align 8
  %97 = load i64, i64* @EADDRINUSE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @close(i32 %103)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @close(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %110 = call i64 @bind(i32 %108, %struct.sockaddr* %109, i32 12)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @close(i32 %114)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

116:                                              ; preds = %105
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @EADDRINUSE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @close(i32 %122)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

124:                                              ; preds = %116
  %125 = call i32 @unlink(i8* %13)
  %126 = load i32, i32* %8, align 4
  %127 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %128 = call i64 @bind(i32 %126, %struct.sockaddr* %127, i32 12)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @close(i32 %132)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

134:                                              ; preds = %124
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @close(i32 %135)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %130, %120, %112, %99, %89, %80, %70, %62, %52, %43, %28, %19
  %138 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @push_path(i8*) #2

declare dso_local i32 @warnx(i8*) #2

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
