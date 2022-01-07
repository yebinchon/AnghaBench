; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_dg.c_clnt_dg_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_dg.c_clnt_dg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.cu_socket = type { i64, i64, i8*, i32, i32, i32, i32*, i32*, i32, i64, i32*, i32, i64, i32, %struct.socket*, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__, i64, i32, i8*, i8*, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.socket = type { %struct.sockbuf }
%struct.sockbuf = type { i64, i64 }
%struct.sockaddr = type { i64 }
%struct.cu_data = type { i64, i64, i8*, i32, i32, i32, i32*, i32*, i32, i64, i32*, i32, i64, i32, %struct.socket*, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__, i64, i32, i8*, i8*, i64 }
%struct.timeval = type { i32 }
%struct.rpc_msg = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.__rpc_sockinfo = type { i32, i32 }

@RPC_UNKNOWNADDR = common dso_local global i8* null, align 8
@rpc_createerr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@RPC_TLIERROR = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"rpcrecv\00", align 1
@MAXCWND = common dso_local global i32 0, align 4
@MCALL_MSG_SIZE = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@RPC_CANTENCODEARGS = common dso_local global i8* null, align 8
@RPC_FAILED = common dso_local global i8* null, align 8
@clnt_dg_soupcall = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"clnt_dg_create(): socket already has an incompatible upcall\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cs->cs_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@clnt_dg_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cu_socket* @clnt_dg_create(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.cu_socket*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cu_socket*, align 8
  %15 = alloca %struct.cu_data*, align 8
  %16 = alloca %struct.cu_socket*, align 8
  %17 = alloca %struct.sockbuf*, align 8
  %18 = alloca %struct.timeval, align 4
  %19 = alloca %struct.rpc_msg, align 4
  %20 = alloca %struct.__rpc_sockinfo, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.cu_socket* null, %struct.cu_socket** %14, align 8
  store %struct.cu_data* null, %struct.cu_data** %15, align 8
  store %struct.cu_socket* null, %struct.cu_socket** %16, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %24 = icmp eq %struct.sockaddr* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i8*, i8** @RPC_UNKNOWNADDR, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store %struct.cu_socket* null, %struct.cu_socket** %7, align 8
  br label %266

27:                                               ; preds = %6
  %28 = load %struct.socket*, %struct.socket** %8, align 8
  %29 = call i32 @__rpc_socket2sockinfo(%struct.socket* %28, %struct.__rpc_sockinfo* %20)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** @RPC_TLIERROR, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  store %struct.cu_socket* null, %struct.cu_socket** %7, align 8
  br label %266

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %12, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @__rpc_get_t_size(i32 %35, i32 %37, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %13, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @__rpc_get_t_size(i32 %42, i32 %44, i32 %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %33
  %51 = load i64, i64* %13, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %33
  %54 = load i8*, i8** @RPC_TLIERROR, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  store %struct.cu_socket* null, %struct.cu_socket** %7, align 8
  br label %266

55:                                               ; preds = %50
  %56 = call %struct.cu_socket* @mem_alloc(i32 248)
  store %struct.cu_socket* %56, %struct.cu_socket** %14, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 3
  %59 = call i64 @rounddown(i64 %58, i32 4)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, 3
  %62 = call i64 @rounddown(i64 %61, i32 4)
  store i64 %62, i64* %13, align 8
  %63 = call %struct.cu_socket* @mem_alloc(i32 248)
  %64 = bitcast %struct.cu_socket* %63 to %struct.cu_data*
  store %struct.cu_data* %64, %struct.cu_data** %15, align 8
  %65 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %66 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %65, i32 0, i32 31
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** @FALSE, align 8
  %68 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %69 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %68, i32 0, i32 30
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @FALSE, align 8
  %71 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %72 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %71, i32 0, i32 29
  store i8* %70, i8** %72, align 8
  %73 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %74 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %73, i32 0, i32 28
  %75 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %76 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %77 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(i32* %74, %struct.sockaddr* %75, i64 %78)
  %80 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %81 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %84 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %83, i32 0, i32 27
  store i64 %82, i64* %84, align 8
  %85 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %86 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %85, i32 0, i32 26
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 3, i32* %87, align 8
  %88 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %89 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %88, i32 0, i32 26
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %92 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %91, i32 0, i32 25
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 -1, i32* %93, align 8
  %94 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %95 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %94, i32 0, i32 25
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 -1, i32* %96, align 4
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %99 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %102 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i8*, i8** @FALSE, align 8
  %104 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %105 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %104, i32 0, i32 24
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @FALSE, align 8
  %107 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %108 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %107, i32 0, i32 23
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @FALSE, align 8
  %110 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %111 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %110, i32 0, i32 22
  store i8* %109, i8** %111, align 8
  %112 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %113 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %112, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %113, align 8
  %114 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %115 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %114, i32 0, i32 21
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @MAXCWND, align 4
  %117 = sdiv i32 %116, 2
  %118 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %119 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %121 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %120, i32 0, i32 20
  store i64 0, i64* %121, align 8
  %122 = load i8*, i8** @FALSE, align 8
  %123 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %124 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %123, i32 0, i32 19
  store i8* %122, i8** %124, align 8
  %125 = call i32 @getmicrotime(%struct.timeval* %18)
  %126 = call i32 @__RPC_GETXID(%struct.timeval* %18)
  %127 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %128 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %127, i32 0, i32 18
  store i32 %126, i32* %128, align 8
  %129 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %130 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %129, i32 0, i32 18
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %11, align 4
  %137 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %19, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %140 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %139, i32 0, i32 17
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MCALL_MSG_SIZE, align 4
  %143 = load i32, i32* @XDR_ENCODE, align 4
  %144 = call i32 @xdrmem_create(i32* %21, i32 %141, i32 %142, i32 %143)
  %145 = call i32 @xdr_callhdr(i32* %21, %struct.rpc_msg* %19)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %55
  %148 = load i8*, i8** @RPC_CANTENCODEARGS, align 8
  store i8* %148, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  br label %260

149:                                              ; preds = %55
  %150 = call i32 @XDR_GETPOS(i32* %21)
  %151 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %152 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %151, i32 0, i32 16
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** @FALSE, align 8
  %154 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %155 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %154, i32 0, i32 15
  store i8* %153, i8** %155, align 8
  %156 = load %struct.socket*, %struct.socket** %8, align 8
  %157 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %158 = getelementptr inbounds %struct.cu_data, %struct.cu_data* %157, i32 0, i32 14
  store %struct.socket* %156, %struct.socket** %158, align 8
  %159 = load %struct.socket*, %struct.socket** %8, align 8
  %160 = load i64, i64* %12, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i64, i64* %13, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @soreserve(%struct.socket* %159, i32 %161, i32 %163)
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %22, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %149
  %168 = load i8*, i8** @RPC_FAILED, align 8
  store i8* %168, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  %169 = load i32, i32* %22, align 4
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  br label %260

170:                                              ; preds = %149
  %171 = load %struct.socket*, %struct.socket** %8, align 8
  %172 = getelementptr inbounds %struct.socket, %struct.socket* %171, i32 0, i32 0
  store %struct.sockbuf* %172, %struct.sockbuf** %17, align 8
  %173 = load %struct.socket*, %struct.socket** %8, align 8
  %174 = getelementptr inbounds %struct.socket, %struct.socket* %173, i32 0, i32 0
  %175 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %174)
  br label %176

176:                                              ; preds = %219, %170
  %177 = load %struct.sockbuf*, %struct.sockbuf** %17, align 8
  %178 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %176
  %182 = load %struct.sockbuf*, %struct.sockbuf** %17, align 8
  %183 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @clnt_dg_soupcall, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.socket*, %struct.socket** %8, align 8
  %189 = getelementptr inbounds %struct.socket, %struct.socket* %188, i32 0, i32 0
  %190 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %189)
  %191 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %260

192:                                              ; preds = %181
  %193 = load %struct.sockbuf*, %struct.sockbuf** %17, align 8
  %194 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to %struct.cu_socket*
  store %struct.cu_socket* %196, %struct.cu_socket** %16, align 8
  %197 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %198 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %197, i32 0, i32 13
  %199 = call i32 @mtx_lock(i32* %198)
  %200 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %201 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  %204 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %205 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %204, i32 0, i32 13
  %206 = call i32 @mtx_unlock(i32* %205)
  br label %239

207:                                              ; preds = %176
  %208 = load %struct.socket*, %struct.socket** %8, align 8
  %209 = getelementptr inbounds %struct.socket, %struct.socket* %208, i32 0, i32 0
  %210 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %209)
  %211 = call %struct.cu_socket* @mem_alloc(i32 248)
  store %struct.cu_socket* %211, %struct.cu_socket** %16, align 8
  %212 = load %struct.socket*, %struct.socket** %8, align 8
  %213 = getelementptr inbounds %struct.socket, %struct.socket* %212, i32 0, i32 0
  %214 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %213)
  %215 = load %struct.sockbuf*, %struct.sockbuf** %17, align 8
  %216 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %207
  %220 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %221 = call i32 @mem_free(%struct.cu_socket* %220, i32 248)
  br label %176

222:                                              ; preds = %207
  %223 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %224 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %223, i32 0, i32 13
  %225 = load i32, i32* @MTX_DEF, align 4
  %226 = call i32 @mtx_init(i32* %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %225)
  %227 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %228 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %227, i32 0, i32 4
  store i32 1, i32* %228, align 4
  %229 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %230 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %229, i32 0, i32 12
  store i64 0, i64* %230, align 8
  %231 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %232 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %231, i32 0, i32 11
  %233 = call i32 @TAILQ_INIT(i32* %232)
  %234 = load %struct.socket*, %struct.socket** %8, align 8
  %235 = load i32, i32* @SO_RCV, align 4
  %236 = load i64, i64* @clnt_dg_soupcall, align 8
  %237 = load %struct.cu_socket*, %struct.cu_socket** %16, align 8
  %238 = call i32 @soupcall_set(%struct.socket* %234, i32 %235, i64 %236, %struct.cu_socket* %237)
  br label %239

239:                                              ; preds = %222, %192
  %240 = load %struct.socket*, %struct.socket** %8, align 8
  %241 = getelementptr inbounds %struct.socket, %struct.socket* %240, i32 0, i32 0
  %242 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %241)
  %243 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  %244 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %243, i32 0, i32 5
  store i32 1, i32* %244, align 8
  %245 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  %246 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %245, i32 0, i32 10
  store i32* @clnt_dg_ops, i32** %246, align 8
  %247 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %248 = bitcast %struct.cu_data* %247 to i8*
  %249 = ptrtoint i8* %248 to i64
  %250 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  %251 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %250, i32 0, i32 9
  store i64 %249, i64* %251, align 8
  %252 = call i32 (...) @authnone_create()
  %253 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  %254 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %253, i32 0, i32 8
  store i32 %252, i32* %254, align 8
  %255 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  %256 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %255, i32 0, i32 7
  store i32* null, i32** %256, align 8
  %257 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  %258 = getelementptr inbounds %struct.cu_socket, %struct.cu_socket* %257, i32 0, i32 6
  store i32* null, i32** %258, align 8
  %259 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  store %struct.cu_socket* %259, %struct.cu_socket** %7, align 8
  br label %266

260:                                              ; preds = %187, %167, %147
  %261 = load %struct.cu_socket*, %struct.cu_socket** %14, align 8
  %262 = call i32 @mem_free(%struct.cu_socket* %261, i32 248)
  %263 = load %struct.cu_data*, %struct.cu_data** %15, align 8
  %264 = bitcast %struct.cu_data* %263 to %struct.cu_socket*
  %265 = call i32 @mem_free(%struct.cu_socket* %264, i32 248)
  store %struct.cu_socket* null, %struct.cu_socket** %7, align 8
  br label %266

266:                                              ; preds = %260, %239, %53, %31, %25
  %267 = load %struct.cu_socket*, %struct.cu_socket** %7, align 8
  ret %struct.cu_socket* %267
}

declare dso_local i32 @__rpc_socket2sockinfo(%struct.socket*, %struct.__rpc_sockinfo*) #1

declare dso_local i64 @__rpc_get_t_size(i32, i32, i32) #1

declare dso_local %struct.cu_socket* @mem_alloc(i32) #1

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i64) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @__RPC_GETXID(%struct.timeval*) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_callhdr(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mem_free(%struct.cu_socket*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @soupcall_set(%struct.socket*, i32, i64, %struct.cu_socket*) #1

declare dso_local i32 @authnone_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
