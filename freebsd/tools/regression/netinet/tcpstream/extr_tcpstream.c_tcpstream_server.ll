; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpstream/extr_tcpstream.c_tcpstream_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpstream/extr_tcpstream.c_tcpstream_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr = type { i32 }

@MAX_LONGS = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"listen: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"connection opened from %s:%d\0A\00", align 1
@MAX_LOOPS = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Corruption in block beginning %d and ending %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Block size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"connection closed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @tcpstream_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpstream_server(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.sockaddr_in* %3 to i64*
  store i64 %0, i64* %15, align 4
  store i64 %1, i64* %4, align 8
  %16 = load i32, i32* @MAX_LONGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @PF_INET, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %7, align 4
  %31 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %32 = call i32 @bind(i32 %30, %struct.sockaddr* %31, i32 8)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @listen(i32 %39, i32 -1)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %121, %55, %46
  br label %48

48:                                               ; preds = %47
  %49 = call i32 @bzero(%struct.sockaddr_in* %9, i32 8)
  store i32 8, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %52 = call i32 @accept(i32 %50, %struct.sockaddr* %51, i32* %12)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %47

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @inet_ntoa(i32 %59)
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %60, i32 %63)
  store i32 0, i32* %14, align 4
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @srandom(i64 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %117, %57
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MAX_LOOPS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %113, %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MAX_LONGS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @MSG_WAITALL, align 4
  %83 = call i32 @recv(i32 %77, i64* %19, i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %121

92:                                               ; preds = %76
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @check_buffer(i64* %19, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  br label %121

109:                                              ; preds = %92
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %72

116:                                              ; preds = %72
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %67

120:                                              ; preds = %67
  br label %121

121:                                              ; preds = %120, %96, %90
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @close(i32 %123)
  br label %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @inet_ntoa(i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @srandom(i64) #2

declare dso_local i32 @recv(i32, i64*, i32, i32) #2

declare dso_local i64 @check_buffer(i64*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
