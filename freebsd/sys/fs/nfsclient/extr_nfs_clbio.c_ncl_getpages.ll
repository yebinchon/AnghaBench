; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.vop_getpages_args = type { i32, i64*, i64*, %struct.TYPE_8__**, %struct.vnode* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.vnode = type { i64, i32*, i32 }
%struct.uio = type { i32, i32, %struct.thread*, i32, i32, i32, %struct.iovec* }
%struct.iovec = type { i32, i64 }
%struct.buf = type { i64 }
%struct.nfsmount = type { i32, i32, i32 }
%struct.nfsnode = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"ncl_getpages: called with non-merged cache vnode\0A\00", align 1
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@newnfs_directio_enable = common dso_local global i64 0, align 8
@newnfs_directio_allow_mmap = common dso_local global i32 0, align 4
@NNONCACHE = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"ncl_getpages: called on non-cacheable vnode\0A\00", align 1
@NFSMNT_NFSV3 = common dso_local global i32 0, align 4
@NFSSTA_GOTFSINFO = common dso_local global i32 0, align 4
@use_buf_pager = common dso_local global i64 0, align 8
@ncl_gbp_getblkno = common dso_local global i32 0, align 4
@ncl_gbp_getblksz = common dso_local global i32 0, align 4
@ncl_pbuf_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@v_vnodein = common dso_local global i32 0, align 4
@v_vnodepgsin = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"ncl_getpages: error %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"nfs_getpages: page %p is dirty\00", align 1
@VM_PAGER_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_getpages(%struct.vop_getpages_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getpages_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uio, align 8
  %12 = alloca %struct.iovec, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.thread*, align 8
  %17 = alloca %struct.ucred*, align 8
  %18 = alloca %struct.nfsmount*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__**, align 8
  %21 = alloca %struct.nfsnode*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  store %struct.vop_getpages_args* %0, %struct.vop_getpages_args** %3, align 8
  %23 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %23, i32 0, i32 4
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %15, align 8
  %26 = load %struct.vnode*, %struct.vnode** %15, align 8
  %27 = call %struct.nfsnode* @VTONFS(%struct.vnode* %26)
  store %struct.nfsnode* %27, %struct.nfsnode** %21, align 8
  %28 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %28, %struct.thread** %16, align 8
  %29 = load %struct.thread*, %struct.thread** @curthread, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load %struct.ucred*, %struct.ucred** %30, align 8
  store %struct.ucred* %31, %struct.ucred** %17, align 8
  %32 = load %struct.vnode*, %struct.vnode** %15, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.nfsmount* @VFSTONFS(i32 %34)
  store %struct.nfsmount* %35, %struct.nfsmount** %18, align 8
  %36 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  store %struct.TYPE_8__** %38, %struct.TYPE_8__*** %20, align 8
  %39 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %40 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load %struct.vnode*, %struct.vnode** %15, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %19, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %1
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @VM_PAGER_ERROR, align 4
  store i32 %48, i32* %2, align 4
  br label %287

49:                                               ; preds = %1
  %50 = load i64, i64* @newnfs_directio_enable, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load i32, i32* @newnfs_directio_allow_mmap, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %52
  %56 = load %struct.nfsnode*, %struct.nfsnode** %21, align 8
  %57 = call i32 @NFSLOCKNODE(%struct.nfsnode* %56)
  %58 = load %struct.nfsnode*, %struct.nfsnode** %21, align 8
  %59 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NNONCACHE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %55
  %65 = load %struct.vnode*, %struct.vnode** %15, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @VREG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.nfsnode*, %struct.nfsnode** %21, align 8
  %72 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @VM_PAGER_ERROR, align 4
  store i32 %74, i32* %2, align 4
  br label %287

75:                                               ; preds = %64, %55
  %76 = load %struct.nfsnode*, %struct.nfsnode** %21, align 8
  %77 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %76)
  br label %78

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %52, %49
  %80 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %81 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %80, i32 0, i32 2
  %82 = call i32 @mtx_lock(i32* %81)
  %83 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %84 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NFSMNT_NFSV3, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %79
  %90 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %91 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NFSSTA_GOTFSINFO, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %98 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %97, i32 0, i32 2
  %99 = call i32 @mtx_unlock(i32* %98)
  %100 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %101 = load %struct.vnode*, %struct.vnode** %15, align 8
  %102 = load %struct.ucred*, %struct.ucred** %17, align 8
  %103 = load %struct.thread*, %struct.thread** %16, align 8
  %104 = call i32 @ncl_fsinfo(%struct.nfsmount* %100, %struct.vnode* %101, %struct.ucred* %102, %struct.thread* %103)
  br label %109

105:                                              ; preds = %89, %79
  %106 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %107 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %106, i32 0, i32 2
  %108 = call i32 @mtx_unlock(i32* %107)
  br label %109

109:                                              ; preds = %105, %96
  %110 = load i64, i64* @use_buf_pager, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load %struct.vnode*, %struct.vnode** %15, align 8
  %114 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %117 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %120 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* @ncl_gbp_getblkno, align 4
  %123 = load i32, i32* @ncl_gbp_getblksz, align 4
  %124 = call i32 @vfs_bio_getpages(%struct.vnode* %113, %struct.TYPE_8__** %114, i32 %115, i64* %118, i64* %121, i32 %122, i32 %123)
  store i32 %124, i32* %2, align 4
  br label %287

125:                                              ; preds = %109
  %126 = load i32*, i32** %19, align 8
  %127 = call i32 @VM_OBJECT_WLOCK(i32* %126)
  %128 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %128, i64 %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = call i32 @vm_page_none_valid(%struct.TYPE_8__* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %10, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %265

141:                                              ; preds = %136, %125
  %142 = load i32*, i32** %19, align 8
  %143 = call i32 @VM_OBJECT_WUNLOCK(i32* %142)
  %144 = load i32, i32* @ncl_pbuf_zone, align 4
  %145 = load i32, i32* @M_WAITOK, align 4
  %146 = call %struct.buf* @uma_zalloc(i32 %144, i32 %145)
  store %struct.buf* %146, %struct.buf** %14, align 8
  %147 = load %struct.buf*, %struct.buf** %14, align 8
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %13, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @pmap_qenter(i64 %150, %struct.TYPE_8__** %151, i32 %152)
  %154 = load i32, i32* @v_vnodein, align 4
  %155 = call i32 @VM_CNT_INC(i32 %154)
  %156 = load i32, i32* @v_vnodepgsin, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @VM_CNT_ADD(i32 %156, i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @PAGE_SHIFT, align 4
  %161 = shl i32 %159, %160
  store i32 %161, i32* %9, align 4
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i64 %162, i64* %163, align 8
  %164 = load i32, i32* %9, align 4
  %165 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i32 %164, i32* %165, align 8
  %166 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 6
  store %struct.iovec* %12, %struct.iovec** %166, align 8
  %167 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %168, i64 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @IDX_TO_OFF(i32 %172)
  %174 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 5
  store i32 %173, i32* %174, align 8
  %175 = load i32, i32* %9, align 4
  %176 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* @UIO_SYSSPACE, align 4
  %178 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 4
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @UIO_READ, align 4
  %180 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 3
  store i32 %179, i32* %180, align 8
  %181 = load %struct.thread*, %struct.thread** %16, align 8
  %182 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 2
  store %struct.thread* %181, %struct.thread** %182, align 8
  %183 = load %struct.vnode*, %struct.vnode** %15, align 8
  %184 = load %struct.ucred*, %struct.ucred** %17, align 8
  %185 = call i32 @ncl_readrpc(%struct.vnode* %183, %struct.uio* %11, %struct.ucred* %184)
  store i32 %185, i32* %5, align 4
  %186 = load i64, i64* %13, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @pmap_qremove(i64 %186, i32 %187)
  %189 = load i32, i32* @ncl_pbuf_zone, align 4
  %190 = load %struct.buf*, %struct.buf** %14, align 8
  %191 = call i32 @uma_zfree(i32 %189, %struct.buf* %190)
  %192 = load i32, i32* %5, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %141
  %195 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* %5, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @VM_PAGER_ERROR, align 4
  store i32 %202, i32* %2, align 4
  br label %287

203:                                              ; preds = %194, %141
  %204 = load i32, i32* %9, align 4
  %205 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %204, %206
  store i32 %207, i32* %7, align 4
  %208 = load i32*, i32** %19, align 8
  %209 = call i32 @VM_OBJECT_WLOCK(i32* %208)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %260, %203
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %264

214:                                              ; preds = %210
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @PAGE_SIZE, align 4
  %217 = add nsw i32 %215, %216
  store i32 %217, i32* %6, align 4
  %218 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %218, i64 %220
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  store %struct.TYPE_8__* %222, %struct.TYPE_8__** %22, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %214
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %228 = call i32 @vm_page_valid(%struct.TYPE_8__* %227)
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %235 = bitcast %struct.TYPE_8__* %234 to i8*
  %236 = call i32 @KASSERT(i32 %233, i8* %235)
  br label %259

237:                                              ; preds = %214
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %237
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %243 = call i32 @vm_page_invalid(%struct.TYPE_8__* %242)
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = sub nsw i32 %245, %246
  %248 = call i32 @vm_page_set_valid_range(%struct.TYPE_8__* %244, i32 0, i32 %247)
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 0
  %253 = zext i1 %252 to i32
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %255 = bitcast %struct.TYPE_8__* %254 to i8*
  %256 = call i32 @KASSERT(i32 %253, i8* %255)
  br label %258

257:                                              ; preds = %237
  br label %258

258:                                              ; preds = %257, %241
  br label %259

259:                                              ; preds = %258, %226
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %8, align 4
  br label %210

264:                                              ; preds = %210
  br label %265

265:                                              ; preds = %264, %140
  %266 = load i32*, i32** %19, align 8
  %267 = call i32 @VM_OBJECT_WUNLOCK(i32* %266)
  %268 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %269 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %268, i32 0, i32 2
  %270 = load i64*, i64** %269, align 8
  %271 = icmp ne i64* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %274 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %273, i32 0, i32 2
  %275 = load i64*, i64** %274, align 8
  store i64 0, i64* %275, align 8
  br label %276

276:                                              ; preds = %272, %265
  %277 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %278 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = icmp ne i64* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %276
  %282 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %283 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %282, i32 0, i32 1
  %284 = load i64*, i64** %283, align 8
  store i64 0, i64* %284, align 8
  br label %285

285:                                              ; preds = %281, %276
  %286 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %285, %199, %112, %70, %46
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ncl_fsinfo(%struct.nfsmount*, %struct.vnode*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @vfs_bio_getpages(%struct.vnode*, %struct.TYPE_8__**, i32, i64*, i64*, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_page_none_valid(%struct.TYPE_8__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @pmap_qenter(i64, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

declare dso_local i32 @IDX_TO_OFF(i32) #1

declare dso_local i32 @ncl_readrpc(%struct.vnode*, %struct.uio*, %struct.ucred*) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_8__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_invalid(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_page_set_valid_range(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
