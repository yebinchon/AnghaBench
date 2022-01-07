; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, %struct.TYPE_9__, i8*, %struct.svc_rpc_gss_cookedcred*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.svc_rpc_gss_cookedcred*, i32* }
%struct.svc_rpc_gss_cookedcred = type { i64, i64, %struct.svc_rpc_gss_client* }
%struct.svc_rpc_gss_client = type { i8*, %struct.TYPE_10__, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rpc_msg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.rpc_gss_cred = type { i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.svc_rpc_gss_clientid* }
%struct.svc_rpc_gss_clientid = type { i32 }
%struct.rpc_gss_init_res = type { i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_7__ }

@.str = private unnamed_addr constant [17 x i8] c"in svc_rpc_gss()\00", align 1
@_null_auth = common dso_local global i8* null, align 8
@AUTH_BADCRED = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@RPCSEC_GSS_VERSION = common dso_local global i64 0, align 8
@RPCSEC_GSS_CREDPROBLEM = common dso_local global i32 0, align 4
@MAXSEQ = common dso_local global i64 0, align 8
@RPCSEC_GSS_CTXPROBLEM = common dso_local global i32 0, align 4
@rpc_gss_svc_none = common dso_local global i64 0, align 8
@rpc_gss_svc_integrity = common dso_local global i64 0, align 8
@rpc_gss_svc_privacy = common dso_local global i64 0, align 8
@NULLPROC = common dso_local global i32 0, align 4
@AUTH_REJECTEDCRED = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@xdr_rpc_gss_init_res = common dso_local global i64 0, align 8
@AUTH_FAILED = common dso_local global i32 0, align 4
@CLIENT_ESTABLISHED = common dso_local global i32 0, align 4
@RPCSEC_GSS_NODISPATCH = common dso_local global i32 0, align 4
@svc_auth_gss_ops = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AUTH_BADVERF = common dso_local global i32 0, align 4
@AUTH_OK = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rpc_gss(%struct.svc_req* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_rpc_gss_cookedcred*, align 8
  %9 = alloca %struct.svc_rpc_gss_client*, align 8
  %10 = alloca %struct.rpc_gss_cred, align 8
  %11 = alloca %struct.rpc_gss_init_res, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.svc_rpc_gss_clientid*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %16 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @svc_rpc_gss_timeout_clients()
  %18 = load i8*, i8** @_null_auth, align 8
  %19 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %20 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %27, i32* %3, align 4
  br label %385

28:                                               ; preds = %2
  %29 = bitcast %struct.rpc_gss_cred* %10 to %struct.rpc_gss_init_res*
  %30 = call i32 @memset(%struct.rpc_gss_init_res* %29, i32 0, i32 64)
  %31 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %32 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %36 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XDR_DECODE, align 4
  %40 = call i32 @xdrmem_create(i32* %7, i32 %34, i32 %38, i32 %39)
  %41 = bitcast %struct.rpc_gss_cred* %10 to %struct.rpc_gss_init_res*
  %42 = call i32 @xdr_rpc_gss_cred(i32* %7, %struct.rpc_gss_init_res* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %28
  %45 = call i32 @XDR_DESTROY(i32* %7)
  %46 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %46, i32* %3, align 4
  br label %385

47:                                               ; preds = %28
  %48 = call i32 @XDR_DESTROY(i32* %7)
  store %struct.svc_rpc_gss_client* null, %struct.svc_rpc_gss_client** %9, align 8
  %49 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RPCSEC_GSS_VERSION, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %54, i32* %14, align 4
  br label %375

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %65, i32* %14, align 4
  br label %375

66:                                               ; preds = %59
  %67 = call %struct.svc_rpc_gss_client* (...) @svc_rpc_gss_create_client()
  store %struct.svc_rpc_gss_client* %67, %struct.svc_rpc_gss_client** %9, align 8
  br label %86

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 4
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %74, i32* %14, align 4
  br label %375

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.svc_rpc_gss_clientid*, %struct.svc_rpc_gss_clientid** %77, align 8
  store %struct.svc_rpc_gss_clientid* %78, %struct.svc_rpc_gss_clientid** %15, align 8
  %79 = load %struct.svc_rpc_gss_clientid*, %struct.svc_rpc_gss_clientid** %15, align 8
  %80 = call %struct.svc_rpc_gss_client* @svc_rpc_gss_find_client(%struct.svc_rpc_gss_clientid* %79)
  store %struct.svc_rpc_gss_client* %80, %struct.svc_rpc_gss_client** %9, align 8
  %81 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %82 = icmp ne %struct.svc_rpc_gss_client* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @RPCSEC_GSS_CREDPROBLEM, align 4
  store i32 %84, i32* %14, align 4
  br label %375

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %66
  %87 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %88 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %87, i32 0, i32 3
  %89 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %88, align 8
  store %struct.svc_rpc_gss_cookedcred* %89, %struct.svc_rpc_gss_cookedcred** %8, align 8
  %90 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %91 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %8, align 8
  %92 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %91, i32 0, i32 2
  store %struct.svc_rpc_gss_client* %90, %struct.svc_rpc_gss_client** %92, align 8
  %93 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %8, align 8
  %96 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %8, align 8
  %100 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 128
  br i1 %103, label %104, label %133

104:                                              ; preds = %86
  %105 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 131
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MAXSEQ, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @RPCSEC_GSS_CTXPROBLEM, align 4
  store i32 %114, i32* %14, align 4
  br label %375

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @rpc_gss_svc_none, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @rpc_gss_svc_integrity, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @rpc_gss_svc_privacy, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %131, i32* %14, align 4
  br label %375

132:                                              ; preds = %125, %120, %115
  br label %133

133:                                              ; preds = %132, %104, %86
  %134 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %372 [
    i32 128, label %136
    i32 131, label %136
    i32 130, label %201
    i32 129, label %201
  ]

136:                                              ; preds = %133, %133
  %137 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %138 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NULLPROC, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %143, i32* %14, align 4
  br label %374

144:                                              ; preds = %136
  %145 = call i32 @memset(%struct.rpc_gss_init_res* %11, i32 0, i32 64)
  %146 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %147 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %148 = bitcast %struct.rpc_gss_cred* %10 to %struct.rpc_gss_init_res*
  %149 = call i32 @svc_rpc_gss_accept_sec_context(%struct.svc_rpc_gss_client* %146, %struct.svc_req* %147, %struct.rpc_gss_init_res* %11, %struct.rpc_gss_init_res* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %144
  %152 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %152, i32* %14, align 4
  br label %374

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %11, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @GSS_S_COMPLETE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %153
  %159 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %160 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %164 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %166 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %167 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %11, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @svc_rpc_gss_nextverf(%struct.svc_rpc_gss_client* %165, %struct.svc_req* %166, i64 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %158
  %172 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %172, i32* %14, align 4
  br label %374

173:                                              ; preds = %158
  br label %178

174:                                              ; preds = %153
  %175 = load i8*, i8** @_null_auth, align 8
  %176 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %177 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %174, %173
  %179 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %180 = load i64, i64* @xdr_rpc_gss_init_res, align 8
  %181 = trunc i64 %180 to i32
  %182 = ptrtoint %struct.rpc_gss_init_res* %11 to i32
  %183 = call i32 @svc_sendreply(%struct.svc_req* %179, i32 %181, i32 %182)
  store i32 %183, i32* %13, align 4
  %184 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %11, i32 0, i32 6
  %185 = call i32 @gss_release_buffer(i32* %6, i32* %184)
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %178
  %189 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %189, i32* %14, align 4
  br label %374

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %11, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @GSS_S_COMPLETE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i32, i32* @CLIENT_ESTABLISHED, align 4
  %197 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %198 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %195, %190
  %200 = load i32, i32* @RPCSEC_GSS_NODISPATCH, align 4
  store i32 %200, i32* %14, align 4
  br label %374

201:                                              ; preds = %133, %133
  %202 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %203 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @svc_rpc_gss_check_replay(%struct.svc_rpc_gss_client* %202, i64 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %201
  %208 = load i32, i32* @RPCSEC_GSS_NODISPATCH, align 4
  store i32 %208, i32* %14, align 4
  br label %374

209:                                              ; preds = %201
  %210 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %211 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %212 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @svc_rpc_gss_validate(%struct.svc_rpc_gss_client* %210, %struct.rpc_msg* %211, i8** %12, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %209
  %217 = load i32, i32* @RPCSEC_GSS_CREDPROBLEM, align 4
  store i32 %217, i32* %14, align 4
  br label %374

218:                                              ; preds = %209
  %219 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %220 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %224 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  %225 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %226 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %227 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @svc_rpc_gss_nextverf(%struct.svc_rpc_gss_client* %225, %struct.svc_req* %226, i64 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %218
  %232 = load i32, i32* @RPCSEC_GSS_CTXPROBLEM, align 4
  store i32 %232, i32* %14, align 4
  br label %374

233:                                              ; preds = %218
  %234 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %235 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @svc_rpc_gss_update_seq(%struct.svc_rpc_gss_client* %234, i64 %236)
  %238 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %239 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %238, i32 0, i32 5
  %240 = call i32 @refcount_acquire(i32* %239)
  %241 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %242 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  store i32* @svc_auth_gss_ops, i32** %243, align 8
  %244 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %8, align 8
  %245 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %246 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  store %struct.svc_rpc_gss_cookedcred* %244, %struct.svc_rpc_gss_cookedcred** %247, align 8
  %248 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 130
  br i1 %250, label %251, label %350

251:                                              ; preds = %233
  %252 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %253 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %252, i32 0, i32 3
  %254 = call i32 @sx_xlock(i32* %253)
  %255 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %256 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %285, label %259

259:                                              ; preds = %251
  %260 = load i32, i32* @TRUE, align 4
  %261 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %262 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 8
  %263 = load i8*, i8** %12, align 8
  %264 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %265 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %264, i32 0, i32 0
  store i8* %263, i8** %265, align 8
  %266 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %267 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load i8*, i8** %12, align 8
  %271 = call i8* @_rpc_gss_num_to_qop(i32 %269, i8* %270)
  %272 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %273 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 2
  store i8* %271, i8** %274, align 8
  %275 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %276 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %277 = call i32 @svc_rpc_gss_callback(%struct.svc_rpc_gss_client* %275, %struct.svc_req* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %259
  %280 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %280, i32* %14, align 4
  %281 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %282 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %281, i32 0, i32 3
  %283 = call i32 @sx_xunlock(i32* %282)
  br label %374

284:                                              ; preds = %259
  br label %285

285:                                              ; preds = %284, %251
  %286 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %287 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %286, i32 0, i32 3
  %288 = call i32 @sx_xunlock(i32* %287)
  %289 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %290 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %313

293:                                              ; preds = %285
  %294 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %295 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %297, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %293
  %302 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %302, i32* %14, align 4
  br label %374

303:                                              ; preds = %293
  %304 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %305 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load i8*, i8** %12, align 8
  %308 = icmp ne i8* %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %303
  %310 = load i32, i32* @AUTH_BADVERF, align 4
  store i32 %310, i32* %14, align 4
  br label %374

311:                                              ; preds = %303
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312, %285
  %314 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %315 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = load i8*, i8** %12, align 8
  %318 = icmp ne i8* %316, %317
  br i1 %318, label %319, label %332

319:                                              ; preds = %313
  %320 = load i8*, i8** %12, align 8
  %321 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %322 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %321, i32 0, i32 0
  store i8* %320, i8** %322, align 8
  %323 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %324 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i8*, i8** %12, align 8
  %328 = call i8* @_rpc_gss_num_to_qop(i32 %326, i8* %327)
  %329 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %330 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 2
  store i8* %328, i8** %331, align 8
  br label %332

332:                                              ; preds = %319, %313
  %333 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %334 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %336, %338
  br i1 %339, label %340, label %348

340:                                              ; preds = %332
  %341 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %10, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %344 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  store i64 %342, i64* %345, align 8
  %346 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %347 = call i32 @svc_rpc_gss_set_flavor(%struct.svc_rpc_gss_client* %346)
  br label %348

348:                                              ; preds = %340, %332
  %349 = load i32, i32* @AUTH_OK, align 4
  store i32 %349, i32* %14, align 4
  br label %371

350:                                              ; preds = %233
  %351 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %352 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @NULLPROC, align 4
  %355 = icmp ne i32 %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %357, i32* %14, align 4
  br label %374

358:                                              ; preds = %350
  %359 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %360 = load i64, i64* @xdr_void, align 8
  %361 = trunc i64 %360 to i32
  %362 = call i32 @svc_sendreply(%struct.svc_req* %359, i32 %361, i32 0)
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %13, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %358
  %366 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %366, i32* %14, align 4
  br label %374

367:                                              ; preds = %358
  %368 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %369 = call i32 @svc_rpc_gss_forget_client(%struct.svc_rpc_gss_client* %368)
  %370 = load i32, i32* @RPCSEC_GSS_NODISPATCH, align 4
  store i32 %370, i32* %14, align 4
  br label %374

371:                                              ; preds = %348
  br label %374

372:                                              ; preds = %133
  %373 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %373, i32* %14, align 4
  br label %374

374:                                              ; preds = %372, %371, %367, %365, %356, %309, %301, %279, %231, %216, %207, %199, %188, %171, %151, %142
  br label %375

375:                                              ; preds = %374, %130, %113, %83, %73, %64, %53
  %376 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %377 = icmp ne %struct.svc_rpc_gss_client* %376, null
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %9, align 8
  %380 = call i32 @svc_rpc_gss_release_client(%struct.svc_rpc_gss_client* %379)
  br label %381

381:                                              ; preds = %378, %375
  %382 = bitcast %struct.rpc_gss_cred* %10 to i8*
  %383 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.rpc_gss_init_res*)* @xdr_rpc_gss_cred to i32), i8* %382)
  %384 = load i32, i32* %14, align 4
  store i32 %384, i32* %3, align 4
  br label %385

385:                                              ; preds = %381, %44, %26
  %386 = load i32, i32* %3, align 4
  ret i32 %386
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local i32 @svc_rpc_gss_timeout_clients(...) #1

declare dso_local i32 @memset(%struct.rpc_gss_init_res*, i32, i32) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_rpc_gss_cred(i32*, %struct.rpc_gss_init_res*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local %struct.svc_rpc_gss_client* @svc_rpc_gss_create_client(...) #1

declare dso_local %struct.svc_rpc_gss_client* @svc_rpc_gss_find_client(%struct.svc_rpc_gss_clientid*) #1

declare dso_local i32 @svc_rpc_gss_accept_sec_context(%struct.svc_rpc_gss_client*, %struct.svc_req*, %struct.rpc_gss_init_res*, %struct.rpc_gss_init_res*) #1

declare dso_local i32 @svc_rpc_gss_nextverf(%struct.svc_rpc_gss_client*, %struct.svc_req*, i64) #1

declare dso_local i32 @svc_sendreply(%struct.svc_req*, i32, i32) #1

declare dso_local i32 @gss_release_buffer(i32*, i32*) #1

declare dso_local i32 @svc_rpc_gss_check_replay(%struct.svc_rpc_gss_client*, i64) #1

declare dso_local i32 @svc_rpc_gss_validate(%struct.svc_rpc_gss_client*, %struct.rpc_msg*, i8**, i32) #1

declare dso_local i32 @svc_rpc_gss_update_seq(%struct.svc_rpc_gss_client*, i64) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i8* @_rpc_gss_num_to_qop(i32, i8*) #1

declare dso_local i32 @svc_rpc_gss_callback(%struct.svc_rpc_gss_client*, %struct.svc_req*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @svc_rpc_gss_set_flavor(%struct.svc_rpc_gss_client*) #1

declare dso_local i32 @svc_rpc_gss_forget_client(%struct.svc_rpc_gss_client*) #1

declare dso_local i32 @svc_rpc_gss_release_client(%struct.svc_rpc_gss_client*) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
