; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vop_close_args = type { i32, i32, %struct.ucred*, %struct.vnode* }
%struct.vnode = type { i64, i32, i64 }
%struct.nfsnode = type { i32, i32, i64, i64, i32, i64 }
%struct.nfsvattr = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NOCRED = common dso_local global %struct.ucred* null, align 8
@VREG = common dso_local global i64 0, align 8
@nfs_clean_pages_on_close = common dso_local global i64 0, align 8
@NMODIFIED = common dso_local global i32 0, align 4
@newnfs_commit_on_close = common dso_local global i64 0, align 8
@MNT_WAIT = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@NWRITEERR = common dso_local global i32 0, align 4
@NFSMNT_NOCTO = common dso_local global i32 0, align 4
@newnfs_directio_enable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"nfs_close: dirty unflushed (%d) directio buffers\0A\00", align 1
@O_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"nfs_close: unexpectedly value (0) of n_directio_opens\0A\00", align 1
@NNONCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_close_args*)* @nfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_close(%struct.vop_close_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_close_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca %struct.nfsvattr, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vop_close_args* %0, %struct.vop_close_args** %3, align 8
  %14 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %14, i32 0, i32 3
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %4, align 8
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = call %struct.nfsnode* @VTONFS(%struct.vnode* %17)
  store %struct.nfsnode* %18, %struct.nfsnode** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @NFSCL_FORCEDISM(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %288

28:                                               ; preds = %1
  %29 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %29, i32 0, i32 2
  %31 = load %struct.ucred*, %struct.ucred** %30, align 8
  %32 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %33 = icmp eq %struct.ucred* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call %struct.ucred* (...) @newnfs_getcred()
  store %struct.ucred* %35, %struct.ucred** %7, align 8
  store i32 1, i32* %10, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %37, i32 0, i32 2
  %39 = load %struct.ucred*, %struct.ucred** %38, align 8
  store %struct.ucred* %39, %struct.ucred** %7, align 8
  br label %40

40:                                               ; preds = %36, %34
  %41 = load %struct.vnode*, %struct.vnode** %4, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VREG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %159

46:                                               ; preds = %40
  %47 = load i64, i64* @nfs_clean_pages_on_close, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.vnode*, %struct.vnode** %4, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.vnode*, %struct.vnode** %4, align 8
  %56 = getelementptr inbounds %struct.vnode, %struct.vnode* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @VM_OBJECT_WLOCK(i64 %57)
  %59 = load %struct.vnode*, %struct.vnode** %4, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @vm_object_page_clean(i64 %61, i32 0, i32 0, i32 0)
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @VM_OBJECT_WUNLOCK(i64 %65)
  br label %67

67:                                               ; preds = %54, %49, %46
  %68 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %69 = call i32 @NFSLOCKNODE(%struct.nfsnode* %68)
  %70 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %71 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NMODIFIED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %126

76:                                               ; preds = %67
  %77 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %78 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %77)
  %79 = load %struct.vnode*, %struct.vnode** %4, align 8
  %80 = call i64 @NFS_ISV3(%struct.vnode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load i64, i64* @newnfs_commit_on_close, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  store i32 %86, i32* %12, align 4
  %87 = load %struct.vnode*, %struct.vnode** %4, align 8
  %88 = load i32, i32* @MNT_WAIT, align 4
  %89 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %90 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @ncl_flush(%struct.vnode* %87, i32 %88, i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %8, align 4
  br label %123

94:                                               ; preds = %76
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = call i64 @NFS_ISV4(%struct.vnode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load %struct.vnode*, %struct.vnode** %4, align 8
  %100 = call i64 @nfscl_mustflush(%struct.vnode* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i64, i64* @newnfs_commit_on_close, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  store i32 %106, i32* %13, align 4
  %107 = load %struct.vnode*, %struct.vnode** %4, align 8
  %108 = load i32, i32* @MNT_WAIT, align 4
  %109 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %110 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @ncl_flush(%struct.vnode* %107, i32 %108, i32 %111, i32 %112, i32 0)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %102, %98
  br label %122

115:                                              ; preds = %94
  %116 = load %struct.vnode*, %struct.vnode** %4, align 8
  %117 = load i32, i32* @V_SAVE, align 4
  %118 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %119 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ncl_vinvalbuf(%struct.vnode* %116, i32 %117, i32 %120, i32 1)
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %115, %114
  br label %123

123:                                              ; preds = %122, %82
  %124 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %125 = call i32 @NFSLOCKNODE(%struct.nfsnode* %124)
  br label %126

126:                                              ; preds = %123, %67
  %127 = load %struct.vnode*, %struct.vnode** %4, align 8
  %128 = getelementptr inbounds %struct.vnode, %struct.vnode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_2__* @VFSTONFS(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %136 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %135, i32 0, i32 5
  store i64 0, i64* %136, align 8
  %137 = load %struct.vnode*, %struct.vnode** %4, align 8
  %138 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %137)
  br label %139

139:                                              ; preds = %134, %126
  %140 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %141 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NWRITEERR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i32, i32* @NWRITEERR, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %150 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %154 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %146, %139
  %157 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %158 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %157)
  br label %159

159:                                              ; preds = %156, %40
  %160 = load %struct.vnode*, %struct.vnode** %4, align 8
  %161 = call i64 @NFS_ISV4(%struct.vnode* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %225

163:                                              ; preds = %159
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = load %struct.vnode*, %struct.vnode** %4, align 8
  %168 = call i64 @nfscl_mustflush(%struct.vnode* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %202

170:                                              ; preds = %166
  %171 = load %struct.vnode*, %struct.vnode** %4, align 8
  %172 = getelementptr inbounds %struct.vnode, %struct.vnode* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @VREG, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %170
  %177 = load %struct.vnode*, %struct.vnode** %4, align 8
  %178 = getelementptr inbounds %struct.vnode, %struct.vnode* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call %struct.TYPE_2__* @VFSTONFS(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @NFSMNT_NOCTO, align 4
  %184 = and i32 %182, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %176
  %187 = load %struct.vnode*, %struct.vnode** %4, align 8
  %188 = load %struct.ucred*, %struct.ucred** %7, align 8
  %189 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %190 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @nfsrpc_getattr(%struct.vnode* %187, %struct.ucred* %188, i32 %191, %struct.nfsvattr* %6, i32* null)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %6, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %199 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  %200 = call i32 @nfscl_loadattrcache(%struct.vnode** %4, %struct.nfsvattr* %6, i32* null, i32* null, i32 0, i32 0)
  br label %201

201:                                              ; preds = %195, %186
  br label %202

202:                                              ; preds = %201, %176, %170, %166, %163
  %203 = load %struct.vnode*, %struct.vnode** %4, align 8
  %204 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %205 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @nfsrpc_close(%struct.vnode* %203, i32 0, i32 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %213, %210, %202
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %220 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @nfscl_maperr(i32 %221, i32 %222, i32 0, i32 0)
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %218, %215
  br label %225

225:                                              ; preds = %224, %159
  %226 = load i64, i64* @newnfs_directio_enable, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %230 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %235 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @KASSERT(i32 %233, i8* %237)
  br label %239

239:                                              ; preds = %228, %225
  %240 = load i64, i64* @newnfs_directio_enable, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %280

242:                                              ; preds = %239
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @O_DIRECT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %280

247:                                              ; preds = %242
  %248 = load %struct.vnode*, %struct.vnode** %4, align 8
  %249 = getelementptr inbounds %struct.vnode, %struct.vnode* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @VREG, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %280

253:                                              ; preds = %247
  %254 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %255 = call i32 @NFSLOCKNODE(%struct.nfsnode* %254)
  %256 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %257 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp sgt i64 %258, 0
  %260 = zext i1 %259 to i32
  %261 = call i32 @KASSERT(i32 %260, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %262 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %263 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, -1
  store i64 %265, i64* %263, align 8
  %266 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %267 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %253
  %271 = load i32, i32* @NNONCACHE, align 4
  %272 = xor i32 %271, -1
  %273 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %274 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %270, %253
  %278 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %279 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %278)
  br label %280

280:                                              ; preds = %277, %247, %242, %239
  %281 = load i32, i32* %10, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load %struct.ucred*, %struct.ucred** %7, align 8
  %285 = call i32 @NFSFREECRED(%struct.ucred* %284)
  br label %286

286:                                              ; preds = %283, %280
  %287 = load i32, i32* %8, align 4
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %286, %27
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i64 @NFSCL_FORCEDISM(i32) #1

declare dso_local %struct.ucred* @newnfs_getcred(...) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i64) #1

declare dso_local i32 @vm_object_page_clean(i64, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i64) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i64 @NFS_ISV3(%struct.vnode*) #1

declare dso_local i32 @ncl_flush(%struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i64 @nfscl_mustflush(%struct.vnode*) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @VFSTONFS(i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_getattr(%struct.vnode*, %struct.ucred*, i32, %struct.nfsvattr*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nfsrpc_close(%struct.vnode*, i32, i32) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @NFSFREECRED(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
