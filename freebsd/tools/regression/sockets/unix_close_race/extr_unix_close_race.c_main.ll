; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_close_race/extr_unix_close_race.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_close_race/extr_unix_close_race.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"kern.smp.cpus\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"kern.smp.cpus: invalid length\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"SMP not present, test may be unable to trigger race\00", align 1
@socket_path = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"mkstemp failed\00", align 1
@AF_LOCAL = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"parent: socket error\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"parent: bind error\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"parent: listen error\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@LOOPS = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"parent: connect error\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"parent: close error\00", align 1
@USLEEP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"child: accept error\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"child: close error\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_un, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 4, i64* %8, align 8
  %9 = call i64 @sysctlbyname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %7, i64* %8, i32* null, i32 0)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @socket_path, align 4
  %25 = call i32 @mkstemp(i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* @socket_path, align 4
  %31 = call i32 @unlink(i32 %30)
  %32 = load i8*, i8** @AF_LOCAL, align 8
  %33 = load i32, i32* @SOCK_STREAM, align 4
  %34 = call i32 @socket(i8* %32, i32 %33, i32 0)
  store i32 %34, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32, i32* @socket_path, align 4
  %40 = call i32 @unlink(i32 %39)
  %41 = call i32 @bzero(%struct.sockaddr_un* %2, i32 16)
  %42 = load i8*, i8** @AF_LOCAL, align 8
  %43 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %2, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @socket_path, align 4
  %47 = call i32 @strcpy(i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = bitcast %struct.sockaddr_un* %2 to %struct.sockaddr*
  %50 = call i64 @bind(i32 %48, %struct.sockaddr* %49, i32 16)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %38
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @listen(i32 %55, i32 1024)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = call i32 (...) @fork()
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @close(i32 %70)
  %72 = call i32 @sleep(i32 1)
  %73 = call i32 @bzero(%struct.sockaddr_un* %2, i32 16)
  %74 = load i8*, i8** @AF_LOCAL, align 8
  %75 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %2, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %2, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @socket_path, align 4
  %79 = call i32 @strcpy(i32 %77, i32 %78)
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %116, %69
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @LOOPS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %80
  %85 = load i8*, i8** @AF_LOCAL, align 8
  %86 = load i32, i32* @SOCK_STREAM, align 4
  %87 = call i32 @socket(i8* %85, i32 %86, i32 0)
  store i32 %87, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @SIGTERM, align 4
  %92 = call i32 @kill(i32 %90, i32 %91)
  %93 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %4, align 4
  %96 = bitcast %struct.sockaddr_un* %2 to %struct.sockaddr*
  %97 = call i64 @connect(i32 %95, %struct.sockaddr* %96, i32 16)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @SIGTERM, align 4
  %102 = call i32 @kill(i32 %100, i32 %101)
  %103 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %4, align 4
  %106 = call i64 @close(i32 %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @SIGTERM, align 4
  %111 = call i32 @kill(i32 %109, i32 %110)
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* @USLEEP, align 4
  %115 = call i32 @usleep(i32 %114)
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %80

119:                                              ; preds = %80
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @SIGTERM, align 4
  %122 = call i32 @kill(i32 %120, i32 %121)
  br label %137

123:                                              ; preds = %66
  br label %124

124:                                              ; preds = %136, %123
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @accept(i32 %125, %struct.sockaddr* null, i32* null)
  store i32 %126, i32* %4, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @close(i32 %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %130
  br label %124

137:                                              ; preds = %119
  %138 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %139 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mkstemp(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @socket(i8*, i32, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
