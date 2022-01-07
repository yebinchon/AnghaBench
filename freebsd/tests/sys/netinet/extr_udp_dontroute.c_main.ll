; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_udp_dontroute.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_udp_dontroute.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32, i8* }
%struct.sockaddr_in6 = type { i32, i8* }
%struct.sockaddr_in = type { i32, i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [-6] ip_address tapdev\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_DONTROUTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"setsockopt(SO_DONTROUTE)\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"inet_pton returned %d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"read returned EOF\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"Did not receive any packets\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_storage, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [80 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_in6*, align 8
  %20 = alloca %struct.sockaddr_in*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i64 80, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 46120, i32* %18, align 4
  %21 = call i32 @bzero(%struct.sockaddr_storage* %6, i32 16)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i32 @exit(i32 2) #3
  unreachable

34:                                               ; preds = %24
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  store i32 1, i32* %15, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %16, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %17, align 8
  br label %54

47:                                               ; preds = %34
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %16, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %17, align 8
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i8*, i8** %17, align 8
  %56 = load i32, i32* @O_RDWR, align 4
  %57 = load i32, i32* @O_NONBLOCK, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @open(i8* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EXIT_FAILURE, align 4
  %64 = call i32 (i32, i8*, ...) @err(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @PF_INET6, align 4
  %70 = load i32, i32* @SOCK_DGRAM, align 4
  %71 = call i32 @socket(i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %7, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @PF_INET, align 4
  %74 = load i32, i32* @SOCK_DGRAM, align 4
  %75 = call i32 @socket(i32 %73, i32 %74, i32 0)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 (i32, i8*, ...) @err(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  store i32 1, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @SOL_SOCKET, align 4
  %85 = load i32, i32* @SO_DONTROUTE, align 4
  %86 = call i32 @setsockopt(i32 %83, i32 %84, i32 %85, i32* %9, i32 4)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  %91 = call i32 (i32, i8*, ...) @err(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %96, %struct.sockaddr_in6** %19, align 8
  %97 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  store i32 16, i32* %97, align 8
  %98 = load i8*, i8** @AF_INET6, align 8
  %99 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = call i8* @htons(i32 46120)
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @AF_INET6, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %105, i32 0, i32 0
  %107 = call i32 @inet_pton(i8* %103, i8* %104, i32* %106)
  store i32 %107, i32* %10, align 4
  br label %121

108:                                              ; preds = %92
  %109 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %109, %struct.sockaddr_in** %20, align 8
  %110 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  store i32 16, i32* %110, align 8
  %111 = load i8*, i8** @AF_INET, align 8
  %112 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 1
  store i8* %111, i8** %112, align 8
  %113 = call i8* @htons(i32 46120)
  %114 = load %struct.sockaddr_in*, %struct.sockaddr_in** %20, align 8
  %115 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @AF_INET, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load %struct.sockaddr_in*, %struct.sockaddr_in** %20, align 8
  %119 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %118, i32 0, i32 0
  %120 = call i32 @inet_pton(i8* %116, i8* %117, i32* %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %108, %95
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* @EXIT_FAILURE, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32, i8*, ...) @err(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %7, align 4
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %134 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @sendto(i32 %129, i8* %130, i32 %132, i32 0, %struct.sockaddr* %133, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* @EXIT_FAILURE, align 4
  %141 = call i32 (i32, i8*, ...) @err(i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %128
  %143 = load i32, i32* %8, align 4
  %144 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %145 = call i64 @read(i32 %143, i8* %144, i64 80)
  store i64 %145, i64* %11, align 8
  %146 = load i64, i64* %11, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* @EXIT_FAILURE, align 4
  %150 = call i32 @errx(i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %169

151:                                              ; preds = %142
  %152 = load i64, i64* %11, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i64, i64* @errno, align 8
  %156 = load i64, i64* @EAGAIN, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* @EXIT_FAILURE, align 4
  %160 = call i32 @errx(i32 %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %168

161:                                              ; preds = %154, %151
  %162 = load i64, i64* %11, align 8
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @EXIT_FAILURE, align 4
  %166 = call i32 (i32, i8*, ...) @err(i32 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %158
  br label %169

169:                                              ; preds = %168, %148
  ret i32 0
}

declare dso_local i32 @bzero(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @inet_pton(i8*, i8*, i32*) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
