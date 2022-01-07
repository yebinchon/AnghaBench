; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipmulticast/extr_ipmulticast.c_recv_loop_with_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipmulticast/extr_ipmulticast.c_recv_loop_with_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@RXBUFSIZE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@timeout = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getnameinfo: %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"Waiting %d seconds for inbound traffic on group %s\0AExpecting no traffic from blocked source: %s\0A\00", align 1
@signal_handler = common dso_local global i32 0, align 4
@jmpbuf = common dso_local global i32 0, align 4
@dodebug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"debug: packet received from %s\0A\00", align 1
@doverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"Number of datagrams received from non-blocked sources: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"interrupted\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"FAIL: got packet from blocked source\0A\00", align 1
@EX_IOERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.TYPE_9__*)* @recv_loop_with_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_loop_with_match(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %18 = load i32, i32* @NI_MAXHOST, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @RXBUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load i32, i32* @NI_MAXHOST, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* @timeout, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %152

39:                                               ; preds = %3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NI_MAXHOST, align 4
  %47 = load i32, i32* @NI_NUMERICHOST, align 4
  %48 = call i32 @getnameinfo(%struct.TYPE_10__* %41, i32 %45, i8* %21, i32 %46, i32* null, i32 0, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @gai_strerror(i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %152

57:                                               ; preds = %39
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NI_MAXHOST, align 4
  %65 = load i32, i32* @NI_NUMERICHOST, align 4
  %66 = call i32 @getnameinfo(%struct.TYPE_10__* %59, i32 %63, i8* %27, i32 %64, i32* null, i32 0, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i8* @gai_strerror(i32 %71)
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %152

75:                                               ; preds = %57
  %76 = load i32, i32* @stdout, align 4
  %77 = load i64, i64* @timeout, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %21, i8* %27)
  %80 = load i32, i32* @signal_handler, align 4
  %81 = call i32 @signal(i32 128, i32 %80)
  %82 = load i32, i32* @signal_handler, align 4
  %83 = call i32 @signal(i32 129, i32 %82)
  store i32 0, i32* %8, align 4
  store i64 0, i64* %13, align 8
  %84 = load i64, i64* @timeout, align 8
  %85 = call i32 @alarm(i64 %84)
  br label %86

86:                                               ; preds = %122, %75
  %87 = load i32, i32* @jmpbuf, align 4
  %88 = call i32 @setjmp(i32 %87) #4
  store i32 %88, i32* %14, align 4
  %89 = icmp eq i32 0, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @RXBUFSIZE, align 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = call i32 @recvfrom(i32 %91, i8* %24, i32 %92, i32 0, %struct.TYPE_10__* %93, i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i64, i64* @dodebug, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load i32, i32* @stderr, align 4
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @inet_ntoa(i64 %104)
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %99, %90
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = icmp ne %struct.TYPE_9__* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %125

122:                                              ; preds = %110, %107
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %13, align 8
  br label %86

125:                                              ; preds = %121, %86
  %126 = load i64, i64* @doverbose, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* @stderr, align 4
  %130 = load i64, i64* %13, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i32, i32* %14, align 4
  switch i32 %134, label %143 [
    i32 129, label %135
    i32 128, label %136
    i32 0, label %139
  ]

135:                                              ; preds = %133
  br label %146

136:                                              ; preds = %133
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 20, i32* %8, align 4
  br label %146

139:                                              ; preds = %133
  %140 = load i32, i32* @stderr, align 4
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @EX_IOERR, align 4
  store i32 %142, i32* %8, align 4
  br label %146

143:                                              ; preds = %133
  %144 = call i32 @warnx(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* @EX_OSERR, align 4
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %143, %139, %136, %135
  %147 = load i32, i32* @SIG_DFL, align 4
  %148 = call i32 @signal(i32 128, i32 %147)
  %149 = load i32, i32* @SIG_DFL, align 4
  %150 = call i32 @signal(i32 129, i32 %149)
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %152

152:                                              ; preds = %146, %69, %51, %38
  %153 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @getnameinfo(%struct.TYPE_10__*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @alarm(i64) #2

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #3

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.TYPE_10__*, i32*) #2

declare dso_local i8* @inet_ntoa(i64) #2

declare dso_local i32 @warnx(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
