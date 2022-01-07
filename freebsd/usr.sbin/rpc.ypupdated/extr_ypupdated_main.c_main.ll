; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_ypupdated_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_ypupdated_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"p:h\00", align 1
@optarg = common dso_local global i32 0, align 4
@yp_dir = common dso_local global i32 0, align 4
@AUTH_DES = common dso_local global i32 0, align 4
@_svcauth_des = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register AUTH_DES flavor\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@_rpcfdtype = common dso_local global i64 0, align 8
@_rpcpmstart = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"rpc.ypupdatedd\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"rpc.ypupdated\00", align 1
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@YPU_PROG = common dso_local global i32 0, align 4
@YPU_VERS = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"cannot create udp service.\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@ypu_prog_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"unable to register (YPU_PROG, YPU_VERS, udp).\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"cannot create tcp service.\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"unable to register (YPU_PROG, YPU_VERS, tcp).\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"could not create a handle\00", align 1
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
@.str.10 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 8, i32* %10, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %22 [
    i32 112, label %20
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @optarg, align 4
  store i32 %21, i32* @yp_dir, align 4
  br label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22, %20
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* @AUTH_DES, align 4
  %27 = load i32, i32* @_svcauth_des, align 4
  %28 = call i32 @svc_auth_reg(i32 %26, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @yp_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %25
  %34 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %35 = call i64 @getsockname(i32 0, %struct.sockaddr* %34, i32* %10)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  store i32 4, i32* %12, align 4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %37
  %45 = load i32, i32* @SOL_SOCKET, align 4
  %46 = load i32, i32* @SO_TYPE, align 4
  %47 = call i32 @getsockopt(i32 0, i32 %45, i32 %46, i8* bitcast (i64* @_rpcfdtype to i8*), i32* %12)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  store i32 1, i32* @_rpcpmstart, align 4
  store i32 0, i32* %8, align 4
  %52 = load i32, i32* @LOG_PID, align 4
  %53 = load i32, i32* @LOG_DAEMON, align 4
  %54 = call i32 @openlog(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  br label %68

55:                                               ; preds = %33
  %56 = call i64 @daemon(i32 0, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* @LOG_PID, align 4
  %62 = load i32, i32* @LOG_DAEMON, align 4
  %63 = call i32 @openlog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @YPU_PROG, align 4
  %66 = load i32, i32* @YPU_VERS, align 4
  %67 = call i32 @pmap_unset(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %51
  %69 = load i64, i64* @_rpcfdtype, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* @_rpcfdtype, align 8
  %73 = load i64, i64* @SOCK_DGRAM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %7, align 4
  %77 = call i32* @svcudp_create(i32 %76)
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = call i32 @_msgout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %75
  %84 = load i32, i32* @_rpcpmstart, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @YPU_PROG, align 4
  %91 = load i32, i32* @YPU_VERS, align 4
  %92 = load i32, i32* @ypu_prog_1, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @svc_register(i32* %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = call i32 @_msgout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %71
  %101 = load i64, i64* @_rpcfdtype, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* @_rpcfdtype, align 8
  %105 = load i64, i64* @SOCK_STREAM, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %7, align 4
  %109 = call i32* @svctcp_create(i32 %108, i32 0, i32 0)
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = call i32 @_msgout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %107
  %116 = load i32, i32* @_rpcpmstart, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* @YPU_PROG, align 4
  %123 = load i32, i32* @YPU_VERS, align 4
  %124 = load i32, i32* @ypu_prog_1, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @svc_register(i32* %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %120
  %129 = call i32 @_msgout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %130 = call i32 @exit(i32 1) #3
  unreachable

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %103
  %133 = load i32*, i32** %6, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = call i32 @_msgout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %132
  %139 = load i32, i32* @_rpcpmstart, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* @SIGALRM, align 4
  %143 = load i64, i64* @closedown, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @signal(i32 %142, i32 %144)
  %146 = load i32, i32* @_RPCSVC_CLOSEDOWN, align 4
  %147 = sdiv i32 %146, 2
  %148 = call i32 @alarm(i32 %147)
  br label %149

149:                                              ; preds = %141, %138
  %150 = load i32, i32* @SIGPIPE, align 4
  %151 = load i32, i32* @SIG_IGN, align 4
  %152 = call i32 @signal(i32 %150, i32 %151)
  %153 = load i32, i32* @SIGCHLD, align 4
  %154 = load i64, i64* @reaper, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @signal(i32 %153, i32 %155)
  %157 = load i32, i32* @SIGTERM, align 4
  %158 = load i64, i64* @reaper, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @signal(i32 %157, i32 %159)
  %161 = load i32, i32* @SIGINT, align 4
  %162 = load i64, i64* @reaper, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @signal(i32 %161, i32 %163)
  %165 = load i32, i32* @SIGHUP, align 4
  %166 = load i64, i64* @reaper, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @signal(i32 %165, i32 %167)
  %169 = call i32 (...) @ypupdated_svc_run()
  %170 = call i32 @_msgout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %171 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @svc_auth_reg(i32, i32) #1

declare dso_local i32 @yp_error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pmap_unset(i32, i32) #1

declare dso_local i32* @svcudp_create(i32) #1

declare dso_local i32 @_msgout(i8*) #1

declare dso_local i32 @svc_register(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @svctcp_create(i32, i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @ypupdated_svc_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
