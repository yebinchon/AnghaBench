; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_bioread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_bioread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.vnode = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.uio = type { i64, i64, i64, %struct.thread* }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsnode = type { i64, i32 }
%struct.buf = type { i32, i32, i64, i32, i8* }
%struct.nfsmount = type { i32, i32, i64, i64, i64, i32, i32 }

@UIO_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"ncl_read mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFSMNT_NFSV3 = common dso_local global i32 0, align 4
@NFSSTA_GOTFSINFO = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@newnfs_directio_enable = common dso_local global i64 0, align 8
@IO_DIRECT = common dso_local global i32 0, align 4
@IO_SEQSHIFT = common dso_local global i32 0, align 4
@BKVASIZE = common dso_local global i64 0, align 8
@nfsstatsv1 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EINTR = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i8* null, align 8
@B_INVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@NFS_MAXPATHLEN = common dso_local global i32 0, align 4
@NFS_DIRBLKSIZ = common dso_local global i32 0, align 4
@NFSERR_BAD_COOKIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c" ncl_bioread: type %x unexpected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_bioread(%struct.vnode* %0, %struct.uio* %1, i32 %2, %struct.ucred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.nfsnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buf*, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca %struct.thread*, align 8
  %16 = alloca %struct.nfsmount*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  %27 = load %struct.vnode*, %struct.vnode** %6, align 8
  %28 = call %struct.nfsnode* @VTONFS(%struct.vnode* %27)
  store %struct.nfsnode* %28, %struct.nfsnode** %10, align 8
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.nfsmount* @VFSTONFS(i32 %31)
  store %struct.nfsmount* %32, %struct.nfsmount** %16, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %33 = load %struct.uio*, %struct.uio** %7, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UIO_READ, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.uio*, %struct.uio** %7, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %814

45:                                               ; preds = %4
  %46 = load %struct.uio*, %struct.uio** %7, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %5, align 4
  br label %814

52:                                               ; preds = %45
  %53 = load %struct.uio*, %struct.uio** %7, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 3
  %55 = load %struct.thread*, %struct.thread** %54, align 8
  store %struct.thread* %55, %struct.thread** %15, align 8
  %56 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %57 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %56, i32 0, i32 6
  %58 = call i32 @mtx_lock(i32* %57)
  %59 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %60 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NFSMNT_NFSV3, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %52
  %66 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %67 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NFSSTA_GOTFSINFO, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %74 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %73, i32 0, i32 6
  %75 = call i32 @mtx_unlock(i32* %74)
  %76 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %77 = load %struct.vnode*, %struct.vnode** %6, align 8
  %78 = load %struct.ucred*, %struct.ucred** %9, align 8
  %79 = load %struct.thread*, %struct.thread** %15, align 8
  %80 = call i32 @ncl_fsinfo(%struct.nfsmount* %76, %struct.vnode* %77, %struct.ucred* %78, %struct.thread* %79)
  %81 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %82 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %81, i32 0, i32 6
  %83 = call i32 @mtx_lock(i32* %82)
  br label %84

84:                                               ; preds = %72, %65, %52
  %85 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %86 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %91 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %84
  %95 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %96 = call i32 @newnfs_iosize(%struct.nfsmount* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.uio*, %struct.uio** %7, align 8
  %99 = getelementptr inbounds %struct.uio, %struct.uio* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.uio*, %struct.uio** %7, align 8
  %102 = getelementptr inbounds %struct.uio, %struct.uio* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  store i64 %104, i64* %25, align 8
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 130
  br i1 %108, label %109, label %126

109:                                              ; preds = %97
  %110 = load i64, i64* %25, align 8
  %111 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %112 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load i64, i64* %25, align 8
  %117 = load %struct.uio*, %struct.uio** %7, align 8
  %118 = getelementptr inbounds %struct.uio, %struct.uio* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115, %109
  %122 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %123 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %122, i32 0, i32 6
  %124 = call i32 @mtx_unlock(i32* %123)
  %125 = load i32, i32* @EFBIG, align 4
  store i32 %125, i32* %5, align 4
  br label %814

126:                                              ; preds = %115, %97
  %127 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %128 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %127, i32 0, i32 6
  %129 = call i32 @mtx_unlock(i32* %128)
  %130 = load i64, i64* @newnfs_directio_enable, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @IO_DIRECT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.vnode*, %struct.vnode** %6, align 8
  %139 = getelementptr inbounds %struct.vnode, %struct.vnode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.vnode*, %struct.vnode** %6, align 8
  %144 = load %struct.uio*, %struct.uio** %7, align 8
  %145 = load %struct.ucred*, %struct.ucred** %9, align 8
  %146 = call i32 @ncl_readrpc(%struct.vnode* %143, %struct.uio* %144, %struct.ucred* %145)
  store i32 %146, i32* %5, align 4
  br label %814

147:                                              ; preds = %137, %132, %126
  %148 = load %struct.vnode*, %struct.vnode** %6, align 8
  %149 = getelementptr inbounds %struct.vnode, %struct.vnode* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @IO_SEQSHIFT, align 4
  %154 = ashr i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %155, %157
  %159 = load i64, i64* @BKVASIZE, align 8
  %160 = sdiv i64 %158, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %20, align 4
  %162 = load %struct.vnode*, %struct.vnode** %6, align 8
  %163 = load %struct.thread*, %struct.thread** %15, align 8
  %164 = load %struct.ucred*, %struct.ucred** %9, align 8
  %165 = call i32 @nfs_bioread_check_cons(%struct.vnode* %162, %struct.thread* %163, %struct.ucred* %164)
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %22, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %147
  %169 = load i32, i32* %22, align 4
  store i32 %169, i32* %5, align 4
  br label %814

170:                                              ; preds = %147
  br label %171

171:                                              ; preds = %810, %170
  %172 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %173 = call i32 @NFSLOCKNODE(%struct.nfsnode* %172)
  %174 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %175 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %26, align 8
  %177 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %178 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %177)
  %179 = load %struct.vnode*, %struct.vnode** %6, align 8
  %180 = getelementptr inbounds %struct.vnode, %struct.vnode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %768 [
    i32 128, label %182
    i32 129, label %398
    i32 130, label %460
  ]

182:                                              ; preds = %171
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfsstatsv1, i32 0, i32 2), align 4
  %184 = call i32 @NFSINCRGLOBAL(i32 %183)
  %185 = load %struct.uio*, %struct.uio** %7, align 8
  %186 = getelementptr inbounds %struct.uio, %struct.uio* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = sdiv i64 %187, %189
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %17, align 4
  %192 = load %struct.uio*, %struct.uio** %7, align 8
  %193 = getelementptr inbounds %struct.uio, %struct.uio* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %11, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = sub nsw i64 %194, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %24, align 4
  %201 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %202 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %310

205:                                              ; preds = %182
  store i32 0, i32* %21, align 4
  br label %206

206:                                              ; preds = %306, %205
  %207 = load i32, i32* %21, align 4
  %208 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %209 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %206
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %20, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = load i32, i32* %17, align 4
  %218 = add nsw i32 %217, 1
  %219 = load i32, i32* %21, align 4
  %220 = add nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %221, %223
  %225 = load i64, i64* %26, align 8
  %226 = icmp slt i64 %224, %225
  br label %227

227:                                              ; preds = %216, %212, %206
  %228 = phi i1 [ false, %212 ], [ false, %206 ], [ %226, %216 ]
  br i1 %228, label %229, label %309

229:                                              ; preds = %227
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  %232 = load i32, i32* %21, align 4
  %233 = add nsw i32 %231, %232
  store i32 %233, i32* %18, align 4
  %234 = load %struct.vnode*, %struct.vnode** %6, align 8
  %235 = getelementptr inbounds %struct.vnode, %struct.vnode* %234, i32 0, i32 1
  %236 = load i32, i32* %18, align 4
  %237 = call i32* @incore(%struct.TYPE_4__* %235, i32 %236)
  %238 = icmp eq i32* %237, null
  br i1 %238, label %239, label %305

239:                                              ; preds = %229
  %240 = load %struct.vnode*, %struct.vnode** %6, align 8
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.thread*, %struct.thread** %15, align 8
  %244 = call %struct.buf* @nfs_getcacheblk(%struct.vnode* %240, i32 %241, i32 %242, %struct.thread* %243)
  store %struct.buf* %244, %struct.buf** %14, align 8
  %245 = load %struct.buf*, %struct.buf** %14, align 8
  %246 = icmp ne %struct.buf* %245, null
  br i1 %246, label %259, label %247

247:                                              ; preds = %239
  %248 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %249 = load %struct.thread*, %struct.thread** %15, align 8
  %250 = call i32 @newnfs_sigintr(%struct.nfsmount* %248, %struct.thread* %249)
  store i32 %250, i32* %22, align 4
  %251 = load i32, i32* %22, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = load i32, i32* %22, align 4
  br label %257

255:                                              ; preds = %247
  %256 = load i32, i32* @EINTR, align 4
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i32 [ %254, %253 ], [ %256, %255 ]
  store i32 %258, i32* %5, align 4
  br label %814

259:                                              ; preds = %239
  %260 = load %struct.buf*, %struct.buf** %14, align 8
  %261 = getelementptr inbounds %struct.buf, %struct.buf* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @B_CACHE, align 4
  %264 = load i32, i32* @B_DELWRI, align 4
  %265 = or i32 %263, %264
  %266 = and i32 %262, %265
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %301

268:                                              ; preds = %259
  %269 = load i32, i32* @B_ASYNC, align 4
  %270 = load %struct.buf*, %struct.buf** %14, align 8
  %271 = getelementptr inbounds %struct.buf, %struct.buf* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  %274 = load i8*, i8** @BIO_READ, align 8
  %275 = load %struct.buf*, %struct.buf** %14, align 8
  %276 = getelementptr inbounds %struct.buf, %struct.buf* %275, i32 0, i32 4
  store i8* %274, i8** %276, align 8
  %277 = load %struct.buf*, %struct.buf** %14, align 8
  %278 = call i32 @vfs_busy_pages(%struct.buf* %277, i32 0)
  %279 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %280 = load %struct.buf*, %struct.buf** %14, align 8
  %281 = load %struct.ucred*, %struct.ucred** %9, align 8
  %282 = load %struct.thread*, %struct.thread** %15, align 8
  %283 = call i32 @ncl_asyncio(%struct.nfsmount* %279, %struct.buf* %280, %struct.ucred* %281, %struct.thread* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %300

285:                                              ; preds = %268
  %286 = load i32, i32* @B_INVAL, align 4
  %287 = load %struct.buf*, %struct.buf** %14, align 8
  %288 = getelementptr inbounds %struct.buf, %struct.buf* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* @BIO_ERROR, align 4
  %292 = load %struct.buf*, %struct.buf** %14, align 8
  %293 = getelementptr inbounds %struct.buf, %struct.buf* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  %296 = load %struct.buf*, %struct.buf** %14, align 8
  %297 = call i32 @vfs_unbusy_pages(%struct.buf* %296)
  %298 = load %struct.buf*, %struct.buf** %14, align 8
  %299 = call i32 @brelse(%struct.buf* %298)
  br label %309

300:                                              ; preds = %268
  br label %304

301:                                              ; preds = %259
  %302 = load %struct.buf*, %struct.buf** %14, align 8
  %303 = call i32 @brelse(%struct.buf* %302)
  br label %304

304:                                              ; preds = %301, %300
  br label %305

305:                                              ; preds = %304, %229
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %21, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %21, align 4
  br label %206

309:                                              ; preds = %285, %227
  br label %310

310:                                              ; preds = %309, %182
  %311 = load i32, i32* %11, align 4
  store i32 %311, i32* %19, align 4
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 %313, %315
  %317 = load i64, i64* %26, align 8
  %318 = icmp sge i64 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %310
  store i32 0, i32* %19, align 4
  br label %339

320:                                              ; preds = %310
  %321 = load i32, i32* %17, align 4
  %322 = add nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = mul nsw i64 %323, %325
  %327 = load i64, i64* %26, align 8
  %328 = icmp sgt i64 %326, %327
  br i1 %328, label %329, label %338

329:                                              ; preds = %320
  %330 = load i64, i64* %26, align 8
  %331 = load i32, i32* %17, align 4
  %332 = sext i32 %331 to i64
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = mul nsw i64 %332, %334
  %336 = sub nsw i64 %330, %335
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %19, align 4
  br label %338

338:                                              ; preds = %329, %320
  br label %339

339:                                              ; preds = %338, %319
  %340 = load %struct.vnode*, %struct.vnode** %6, align 8
  %341 = load i32, i32* %17, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load %struct.thread*, %struct.thread** %15, align 8
  %344 = call %struct.buf* @nfs_getcacheblk(%struct.vnode* %340, i32 %341, i32 %342, %struct.thread* %343)
  store %struct.buf* %344, %struct.buf** %13, align 8
  %345 = load %struct.buf*, %struct.buf** %13, align 8
  %346 = icmp ne %struct.buf* %345, null
  br i1 %346, label %359, label %347

347:                                              ; preds = %339
  %348 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %349 = load %struct.thread*, %struct.thread** %15, align 8
  %350 = call i32 @newnfs_sigintr(%struct.nfsmount* %348, %struct.thread* %349)
  store i32 %350, i32* %22, align 4
  %351 = load i32, i32* %22, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %347
  %354 = load i32, i32* %22, align 4
  br label %357

355:                                              ; preds = %347
  %356 = load i32, i32* @EINTR, align 4
  br label %357

357:                                              ; preds = %355, %353
  %358 = phi i32 [ %354, %353 ], [ %356, %355 ]
  store i32 %358, i32* %5, align 4
  br label %814

359:                                              ; preds = %339
  %360 = load %struct.buf*, %struct.buf** %13, align 8
  %361 = getelementptr inbounds %struct.buf, %struct.buf* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @B_CACHE, align 4
  %364 = and i32 %362, %363
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %384

366:                                              ; preds = %359
  %367 = load i8*, i8** @BIO_READ, align 8
  %368 = load %struct.buf*, %struct.buf** %13, align 8
  %369 = getelementptr inbounds %struct.buf, %struct.buf* %368, i32 0, i32 4
  store i8* %367, i8** %369, align 8
  %370 = load %struct.buf*, %struct.buf** %13, align 8
  %371 = call i32 @vfs_busy_pages(%struct.buf* %370, i32 0)
  %372 = load %struct.vnode*, %struct.vnode** %6, align 8
  %373 = load %struct.buf*, %struct.buf** %13, align 8
  %374 = load %struct.ucred*, %struct.ucred** %9, align 8
  %375 = load %struct.thread*, %struct.thread** %15, align 8
  %376 = call i32 @ncl_doio(%struct.vnode* %372, %struct.buf* %373, %struct.ucred* %374, %struct.thread* %375, i32 0)
  store i32 %376, i32* %22, align 4
  %377 = load i32, i32* %22, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %366
  %380 = load %struct.buf*, %struct.buf** %13, align 8
  %381 = call i32 @brelse(%struct.buf* %380)
  %382 = load i32, i32* %22, align 4
  store i32 %382, i32* %5, align 4
  br label %814

383:                                              ; preds = %366
  br label %384

384:                                              ; preds = %383, %359
  store i32 0, i32* %23, align 4
  %385 = load i32, i32* %24, align 4
  %386 = load i32, i32* %19, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %384
  %389 = load i32, i32* %19, align 4
  %390 = load i32, i32* %24, align 4
  %391 = sub nsw i32 %389, %390
  %392 = load %struct.uio*, %struct.uio** %7, align 8
  %393 = getelementptr inbounds %struct.uio, %struct.uio* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = trunc i64 %394 to i32
  %396 = call i32 @MIN(i32 %391, i32 %395)
  store i32 %396, i32* %23, align 4
  br label %397

397:                                              ; preds = %388, %384
  br label %773

398:                                              ; preds = %171
  %399 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfsstatsv1, i32 0, i32 1), align 4
  %400 = call i32 @NFSINCRGLOBAL(i32 %399)
  %401 = load %struct.vnode*, %struct.vnode** %6, align 8
  %402 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %403 = load %struct.thread*, %struct.thread** %15, align 8
  %404 = call %struct.buf* @nfs_getcacheblk(%struct.vnode* %401, i32 0, i32 %402, %struct.thread* %403)
  store %struct.buf* %404, %struct.buf** %13, align 8
  %405 = load %struct.buf*, %struct.buf** %13, align 8
  %406 = icmp ne %struct.buf* %405, null
  br i1 %406, label %419, label %407

407:                                              ; preds = %398
  %408 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %409 = load %struct.thread*, %struct.thread** %15, align 8
  %410 = call i32 @newnfs_sigintr(%struct.nfsmount* %408, %struct.thread* %409)
  store i32 %410, i32* %22, align 4
  %411 = load i32, i32* %22, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %407
  %414 = load i32, i32* %22, align 4
  br label %417

415:                                              ; preds = %407
  %416 = load i32, i32* @EINTR, align 4
  br label %417

417:                                              ; preds = %415, %413
  %418 = phi i32 [ %414, %413 ], [ %416, %415 ]
  store i32 %418, i32* %5, align 4
  br label %814

419:                                              ; preds = %398
  %420 = load %struct.buf*, %struct.buf** %13, align 8
  %421 = getelementptr inbounds %struct.buf, %struct.buf* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @B_CACHE, align 4
  %424 = and i32 %422, %423
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %449

426:                                              ; preds = %419
  %427 = load i8*, i8** @BIO_READ, align 8
  %428 = load %struct.buf*, %struct.buf** %13, align 8
  %429 = getelementptr inbounds %struct.buf, %struct.buf* %428, i32 0, i32 4
  store i8* %427, i8** %429, align 8
  %430 = load %struct.buf*, %struct.buf** %13, align 8
  %431 = call i32 @vfs_busy_pages(%struct.buf* %430, i32 0)
  %432 = load %struct.vnode*, %struct.vnode** %6, align 8
  %433 = load %struct.buf*, %struct.buf** %13, align 8
  %434 = load %struct.ucred*, %struct.ucred** %9, align 8
  %435 = load %struct.thread*, %struct.thread** %15, align 8
  %436 = call i32 @ncl_doio(%struct.vnode* %432, %struct.buf* %433, %struct.ucred* %434, %struct.thread* %435, i32 0)
  store i32 %436, i32* %22, align 4
  %437 = load i32, i32* %22, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %448

439:                                              ; preds = %426
  %440 = load i32, i32* @BIO_ERROR, align 4
  %441 = load %struct.buf*, %struct.buf** %13, align 8
  %442 = getelementptr inbounds %struct.buf, %struct.buf* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = or i32 %443, %440
  store i32 %444, i32* %442, align 8
  %445 = load %struct.buf*, %struct.buf** %13, align 8
  %446 = call i32 @brelse(%struct.buf* %445)
  %447 = load i32, i32* %22, align 4
  store i32 %447, i32* %5, align 4
  br label %814

448:                                              ; preds = %426
  br label %449

449:                                              ; preds = %448, %419
  %450 = load %struct.uio*, %struct.uio** %7, align 8
  %451 = getelementptr inbounds %struct.uio, %struct.uio* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = trunc i64 %452 to i32
  %454 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %455 = load %struct.buf*, %struct.buf** %13, align 8
  %456 = getelementptr inbounds %struct.buf, %struct.buf* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = sub nsw i32 %454, %457
  %459 = call i32 @MIN(i32 %453, i32 %458)
  store i32 %459, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %773

460:                                              ; preds = %171
  %461 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfsstatsv1, i32 0, i32 0), align 4
  %462 = call i32 @NFSINCRGLOBAL(i32 %461)
  %463 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %464 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %477

467:                                              ; preds = %460
  %468 = load %struct.uio*, %struct.uio** %7, align 8
  %469 = getelementptr inbounds %struct.uio, %struct.uio* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %472 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = sext i32 %473 to i64
  %475 = icmp sge i64 %470, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %467
  store i32 0, i32* %5, align 4
  br label %814

477:                                              ; preds = %467, %460
  %478 = load %struct.uio*, %struct.uio** %7, align 8
  %479 = getelementptr inbounds %struct.uio, %struct.uio* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = trunc i64 %480 to i32
  %482 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %483 = sdiv i32 %481, %482
  store i32 %483, i32* %17, align 4
  %484 = load %struct.uio*, %struct.uio** %7, align 8
  %485 = getelementptr inbounds %struct.uio, %struct.uio* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %488 = sub nsw i32 %487, 1
  %489 = sext i32 %488 to i64
  %490 = and i64 %486, %489
  %491 = trunc i64 %490 to i32
  store i32 %491, i32* %24, align 4
  %492 = load %struct.vnode*, %struct.vnode** %6, align 8
  %493 = load i32, i32* %17, align 4
  %494 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %495 = load %struct.thread*, %struct.thread** %15, align 8
  %496 = call %struct.buf* @nfs_getcacheblk(%struct.vnode* %492, i32 %493, i32 %494, %struct.thread* %495)
  store %struct.buf* %496, %struct.buf** %13, align 8
  %497 = load %struct.buf*, %struct.buf** %13, align 8
  %498 = icmp ne %struct.buf* %497, null
  br i1 %498, label %511, label %499

499:                                              ; preds = %477
  %500 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %501 = load %struct.thread*, %struct.thread** %15, align 8
  %502 = call i32 @newnfs_sigintr(%struct.nfsmount* %500, %struct.thread* %501)
  store i32 %502, i32* %22, align 4
  %503 = load i32, i32* %22, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %499
  %506 = load i32, i32* %22, align 4
  br label %509

507:                                              ; preds = %499
  %508 = load i32, i32* @EINTR, align 4
  br label %509

509:                                              ; preds = %507, %505
  %510 = phi i32 [ %506, %505 ], [ %508, %507 ]
  store i32 %510, i32* %5, align 4
  br label %814

511:                                              ; preds = %477
  %512 = load %struct.buf*, %struct.buf** %13, align 8
  %513 = getelementptr inbounds %struct.buf, %struct.buf* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @B_CACHE, align 4
  %516 = and i32 %514, %515
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %639

518:                                              ; preds = %511
  %519 = load i8*, i8** @BIO_READ, align 8
  %520 = load %struct.buf*, %struct.buf** %13, align 8
  %521 = getelementptr inbounds %struct.buf, %struct.buf* %520, i32 0, i32 4
  store i8* %519, i8** %521, align 8
  %522 = load %struct.buf*, %struct.buf** %13, align 8
  %523 = call i32 @vfs_busy_pages(%struct.buf* %522, i32 0)
  %524 = load %struct.vnode*, %struct.vnode** %6, align 8
  %525 = load %struct.buf*, %struct.buf** %13, align 8
  %526 = load %struct.ucred*, %struct.ucred** %9, align 8
  %527 = load %struct.thread*, %struct.thread** %15, align 8
  %528 = call i32 @ncl_doio(%struct.vnode* %524, %struct.buf* %525, %struct.ucred* %526, %struct.thread* %527, i32 0)
  store i32 %528, i32* %22, align 4
  %529 = load i32, i32* %22, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %518
  %532 = load %struct.buf*, %struct.buf** %13, align 8
  %533 = call i32 @brelse(%struct.buf* %532)
  br label %534

534:                                              ; preds = %531, %518
  br label %535

535:                                              ; preds = %632, %534
  %536 = load i32, i32* %22, align 4
  %537 = load i32, i32* @NFSERR_BAD_COOKIE, align 4
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %633

539:                                              ; preds = %535
  %540 = load %struct.vnode*, %struct.vnode** %6, align 8
  %541 = call i32 @ncl_invaldir(%struct.vnode* %540)
  %542 = load %struct.vnode*, %struct.vnode** %6, align 8
  %543 = load %struct.thread*, %struct.thread** %15, align 8
  %544 = call i32 @ncl_vinvalbuf(%struct.vnode* %542, i32 0, %struct.thread* %543, i32 1)
  store i32 %544, i32* %22, align 4
  store i32 0, i32* %12, align 4
  br label %545

545:                                              ; preds = %629, %539
  %546 = load i32, i32* %12, align 4
  %547 = load i32, i32* %17, align 4
  %548 = icmp sle i32 %546, %547
  br i1 %548, label %549, label %553

549:                                              ; preds = %545
  %550 = load i32, i32* %22, align 4
  %551 = icmp ne i32 %550, 0
  %552 = xor i1 %551, true
  br label %553

553:                                              ; preds = %549, %545
  %554 = phi i1 [ false, %545 ], [ %552, %549 ]
  br i1 %554, label %555, label %632

555:                                              ; preds = %553
  %556 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %557 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %569

560:                                              ; preds = %555
  %561 = load i32, i32* %12, align 4
  %562 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %563 = mul nsw i32 %561, %562
  %564 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %565 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 8
  %567 = icmp sge i32 %563, %566
  br i1 %567, label %568, label %569

568:                                              ; preds = %560
  store i32 0, i32* %5, align 4
  br label %814

569:                                              ; preds = %560, %555
  %570 = load %struct.vnode*, %struct.vnode** %6, align 8
  %571 = load i32, i32* %12, align 4
  %572 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %573 = load %struct.thread*, %struct.thread** %15, align 8
  %574 = call %struct.buf* @nfs_getcacheblk(%struct.vnode* %570, i32 %571, i32 %572, %struct.thread* %573)
  store %struct.buf* %574, %struct.buf** %13, align 8
  %575 = load %struct.buf*, %struct.buf** %13, align 8
  %576 = icmp ne %struct.buf* %575, null
  br i1 %576, label %589, label %577

577:                                              ; preds = %569
  %578 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %579 = load %struct.thread*, %struct.thread** %15, align 8
  %580 = call i32 @newnfs_sigintr(%struct.nfsmount* %578, %struct.thread* %579)
  store i32 %580, i32* %22, align 4
  %581 = load i32, i32* %22, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %585

583:                                              ; preds = %577
  %584 = load i32, i32* %22, align 4
  br label %587

585:                                              ; preds = %577
  %586 = load i32, i32* @EINTR, align 4
  br label %587

587:                                              ; preds = %585, %583
  %588 = phi i32 [ %584, %583 ], [ %586, %585 ]
  store i32 %588, i32* %5, align 4
  br label %814

589:                                              ; preds = %569
  %590 = load %struct.buf*, %struct.buf** %13, align 8
  %591 = getelementptr inbounds %struct.buf, %struct.buf* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = load i32, i32* @B_CACHE, align 4
  %594 = and i32 %592, %593
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %618

596:                                              ; preds = %589
  %597 = load i8*, i8** @BIO_READ, align 8
  %598 = load %struct.buf*, %struct.buf** %13, align 8
  %599 = getelementptr inbounds %struct.buf, %struct.buf* %598, i32 0, i32 4
  store i8* %597, i8** %599, align 8
  %600 = load %struct.buf*, %struct.buf** %13, align 8
  %601 = call i32 @vfs_busy_pages(%struct.buf* %600, i32 0)
  %602 = load %struct.vnode*, %struct.vnode** %6, align 8
  %603 = load %struct.buf*, %struct.buf** %13, align 8
  %604 = load %struct.ucred*, %struct.ucred** %9, align 8
  %605 = load %struct.thread*, %struct.thread** %15, align 8
  %606 = call i32 @ncl_doio(%struct.vnode* %602, %struct.buf* %603, %struct.ucred* %604, %struct.thread* %605, i32 0)
  store i32 %606, i32* %22, align 4
  %607 = load i32, i32* %22, align 4
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %617

609:                                              ; preds = %596
  %610 = load %struct.buf*, %struct.buf** %13, align 8
  %611 = getelementptr inbounds %struct.buf, %struct.buf* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load i32, i32* @B_INVAL, align 4
  %614 = and i32 %612, %613
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %609
  br label %632

617:                                              ; preds = %609, %596
  br label %618

618:                                              ; preds = %617, %589
  %619 = load i32, i32* %22, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %625, label %621

621:                                              ; preds = %618
  %622 = load i32, i32* %12, align 4
  %623 = load i32, i32* %17, align 4
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %625, label %628

625:                                              ; preds = %621, %618
  %626 = load %struct.buf*, %struct.buf** %13, align 8
  %627 = call i32 @brelse(%struct.buf* %626)
  br label %628

628:                                              ; preds = %625, %621
  br label %629

629:                                              ; preds = %628
  %630 = load i32, i32* %12, align 4
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %12, align 4
  br label %545

632:                                              ; preds = %616, %553
  br label %535

633:                                              ; preds = %535
  %634 = load i32, i32* %22, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %638

636:                                              ; preds = %633
  %637 = load i32, i32* %22, align 4
  store i32 %637, i32* %5, align 4
  br label %814

638:                                              ; preds = %633
  br label %639

639:                                              ; preds = %638, %511
  %640 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %641 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %640, i32 0, i32 5
  %642 = load i32, i32* %641, align 8
  %643 = icmp sgt i32 %642, 0
  br i1 %643, label %644, label %728

644:                                              ; preds = %639
  %645 = load %struct.buf*, %struct.buf** %13, align 8
  %646 = getelementptr inbounds %struct.buf, %struct.buf* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 8
  %648 = load i32, i32* @B_INVAL, align 4
  %649 = and i32 %647, %648
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %728

651:                                              ; preds = %644
  %652 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %653 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 8
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %665, label %656

656:                                              ; preds = %651
  %657 = load i32, i32* %17, align 4
  %658 = add nsw i32 %657, 1
  %659 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %660 = mul nsw i32 %658, %659
  %661 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %662 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 8
  %664 = icmp slt i32 %660, %663
  br i1 %664, label %665, label %728

665:                                              ; preds = %656, %651
  %666 = load %struct.vnode*, %struct.vnode** %6, align 8
  %667 = getelementptr inbounds %struct.vnode, %struct.vnode* %666, i32 0, i32 1
  %668 = load i32, i32* %17, align 4
  %669 = add nsw i32 %668, 1
  %670 = call i32* @incore(%struct.TYPE_4__* %667, i32 %669)
  %671 = icmp eq i32* %670, null
  br i1 %671, label %672, label %728

672:                                              ; preds = %665
  %673 = load %struct.vnode*, %struct.vnode** %6, align 8
  %674 = load i32, i32* %17, align 4
  %675 = add nsw i32 %674, 1
  %676 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %677 = load %struct.thread*, %struct.thread** %15, align 8
  %678 = call %struct.buf* @nfs_getcacheblk(%struct.vnode* %673, i32 %675, i32 %676, %struct.thread* %677)
  store %struct.buf* %678, %struct.buf** %14, align 8
  %679 = load %struct.buf*, %struct.buf** %14, align 8
  %680 = icmp ne %struct.buf* %679, null
  br i1 %680, label %681, label %727

681:                                              ; preds = %672
  %682 = load %struct.buf*, %struct.buf** %14, align 8
  %683 = getelementptr inbounds %struct.buf, %struct.buf* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = load i32, i32* @B_CACHE, align 4
  %686 = load i32, i32* @B_DELWRI, align 4
  %687 = or i32 %685, %686
  %688 = and i32 %684, %687
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %723

690:                                              ; preds = %681
  %691 = load i32, i32* @B_ASYNC, align 4
  %692 = load %struct.buf*, %struct.buf** %14, align 8
  %693 = getelementptr inbounds %struct.buf, %struct.buf* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 8
  %695 = or i32 %694, %691
  store i32 %695, i32* %693, align 8
  %696 = load i8*, i8** @BIO_READ, align 8
  %697 = load %struct.buf*, %struct.buf** %14, align 8
  %698 = getelementptr inbounds %struct.buf, %struct.buf* %697, i32 0, i32 4
  store i8* %696, i8** %698, align 8
  %699 = load %struct.buf*, %struct.buf** %14, align 8
  %700 = call i32 @vfs_busy_pages(%struct.buf* %699, i32 0)
  %701 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %702 = load %struct.buf*, %struct.buf** %14, align 8
  %703 = load %struct.ucred*, %struct.ucred** %9, align 8
  %704 = load %struct.thread*, %struct.thread** %15, align 8
  %705 = call i32 @ncl_asyncio(%struct.nfsmount* %701, %struct.buf* %702, %struct.ucred* %703, %struct.thread* %704)
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %722

707:                                              ; preds = %690
  %708 = load i32, i32* @B_INVAL, align 4
  %709 = load %struct.buf*, %struct.buf** %14, align 8
  %710 = getelementptr inbounds %struct.buf, %struct.buf* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = or i32 %711, %708
  store i32 %712, i32* %710, align 8
  %713 = load i32, i32* @BIO_ERROR, align 4
  %714 = load %struct.buf*, %struct.buf** %14, align 8
  %715 = getelementptr inbounds %struct.buf, %struct.buf* %714, i32 0, i32 3
  %716 = load i32, i32* %715, align 8
  %717 = or i32 %716, %713
  store i32 %717, i32* %715, align 8
  %718 = load %struct.buf*, %struct.buf** %14, align 8
  %719 = call i32 @vfs_unbusy_pages(%struct.buf* %718)
  %720 = load %struct.buf*, %struct.buf** %14, align 8
  %721 = call i32 @brelse(%struct.buf* %720)
  br label %722

722:                                              ; preds = %707, %690
  br label %726

723:                                              ; preds = %681
  %724 = load %struct.buf*, %struct.buf** %14, align 8
  %725 = call i32 @brelse(%struct.buf* %724)
  br label %726

726:                                              ; preds = %723, %722
  br label %727

727:                                              ; preds = %726, %672
  br label %728

728:                                              ; preds = %727, %665, %656, %644, %639
  %729 = load %struct.uio*, %struct.uio** %7, align 8
  %730 = getelementptr inbounds %struct.uio, %struct.uio* %729, i32 0, i32 1
  %731 = load i64, i64* %730, align 8
  %732 = trunc i64 %731 to i32
  %733 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %734 = load %struct.buf*, %struct.buf** %13, align 8
  %735 = getelementptr inbounds %struct.buf, %struct.buf* %734, i32 0, i32 1
  %736 = load i32, i32* %735, align 4
  %737 = sub nsw i32 %733, %736
  %738 = load i32, i32* %24, align 4
  %739 = sub nsw i32 %737, %738
  %740 = call i32 @lmin(i32 %732, i32 %739)
  store i32 %740, i32* %23, align 4
  %741 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %742 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 8
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %767

745:                                              ; preds = %728
  %746 = load i32, i32* %23, align 4
  %747 = sext i32 %746 to i64
  %748 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %749 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %748, i32 0, i32 1
  %750 = load i32, i32* %749, align 8
  %751 = sext i32 %750 to i64
  %752 = load %struct.uio*, %struct.uio** %7, align 8
  %753 = getelementptr inbounds %struct.uio, %struct.uio* %752, i32 0, i32 2
  %754 = load i64, i64* %753, align 8
  %755 = sub nsw i64 %751, %754
  %756 = icmp sgt i64 %747, %755
  br i1 %756, label %757, label %767

757:                                              ; preds = %745
  %758 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %759 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 8
  %761 = sext i32 %760 to i64
  %762 = load %struct.uio*, %struct.uio** %7, align 8
  %763 = getelementptr inbounds %struct.uio, %struct.uio* %762, i32 0, i32 2
  %764 = load i64, i64* %763, align 8
  %765 = sub nsw i64 %761, %764
  %766 = trunc i64 %765 to i32
  store i32 %766, i32* %23, align 4
  br label %767

767:                                              ; preds = %757, %745, %728
  br label %773

768:                                              ; preds = %171
  %769 = load %struct.vnode*, %struct.vnode** %6, align 8
  %770 = getelementptr inbounds %struct.vnode, %struct.vnode* %769, i32 0, i32 0
  %771 = load i32, i32* %770, align 4
  %772 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %771)
  store %struct.buf* null, %struct.buf** %13, align 8
  br label %773

773:                                              ; preds = %768, %767, %449, %397
  %774 = load i32, i32* %23, align 4
  %775 = icmp sgt i32 %774, 0
  br i1 %775, label %776, label %786

776:                                              ; preds = %773
  %777 = load %struct.buf*, %struct.buf** %13, align 8
  %778 = getelementptr inbounds %struct.buf, %struct.buf* %777, i32 0, i32 2
  %779 = load i64, i64* %778, align 8
  %780 = load i32, i32* %24, align 4
  %781 = sext i32 %780 to i64
  %782 = add nsw i64 %779, %781
  %783 = load i32, i32* %23, align 4
  %784 = load %struct.uio*, %struct.uio** %7, align 8
  %785 = call i32 @vn_io_fault_uiomove(i64 %782, i32 %783, %struct.uio* %784)
  store i32 %785, i32* %22, align 4
  br label %786

786:                                              ; preds = %776, %773
  %787 = load %struct.vnode*, %struct.vnode** %6, align 8
  %788 = getelementptr inbounds %struct.vnode, %struct.vnode* %787, i32 0, i32 0
  %789 = load i32, i32* %788, align 4
  %790 = icmp eq i32 %789, 129
  br i1 %790, label %791, label %792

791:                                              ; preds = %786
  store i32 0, i32* %23, align 4
  br label %792

792:                                              ; preds = %791, %786
  %793 = load %struct.buf*, %struct.buf** %13, align 8
  %794 = icmp ne %struct.buf* %793, null
  br i1 %794, label %795, label %798

795:                                              ; preds = %792
  %796 = load %struct.buf*, %struct.buf** %13, align 8
  %797 = call i32 @brelse(%struct.buf* %796)
  br label %798

798:                                              ; preds = %795, %792
  br label %799

799:                                              ; preds = %798
  %800 = load i32, i32* %22, align 4
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %810

802:                                              ; preds = %799
  %803 = load %struct.uio*, %struct.uio** %7, align 8
  %804 = getelementptr inbounds %struct.uio, %struct.uio* %803, i32 0, i32 1
  %805 = load i64, i64* %804, align 8
  %806 = icmp sgt i64 %805, 0
  br i1 %806, label %807, label %810

807:                                              ; preds = %802
  %808 = load i32, i32* %23, align 4
  %809 = icmp sgt i32 %808, 0
  br label %810

810:                                              ; preds = %807, %802, %799
  %811 = phi i1 [ false, %802 ], [ false, %799 ], [ %809, %807 ]
  br i1 %811, label %171, label %812

812:                                              ; preds = %810
  %813 = load i32, i32* %22, align 4
  store i32 %813, i32* %5, align 4
  br label %814

814:                                              ; preds = %812, %636, %587, %568, %509, %476, %439, %417, %379, %357, %257, %168, %142, %121, %50, %44
  %815 = load i32, i32* %5, align 4
  ret i32 %815
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ncl_fsinfo(%struct.nfsmount*, %struct.vnode*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @newnfs_iosize(%struct.nfsmount*) #1

declare dso_local i32 @ncl_readrpc(%struct.vnode*, %struct.uio*, %struct.ucred*) #1

declare dso_local i32 @nfs_bioread_check_cons(%struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSINCRGLOBAL(i32) #1

declare dso_local i32* @incore(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.buf* @nfs_getcacheblk(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @newnfs_sigintr(%struct.nfsmount*, %struct.thread*) #1

declare dso_local i32 @vfs_busy_pages(%struct.buf*, i32) #1

declare dso_local i32 @ncl_asyncio(%struct.nfsmount*, %struct.buf*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @vfs_unbusy_pages(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ncl_doio(%struct.vnode*, %struct.buf*, %struct.ucred*, %struct.thread*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ncl_invaldir(%struct.vnode*) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, %struct.thread*, i32) #1

declare dso_local i32 @lmin(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @vn_io_fault_uiomove(i64, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
