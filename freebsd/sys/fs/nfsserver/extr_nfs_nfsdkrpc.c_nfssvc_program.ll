; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfssvc_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfssvc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i64, i64, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.nfsrv_descript = type { i64, i32, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*, %struct.sockaddr*, i32, %struct.TYPE_7__*, i32 }
%struct.sockaddr = type { i32 }
%struct.nfsrvcache = type { i32 }
%struct.sockaddr_in = type { i64, i32, i32 }

@NFS_VER2 = common dso_local global i64 0, align 8
@NFSV2PROC_STATFS = common dso_local global i64 0, align 8
@newnfs_nfsv3_procid = common dso_local global i64* null, align 8
@NFSPROC_NOOP = common dso_local global i64 0, align 8
@ND_NFSV2 = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i64 0, align 8
@NFS_V3NPROCS = common dso_local global i64 0, align 8
@ND_NFSV3 = common dso_local global i32 0, align 4
@NFSPROC_NULL = common dso_local global i64 0, align 8
@NFSV4PROC_COMPOUND = common dso_local global i64 0, align 8
@ND_NFSV4 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@nfs_privport = common dso_local global i64 0, align 8
@IPPORT_RESERVED = common dso_local global i64 0, align 8
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS request from unprivileged port (%s:%d)\0A\00", align 1
@RPCSEC_GSS_KRB5 = common dso_local global i32 0, align 4
@ND_GSS = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5I = common dso_local global i32 0, align 4
@ND_GSSINTEGRITY = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5P = common dso_local global i32 0, align 4
@ND_GSSPRIVACY = common dso_local global i32 0, align 4
@AUTH_SYS = common dso_local global i32 0, align 4
@nfsd_suspend_lock = common dso_local global i32 0, align 4
@NFSV4ROOTLOCKMUTEXPTR = common dso_local global i32 0, align 4
@RC_REPLY = common dso_local global i32 0, align 4
@RC_DROPIT = common dso_local global i32 0, align 4
@NFSERR_AUTHERR = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, i32*)* @nfssvc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfssvc_program(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsrv_descript, align 8
  %6 = alloca %struct.nfsrvcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.nfsrvcache* null, %struct.nfsrvcache** %6, align 8
  %15 = call i32 @memset(%struct.nfsrv_descript* %5, i32 0, i32 72)
  %16 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %17 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NFS_VER2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %23 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NFSV2PROC_STATFS, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load i64*, i64** @newnfs_nfsv3_procid, align 8
  %29 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %30 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NFSPROC_NOOP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27, %21
  %37 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %38 = call i32 @svcerr_noproc(%struct.svc_req* %37)
  %39 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %40 = call i32 @svc_freereq(%struct.svc_req* %39)
  br label %373

41:                                               ; preds = %27
  %42 = load i64*, i64** @newnfs_nfsv3_procid, align 8
  %43 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %44 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @ND_NFSV2, align 4
  %50 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  br label %100

51:                                               ; preds = %2
  %52 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %53 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NFS_VER3, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %59 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NFS_V3NPROCS, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %65 = call i32 @svcerr_noproc(%struct.svc_req* %64)
  %66 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %67 = call i32 @svc_freereq(%struct.svc_req* %66)
  br label %373

68:                                               ; preds = %57
  %69 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %70 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* @ND_NFSV3, align 4
  %74 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  br label %99

75:                                               ; preds = %51
  %76 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %77 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NFSPROC_NULL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %83 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NFSV4PROC_COMPOUND, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %89 = call i32 @svcerr_noproc(%struct.svc_req* %88)
  %90 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %91 = call i32 @svc_freereq(%struct.svc_req* %90)
  br label %373

92:                                               ; preds = %81, %75
  %93 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %94 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* @ND_NFSV4, align 4
  %98 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  br label %99

99:                                               ; preds = %92, %68
  br label %100

100:                                              ; preds = %99, %41
  %101 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %102 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %101, i32 0, i32 5
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %104, align 8
  %105 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %106 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %105, i32 0, i32 5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %106, align 8
  %107 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %108 = load i32, i32* @M_WAITOK, align 4
  %109 = call i32 @newnfs_realign(%struct.TYPE_7__** %107, i32 %108)
  %110 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 8
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %112, align 8
  %113 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* @caddr_t, align 4
  %116 = call i32 @mtod(%struct.TYPE_7__* %114, i32 %115)
  %117 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 9
  store i32 %116, i32* %117, align 8
  %118 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %119 = call %struct.sockaddr* @svc_getrpccaller(%struct.svc_req* %118)
  %120 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 6
  store %struct.sockaddr* %119, %struct.sockaddr** %120, align 8
  %121 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %122 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 7
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %125, align 8
  %126 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  store i32* null, i32** %126, align 8
  %127 = load i64, i64* @nfs_privport, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %167

129:                                              ; preds = %100
  %130 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 6
  %131 = load %struct.sockaddr*, %struct.sockaddr** %130, align 8
  store %struct.sockaddr* %131, %struct.sockaddr** %10, align 8
  %132 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %133 = bitcast %struct.sockaddr* %132 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %133, %struct.sockaddr_in** %11, align 8
  %134 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %135 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @ntohs(i32 %136)
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* @IPPORT_RESERVED, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %129
  %142 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NFSPROC_NULL, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %141
  %147 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %148 = zext i32 %147 to i64
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %12, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %13, align 8
  %151 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %152 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @inet_ntoa_r(i32 %153, i8* %150)
  %155 = load i64, i64* %9, align 8
  %156 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %154, i64 %155)
  %157 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %158 = call i32 @svcerr_weakauth(%struct.svc_req* %157)
  %159 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %160 = call i32 @svc_freereq(%struct.svc_req* %159)
  %161 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = call i32 @m_freem(%struct.TYPE_7__* %162)
  store i32 2, i32* %14, align 4
  %164 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %14, align 4
  switch i32 %165, label %377 [
    i32 2, label %373
  ]

166:                                              ; preds = %141, %129
  br label %167

167:                                              ; preds = %166, %100
  %168 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @NFSPROC_NULL, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %270

172:                                              ; preds = %167
  %173 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %174 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  %175 = call i32 @svc_getcred(%struct.svc_req* %173, i32** %174, i32* %8)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %172
  %178 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %179 = call i32 @svcerr_weakauth(%struct.svc_req* %178)
  %180 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %181 = call i32 @svc_freereq(%struct.svc_req* %180)
  %182 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = call i32 @m_freem(%struct.TYPE_7__* %183)
  br label %373

185:                                              ; preds = %172
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @RPCSEC_GSS_KRB5, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i32, i32* @ND_GSS, align 4
  %191 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %190
  store i32 %193, i32* %191, align 8
  br label %231

194:                                              ; preds = %185
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @RPCSEC_GSS_KRB5I, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32, i32* @ND_GSS, align 4
  %200 = load i32, i32* @ND_GSSINTEGRITY, align 4
  %201 = or i32 %199, %200
  %202 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %201
  store i32 %204, i32* %202, align 8
  br label %230

205:                                              ; preds = %194
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @RPCSEC_GSS_KRB5P, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load i32, i32* @ND_GSS, align 4
  %211 = load i32, i32* @ND_GSSPRIVACY, align 4
  %212 = or i32 %210, %211
  %213 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %212
  store i32 %215, i32* %213, align 8
  br label %229

216:                                              ; preds = %205
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @AUTH_SYS, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %222 = call i32 @svcerr_weakauth(%struct.svc_req* %221)
  %223 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %224 = call i32 @svc_freereq(%struct.svc_req* %223)
  %225 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = call i32 @m_freem(%struct.TYPE_7__* %226)
  br label %373

228:                                              ; preds = %216
  br label %229

229:                                              ; preds = %228, %209
  br label %230

230:                                              ; preds = %229, %198
  br label %231

231:                                              ; preds = %230, %189
  %232 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %233 = load i32, i32* @NFSV4ROOTLOCKMUTEXPTR, align 4
  %234 = call i32 @nfsv4_lock(i32* @nfsd_suspend_lock, i32 0, i32* null, i32 %233, i32* null)
  %235 = load i32, i32* @NFSV4ROOTLOCKMUTEXPTR, align 4
  %236 = call i32 @nfsv4_getref(i32* @nfsd_suspend_lock, i32* null, i32 %235, i32* null)
  %237 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  %238 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @ND_NFSV4, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %261

243:                                              ; preds = %231
  %244 = call i32 @nfsvno_v4rootexport(%struct.nfsrv_descript* %5)
  %245 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 2
  store i32 %244, i32* %245, align 4
  %246 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %243
  %250 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %251 = call i32 @nfsv4_relref(i32* @nfsd_suspend_lock)
  %252 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  %253 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %254 = call i32 @svcerr_weakauth(%struct.svc_req* %253)
  %255 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %256 = call i32 @svc_freereq(%struct.svc_req* %255)
  %257 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = call i32 @m_freem(%struct.TYPE_7__* %258)
  br label %373

260:                                              ; preds = %243
  br label %261

261:                                              ; preds = %260, %231
  %262 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %263 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 @nfs_proc(%struct.nfsrv_descript* %5, i32 %264, i32* %265, %struct.nfsrvcache** %6)
  store i32 %266, i32* %7, align 4
  %267 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %268 = call i32 @nfsv4_relref(i32* @nfsd_suspend_lock)
  %269 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  br label %278

270:                                              ; preds = %167
  %271 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = call i32 @NFSMGET(%struct.TYPE_7__* %272)
  %274 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  store i64 0, i64* %276, align 8
  %277 = load i32, i32* @RC_REPLY, align 4
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %270, %261
  %279 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = icmp ne %struct.TYPE_7__* %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = call i32 @m_freem(%struct.TYPE_7__* %284)
  br label %286

286:                                              ; preds = %282, %278
  %287 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @crfree(i32* %292)
  br label %294

294:                                              ; preds = %290, %286
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* @RC_DROPIT, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %309

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %299, align 8
  %301 = icmp ne %struct.TYPE_7__* %300, null
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = call i32 @m_freem(%struct.TYPE_7__* %304)
  br label %306

306:                                              ; preds = %302, %298
  %307 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %308 = call i32 @svc_freereq(%struct.svc_req* %307)
  br label %373

309:                                              ; preds = %294
  %310 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = icmp eq %struct.TYPE_7__* %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %309
  %314 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %315 = call i32 @svcerr_decode(%struct.svc_req* %314)
  %316 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %317 = call i32 @svc_freereq(%struct.svc_req* %316)
  br label %373

318:                                              ; preds = %309
  %319 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @NFSERR_AUTHERR, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %340

324:                                              ; preds = %318
  %325 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %326 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @NFSERR_AUTHERR, align 4
  %329 = xor i32 %328, -1
  %330 = and i32 %327, %329
  %331 = call i32 @svcerr_auth(%struct.svc_req* %325, i32 %330)
  %332 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %332, align 8
  %334 = icmp ne %struct.TYPE_7__* %333, null
  br i1 %334, label %335, label %339

335:                                              ; preds = %324
  %336 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %336, align 8
  %338 = call i32 @m_freem(%struct.TYPE_7__* %337)
  br label %339

339:                                              ; preds = %335, %324
  br label %350

340:                                              ; preds = %318
  %341 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %342 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %342, align 8
  %344 = call i32 @svc_sendreply_mbuf(%struct.svc_req* %341, %struct.TYPE_7__* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %340
  %347 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %348 = call i32 @svcerr_systemerr(%struct.svc_req* %347)
  br label %349

349:                                              ; preds = %346, %340
  br label %350

350:                                              ; preds = %349, %339
  %351 = load %struct.nfsrvcache*, %struct.nfsrvcache** %6, align 8
  %352 = icmp ne %struct.nfsrvcache* %351, null
  br i1 %352, label %353, label %370

353:                                              ; preds = %350
  %354 = load %struct.nfsrvcache*, %struct.nfsrvcache** %6, align 8
  %355 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %356 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %353
  %360 = load i32*, i32** %4, align 8
  %361 = call i64 @SVC_ACK(i32* %360, i32* null)
  %362 = icmp ne i64 %361, 0
  br label %363

363:                                              ; preds = %359, %353
  %364 = phi i1 [ true, %353 ], [ %362, %359 ]
  %365 = zext i1 %364 to i32
  %366 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %367 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = call i32 @nfsrvd_sentcache(%struct.nfsrvcache* %354, i32 %365, i64 %368)
  br label %370

370:                                              ; preds = %363, %350
  %371 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %372 = call i32 @svc_freereq(%struct.svc_req* %371)
  br label %373

373:                                              ; preds = %370, %313, %306, %249, %220, %177, %146, %87, %63, %36
  %374 = load i32, i32* @curthread, align 4
  %375 = call i32 @td_softdep_cleanup(i32 %374)
  %376 = call i32 @NFSEXITCODE(i32 0)
  ret void

377:                                              ; preds = %146
  unreachable
}

declare dso_local i32 @memset(%struct.nfsrv_descript*, i32, i32) #1

declare dso_local i32 @svcerr_noproc(%struct.svc_req*) #1

declare dso_local i32 @svc_freereq(%struct.svc_req*) #1

declare dso_local i32 @newnfs_realign(%struct.TYPE_7__**, i32) #1

declare dso_local i32 @mtod(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.sockaddr* @svc_getrpccaller(%struct.svc_req*) #1

declare dso_local i64 @ntohs(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i8* @inet_ntoa_r(i32, i8*) #1

declare dso_local i32 @svcerr_weakauth(%struct.svc_req*) #1

declare dso_local i32 @m_freem(%struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @svc_getcred(%struct.svc_req*, i32**, i32*) #1

declare dso_local i32 @NFSLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @nfsv4_lock(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @nfsv4_getref(i32*, i32*, i32, i32*) #1

declare dso_local i32 @NFSUNLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @nfsvno_v4rootexport(%struct.nfsrv_descript*) #1

declare dso_local i32 @nfsv4_relref(i32*) #1

declare dso_local i32 @nfs_proc(%struct.nfsrv_descript*, i32, i32*, %struct.nfsrvcache**) #1

declare dso_local i32 @NFSMGET(%struct.TYPE_7__*) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @svcerr_decode(%struct.svc_req*) #1

declare dso_local i32 @svcerr_auth(%struct.svc_req*, i32) #1

declare dso_local i32 @svc_sendreply_mbuf(%struct.svc_req*, %struct.TYPE_7__*) #1

declare dso_local i32 @svcerr_systemerr(%struct.svc_req*) #1

declare dso_local i32 @nfsrvd_sentcache(%struct.nfsrvcache*, i32, i64) #1

declare dso_local i64 @SVC_ACK(i32*, i32*) #1

declare dso_local i32 @td_softdep_cleanup(i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
