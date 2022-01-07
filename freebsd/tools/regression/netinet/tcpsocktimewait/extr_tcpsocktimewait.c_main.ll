; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsocktimewait/extr_tcpsocktimewait.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpsocktimewait/extr_tcpsocktimewait.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Using port %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @SIGCHLD, align 4
  %13 = load i32, i32* @SIG_IGN, align 4
  %14 = call i64 @signal(i32 %12, i32 %13)
  %15 = load i64, i64* @SIG_ERR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* @PF_INET, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  %28 = call i32 @bzero(%struct.sockaddr_in* %6, i32 24)
  %29 = load i8*, i8** @AF_INET, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 24, i32* %31, align 8
  %32 = load i32, i32* @INADDR_LOOPBACK, align 4
  %33 = call i8* @htonl(i32 %32)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %38 = call i64 @bind(i32 %36, %struct.sockaddr* %37, i32 24)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %27
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @listen(i32 %43, i32 -1)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = call i32 @bzero(%struct.sockaddr_in* %6, i32 24)
  %50 = load i8*, i8** @AF_INET, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 24, i32* %52, align 8
  store i32 24, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %55 = call i64 @getsockname(i32 %53, %struct.sockaddr* %54, i32* %10)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %48
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = call i64 (...) @getpid()
  store i64 %65, i64* %8, align 8
  %66 = call i64 (...) @fork()
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %59
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = call i64 (...) @getpid()
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @tcp_server(i64 %76, i32 %77)
  %79 = call i32 @exit(i32 0) #3
  unreachable

80:                                               ; preds = %71
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @tcp_client(i64 %81, i32 %82, i32 1)
  br label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* @SIGTERM, align 4
  %87 = call i32 @kill(i64 %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @close(i32 %88)
  %90 = call i32 @sleep(i32 5)
  %91 = load i32, i32* @PF_INET, align 4
  %92 = load i32, i32* @SOCK_STREAM, align 4
  %93 = call i32 @socket(i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %84
  %99 = call i32 @bzero(%struct.sockaddr_in* %6, i32 24)
  %100 = load i8*, i8** @AF_INET, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 24, i32* %102, align 8
  %103 = load i32, i32* @INADDR_LOOPBACK, align 4
  %104 = call i8* @htonl(i32 %103)
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %109 = call i64 @bind(i32 %107, %struct.sockaddr* %108, i32 24)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %98
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @listen(i32 %114, i32 -1)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %113
  %120 = call i32 @bzero(%struct.sockaddr_in* %6, i32 24)
  %121 = load i8*, i8** @AF_INET, align 8
  %122 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 24, i32* %123, align 8
  store i32 24, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %126 = call i64 @getsockname(i32 %124, %struct.sockaddr* %125, i32* %10)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = call i32 @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %119
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @ntohs(i32 %133)
  %135 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = call i64 (...) @getpid()
  store i64 %136, i64* %8, align 8
  %137 = call i64 (...) @fork()
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %7, align 8
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %130
  %143 = load i64, i64* %7, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = call i64 (...) @getpid()
  store i64 %146, i64* %7, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @tcp_server(i64 %147, i32 %148)
  br label %154

150:                                              ; preds = %142
  %151 = load i64, i64* %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @tcp_client(i64 %151, i32 %152, i32 800)
  br label %154

154:                                              ; preds = %150, %145
  ret i32 0
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @tcp_server(i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @tcp_client(i64, i32, i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
