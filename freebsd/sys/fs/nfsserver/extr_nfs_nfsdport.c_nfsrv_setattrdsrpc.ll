; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setattrdsrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setattrdsrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsrvsetattrdsdorpc = type { i64, i64, i32, i32, %struct.nfsvattr, i32*, %struct.ucred*, %struct.vnode*, %struct.nfsmount*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"in nfsrv_setattrdsrpc\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@nfs_pnfsiothreads = common dso_local global i64 0, align 8
@start_setattrdsdorpc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"nfsrv_setattrdsrpc: nfs_pnfsio=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"nfsrv_setattrdsrpc: aft setextat=%d\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"srvsads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ucred*, i32*, %struct.vnode*, %struct.nfsmount**, i32, %struct.nfsvattr*, i32*)* @nfsrv_setattrdsrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_setattrdsrpc(i32* %0, %struct.ucred* %1, i32* %2, %struct.vnode* %3, %struct.nfsmount** %4, i32 %5, %struct.nfsvattr* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.nfsmount**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfsvattr*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.nfsrvsetattrdsdorpc*, align 8
  %18 = alloca %struct.nfsrvsetattrdsdorpc*, align 8
  %19 = alloca %struct.nfsvattr, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.ucred* %1, %struct.ucred** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.vnode* %3, %struct.vnode** %12, align 8
  store %struct.nfsmount** %4, %struct.nfsmount*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nfsvattr* %6, %struct.nfsvattr** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.nfsrvsetattrdsdorpc* null, %struct.nfsrvsetattrdsdorpc** %17, align 8
  %25 = load i32, i32* %14, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %8
  %28 = load i32, i32* %14, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 72, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_TEMP, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = call %struct.nfsrvsetattrdsdorpc* @malloc(i32 %32, i32 %33, i32 %34)
  store %struct.nfsrvsetattrdsdorpc* %35, %struct.nfsrvsetattrdsdorpc** %17, align 8
  store %struct.nfsrvsetattrdsdorpc* %35, %struct.nfsrvsetattrdsdorpc** %18, align 8
  br label %36

36:                                               ; preds = %27, %8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %37

37:                                               ; preds = %117, %36
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %122

42:                                               ; preds = %37
  %43 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %44 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %46 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %49 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %48, i32 0, i32 9
  %50 = call i32 @NFSBCOPY(i32* %47, i32* %49, i32 4)
  %51 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %52 = load %struct.nfsmount*, %struct.nfsmount** %51, align 8
  %53 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %54 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %53, i32 0, i32 8
  store %struct.nfsmount* %52, %struct.nfsmount** %54, align 8
  %55 = load %struct.vnode*, %struct.vnode** %12, align 8
  %56 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %57 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %56, i32 0, i32 7
  store %struct.vnode* %55, %struct.vnode** %57, align 8
  %58 = load %struct.ucred*, %struct.ucred** %10, align 8
  %59 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %60 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %59, i32 0, i32 6
  store %struct.ucred* %58, %struct.ucred** %60, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %63 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %65 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %64, i32 0, i32 4
  %66 = load %struct.nfsvattr*, %struct.nfsvattr** %15, align 8
  %67 = bitcast %struct.nfsvattr* %65 to i8*
  %68 = bitcast %struct.nfsvattr* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %70 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* @EIO, align 4
  store i32 %71, i32* %22, align 4
  %72 = load i64, i64* @nfs_pnfsiothreads, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %42
  %75 = load i32, i32* @start_setattrdsdorpc, align 4
  %76 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %77 = call i32 @nfs_pnfsio(i32 %75, %struct.nfsrvsetattrdsdorpc* %76)
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  %79 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %42
  %81 = load i32, i32* %22, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %80
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.ucred*, %struct.ucred** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load %struct.vnode*, %struct.vnode** %12, align 8
  %88 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %89 = load %struct.nfsmount*, %struct.nfsmount** %88, align 8
  %90 = load %struct.nfsvattr*, %struct.nfsvattr** %15, align 8
  %91 = call i32 @nfsrv_setattrdsdorpc(i32* %84, %struct.ucred* %85, i32* %86, %struct.vnode* %87, %struct.nfsmount* %89, %struct.nfsvattr* %90, %struct.nfsvattr* %19)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %22, align 4
  %93 = call i64 @nfsds_failerr(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %21, align 4
  %101 = load i32*, i32** %16, align 8
  store i32 %100, i32* %101, align 4
  br label %111

102:                                              ; preds = %95, %83
  %103 = load i32, i32* %20, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %22, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %22, align 4
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %108, %105, %102
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %114 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %113, i32 1
  store %struct.nfsmount** %114, %struct.nfsmount*** %13, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %9, align 8
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %21, align 4
  %120 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %121 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %120, i32 1
  store %struct.nfsrvsetattrdsdorpc* %121, %struct.nfsrvsetattrdsdorpc** %18, align 8
  br label %37

122:                                              ; preds = %37
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.ucred*, %struct.ucred** %10, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load %struct.vnode*, %struct.vnode** %12, align 8
  %127 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %128 = load %struct.nfsmount*, %struct.nfsmount** %127, align 8
  %129 = load %struct.nfsvattr*, %struct.nfsvattr** %15, align 8
  %130 = call i32 @nfsrv_setattrdsdorpc(i32* %123, %struct.ucred* %124, i32* %125, %struct.vnode* %126, %struct.nfsmount* %128, %struct.nfsvattr* %129, %struct.nfsvattr* %19)
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = call i64 @nfsds_failerr(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %122
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32*, i32** %16, align 8
  store i32 %143, i32* %144, align 4
  br label %154

145:                                              ; preds = %138, %134, %122
  %146 = load i32, i32* %20, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* %22, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* %22, align 4
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %151, %148, %145
  br label %154

154:                                              ; preds = %153, %141
  %155 = load i32, i32* %20, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load %struct.vnode*, %struct.vnode** %12, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @nfsrv_setextattr(%struct.vnode* %158, %struct.nfsvattr* %19, i32* %159)
  store i32 %160, i32* %20, align 4
  br label %161

161:                                              ; preds = %157, %154
  %162 = load i32, i32* %20, align 4
  %163 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %17, align 8
  store %struct.nfsrvsetattrdsdorpc* %164, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %165 = load i32, i32* @hz, align 4
  %166 = sdiv i32 %165, 50
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %23, align 4
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i32 1, i32* %23, align 4
  br label %170

170:                                              ; preds = %169, %161
  store i32 0, i32* %21, align 4
  br label %171

171:                                              ; preds = %222, %170
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %14, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %227

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %189, %176
  %178 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %179 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %184 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i1 [ false, %177 ], [ %186, %182 ]
  br i1 %188, label %189, label %195

189:                                              ; preds = %187
  %190 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %191 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %190, i32 0, i32 3
  %192 = load i32, i32* @PVFS, align 4
  %193 = load i32, i32* %23, align 4
  %194 = call i32 @tsleep(i32* %191, i32 %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  br label %177

195:                                              ; preds = %187
  %196 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %197 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @nfsds_failerr(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load i32*, i32** %16, align 8
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* %21, align 4
  %207 = load i32*, i32** %16, align 8
  store i32 %206, i32* %207, align 4
  br label %221

208:                                              ; preds = %201, %195
  %209 = load i32, i32* %20, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %213 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %218 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %20, align 4
  br label %220

220:                                              ; preds = %216, %211, %208
  br label %221

221:                                              ; preds = %220, %205
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %21, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %21, align 4
  %225 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %18, align 8
  %226 = getelementptr inbounds %struct.nfsrvsetattrdsdorpc, %struct.nfsrvsetattrdsdorpc* %225, i32 1
  store %struct.nfsrvsetattrdsdorpc* %226, %struct.nfsrvsetattrdsdorpc** %18, align 8
  br label %171

227:                                              ; preds = %171
  %228 = load %struct.nfsrvsetattrdsdorpc*, %struct.nfsrvsetattrdsdorpc** %17, align 8
  %229 = load i32, i32* @M_TEMP, align 4
  %230 = call i32 @free(%struct.nfsrvsetattrdsdorpc* %228, i32 %229)
  %231 = load i32, i32* %20, align 4
  ret i32 %231
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.nfsrvsetattrdsdorpc* @malloc(i32, i32, i32) #1

declare dso_local i32 @NFSBCOPY(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nfs_pnfsio(i32, %struct.nfsrvsetattrdsdorpc*) #1

declare dso_local i32 @nfsrv_setattrdsdorpc(i32*, %struct.ucred*, i32*, %struct.vnode*, %struct.nfsmount*, %struct.nfsvattr*, %struct.nfsvattr*) #1

declare dso_local i64 @nfsds_failerr(i32) #1

declare dso_local i32 @nfsrv_setextattr(%struct.vnode*, %struct.nfsvattr*, i32*) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.nfsrvsetattrdsdorpc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
