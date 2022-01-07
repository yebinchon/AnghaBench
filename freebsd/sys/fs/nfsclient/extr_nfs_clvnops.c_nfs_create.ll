; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_create_args = type { %struct.vnode**, %struct.componentname*, %struct.vattr*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32, i32, i32 }
%struct.vattr = type { i64, i32, i64, i64 }
%struct.vnode = type { i32 }
%struct.nfsnode = type { i32, i64, i32 }
%struct.nfsmount = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsfh = type { i32 }

@VSOCK = common dso_local global i64 0, align 8
@VA_EXCLUSIVE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@NREMOVEINPROG = common dso_local global i32 0, align 4
@NREMOVEWANT = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nfscrt\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NFSERR_NOTSUPP = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@MAKEENTRY = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_create_args*)* @nfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_create(%struct.vop_create_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_create_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.nfsnode*, align 8
  %8 = alloca %struct.nfsnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca %struct.nfsvattr, align 4
  %12 = alloca %struct.nfsvattr, align 4
  %13 = alloca %struct.nfsfh*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vattr, align 8
  store %struct.vop_create_args* %0, %struct.vop_create_args** %3, align 8
  %20 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %20, i32 0, i32 3
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %4, align 8
  %23 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %23, i32 0, i32 2
  %25 = load %struct.vattr*, %struct.vattr** %24, align 8
  store %struct.vattr* %25, %struct.vattr** %5, align 8
  %26 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %26, i32 0, i32 1
  %28 = load %struct.componentname*, %struct.componentname** %27, align 8
  store %struct.componentname* %28, %struct.componentname** %6, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %7, align 8
  store %struct.vnode* null, %struct.vnode** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %29 = load %struct.vattr*, %struct.vattr** %5, align 8
  %30 = getelementptr inbounds %struct.vattr, %struct.vattr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VSOCK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.vnode*, %struct.vnode** %4, align 8
  %36 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %36, i32 0, i32 0
  %38 = load %struct.vnode**, %struct.vnode*** %37, align 8
  %39 = load %struct.componentname*, %struct.componentname** %6, align 8
  %40 = load %struct.vattr*, %struct.vattr** %5, align 8
  %41 = call i32 @nfs_mknodrpc(%struct.vnode* %35, %struct.vnode** %38, %struct.componentname* %39, %struct.vattr* %40)
  store i32 %41, i32* %2, align 4
  br label %336

42:                                               ; preds = %1
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = load %struct.componentname*, %struct.componentname** %6, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VOP_GETATTR(%struct.vnode* %43, %struct.vattr* %19, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %2, align 4
  br label %336

51:                                               ; preds = %42
  %52 = load %struct.vattr*, %struct.vattr** %5, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VA_EXCLUSIVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @O_EXCL, align 4
  %60 = load i32, i32* %18, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = call %struct.nfsnode* @VTONFS(%struct.vnode* %63)
  store %struct.nfsnode* %64, %struct.nfsnode** %8, align 8
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = call i32 @vnode_mount(%struct.vnode* %65)
  %67 = call %struct.nfsmount* @VFSTONFS(i32 %66)
  store %struct.nfsmount* %67, %struct.nfsmount** %10, align 8
  br label %68

68:                                               ; preds = %203, %62
  %69 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %70 = call i32 @NFSLOCKNODE(%struct.nfsnode* %69)
  br label %71

71:                                               ; preds = %84, %68
  %72 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %73 = call i64 @NFSHASNFSV4(%struct.nfsmount* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %77 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NREMOVEINPROG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i1 [ false, %71 ], [ %81, %75 ]
  br i1 %83, label %84, label %96

84:                                               ; preds = %82
  %85 = load i32, i32* @NREMOVEWANT, align 4
  %86 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %87 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %91 = ptrtoint %struct.nfsnode* %90 to i32
  %92 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %93 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %92, i32 0, i32 2
  %94 = load i32, i32* @PZERO, align 4
  %95 = call i32 @msleep(i32 %91, i32* %93, i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %71

96:                                               ; preds = %82
  %97 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %98 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %97)
  %99 = call i32 (...) @nfs_get_cverf()
  store i32 %99, i32* %14, align 4
  %100 = load %struct.vnode*, %struct.vnode** %4, align 8
  %101 = load %struct.componentname*, %struct.componentname** %6, align 8
  %102 = getelementptr inbounds %struct.componentname, %struct.componentname* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.componentname*, %struct.componentname** %6, align 8
  %105 = getelementptr inbounds %struct.componentname, %struct.componentname* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vattr*, %struct.vattr** %5, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.componentname*, %struct.componentname** %6, align 8
  %111 = getelementptr inbounds %struct.componentname, %struct.componentname* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.componentname*, %struct.componentname** %6, align 8
  %114 = getelementptr inbounds %struct.componentname, %struct.componentname* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @nfsrpc_create(%struct.vnode* %100, i32 %103, i32 %106, %struct.vattr* %107, i32 %108, i32 %109, i32 %112, i32 %115, %struct.nfsvattr* %11, %struct.nfsvattr* %12, %struct.nfsfh** %13, i32* %16, i32* %17, i32* null)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %153, label %119

119:                                              ; preds = %96
  %120 = load %struct.nfsfh*, %struct.nfsfh** %13, align 8
  %121 = icmp eq %struct.nfsfh* %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load %struct.vnode*, %struct.vnode** %4, align 8
  %124 = load %struct.componentname*, %struct.componentname** %6, align 8
  %125 = getelementptr inbounds %struct.componentname, %struct.componentname* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.componentname*, %struct.componentname** %6, align 8
  %128 = getelementptr inbounds %struct.componentname, %struct.componentname* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.componentname*, %struct.componentname** %6, align 8
  %131 = getelementptr inbounds %struct.componentname, %struct.componentname* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.componentname*, %struct.componentname** %6, align 8
  %134 = getelementptr inbounds %struct.componentname, %struct.componentname* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @nfsrpc_lookup(%struct.vnode* %123, i32 %126, i32 %129, i32 %132, i32 %135, %struct.nfsvattr* %11, %struct.nfsvattr* %12, %struct.nfsfh** %13, i32* %16, i32* %17, i32* null)
  br label %137

137:                                              ; preds = %122, %119
  %138 = load %struct.nfsfh*, %struct.nfsfh** %13, align 8
  %139 = icmp ne %struct.nfsfh* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load %struct.vnode*, %struct.vnode** %4, align 8
  %142 = getelementptr inbounds %struct.vnode, %struct.vnode* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vnode*, %struct.vnode** %4, align 8
  %145 = load %struct.nfsfh*, %struct.nfsfh** %13, align 8
  %146 = load %struct.componentname*, %struct.componentname** %6, align 8
  %147 = load %struct.componentname*, %struct.componentname** %6, align 8
  %148 = getelementptr inbounds %struct.componentname, %struct.componentname* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @LK_EXCLUSIVE, align 4
  %151 = call i32 @nfscl_nget(i32 %143, %struct.vnode* %144, %struct.nfsfh* %145, %struct.componentname* %146, i32 %149, %struct.nfsnode** %7, i32* null, i32 %150)
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %140, %137
  br label %153

153:                                              ; preds = %152, %96
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = call i32 @nfscl_loadattrcache(%struct.vnode** %4, %struct.nfsvattr* %11, i32* null, i32* null, i32 0, i32 1)
  br label %158

158:                                              ; preds = %156, %153
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %181, label %161

161:                                              ; preds = %158
  %162 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %163 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %162)
  store %struct.vnode* %163, %struct.vnode** %9, align 8
  %164 = load i32, i32* %16, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load %struct.vnode*, %struct.vnode** %9, align 8
  %168 = load %struct.componentname*, %struct.componentname** %6, align 8
  %169 = getelementptr inbounds %struct.componentname, %struct.componentname* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.componentname*, %struct.componentname** %6, align 8
  %172 = getelementptr inbounds %struct.componentname, %struct.componentname* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @nfsrpc_getattr(%struct.vnode* %167, i32 %170, i32 %173, %struct.nfsvattr* %12, i32* null)
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %166, %161
  %176 = load i32, i32* %15, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i32 @nfscl_loadattrcache(%struct.vnode** %9, %struct.nfsvattr* %12, i32* null, i32* null, i32 0, i32 1)
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %178, %175
  br label %181

181:                                              ; preds = %180, %158
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %181
  %185 = load %struct.vnode*, %struct.vnode** %9, align 8
  %186 = icmp ne %struct.vnode* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.vnode*, %struct.vnode** %9, align 8
  %189 = call i32 @vput(%struct.vnode* %188)
  store %struct.vnode* null, %struct.vnode** %9, align 8
  br label %190

190:                                              ; preds = %187, %184
  %191 = load %struct.vnode*, %struct.vnode** %4, align 8
  %192 = call i64 @NFS_ISV34(%struct.vnode* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* @O_EXCL, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* @NFSERR_NOTSUPP, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load i32, i32* @O_EXCL, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %18, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %18, align 4
  br label %68

208:                                              ; preds = %199, %194, %190
  br label %276

209:                                              ; preds = %181
  %210 = load %struct.vnode*, %struct.vnode** %4, align 8
  %211 = call i64 @NFS_ISV34(%struct.vnode* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %275

213:                                              ; preds = %209
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* @O_EXCL, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %275

218:                                              ; preds = %213
  %219 = load %struct.vattr*, %struct.vattr** %5, align 8
  %220 = call i64 @nfscl_checksattr(%struct.vattr* %219, %struct.nfsvattr* %12)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %274

222:                                              ; preds = %218
  %223 = load %struct.vnode*, %struct.vnode** %9, align 8
  %224 = load %struct.vattr*, %struct.vattr** %5, align 8
  %225 = load %struct.componentname*, %struct.componentname** %6, align 8
  %226 = getelementptr inbounds %struct.componentname, %struct.componentname* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.componentname*, %struct.componentname** %6, align 8
  %229 = getelementptr inbounds %struct.componentname, %struct.componentname* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @nfsrpc_setattr(%struct.vnode* %223, %struct.vattr* %224, i32* null, i32 %227, i32 %230, %struct.nfsvattr* %12, i32* %16, i32* null)
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %262

234:                                              ; preds = %222
  %235 = load %struct.vattr*, %struct.vattr** %5, align 8
  %236 = getelementptr inbounds %struct.vattr, %struct.vattr* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @VNOVAL, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %246, label %240

240:                                              ; preds = %234
  %241 = load %struct.vattr*, %struct.vattr** %5, align 8
  %242 = getelementptr inbounds %struct.vattr, %struct.vattr* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @VNOVAL, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %240, %234
  %247 = load i64, i64* @VNOVAL, align 8
  %248 = load %struct.vattr*, %struct.vattr** %5, align 8
  %249 = getelementptr inbounds %struct.vattr, %struct.vattr* %248, i32 0, i32 2
  store i64 %247, i64* %249, align 8
  %250 = load i64, i64* @VNOVAL, align 8
  %251 = load %struct.vattr*, %struct.vattr** %5, align 8
  %252 = getelementptr inbounds %struct.vattr, %struct.vattr* %251, i32 0, i32 3
  store i64 %250, i64* %252, align 8
  %253 = load %struct.vnode*, %struct.vnode** %9, align 8
  %254 = load %struct.vattr*, %struct.vattr** %5, align 8
  %255 = load %struct.componentname*, %struct.componentname** %6, align 8
  %256 = getelementptr inbounds %struct.componentname, %struct.componentname* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.componentname*, %struct.componentname** %6, align 8
  %259 = getelementptr inbounds %struct.componentname, %struct.componentname* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @nfsrpc_setattr(%struct.vnode* %253, %struct.vattr* %254, i32* null, i32 %257, i32 %260, %struct.nfsvattr* %12, i32* %16, i32* null)
  store i32 %261, i32* %15, align 4
  br label %262

262:                                              ; preds = %246, %240, %222
  %263 = load i32, i32* %16, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = call i32 @nfscl_loadattrcache(%struct.vnode** %9, %struct.nfsvattr* %12, i32* null, i32* null, i32 0, i32 1)
  br label %267

267:                                              ; preds = %265, %262
  %268 = load i32, i32* %15, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load %struct.vnode*, %struct.vnode** %9, align 8
  %272 = call i32 @vput(%struct.vnode* %271)
  br label %273

273:                                              ; preds = %270, %267
  br label %274

274:                                              ; preds = %273, %218
  br label %275

275:                                              ; preds = %274, %213, %209
  br label %276

276:                                              ; preds = %275, %208
  %277 = load i32, i32* %15, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %300, label %279

279:                                              ; preds = %276
  %280 = load %struct.componentname*, %struct.componentname** %6, align 8
  %281 = getelementptr inbounds %struct.componentname, %struct.componentname* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @MAKEENTRY, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %279
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = load %struct.vnode*, %struct.vnode** %4, align 8
  %291 = load %struct.vnode*, %struct.vnode** %9, align 8
  %292 = load %struct.componentname*, %struct.componentname** %6, align 8
  %293 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %12, i32 0, i32 0
  %294 = call i32 @cache_enter_time(%struct.vnode* %290, %struct.vnode* %291, %struct.componentname* %292, i32* %293, i32* null)
  br label %295

295:                                              ; preds = %289, %286, %279
  %296 = load %struct.vnode*, %struct.vnode** %9, align 8
  %297 = load %struct.vop_create_args*, %struct.vop_create_args** %3, align 8
  %298 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %297, i32 0, i32 0
  %299 = load %struct.vnode**, %struct.vnode*** %298, align 8
  store %struct.vnode* %296, %struct.vnode** %299, align 8
  br label %317

300:                                              ; preds = %276
  %301 = load %struct.vnode*, %struct.vnode** %4, align 8
  %302 = call i64 @NFS_ISV4(%struct.vnode* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %316

304:                                              ; preds = %300
  %305 = load %struct.componentname*, %struct.componentname** %6, align 8
  %306 = getelementptr inbounds %struct.componentname, %struct.componentname* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %15, align 4
  %309 = load %struct.vattr*, %struct.vattr** %5, align 8
  %310 = getelementptr inbounds %struct.vattr, %struct.vattr* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.vattr*, %struct.vattr** %5, align 8
  %313 = getelementptr inbounds %struct.vattr, %struct.vattr* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @nfscl_maperr(i32 %307, i32 %308, i64 %311, i64 %314)
  store i32 %315, i32* %15, align 4
  br label %316

316:                                              ; preds = %304, %300
  br label %317

317:                                              ; preds = %316, %295
  %318 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %319 = call i32 @NFSLOCKNODE(%struct.nfsnode* %318)
  %320 = load i32, i32* @NMODIFIED, align 4
  %321 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %322 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load i32, i32* %17, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %317
  %328 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %329 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %328, i32 0, i32 1
  store i64 0, i64* %329, align 8
  %330 = load %struct.vnode*, %struct.vnode** %4, align 8
  %331 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %330)
  br label %332

332:                                              ; preds = %327, %317
  %333 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %334 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %333)
  %335 = load i32, i32* %15, align 4
  store i32 %335, i32* %2, align 4
  br label %336

336:                                              ; preds = %332, %49, %34
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @nfs_mknodrpc(%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.vattr*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i64 @NFSHASNFSV4(%struct.nfsmount*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfs_get_cverf(...) #1

declare dso_local i32 @nfsrpc_create(%struct.vnode*, i32, i32, %struct.vattr*, i32, i32, i32, i32, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i32*) #1

declare dso_local i32 @nfsrpc_lookup(%struct.vnode*, i32, i32, i32, i32, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i32*) #1

declare dso_local i32 @nfscl_nget(i32, %struct.vnode*, %struct.nfsfh*, %struct.componentname*, i32, %struct.nfsnode**, i32*, i32) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local %struct.vnode* @NFSTOV(%struct.nfsnode*) #1

declare dso_local i32 @nfsrpc_getattr(%struct.vnode*, i32, i32, %struct.nfsvattr*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV34(%struct.vnode*) #1

declare dso_local i64 @nfscl_checksattr(%struct.vattr*, %struct.nfsvattr*) #1

declare dso_local i32 @nfsrpc_setattr(%struct.vnode*, %struct.vattr*, i32*, i32, i32, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @cache_enter_time(%struct.vnode*, %struct.vnode*, %struct.componentname*, i32*, i32*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i64, i64) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
