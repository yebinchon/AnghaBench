; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_http_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_http_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@BUFFER = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"socket(PF_INET, SOCK_STREAM)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"GET %s HTTP/1.0\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"send: len == 0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, i8*, i32)* @http_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_fetch(%struct.sockaddr_in* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @BUFFER, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @PF_INET, align 4
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = call i32 @socket(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %102

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %32 = bitcast %struct.sockaddr_in* %31 to %struct.sockaddr*
  %33 = call i64 @connect(i32 %30, %struct.sockaddr* %32, i32 4)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @close(i32 %41)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %102

43:                                               ; preds = %29
  %44 = load i32, i32* @BUFFER, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @snprintf(i32* %17, i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %74, %43
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @strlen(i32* %17)
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @strlen(i32* %17)
  %54 = call i64 @send(i32 %52, i32* %17, i64 %53, i32 0)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @close(i32 %63)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %102

65:                                               ; preds = %51
  %66 = load i64, i64* %10, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %11, align 8
  br label %47

78:                                               ; preds = %47
  br label %79

79:                                               ; preds = %98, %78
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @BUFFER, align 4
  %83 = call i64 @recv(i32 %81, i32* %17, i32 %82, i32 0)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @close(i32 %92)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %102

94:                                               ; preds = %80
  %95 = load i64, i64* %10, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %99

98:                                               ; preds = %94
  br label %79

99:                                               ; preds = %97
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @close(i32 %100)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %99, %91, %62, %40, %28
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #2

declare dso_local i64 @strlen(i32*) #2

declare dso_local i64 @send(i32, i32*, i64, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @recv(i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
