; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_advlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_advlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.vop_advlock_args = type { i32, i32, i64, i32, %struct.vnode* }
%struct.vnode = type { i64, i32, i32, i32 }
%struct.nfsnode = type { i32, i64, i32, i32, i64 }
%struct.proc = type { %struct.ucred* }
%struct.vattr = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@LK_SHARED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@F_POSIX = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@NFSERR_DENIED = common dso_local global i32 0, align 4
@F_WAIT = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ncladvl\00", align 1
@EINTR = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@NHASBEENLOCKED = common dso_local global i32 0, align 4
@NFSMNT_NOLOCKD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_advlock_args*)* @nfs_advlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_advlock(%struct.vop_advlock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_advlock_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.nfsnode*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.vattr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_advlock_args* %0, %struct.vop_advlock_args** %3, align 8
  %13 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %13, i32 0, i32 4
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %16, i32 0, i32 4
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  %19 = call %struct.nfsnode* @VTONFS(%struct.vnode* %18)
  store %struct.nfsnode* %19, %struct.nfsnode** %6, align 8
  %20 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.proc*
  store %struct.proc* %23, %struct.proc** %7, align 8
  %24 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %24, %struct.thread** %8, align 8
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = load i32, i32* @LK_SHARED, align 4
  %27 = call i32 @NFSVOPLOCK(%struct.vnode* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @EBADF, align 4
  store i32 %31, i32* %2, align 4
  br label %359

32:                                               ; preds = %1
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = call i64 @NFS_ISV4(%struct.vnode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %292

36:                                               ; preds = %32
  %37 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @F_POSIX, align 4
  %41 = load i32, i32* @F_FLOCK, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %292

45:                                               ; preds = %36
  %46 = load %struct.vnode*, %struct.vnode** %4, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VREG, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %11, align 4
  br label %355

53:                                               ; preds = %45
  %54 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @F_POSIX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.proc*, %struct.proc** %7, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 0
  %63 = load %struct.ucred*, %struct.ucred** %62, align 8
  store %struct.ucred* %63, %struct.ucred** %5, align 8
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.thread*, %struct.thread** %8, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load %struct.ucred*, %struct.ucred** %66, align 8
  store %struct.ucred* %67, %struct.ucred** %5, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.vnode*, %struct.vnode** %4, align 8
  %70 = load i32, i32* @LK_UPGRADE, align 4
  %71 = load i32, i32* @LK_RETRY, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @NFSVOPLOCK(%struct.vnode* %69, i32 %72)
  %74 = load %struct.vnode*, %struct.vnode** %4, align 8
  %75 = getelementptr inbounds %struct.vnode, %struct.vnode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @VI_DOOMED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @EBADF, align 4
  store i32 %81, i32* %11, align 4
  br label %355

82:                                               ; preds = %68
  %83 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %84 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @F_UNLCK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load %struct.vnode*, %struct.vnode** %4, align 8
  %90 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %91 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ucred*, %struct.ucred** %5, align 8
  %94 = load %struct.thread*, %struct.thread** %8, align 8
  %95 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %96 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %99 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @nfscl_checkwritelocked(%struct.vnode* %89, i32 %92, %struct.ucred* %93, %struct.thread* %94, i64 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %88
  %104 = load %struct.vnode*, %struct.vnode** %4, align 8
  %105 = load i32, i32* @MNT_WAIT, align 4
  %106 = load %struct.thread*, %struct.thread** %8, align 8
  %107 = call i32 @ncl_flush(%struct.vnode* %104, i32 %105, %struct.thread* %106, i32 1, i32 0)
  br label %108

108:                                              ; preds = %103, %88, %82
  br label %109

109:                                              ; preds = %190, %108
  %110 = load %struct.vnode*, %struct.vnode** %4, align 8
  %111 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %112 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %115 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %118 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ucred*, %struct.ucred** %5, align 8
  %121 = load %struct.thread*, %struct.thread** %8, align 8
  %122 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %123 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %126 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @nfsrpc_advlock(%struct.vnode* %110, i32 %113, i32 %116, i32 %119, i32 0, %struct.ucred* %120, %struct.thread* %121, i64 %124, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @NFSERR_DENIED, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %172

132:                                              ; preds = %109
  %133 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %134 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @F_WAIT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %132
  %140 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %141 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @F_SETLK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %139
  %146 = load %struct.vnode*, %struct.vnode** %4, align 8
  %147 = call i32 @NFSVOPUNLOCK(%struct.vnode* %146, i32 0)
  %148 = load i32, i32* @PZERO, align 4
  %149 = load i32, i32* @PCATCH, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @nfs_catnap(i32 %150, i32 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = load i32, i32* @EINTR, align 4
  store i32 %156, i32* %2, align 4
  br label %359

157:                                              ; preds = %145
  %158 = load %struct.vnode*, %struct.vnode** %4, align 8
  %159 = load i32, i32* @LK_EXCLUSIVE, align 4
  %160 = load i32, i32* @LK_RETRY, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @NFSVOPLOCK(%struct.vnode* %158, i32 %161)
  %163 = load %struct.vnode*, %struct.vnode** %4, align 8
  %164 = getelementptr inbounds %struct.vnode, %struct.vnode* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @VI_DOOMED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %157
  %170 = load i32, i32* @EBADF, align 4
  store i32 %170, i32* %11, align 4
  br label %355

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %139, %132, %109
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @NFSERR_DENIED, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %179 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @F_WAIT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %186 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @F_SETLK, align 4
  %189 = icmp eq i32 %187, %188
  br label %190

190:                                              ; preds = %184, %177, %173
  %191 = phi i1 [ false, %177 ], [ false, %173 ], [ %189, %184 ]
  br i1 %191, label %109, label %192

192:                                              ; preds = %190
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @NFSERR_DENIED, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @EAGAIN, align 4
  store i32 %197, i32* %11, align 4
  br label %355

198:                                              ; preds = %192
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @EINVAL, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @EBADF, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @EINTR, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206, %202, %198
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* %11, align 4
  br label %355

212:                                              ; preds = %206
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* @EACCES, align 4
  store i32 %216, i32* %11, align 4
  br label %355

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  %220 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %221 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @F_SETLK, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %291

225:                                              ; preds = %219
  %226 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %227 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @NMODIFIED, align 4
  %230 = and i32 %228, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %225
  %233 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %234 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %233, i32 0, i32 4
  store i64 0, i64* %234, align 8
  %235 = load %struct.vnode*, %struct.vnode** %4, align 8
  %236 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %235)
  %237 = load %struct.vnode*, %struct.vnode** %4, align 8
  %238 = load %struct.ucred*, %struct.ucred** %5, align 8
  %239 = call i32 @VOP_GETATTR(%struct.vnode* %237, %struct.vattr* %9, %struct.ucred* %238)
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %232, %225
  %241 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %242 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @NMODIFIED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %247
  %251 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %252 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %253, %255
  br i1 %256, label %257, label %281

257:                                              ; preds = %250, %247, %240
  %258 = load %struct.vnode*, %struct.vnode** %4, align 8
  %259 = load i32, i32* @V_SAVE, align 4
  %260 = load %struct.thread*, %struct.thread** %8, align 8
  %261 = call i32 @ncl_vinvalbuf(%struct.vnode* %258, i32 %259, %struct.thread* %260, i32 1)
  %262 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %263 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %262, i32 0, i32 4
  store i64 0, i64* %263, align 8
  %264 = load %struct.vnode*, %struct.vnode** %4, align 8
  %265 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %264)
  %266 = load %struct.vnode*, %struct.vnode** %4, align 8
  %267 = load %struct.ucred*, %struct.ucred** %5, align 8
  %268 = call i32 @VOP_GETATTR(%struct.vnode* %266, %struct.vattr* %9, %struct.ucred* %267)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %257
  %272 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %275 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  %276 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %279 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %278, i32 0, i32 1
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %271, %257
  br label %281

281:                                              ; preds = %280, %250
  %282 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %283 = call i32 @NFSLOCKNODE(%struct.nfsnode* %282)
  %284 = load i32, i32* @NHASBEENLOCKED, align 4
  %285 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %286 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %290 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %289)
  br label %291

291:                                              ; preds = %281, %219
  br label %354

292:                                              ; preds = %36, %32
  %293 = load %struct.vnode*, %struct.vnode** %4, align 8
  %294 = call i64 @NFS_ISV4(%struct.vnode* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %351, label %296

296:                                              ; preds = %292
  %297 = load %struct.vnode*, %struct.vnode** %4, align 8
  %298 = getelementptr inbounds %struct.vnode, %struct.vnode* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = call %struct.TYPE_2__* @VFSTONFS(i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @NFSMNT_NOLOCKD, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %296
  %307 = load %struct.vnode*, %struct.vnode** %4, align 8
  %308 = call %struct.nfsnode* @VTONFS(%struct.vnode* %307)
  %309 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  store i32 %310, i32* %12, align 4
  %311 = load %struct.vnode*, %struct.vnode** %4, align 8
  %312 = call i32 @NFSVOPUNLOCK(%struct.vnode* %311, i32 0)
  %313 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %314 = load %struct.vnode*, %struct.vnode** %4, align 8
  %315 = getelementptr inbounds %struct.vnode, %struct.vnode* %314, i32 0, i32 2
  %316 = load i32, i32* %12, align 4
  %317 = call i32 @lf_advlock(%struct.vop_advlock_args* %313, i32* %315, i32 %316)
  store i32 %317, i32* %11, align 4
  br label %321

318:                                              ; preds = %296
  %319 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %320 = call i32 @nfs_advlock_p(%struct.vop_advlock_args* %319)
  store i32 %320, i32* %11, align 4
  br label %321

321:                                              ; preds = %318, %306
  %322 = load i32, i32* %11, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %349

324:                                              ; preds = %321
  %325 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %326 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @F_SETLK, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %349

330:                                              ; preds = %324
  %331 = load %struct.vnode*, %struct.vnode** %4, align 8
  %332 = load i32, i32* @LK_SHARED, align 4
  %333 = call i32 @NFSVOPLOCK(%struct.vnode* %331, i32 %332)
  store i32 %333, i32* %11, align 4
  %334 = load i32, i32* %11, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %348

336:                                              ; preds = %330
  %337 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %338 = call i32 @NFSLOCKNODE(%struct.nfsnode* %337)
  %339 = load i32, i32* @NHASBEENLOCKED, align 4
  %340 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %341 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  %344 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %345 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %344)
  %346 = load %struct.vnode*, %struct.vnode** %4, align 8
  %347 = call i32 @NFSVOPUNLOCK(%struct.vnode* %346, i32 0)
  br label %348

348:                                              ; preds = %336, %330
  br label %349

349:                                              ; preds = %348, %324, %321
  %350 = load i32, i32* %11, align 4
  store i32 %350, i32* %2, align 4
  br label %359

351:                                              ; preds = %292
  %352 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %352, i32* %11, align 4
  br label %353

353:                                              ; preds = %351
  br label %354

354:                                              ; preds = %353, %291
  br label %355

355:                                              ; preds = %354, %215, %210, %196, %169, %80, %51
  %356 = load %struct.vnode*, %struct.vnode** %4, align 8
  %357 = call i32 @NFSVOPUNLOCK(%struct.vnode* %356, i32 0)
  %358 = load i32, i32* %11, align 4
  store i32 %358, i32* %2, align 4
  br label %359

359:                                              ; preds = %355, %349, %155, %30
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i64 @nfscl_checkwritelocked(%struct.vnode*, i32, %struct.ucred*, %struct.thread*, i64, i32) #1

declare dso_local i32 @ncl_flush(%struct.vnode*, i32, %struct.thread*, i32, i32) #1

declare dso_local i32 @nfsrpc_advlock(%struct.vnode*, i32, i32, i32, i32, %struct.ucred*, %struct.thread*, i64, i32) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @nfs_catnap(i32, i32, i8*) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, %struct.thread*, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local %struct.TYPE_2__* @VFSTONFS(i32) #1

declare dso_local i32 @lf_advlock(%struct.vop_advlock_args*, i32*, i32) #1

declare dso_local i32 @nfs_advlock_p(%struct.vop_advlock_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
