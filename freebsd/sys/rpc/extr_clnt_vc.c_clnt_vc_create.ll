; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_vc.c_clnt_vc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_vc.c_clnt_vc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ct_data = type { i8*, i32, i32, i32, i64, i32*, %struct.socket*, i32, %struct.ct_data*, i32*, i8*, i64, i32, i32, i64, i32, %struct.TYPE_8__, i64, i8*, i8*, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.socket = type { i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.timeval = type { i32 }
%struct.rpc_msg = type { %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.__rpc_sockinfo = type { i32, i32 }
%struct.sockopt = type { i32*, i32, i32, i64, i8* }

@clnt_vc_create.disrupt = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"ct->ct_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISCONFIRMING = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"connec\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@PR_CONNREQUIRED = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i8* null, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCP_NODELAY = common dso_local global i32 0, align 4
@CALL = common dso_local global i32 0, align 4
@RPC_MSG_VERSION = common dso_local global i32 0, align 4
@MCALL_MSG_SIZE = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rpcrecv\00", align 1
@clnt_vc_ops = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@clnt_vc_soupcall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ct_data* @clnt_vc_create(%struct.socket* %0, %struct.sockaddr* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.ct_data*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ct_data*, align 8
  %17 = alloca %struct.ct_data*, align 8
  %18 = alloca %struct.timeval, align 4
  %19 = alloca %struct.rpc_msg, align 8
  %20 = alloca %struct.__rpc_sockinfo, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.sockopt, align 8
  store %struct.socket* %0, %struct.socket** %9, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.ct_data* null, %struct.ct_data** %17, align 8
  store i32 1, i32* %24, align 4
  %27 = load i64, i64* @clnt_vc_create.disrupt, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = ptrtoint %struct.sockaddr* %30 to i64
  store i64 %31, i64* @clnt_vc_create.disrupt, align 8
  br label %32

32:                                               ; preds = %29, %7
  %33 = call i64 @mem_alloc(i32 152)
  %34 = inttoptr i64 %33 to %struct.ct_data*
  store %struct.ct_data* %34, %struct.ct_data** %16, align 8
  %35 = call i64 @mem_alloc(i32 152)
  %36 = inttoptr i64 %35 to %struct.ct_data*
  store %struct.ct_data* %36, %struct.ct_data** %17, align 8
  %37 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %38 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %37, i32 0, i32 2
  %39 = load i32, i32* @MTX_DEF, align 4
  %40 = call i32 @mtx_init(i32* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %39)
  %41 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %42 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %41, i32 0, i32 20
  store i64 0, i64* %42, align 8
  %43 = load i8*, i8** @FALSE, align 8
  %44 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %45 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %44, i32 0, i32 19
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %48 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %47, i32 0, i32 18
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %50 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %49, i32 0, i32 17
  store i64 0, i64* %50, align 8
  %51 = load %struct.socket*, %struct.socket** %9, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SS_ISCONNECTED, align 4
  %55 = load i32, i32* @SS_ISCONFIRMING, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %136

59:                                               ; preds = %32
  %60 = load %struct.socket*, %struct.socket** %9, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %62 = load i32, i32* @curthread, align 4
  %63 = call i32 @soconnect(%struct.socket* %60, %struct.sockaddr* %61, i32 %62)
  store i32 %63, i32* %22, align 4
  %64 = load %struct.socket*, %struct.socket** %9, align 8
  %65 = call i32 @SOCK_LOCK(%struct.socket* %64)
  store i32 0, i32* %23, align 4
  %66 = load i32, i32* @PSOCK, align 4
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @PCATCH, align 4
  %71 = load i32, i32* %25, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %25, align 4
  br label %73

73:                                               ; preds = %69, %59
  br label %74

74:                                               ; preds = %107, %73
  %75 = load %struct.socket*, %struct.socket** %9, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SS_ISCONNECTING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.socket*, %struct.socket** %9, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br label %86

86:                                               ; preds = %81, %74
  %87 = phi i1 [ false, %74 ], [ %85, %81 ]
  br i1 %87, label %88, label %108

88:                                               ; preds = %86
  %89 = load %struct.socket*, %struct.socket** %9, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 4
  %91 = load %struct.socket*, %struct.socket** %9, align 8
  %92 = call i32 @SOCK_MTX(%struct.socket* %91)
  %93 = load i32, i32* %25, align 4
  %94 = call i32 @msleep(i32* %90, i32 %92, i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* @EINTR, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* @ERESTART, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %97
  store i32 1, i32* %23, align 4
  br label %106

106:                                              ; preds = %105, %101
  br label %108

107:                                              ; preds = %88
  br label %74

108:                                              ; preds = %106, %86
  %109 = load i32, i32* %22, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.socket*, %struct.socket** %9, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %22, align 4
  %115 = load %struct.socket*, %struct.socket** %9, align 8
  %116 = getelementptr inbounds %struct.socket, %struct.socket* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %108
  %118 = load %struct.socket*, %struct.socket** %9, align 8
  %119 = call i32 @SOCK_UNLOCK(%struct.socket* %118)
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load i32, i32* %23, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @SS_ISCONNECTING, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.socket*, %struct.socket** %9, align 8
  %129 = getelementptr inbounds %struct.socket, %struct.socket* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %125, %122
  %133 = load i32, i32* @RPC_SYSTEMERROR, align 4
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 4
  %134 = load i32, i32* %22, align 4
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0, i32 0), align 4
  br label %321

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135, %32
  %137 = load %struct.socket*, %struct.socket** %9, align 8
  %138 = call i32 @__rpc_socket2sockinfo(%struct.socket* %137, %struct.__rpc_sockinfo* %20)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  br label %321

141:                                              ; preds = %136
  %142 = load %struct.socket*, %struct.socket** %9, align 8
  %143 = getelementptr inbounds %struct.socket, %struct.socket* %142, i32 0, i32 3
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @PR_CONNREQUIRED, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %141
  %151 = call i32 @bzero(%struct.sockopt* %26, i32 32)
  %152 = load i8*, i8** @SOPT_SET, align 8
  %153 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 4
  store i8* %152, i8** %153, align 8
  %154 = load i64, i64* @SOL_SOCKET, align 8
  %155 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 3
  store i64 %154, i64* %155, align 8
  %156 = load i32, i32* @SO_KEEPALIVE, align 4
  %157 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 0
  store i32* %24, i32** %158, align 8
  %159 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 1
  store i32 4, i32* %159, align 8
  %160 = load %struct.socket*, %struct.socket** %9, align 8
  %161 = call i32 @sosetopt(%struct.socket* %160, %struct.sockopt* %26)
  br label %162

162:                                              ; preds = %150, %141
  %163 = load %struct.socket*, %struct.socket** %9, align 8
  %164 = getelementptr inbounds %struct.socket, %struct.socket* %163, i32 0, i32 3
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @IPPROTO_TCP, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %162
  %171 = call i32 @bzero(%struct.sockopt* %26, i32 32)
  %172 = load i8*, i8** @SOPT_SET, align 8
  %173 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 4
  store i8* %172, i8** %173, align 8
  %174 = load i64, i64* @IPPROTO_TCP, align 8
  %175 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 3
  store i64 %174, i64* %175, align 8
  %176 = load i32, i32* @TCP_NODELAY, align 4
  %177 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 2
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 0
  store i32* %24, i32** %178, align 8
  %179 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 1
  store i32 4, i32* %179, align 8
  %180 = load %struct.socket*, %struct.socket** %9, align 8
  %181 = call i32 @sosetopt(%struct.socket* %180, %struct.sockopt* %26)
  br label %182

182:                                              ; preds = %170, %162
  %183 = load i8*, i8** @FALSE, align 8
  %184 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %185 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %184, i32 0, i32 10
  store i8* %183, i8** %185, align 8
  %186 = load %struct.socket*, %struct.socket** %9, align 8
  %187 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %188 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %187, i32 0, i32 6
  store %struct.socket* %186, %struct.socket** %188, align 8
  %189 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %190 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %189, i32 0, i32 16
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 -1, i32* %191, align 4
  %192 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %193 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %192, i32 0, i32 16
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i32 -1, i32* %194, align 4
  %195 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %196 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %195, i32 0, i32 15
  %197 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %198 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %199 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @memcpy(i32* %196, %struct.sockaddr* %197, i32 %200)
  %202 = call i32 @getmicrotime(%struct.timeval* %18)
  %203 = load i64, i64* @clnt_vc_create.disrupt, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* @clnt_vc_create.disrupt, align 8
  %205 = call i64 @__RPC_GETXID(%struct.timeval* %18)
  %206 = xor i64 %204, %205
  %207 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %208 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %207, i32 0, i32 14
  store i64 %206, i64* %208, align 8
  %209 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %210 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %209, i32 0, i32 14
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 2
  store i64 %211, i64* %212, align 8
  %213 = load i32, i32* @CALL, align 4
  %214 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 1
  store i32 %213, i32* %214, align 8
  %215 = load i32, i32* @RPC_MSG_VERSION, align 4
  %216 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load i64, i64* %11, align 8
  %219 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  %221 = load i64, i64* %12, align 8
  %222 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %225 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %224, i32 0, i32 13
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @MCALL_MSG_SIZE, align 4
  %228 = load i32, i32* @XDR_ENCODE, align 4
  %229 = call i32 @xdrmem_create(i32* %21, i32 %226, i32 %227, i32 %228)
  %230 = call i32 @xdr_callhdr(i32* %21, %struct.rpc_msg* %19)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %182
  %233 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %234 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %233, i32 0, i32 10
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %239 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %238, i32 0, i32 6
  %240 = load %struct.socket*, %struct.socket** %239, align 8
  %241 = call i32 @soclose(%struct.socket* %240)
  br label %242

242:                                              ; preds = %237, %232
  br label %321

243:                                              ; preds = %182
  %244 = call i32 @XDR_GETPOS(i32* %21)
  %245 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %246 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %245, i32 0, i32 12
  store i32 %244, i32* %246, align 8
  %247 = call i32 @XDR_DESTROY(i32* %21)
  %248 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %249 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %248, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %249, align 8
  %250 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %251 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %250, i32 0, i32 11
  store i64 0, i64* %251, align 8
  %252 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i64, i64* %13, align 8
  %257 = trunc i64 %256 to i32
  %258 = call i64 @__rpc_get_t_size(i32 %253, i32 %255, i32 %257)
  store i64 %258, i64* %13, align 8
  %259 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i64, i64* %14, align 8
  %264 = trunc i64 %263 to i32
  %265 = call i64 @__rpc_get_t_size(i32 %260, i32 %262, i32 %264)
  store i64 %265, i64* %14, align 8
  %266 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %267 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %266, i32 0, i32 6
  %268 = load %struct.socket*, %struct.socket** %267, align 8
  %269 = load i64, i64* %13, align 8
  %270 = load i64, i64* %14, align 8
  %271 = call i32 @soreserve(%struct.socket* %268, i64 %269, i64 %270)
  store i32 %271, i32* %22, align 4
  %272 = load i32, i32* %22, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %243
  %275 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %276 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %275, i32 0, i32 10
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %281 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %280, i32 0, i32 6
  %282 = load %struct.socket*, %struct.socket** %281, align 8
  %283 = call i32 @soclose(%struct.socket* %282)
  br label %284

284:                                              ; preds = %279, %274
  br label %321

285:                                              ; preds = %243
  %286 = load %struct.ct_data*, %struct.ct_data** %16, align 8
  %287 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %286, i32 0, i32 1
  store i32 1, i32* %287, align 8
  %288 = load %struct.ct_data*, %struct.ct_data** %16, align 8
  %289 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %288, i32 0, i32 9
  store i32* @clnt_vc_ops, i32** %289, align 8
  %290 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %291 = load %struct.ct_data*, %struct.ct_data** %16, align 8
  %292 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %291, i32 0, i32 8
  store %struct.ct_data* %290, %struct.ct_data** %292, align 8
  %293 = call i32 (...) @authnone_create()
  %294 = load %struct.ct_data*, %struct.ct_data** %16, align 8
  %295 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %294, i32 0, i32 7
  store i32 %293, i32* %295, align 8
  %296 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %297 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %296, i32 0, i32 6
  %298 = load %struct.socket*, %struct.socket** %297, align 8
  %299 = getelementptr inbounds %struct.socket, %struct.socket* %298, i32 0, i32 2
  %300 = call i32 @SOCKBUF_LOCK(i32* %299)
  %301 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %302 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %301, i32 0, i32 6
  %303 = load %struct.socket*, %struct.socket** %302, align 8
  %304 = load i32, i32* @SO_RCV, align 4
  %305 = load i32, i32* @clnt_vc_soupcall, align 4
  %306 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %307 = call i32 @soupcall_set(%struct.socket* %303, i32 %304, i32 %305, %struct.ct_data* %306)
  %308 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %309 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %308, i32 0, i32 6
  %310 = load %struct.socket*, %struct.socket** %309, align 8
  %311 = getelementptr inbounds %struct.socket, %struct.socket* %310, i32 0, i32 2
  %312 = call i32 @SOCKBUF_UNLOCK(i32* %311)
  %313 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %314 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %313, i32 0, i32 5
  store i32* null, i32** %314, align 8
  %315 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %316 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %315, i32 0, i32 4
  store i64 0, i64* %316, align 8
  %317 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %318 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %317, i32 0, i32 3
  %319 = call i32 @TAILQ_INIT(i32* %318)
  %320 = load %struct.ct_data*, %struct.ct_data** %16, align 8
  store %struct.ct_data* %320, %struct.ct_data** %8, align 8
  br label %329

321:                                              ; preds = %284, %242, %140, %132
  %322 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %323 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %322, i32 0, i32 2
  %324 = call i32 @mtx_destroy(i32* %323)
  %325 = load %struct.ct_data*, %struct.ct_data** %17, align 8
  %326 = call i32 @mem_free(%struct.ct_data* %325, i32 152)
  %327 = load %struct.ct_data*, %struct.ct_data** %16, align 8
  %328 = call i32 @mem_free(%struct.ct_data* %327, i32 152)
  store %struct.ct_data* null, %struct.ct_data** %8, align 8
  br label %329

329:                                              ; preds = %321, %285
  %330 = load %struct.ct_data*, %struct.ct_data** %8, align 8
  ret %struct.ct_data* %330
}

declare dso_local i64 @mem_alloc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @soconnect(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @SOCK_MTX(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @__rpc_socket2sockinfo(%struct.socket*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @bzero(%struct.sockopt*, i32) #1

declare dso_local i32 @sosetopt(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i64 @__RPC_GETXID(%struct.timeval*) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_callhdr(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local i64 @__rpc_get_t_size(i32, i32, i32) #1

declare dso_local i32 @soreserve(%struct.socket*, i64, i64) #1

declare dso_local i32 @authnone_create(...) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soupcall_set(%struct.socket*, i32, i32, %struct.ct_data*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @mem_free(%struct.ct_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
