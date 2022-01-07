; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_proxyds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_proxyds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.mbuf = type { i32 }
%struct.nfsvattr = type { i32, i32, i32, i32 }
%struct.acl = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsdevice = type { i32 }
%struct.pnfsdsattr = type { i32, i32, i32, i32 }

@NFSDEV_MAXMIRRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"in nfsrv_proxyds\0A\00", align 1
@VREG = common dso_local global i64 0, align 8
@MNT_EXPORTED = common dso_local global i32 0, align 4
@nfsrv_devidcnt = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NFSPROC_GETATTR = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@EXTATTR_NAMESPACE_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"pnfsd.dsattr\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@nfsrv_pnfsgetdsattr = common dso_local global i64 0, align 8
@ENOATTR = common dso_local global i32 0, align 4
@NFSPROC_READDS = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"nfsrv_proxyds: Readds vp exclusively locked\0A\00", align 1
@LK_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"pNFS: proxy getextattr sockaddr=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"pNFS: nfsrv_dsgetsockmnt=%d\0A\00", align 1
@NFSPROC_WRITEDS = common dso_local global i32 0, align 4
@NFSPROC_SETATTR = common dso_local global i32 0, align 4
@NFSPROC_SETACL = common dso_local global i32 0, align 4
@NFSMNTP_FORCEDISM = common dso_local global i32 0, align 4
@NFSMNTP_CANCELRPCS = common dso_local global i32 0, align 4
@PNFSDOP_DELDSSERVER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"dsldsnmp fail=%d ds=%p\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"nfsrv_proxyds: aft RPC=%d trya=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"nfsrv_proxyds: error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i32, %struct.ucred*, %struct.thread*, i32, %struct.mbuf**, i8*, %struct.mbuf**, %struct.nfsvattr*, %struct.acl*)* @nfsrv_proxyds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_proxyds(%struct.vnode* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4, i32 %5, %struct.mbuf** %6, i8* %7, %struct.mbuf** %8, %struct.nfsvattr* %9, %struct.acl* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ucred*, align 8
  %17 = alloca %struct.thread*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mbuf**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.mbuf**, align 8
  %22 = alloca %struct.nfsvattr*, align 8
  %23 = alloca %struct.acl*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.nfsmount*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.nfsdevice*, align 8
  %30 = alloca %struct.pnfsdsattr, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store %struct.ucred* %3, %struct.ucred** %16, align 8
  store %struct.thread* %4, %struct.thread** %17, align 8
  store i32 %5, i32* %18, align 4
  store %struct.mbuf** %6, %struct.mbuf*** %19, align 8
  store i8* %7, i8** %20, align 8
  store %struct.mbuf** %8, %struct.mbuf*** %21, align 8
  store %struct.nfsvattr* %9, %struct.nfsvattr** %22, align 8
  store %struct.acl* %10, %struct.acl** %23, align 8
  %40 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %24, align 8
  %43 = alloca %struct.nfsmount*, i64 %41, align 16
  store i64 %41, i64* %25, align 8
  %44 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %27, align 8
  %47 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca %struct.vnode*, i64 %48, align 16
  store i64 %48, i64* %28, align 8
  %50 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.vnode*, %struct.vnode** %13, align 8
  %52 = getelementptr inbounds %struct.vnode, %struct.vnode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VREG, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %11
  %57 = load %struct.vnode*, %struct.vnode** %13, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MNT_EXPORTED, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load i64, i64* @nfsrv_devidcnt, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %56, %11
  %69 = load i32, i32* @ENOENT, align 4
  store i32 %69, i32* %12, align 4
  store i32 1, i32* %39, align 4
  br label %376

70:                                               ; preds = %65
  store i32 1024, i32* %32, align 4
  %71 = load i32, i32* %32, align 4
  %72 = load i32, i32* @M_TEMP, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = call i8* @malloc(i32 %71, i32 %72, i32 %73)
  store i8* %74, i8** %31, align 8
  store i32 0, i32* %33, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* @NFSPROC_GETATTR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %135

78:                                               ; preds = %70
  %79 = load %struct.vnode*, %struct.vnode** %13, align 8
  %80 = load i32, i32* @IO_NODELOCKED, align 4
  %81 = load i32, i32* @EXTATTR_NAMESPACE_SYSTEM, align 4
  %82 = load i8*, i8** %31, align 8
  %83 = load %struct.thread*, %struct.thread** %17, align 8
  %84 = call i32 @vn_extattr_get(%struct.vnode* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %32, i8* %82, %struct.thread* %83)
  store i32 %84, i32* %33, align 4
  %85 = load i32, i32* %33, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i32, i32* %32, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %89, 16
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %33, align 4
  br label %93

93:                                               ; preds = %91, %87, %78
  %94 = load i32, i32* %33, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %93
  %97 = load i8*, i8** %31, align 8
  %98 = load i32, i32* %32, align 4
  %99 = call i32 @NFSBCOPY(i8* %97, %struct.pnfsdsattr* %30, i32 %98)
  %100 = getelementptr inbounds %struct.pnfsdsattr, %struct.pnfsdsattr* %30, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nfsvattr*, %struct.nfsvattr** %22, align 8
  %103 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.pnfsdsattr, %struct.pnfsdsattr* %30, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nfsvattr*, %struct.nfsvattr** %22, align 8
  %107 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.pnfsdsattr, %struct.pnfsdsattr* %30, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nfsvattr*, %struct.nfsvattr** %22, align 8
  %111 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds %struct.pnfsdsattr, %struct.pnfsdsattr* %30, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nfsvattr*, %struct.nfsvattr** %22, align 8
  %115 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i64, i64* @nfsrv_pnfsgetdsattr, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %96
  %119 = load %struct.vnode*, %struct.vnode** %13, align 8
  %120 = load %struct.thread*, %struct.thread** %17, align 8
  %121 = call i64 @nfsrv_checkdsattr(%struct.vnode* %119, %struct.thread* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118, %96
  %124 = load i8*, i8** %31, align 8
  %125 = load i32, i32* @M_TEMP, align 4
  %126 = call i32 @free(i8* %124, i32 %125)
  %127 = load i32, i32* %33, align 4
  store i32 %127, i32* %12, align 4
  store i32 1, i32* %39, align 4
  br label %376

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %93
  %130 = load i32, i32* %33, align 4
  %131 = load i32, i32* @ENOATTR, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 0, i32* %33, align 4
  br label %134

134:                                              ; preds = %133, %129
  br label %135

135:                                              ; preds = %134, %70
  store i32 -1, i32* %37, align 4
  store i32 0, i32* %38, align 4
  br label %136

136:                                              ; preds = %365, %135
  %137 = load i32, i32* %33, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %182

139:                                              ; preds = %136
  store i32 1024, i32* %32, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @NFSPROC_READDS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.vnode*, %struct.vnode** %13, align 8
  %145 = call i64 @NFSVOPISLOCKED(%struct.vnode* %144)
  %146 = load i64, i64* @LK_EXCLUSIVE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143, %139
  %151 = load %struct.vnode*, %struct.vnode** %13, align 8
  %152 = load i32, i32* @LK_SHARED, align 4
  %153 = load i8*, i8** %31, align 8
  %154 = load %struct.thread*, %struct.thread** %17, align 8
  %155 = call i32 @nfsrv_dsgetsockmnt(%struct.vnode* %151, i32 %152, i8* %153, i32* %32, i32* %36, %struct.thread* %154, %struct.vnode** %49, i32* %46, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32 %155, i32* %33, align 4
  %156 = load i32, i32* %33, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %150
  store i32 0, i32* %35, align 4
  br label %159

159:                                              ; preds = %174, %158
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* %36, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load i32, i32* %35, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.vnode*, %struct.vnode** %49, i64 %165
  %167 = load %struct.vnode*, %struct.vnode** %166, align 8
  %168 = getelementptr inbounds %struct.vnode, %struct.vnode* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = call %struct.nfsmount* @VFSTONFS(%struct.TYPE_2__* %169)
  %171 = load i32, i32* %35, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %43, i64 %172
  store %struct.nfsmount* %170, %struct.nfsmount** %173, align 8
  br label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %35, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %35, align 4
  br label %159

177:                                              ; preds = %159
  br label %181

178:                                              ; preds = %150
  %179 = load i32, i32* %33, align 4
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %178, %177
  br label %185

182:                                              ; preds = %136
  %183 = load i32, i32* %33, align 4
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %182, %181
  %186 = load i32, i32* %33, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %367

188:                                              ; preds = %185
  store i32 -1, i32* %34, align 4
  %189 = load i32, i32* %37, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* %36, align 4
  store i32 %192, i32* %37, align 4
  br label %193

193:                                              ; preds = %191, %188
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* @NFSPROC_READDS, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %193
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.ucred*, %struct.ucred** %16, align 8
  %201 = load %struct.thread*, %struct.thread** %17, align 8
  %202 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %43, i64 0
  %203 = load %struct.nfsmount*, %struct.nfsmount** %202, align 16
  %204 = load %struct.mbuf**, %struct.mbuf*** %19, align 8
  %205 = load %struct.mbuf**, %struct.mbuf*** %21, align 8
  %206 = call i32 @nfsrv_readdsrpc(i32* %46, i32 %198, i32 %199, %struct.ucred* %200, %struct.thread* %201, %struct.nfsmount* %203, %struct.mbuf** %204, %struct.mbuf** %205)
  store i32 %206, i32* %33, align 4
  %207 = load i32, i32* %33, align 4
  %208 = call i64 @nfsds_failerr(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %197
  %211 = load i32, i32* %36, align 4
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  %214 = load i32, i32* %38, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %38, align 4
  br label %216

216:                                              ; preds = %213, %210, %197
  br label %286

217:                                              ; preds = %193
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* @NFSPROC_WRITEDS, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.ucred*, %struct.ucred** %16, align 8
  %225 = load %struct.thread*, %struct.thread** %17, align 8
  %226 = load %struct.vnode*, %struct.vnode** %13, align 8
  %227 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %43, i64 0
  %228 = load i32, i32* %36, align 4
  %229 = load %struct.mbuf**, %struct.mbuf*** %19, align 8
  %230 = load i8*, i8** %20, align 8
  %231 = call i32 @nfsrv_writedsrpc(i32* %46, i32 %222, i32 %223, %struct.ucred* %224, %struct.thread* %225, %struct.vnode* %226, %struct.nfsmount** %227, i32 %228, %struct.mbuf** %229, i8* %230, i32* %34)
  store i32 %231, i32* %33, align 4
  br label %285

232:                                              ; preds = %217
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @NFSPROC_SETATTR, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = load %struct.ucred*, %struct.ucred** %16, align 8
  %238 = load %struct.thread*, %struct.thread** %17, align 8
  %239 = load %struct.vnode*, %struct.vnode** %13, align 8
  %240 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %43, i64 0
  %241 = load i32, i32* %36, align 4
  %242 = load %struct.nfsvattr*, %struct.nfsvattr** %22, align 8
  %243 = call i32 @nfsrv_setattrdsrpc(i32* %46, %struct.ucred* %237, %struct.thread* %238, %struct.vnode* %239, %struct.nfsmount** %240, i32 %241, %struct.nfsvattr* %242, i32* %34)
  store i32 %243, i32* %33, align 4
  br label %284

244:                                              ; preds = %232
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* @NFSPROC_SETACL, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = load %struct.ucred*, %struct.ucred** %16, align 8
  %250 = load %struct.thread*, %struct.thread** %17, align 8
  %251 = load %struct.vnode*, %struct.vnode** %13, align 8
  %252 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %43, i64 0
  %253 = load i32, i32* %36, align 4
  %254 = load %struct.acl*, %struct.acl** %23, align 8
  %255 = call i32 @nfsrv_setacldsrpc(i32* %46, %struct.ucred* %249, %struct.thread* %250, %struct.vnode* %251, %struct.nfsmount** %252, i32 %253, %struct.acl* %254, i32* %34)
  store i32 %255, i32* %33, align 4
  br label %283

256:                                              ; preds = %244
  %257 = load i32, i32* %36, align 4
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %46, i64 %259
  %261 = load %struct.ucred*, %struct.ucred** %16, align 8
  %262 = load %struct.thread*, %struct.thread** %17, align 8
  %263 = load %struct.vnode*, %struct.vnode** %13, align 8
  %264 = load i32, i32* %36, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %43, i64 %266
  %268 = load %struct.nfsmount*, %struct.nfsmount** %267, align 8
  %269 = load %struct.nfsvattr*, %struct.nfsvattr** %22, align 8
  %270 = call i32 @nfsrv_getattrdsrpc(i32* %260, %struct.ucred* %261, %struct.thread* %262, %struct.vnode* %263, %struct.nfsmount* %268, %struct.nfsvattr* %269)
  store i32 %270, i32* %33, align 4
  %271 = load i32, i32* %33, align 4
  %272 = call i64 @nfsds_failerr(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %256
  %275 = load i32, i32* %36, align 4
  %276 = icmp sgt i32 %275, 1
  br i1 %276, label %277, label %282

277:                                              ; preds = %274
  %278 = load i32, i32* %36, align 4
  %279 = sub nsw i32 %278, 1
  store i32 %279, i32* %34, align 4
  store i32 0, i32* %33, align 4
  %280 = load i32, i32* %38, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %38, align 4
  br label %282

282:                                              ; preds = %277, %274, %256
  br label %283

283:                                              ; preds = %282, %248
  br label %284

284:                                              ; preds = %283, %236
  br label %285

285:                                              ; preds = %284, %221
  br label %286

286:                                              ; preds = %285, %216
  store %struct.nfsdevice* null, %struct.nfsdevice** %29, align 8
  %287 = load i32, i32* %34, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %338

289:                                              ; preds = %286
  %290 = load i32, i32* %34, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %43, i64 %291
  %293 = load %struct.nfsmount*, %struct.nfsmount** %292, align 8
  store %struct.nfsmount* %293, %struct.nfsmount** %26, align 8
  %294 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %295 = call i32 @NFSLOCKMNT(%struct.nfsmount* %294)
  %296 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %297 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @NFSMNTP_FORCEDISM, align 4
  %300 = load i32, i32* @NFSMNTP_CANCELRPCS, align 4
  %301 = or i32 %299, %300
  %302 = and i32 %298, %301
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %335

304:                                              ; preds = %289
  %305 = load i32, i32* @NFSMNTP_CANCELRPCS, align 4
  %306 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %307 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  %310 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %311 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %310)
  %312 = load i32, i32* @PNFSDOP_DELDSSERVER, align 4
  %313 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %314 = load %struct.thread*, %struct.thread** %17, align 8
  %315 = call %struct.nfsdevice* @nfsrv_deldsnmp(i32 %312, %struct.nfsmount* %313, %struct.thread* %314)
  store %struct.nfsdevice* %315, %struct.nfsdevice** %29, align 8
  %316 = load i32, i32* %34, align 4
  %317 = load %struct.nfsdevice*, %struct.nfsdevice** %29, align 8
  %318 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %316, %struct.nfsdevice* %317)
  %319 = load %struct.nfsdevice*, %struct.nfsdevice** %29, align 8
  %320 = icmp ne %struct.nfsdevice* %319, null
  br i1 %320, label %321, label %324

321:                                              ; preds = %304
  %322 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %323 = call i32 @nfsrv_killrpcs(%struct.nfsmount* %322)
  br label %324

324:                                              ; preds = %321, %304
  %325 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %326 = call i32 @NFSLOCKMNT(%struct.nfsmount* %325)
  %327 = load i32, i32* @NFSMNTP_CANCELRPCS, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %330 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, %328
  store i32 %332, i32* %330, align 4
  %333 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %334 = call i32 @wakeup(%struct.nfsmount* %333)
  br label %335

335:                                              ; preds = %324, %289
  %336 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %337 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %336)
  br label %338

338:                                              ; preds = %335, %286
  store i32 0, i32* %35, align 4
  br label %339

339:                                              ; preds = %349, %338
  %340 = load i32, i32* %35, align 4
  %341 = load i32, i32* %36, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %352

343:                                              ; preds = %339
  %344 = load i32, i32* %35, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.vnode*, %struct.vnode** %49, i64 %345
  %347 = load %struct.vnode*, %struct.vnode** %346, align 8
  %348 = call i32 @NFSVOPUNLOCK(%struct.vnode* %347, i32 0)
  br label %349

349:                                              ; preds = %343
  %350 = load i32, i32* %35, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %35, align 4
  br label %339

352:                                              ; preds = %339
  %353 = load i32, i32* %33, align 4
  %354 = load i32, i32* %38, align 4
  %355 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %353, i32 %354)
  %356 = load %struct.nfsdevice*, %struct.nfsdevice** %29, align 8
  %357 = icmp ne %struct.nfsdevice* %356, null
  br i1 %357, label %358, label %366

358:                                              ; preds = %352
  %359 = load i32, i32* %38, align 4
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = load i32, i32* %38, align 4
  %363 = load i32, i32* %37, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %361
  br label %136

366:                                              ; preds = %361, %358, %352
  br label %369

367:                                              ; preds = %185
  %368 = load i32, i32* @ENOENT, align 4
  store i32 %368, i32* %33, align 4
  br label %369

369:                                              ; preds = %367, %366
  %370 = load i8*, i8** %31, align 8
  %371 = load i32, i32* @M_TEMP, align 4
  %372 = call i32 @free(i8* %370, i32 %371)
  %373 = load i32, i32* %33, align 4
  %374 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* %33, align 4
  store i32 %375, i32* %12, align 4
  store i32 1, i32* %39, align 4
  br label %376

376:                                              ; preds = %369, %123, %68
  %377 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %377)
  %378 = load i32, i32* %12, align 4
  ret i32 %378
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #2

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32 @vn_extattr_get(%struct.vnode*, i32, i32, i8*, i32*, i8*, %struct.thread*) #2

declare dso_local i32 @NFSBCOPY(i8*, %struct.pnfsdsattr*, i32) #2

declare dso_local i64 @nfsrv_checkdsattr(%struct.vnode*, %struct.thread*) #2

declare dso_local i32 @free(i8*, i32) #2

declare dso_local i64 @NFSVOPISLOCKED(%struct.vnode*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @nfsrv_dsgetsockmnt(%struct.vnode*, i32, i8*, i32*, i32*, %struct.thread*, %struct.vnode**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.TYPE_2__*) #2

declare dso_local i32 @nfsrv_readdsrpc(i32*, i32, i32, %struct.ucred*, %struct.thread*, %struct.nfsmount*, %struct.mbuf**, %struct.mbuf**) #2

declare dso_local i64 @nfsds_failerr(i32) #2

declare dso_local i32 @nfsrv_writedsrpc(i32*, i32, i32, %struct.ucred*, %struct.thread*, %struct.vnode*, %struct.nfsmount**, i32, %struct.mbuf**, i8*, i32*) #2

declare dso_local i32 @nfsrv_setattrdsrpc(i32*, %struct.ucred*, %struct.thread*, %struct.vnode*, %struct.nfsmount**, i32, %struct.nfsvattr*, i32*) #2

declare dso_local i32 @nfsrv_setacldsrpc(i32*, %struct.ucred*, %struct.thread*, %struct.vnode*, %struct.nfsmount**, i32, %struct.acl*, i32*) #2

declare dso_local i32 @nfsrv_getattrdsrpc(i32*, %struct.ucred*, %struct.thread*, %struct.vnode*, %struct.nfsmount*, %struct.nfsvattr*) #2

declare dso_local i32 @NFSLOCKMNT(%struct.nfsmount*) #2

declare dso_local i32 @NFSUNLOCKMNT(%struct.nfsmount*) #2

declare dso_local %struct.nfsdevice* @nfsrv_deldsnmp(i32, %struct.nfsmount*, %struct.thread*) #2

declare dso_local i32 @nfsrv_killrpcs(%struct.nfsmount*) #2

declare dso_local i32 @wakeup(%struct.nfsmount*) #2

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
