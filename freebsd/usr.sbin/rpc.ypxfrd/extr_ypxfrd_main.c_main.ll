; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypxfrd/extr_ypxfrd_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypxfrd/extr_ypxfrd_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"p:h\00", align 1
@optarg = common dso_local global i32 0, align 4
@yp_dir = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@_rpcfdtype = common dso_local global i64 0, align 8
@_rpcpmstart = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rpc.ypxfrd\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@_PATH_CONSOLE = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@TIOCNOTTY = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@YPXFRD_FREEBSD_PROG = common dso_local global i32 0, align 4
@YPXFRD_FREEBSD_VERS = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot create udp service.\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@ypxfrd_freebsd_prog_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"unable to register (YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, udp).\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"cannot create tcp service.\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"unable to register (YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, tcp).\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"could not create a handle\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@closedown = common dso_local global i64 0, align 8
@_RPCSVC_CLOSEDOWN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@reaper = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 8, i32* %10, align 4
  br label %16

16:                                               ; preds = %27, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %11, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %25 [
    i32 112, label %23
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @optarg, align 4
  store i32 %24, i32* @yp_dir, align 4
  br label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %23
  br label %16

28:                                               ; preds = %16
  %29 = call i32 (...) @load_securenets()
  %30 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %31 = call i64 @getsockname(i32 0, %struct.sockaddr* %30, i32* %10)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  store i32 4, i32* %12, align 4
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %33
  %41 = load i32, i32* @SOL_SOCKET, align 4
  %42 = load i32, i32* @SO_TYPE, align 4
  %43 = call i32 @getsockopt(i32 0, i32 %41, i32 %42, i8* bitcast (i64* @_rpcfdtype to i8*), i32* %12)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  store i32 1, i32* @_rpcpmstart, align 4
  store i32 0, i32* %8, align 4
  %48 = load i32, i32* @LOG_PID, align 4
  %49 = load i32, i32* @LOG_DAEMON, align 4
  %50 = call i32 @openlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %99

51:                                               ; preds = %28
  %52 = call i32 (...) @fork()
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @exit(i32 0) #3
  unreachable

62:                                               ; preds = %57
  %63 = call i32 (...) @getdtablesize()
  store i32 %63, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %71, %62
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @close(i32 %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %64

74:                                               ; preds = %64
  %75 = load i32, i32* @_PATH_CONSOLE, align 4
  %76 = call i32 @open(i32 %75, i32 2)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @dup2(i32 %77, i32 1)
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @dup2(i32 %79, i32 2)
  %81 = load i32, i32* @_PATH_TTY, align 4
  %82 = call i32 @open(i32 %81, i32 2)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @TIOCNOTTY, align 4
  %88 = call i32 @ioctl(i32 %86, i32 %87, i8* null)
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @close(i32 %89)
  br label %91

91:                                               ; preds = %85, %74
  %92 = load i32, i32* @LOG_PID, align 4
  %93 = load i32, i32* @LOG_DAEMON, align 4
  %94 = call i32 @openlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @YPXFRD_FREEBSD_PROG, align 4
  %97 = load i32, i32* @YPXFRD_FREEBSD_VERS, align 4
  %98 = call i32 @pmap_unset(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %47
  %100 = load i64, i64* @_rpcfdtype, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* @_rpcfdtype, align 8
  %104 = load i64, i64* @SOCK_DGRAM, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %7, align 4
  %108 = call i32* @svcudp_create(i32 %107)
  store i32* %108, i32** %6, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = call i32 @_msgout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %113 = call i32 @exit(i32 1) #3
  unreachable

114:                                              ; preds = %106
  %115 = load i32, i32* @_rpcpmstart, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @YPXFRD_FREEBSD_PROG, align 4
  %122 = load i32, i32* @YPXFRD_FREEBSD_VERS, align 4
  %123 = load i32, i32* @ypxfrd_freebsd_prog_1, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @svc_register(i32* %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = call i32 @_msgout(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %129 = call i32 @exit(i32 1) #3
  unreachable

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %102
  %132 = load i64, i64* @_rpcfdtype, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* @_rpcfdtype, align 8
  %136 = load i64, i64* @SOCK_STREAM, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %163

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %7, align 4
  %140 = call i32* @svctcp_create(i32 %139, i32 0, i32 0)
  store i32* %140, i32** %6, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = call i32 @_msgout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %145 = call i32 @exit(i32 1) #3
  unreachable

146:                                              ; preds = %138
  %147 = load i32, i32* @_rpcpmstart, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %149, %146
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* @YPXFRD_FREEBSD_PROG, align 4
  %154 = load i32, i32* @YPXFRD_FREEBSD_VERS, align 4
  %155 = load i32, i32* @ypxfrd_freebsd_prog_1, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @svc_register(i32* %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %151
  %160 = call i32 @_msgout(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %134
  %164 = load i32*, i32** %6, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = call i32 @_msgout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %168 = call i32 @exit(i32 1) #3
  unreachable

169:                                              ; preds = %163
  %170 = load i32, i32* @_rpcpmstart, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load i32, i32* @SIGALRM, align 4
  %174 = load i64, i64* @closedown, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @signal(i32 %173, i32 %175)
  %177 = load i32, i32* @_RPCSVC_CLOSEDOWN, align 4
  %178 = sdiv i32 %177, 2
  %179 = call i32 @alarm(i32 %178)
  br label %180

180:                                              ; preds = %172, %169
  %181 = load i32, i32* @SIGPIPE, align 4
  %182 = load i32, i32* @SIG_IGN, align 4
  %183 = call i32 @signal(i32 %181, i32 %182)
  %184 = load i32, i32* @SIGCHLD, align 4
  %185 = load i64, i64* @reaper, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @signal(i32 %184, i32 %186)
  %188 = load i32, i32* @SIGTERM, align 4
  %189 = load i64, i64* @reaper, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @signal(i32 %188, i32 %190)
  %192 = load i32, i32* @SIGINT, align 4
  %193 = load i64, i64* @reaper, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @signal(i32 %192, i32 %194)
  %196 = load i32, i32* @SIGHUP, align 4
  %197 = load i64, i64* @reaper, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @signal(i32 %196, i32 %198)
  %200 = call i32 (...) @ypxfrd_svc_run()
  %201 = call i32 @_msgout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %202 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @load_securenets(...) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getdtablesize(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @pmap_unset(i32, i32) #1

declare dso_local i32* @svcudp_create(i32) #1

declare dso_local i32 @_msgout(i8*) #1

declare dso_local i32 @svc_register(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @svctcp_create(i32, i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @ypxfrd_svc_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
