; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_kqueue/extr_listen_kqueue.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_kqueue/extr_listen_kqueue.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.kevent = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@SO_REUSEADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"ioctl(FIONBIO)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca [2 x %struct.kevent], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = call i32 (...) @kqueue()
  store i32 %12, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* @PF_INET, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = call i32 @socket(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %3, i64 0, i64 0
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @EVFILT_READ, align 4
  %27 = load i32, i32* @EV_ADD, align 4
  %28 = load i32, i32* @EV_CLEAR, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @EV_SET(%struct.kevent* %24, i32 %25, i32 %26, i32 %29, i32 0, i32 0, i32* null)
  %31 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %3, i64 0, i64 1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EVFILT_WRITE, align 4
  %34 = load i32, i32* @EV_ADD, align 4
  %35 = load i32, i32* @EV_CLEAR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @EV_SET(%struct.kevent* %31, i32 %32, i32 %33, i32 %36, i32 0, i32 0, i32* null)
  store i32 1, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_NOSIGPIPE, align 4
  %41 = call i32 @setsockopt(i32 %38, i32 %39, i32 %40, i32* %7, i32 4)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %23
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %3, i64 0, i64 0
  %48 = call i32 @kevent(i32 %46, %struct.kevent* %47, i32 2, %struct.kevent* null, i32 0, i32* null)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SOL_SOCKET, align 4
  %55 = load i32, i32* @SO_REUSEADDR, align 4
  %56 = call i32 @setsockopt(i32 %53, i32 %54, i32 %55, i32* %7, i32 4)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  %61 = call i32 @memset(%struct.sockaddr_in* %2, i32 0, i32 8)
  %62 = load i32, i32* @AF_INET, align 4
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = call i32 @htons(i32 10000)
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %68 = call i32 @bind(i32 %66, %struct.sockaddr* %67, i32 8)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %60
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @listen(i32 %73, i32 128)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @FIONBIO, align 4
  %81 = call i32 @ioctl(i32 %79, i32 %80, i32* %7)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %5, align 4
  %87 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %3, i64 0, i64 0
  %88 = call i32 @kevent(i32 %86, %struct.kevent* %87, i32 2, %struct.kevent* null, i32 0, i32* null)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = call i32 (...) @fork()
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @close(i32 %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* @PF_INET, align 4
  %109 = load i32, i32* @SOCK_STREAM, align 4
  %110 = call i32 @socket(i32 %108, i32 %109, i32 0)
  store i32 %110, i32* %6, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %6, align 4
  %116 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %117 = call i32 @connect(i32 %115, %struct.sockaddr* %116, i32 8)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  br label %163

122:                                              ; preds = %98
  %123 = load i32, i32* %5, align 4
  %124 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %3, i64 0, i64 0
  %125 = call i32 @kevent(i32 %123, %struct.kevent* null, i32 0, %struct.kevent* %124, i32 2, i32* null)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %122
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %159, %130
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %162

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %3, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.kevent, %struct.kevent* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %135
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %3, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.kevent, %struct.kevent* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %151 = call i32 @accept(i64 %149, %struct.sockaddr* %150, i32* %4)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %144
  %157 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %135
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %131

162:                                              ; preds = %131
  br label %163

163:                                              ; preds = %162, %121
  %164 = load i32, i32* %1, align 4
  ret i32 %164
}

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
