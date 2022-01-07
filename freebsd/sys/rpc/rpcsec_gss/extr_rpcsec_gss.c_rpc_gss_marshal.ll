; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opaque_auth = type { i8*, i8*, i8* }
%struct.mbuf = type { i32 }
%struct.rpc_gss_data = type { i64, %struct.rpc_gss_cred, i32, i32, i32, i32, i32 }
%struct.rpc_gss_cred = type { i64, i64, i8* }
%struct.rpc_pending_request = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"in rpc_gss_marshal()\00", align 1
@XDR_ENCODE = common dso_local global i32 0, align 4
@RPC_GSS_ER_SYSTEMERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RPCSEC_GSS = common dso_local global i8* null, align 8
@RPCSEC_GSS_INIT = common dso_local global i64 0, align 8
@RPCSEC_GSS_CONTINUE_INIT = common dso_local global i64 0, align 8
@_null_auth = common dso_local global %struct.opaque_auth zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@pr_link = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@RPCSEC_GSS_ESTABLISHED = common dso_local global i64 0, align 8
@rpc_gss_svc_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, %struct.mbuf*)* @rpc_gss_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_gss_marshal(i32* %0, i8* %1, i32* %2, %struct.mbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.rpc_gss_data*, align 8
  %11 = alloca %struct.rpc_pending_request*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rpc_gss_cred, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.opaque_auth, align 8
  %18 = alloca %struct.opaque_auth, align 8
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  %25 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %30)
  store %struct.rpc_gss_data* %31, %struct.rpc_gss_data** %10, align 8
  %32 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %33 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %32, i32 0, i32 1
  %34 = bitcast %struct.rpc_gss_cred* %14 to i8*
  %35 = bitcast %struct.rpc_gss_cred* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  %36 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %37 = call i8* @rpc_gss_alloc_seq(%struct.rpc_gss_data* %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %14, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = trunc i64 %26 to i32
  %41 = load i32, i32* @XDR_ENCODE, align 4
  %42 = call i32 @xdrmem_create(i32* %13, i8* %28, i32 %40, i32 %41)
  %43 = call i32 @xdr_rpc_gss_cred(i32* %13, %struct.rpc_gss_cred* %14)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %4
  %46 = call i32 @XDR_DESTROY(i32* %13)
  %47 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @_rpc_gss_set_error(i32 %47, i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

51:                                               ; preds = %4
  %52 = load i8*, i8** @RPCSEC_GSS, align 8
  %53 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %17, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %17, i32 0, i32 0
  store i8* %28, i8** %54, align 8
  %55 = call i8* @XDR_GETPOS(i32* %13)
  %56 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %17, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = call i32 @XDR_DESTROY(i32* %13)
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @xdr_opaque_auth(i32* %58, %struct.opaque_auth* %17)
  %60 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %61 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RPCSEC_GSS_INIT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %51
  %67 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %68 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RPCSEC_GSS_CONTINUE_INIT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %66, %51
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @xdr_opaque_auth(i32* %74, %struct.opaque_auth* @_null_auth)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @_rpc_gss_set_error(i32 %78, i32 %79)
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

82:                                               ; preds = %73
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %85 = call i32 @xdrmbuf_append(i32* %83, %struct.mbuf* %84)
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

87:                                               ; preds = %66
  %88 = call %struct.rpc_pending_request* @mem_alloc(i32 16)
  store %struct.rpc_pending_request* %88, %struct.rpc_pending_request** %11, align 8
  %89 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %90 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %89, i32 0, i32 5
  %91 = call i32 @mtx_lock(i32* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.rpc_pending_request*, %struct.rpc_pending_request** %11, align 8
  %94 = getelementptr inbounds %struct.rpc_pending_request, %struct.rpc_pending_request* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load %struct.rpc_pending_request*, %struct.rpc_pending_request** %11, align 8
  %97 = getelementptr inbounds %struct.rpc_pending_request, %struct.rpc_pending_request* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %99 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %98, i32 0, i32 6
  %100 = load %struct.rpc_pending_request*, %struct.rpc_pending_request** %11, align 8
  %101 = load i32, i32* @pr_link, align 4
  %102 = call i32 @LIST_INSERT_HEAD(i32* %99, %struct.rpc_pending_request* %100, i32 %101)
  %103 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %104 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %103, i32 0, i32 5
  %105 = call i32 @mtx_unlock(i32* %104)
  %106 = load i32*, i32** %8, align 8
  %107 = call i8* @XDR_GETPOS(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @XDR_SETPOS(i32* %109, i32 0)
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @XDR_INLINE(i32* %111, i8* %113)
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %117 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %120 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @gss_get_mic(i64* %22, i32 %118, i32 %121, %struct.TYPE_5__* %19, %struct.TYPE_5__* %20)
  store i64 %122, i64* %21, align 8
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* @GSS_S_COMPLETE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %87
  %127 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %128 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %21, align 8
  %131 = load i64, i64* %22, align 8
  %132 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @TRUE, align 4
  %139 = call i32 @rpc_gss_destroy_context(i32* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %126
  %141 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %142 = load i32, i32* @EPERM, align 4
  %143 = call i32 @_rpc_gss_set_error(i32 %141, i32 %142)
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

145:                                              ; preds = %87
  %146 = load i8*, i8** @RPCSEC_GSS, align 8
  %147 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %18, i32 0, i32 2
  store i8* %146, i8** %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %18, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %18, i32 0, i32 1
  store i8* %152, i8** %153, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @xdr_opaque_auth(i32* %154, %struct.opaque_auth* %18)
  store i32 %155, i32* %23, align 4
  %156 = call i32 @gss_release_buffer(i64* %22, %struct.TYPE_5__* %20)
  %157 = load i32, i32* %23, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %145
  %160 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = call i32 @_rpc_gss_set_error(i32 %160, i32 %161)
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

164:                                              ; preds = %145
  %165 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %166 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %164
  %171 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %172 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @rpc_gss_svc_none, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170, %164
  %178 = load i32*, i32** %8, align 8
  %179 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %180 = call i32 @xdrmbuf_append(i32* %178, %struct.mbuf* %179)
  %181 = load i32, i32* @TRUE, align 4
  store i32 %181, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

182:                                              ; preds = %170
  %183 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %184 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %187 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %190 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 @xdr_rpc_gss_wrap_data(%struct.mbuf** %9, i32 %185, i32 %188, i64 %192, i8* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %182
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

198:                                              ; preds = %182
  %199 = load i32*, i32** %8, align 8
  %200 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %201 = call i32 @xdrmbuf_append(i32* %199, %struct.mbuf* %200)
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %203

203:                                              ; preds = %198, %196, %177, %159, %140, %82, %77, %45
  %204 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rpc_gss_log_debug(i8*) #2

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @rpc_gss_alloc_seq(%struct.rpc_gss_data*) #2

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #2

declare dso_local i32 @xdr_rpc_gss_cred(i32*, %struct.rpc_gss_cred*) #2

declare dso_local i32 @XDR_DESTROY(i32*) #2

declare dso_local i32 @_rpc_gss_set_error(i32, i32) #2

declare dso_local i8* @XDR_GETPOS(i32*) #2

declare dso_local i32 @xdr_opaque_auth(i32*, %struct.opaque_auth*) #2

declare dso_local i32 @xdrmbuf_append(i32*, %struct.mbuf*) #2

declare dso_local %struct.rpc_pending_request* @mem_alloc(i32) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.rpc_pending_request*, i32) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @XDR_SETPOS(i32*, i32) #2

declare dso_local i8* @XDR_INLINE(i32*, i8*) #2

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*) #2

declare dso_local i32 @rpc_gss_log_status(i8*, i32, i64, i64) #2

declare dso_local i32 @rpc_gss_destroy_context(i32*, i32) #2

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_5__*) #2

declare dso_local i32 @xdr_rpc_gss_wrap_data(%struct.mbuf**, i32, i32, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
