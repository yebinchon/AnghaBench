; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_init_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_init_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, i32, i32, i32, i32, %struct.dcons_port* }
%struct.dcons_port = type { i32, i32, i32, i32, i32, %struct.addrinfo* }
%struct.addrinfo = type { i32, i32, i64, i32, i32, i32 }
%struct.kevent = type { i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@tc_set = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s:%d for port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tcp/%s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@EV_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcons_state*, i32, i8*, i32)* @dconschat_init_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dconschat_init_socket(%struct.dcons_state* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dcons_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x i8], align 1
  %14 = alloca %struct.kevent, align 4
  %15 = alloca %struct.dcons_port*, align 8
  store %struct.dcons_state* %0, %struct.dcons_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %11, align 4
  %16 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %17 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %16, i32 0, i32 5
  %18 = load %struct.dcons_port*, %struct.dcons_port** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %18, i64 %20
  store %struct.dcons_port* %21, %struct.dcons_port** %15, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %24 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %27 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %29 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %28, i32 0, i32 3
  store i32 -1, i32* %29, align 4
  %30 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %31 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %30, i32 0, i32 2
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %197

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %35
  %39 = load i32, i32* @STDIN_FILENO, align 4
  %40 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %41 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @STDOUT_FILENO, align 4
  %43 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %44 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %46 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %45, i32 0, i32 4
  store i32 -1, i32* %46, align 8
  %47 = load i32, i32* @tc_set, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %38
  %50 = load i32, i32* @STDIN_FILENO, align 4
  %51 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %52 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %51, i32 0, i32 4
  %53 = call i64 @tcgetattr(i32 %50, i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %57 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %60 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %62 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %61, i32 0, i32 3
  %63 = call i32 @cfmakeraw(i32* %62)
  %64 = load i32, i32* @STDIN_FILENO, align 4
  %65 = load i32, i32* @TCSADRAIN, align 4
  %66 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %67 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %66, i32 0, i32 3
  %68 = call i32 @tcsetattr(i32 %64, i32 %65, i32* %67)
  store i32 1, i32* @tc_set, align 4
  br label %69

69:                                               ; preds = %55, %49, %38
  %70 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %71 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EVFILT_READ, align 4
  %74 = load i32, i32* @EV_ADD, align 4
  %75 = load i32, i32* @NOTE_LOWAT, align 4
  %76 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %77 = bitcast %struct.dcons_port* %76 to i8*
  %78 = call i32 @EV_SET(%struct.kevent* %14, i32 %72, i32 %73, i32 %74, i32 %75, i32 1, i8* %77)
  %79 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %80 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %83 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %82, i32 0, i32 2
  %84 = call i32 @kevent(i32 %81, %struct.kevent* %14, i32 1, i32* null, i32 0, i32* %83)
  br label %197

85:                                               ; preds = %35
  %86 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 32)
  %87 = load i32, i32* @AI_PASSIVE, align 4
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 5
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* @PF_INET, align 4
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @SOCK_STREAM, align 4
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 3
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load i64, i64* @verbose, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %85
  %97 = load i8*, i8** %7, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %99 ], [ %101, %100 ]
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %85
  %108 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @snprintf(i8* %108, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %113 = call i32 @getaddrinfo(i8* %111, i8* %112, %struct.addrinfo* %9, %struct.addrinfo** %10)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @gai_strerror(i32 %118)
  %120 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %117, i32 %119)
  br label %121

121:                                              ; preds = %116, %107
  %122 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %123 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %124 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %123, i32 0, i32 5
  store %struct.addrinfo* %122, %struct.addrinfo** %124, align 8
  %125 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %132 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @socket(i32 %127, i32 %130, i64 %133)
  %135 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %136 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %138 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %121
  %142 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %121
  %144 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %145 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SOL_SOCKET, align 4
  %148 = load i32, i32* @SO_REUSEADDR, align 4
  %149 = call i32 @setsockopt(i32 %146, i32 %147, i32 %148, i32* %11, i32 4)
  %150 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %151 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %154 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %153, i32 0, i32 5
  %155 = load %struct.addrinfo*, %struct.addrinfo** %154, align 8
  %156 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %159 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %158, i32 0, i32 5
  %160 = load %struct.addrinfo*, %struct.addrinfo** %159, align 8
  %161 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @bind(i32 %152, i32 %157, i32 %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %143
  %166 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %143
  %168 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %169 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @listen(i32 %170, i32 1)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %167
  %176 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %177 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @EVFILT_READ, align 4
  %180 = load i32, i32* @EV_ADD, align 4
  %181 = load i32, i32* @EV_ONESHOT, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.dcons_port*, %struct.dcons_port** %15, align 8
  %184 = bitcast %struct.dcons_port* %183 to i8*
  %185 = call i32 @EV_SET(%struct.kevent* %14, i32 %178, i32 %179, i32 %182, i32 0, i32 0, i8* %184)
  %186 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %187 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.dcons_state*, %struct.dcons_state** %5, align 8
  %190 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %189, i32 0, i32 0
  %191 = call i32 @kevent(i32 %188, %struct.kevent* %14, i32 1, i32* null, i32 0, i32* %190)
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %175
  %195 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %175
  br label %197

197:                                              ; preds = %196, %69, %34
  ret void
}

declare dso_local i64 @tcgetattr(i32, i32*) #1

declare dso_local i32 @cfmakeraw(i32*) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
