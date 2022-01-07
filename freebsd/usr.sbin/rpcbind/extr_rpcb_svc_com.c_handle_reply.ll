; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_handle_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_handle_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_msg = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.rpc_err = type { i64 }
%struct.finfo = type { i8*, i32 }
%struct.r_rmtcall_args = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@RPC_BUF_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@debugging = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"handle_reply:  recvfrom returned %d, errno %d\0A\00", align 1
@_null_auth = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@XDR_DECODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"handle_reply:  xdr_replymsg failed\0A\00", align 1
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"handle_reply:  %s\0A\00", align 1
@xdr_rmtcall_result = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @handle_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_reply(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_msg, align 8
  %7 = alloca %struct.rpc_err, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.finfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.r_rmtcall_args, align 8
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %16 = load i32, i32* @RPC_BUF_MAX, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %128

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %35, %21
  store i32 4, i32* %15, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @RPC_BUF_MAX, align 4
  %26 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  %27 = call i32 @recvfrom(i32 %23, i8* %24, i32 %25, i32 0, %struct.sockaddr* %26, i32* %15)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINTR, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %22, label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i64, i64* @debugging, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %40
  br label %128

49:                                               ; preds = %37
  %50 = load i32, i32* @_null_auth, align 4
  %51 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* @xdr_void, align 8
  %57 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @XDR_DECODE, align 4
  %63 = call i32 @xdrmem_create(i32* %5, i8* %60, i32 %61, i32 %62)
  %64 = call i32 @xdr_replymsg(i32* %5, %struct.rpc_msg* %6)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %49
  %67 = load i64, i64* @debugging, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  br label %128

73:                                               ; preds = %49
  %74 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.finfo* @forward_find(i32 %75)
  store %struct.finfo* %76, %struct.finfo** %9, align 8
  %77 = load %struct.finfo*, %struct.finfo** %9, align 8
  %78 = icmp eq %struct.finfo* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %128

80:                                               ; preds = %73
  %81 = call i32 @_seterr_reply(%struct.rpc_msg* %6, %struct.rpc_err* %7)
  %82 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RPC_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i64, i64* @debugging, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %7, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @clnt_sperrno(i64 %92)
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %89, %86
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.finfo*, %struct.finfo** %9, align 8
  %98 = call i32 @send_svcsyserr(i32* %96, %struct.finfo* %97)
  br label %128

99:                                               ; preds = %80
  %100 = call i32 @XDR_GETPOS(i32* %5)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %12, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %13, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %12, align 4
  %111 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %13, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.finfo*, %struct.finfo** %9, align 8
  %114 = getelementptr inbounds %struct.finfo, %struct.finfo* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %13, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  %117 = load %struct.finfo*, %struct.finfo** %9, align 8
  %118 = getelementptr inbounds %struct.finfo, %struct.finfo* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %13, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.finfo*, %struct.finfo** %9, align 8
  %123 = call i32 @xprt_set_caller(i32* %121, %struct.finfo* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load i64, i64* @xdr_rmtcall_result, align 8
  %126 = bitcast %struct.r_rmtcall_args* %13 to i8*
  %127 = call i32 @svc_sendreply(i32* %124, i64 %125, i8* %126)
  br label %128

128:                                              ; preds = %99, %95, %79, %72, %48, %20
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @free(i8* %129)
  %131 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %139

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @free_slot_by_xid(i32 %137)
  br label %139

139:                                              ; preds = %135, %134
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #1

declare dso_local i32 @xdr_replymsg(i32*, %struct.rpc_msg*) #1

declare dso_local %struct.finfo* @forward_find(i32) #1

declare dso_local i32 @_seterr_reply(%struct.rpc_msg*, %struct.rpc_err*) #1

declare dso_local i8* @clnt_sperrno(i64) #1

declare dso_local i32 @send_svcsyserr(i32*, %struct.finfo*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @xprt_set_caller(i32*, %struct.finfo*) #1

declare dso_local i32 @svc_sendreply(i32*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_slot_by_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
