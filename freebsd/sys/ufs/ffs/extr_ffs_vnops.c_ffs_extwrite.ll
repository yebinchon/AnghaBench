; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_extwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_extwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i64, i64, i64 }
%struct.ucred = type { i32 }
%struct.inode = type { i32, i32, %struct.ufs2_dinode* }
%struct.ufs2_dinode = type { i64, i32 }
%struct.fs = type { i64, i32 }
%struct.buf = type { i32, i32, i64 }

@IO_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ffs_extwrite: uio->uio_offset < 0\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ffs_extwrite: uio->uio_resid < 0\00", align 1
@UFS_NXADDR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@IO_EXT = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@BA_CLRBUF = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@IO_ASYNC = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@ISUID = common dso_local global i32 0, align 4
@ISGID = common dso_local global i32 0, align 4
@PRIV_VFS_RETAINSUGID = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@UIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.uio*, i32, %struct.ucred*)* @ffs_extwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_extwrite(%struct.vnode* %0, %struct.uio* %1, i32 %2, %struct.ucred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ufs2_dinode*, align 8
  %12 = alloca %struct.fs*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = call %struct.inode* @VTOI(%struct.vnode* %22)
  store %struct.inode* %23, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call %struct.fs* @ITOFS(%struct.inode* %24)
  store %struct.fs* %25, %struct.fs** %12, align 8
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %27, align 8
  store %struct.ufs2_dinode* %28, %struct.ufs2_dinode** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @IO_APPEND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %11, align 8
  %35 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.uio*, %struct.uio** %7, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %4
  %40 = load %struct.uio*, %struct.uio** %7, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.uio*, %struct.uio** %7, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @KASSERT(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.uio*, %struct.uio** %7, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = load %struct.uio*, %struct.uio** %7, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i32, i32* @UFS_NXADDR, align 4
  %62 = load %struct.fs*, %struct.fs** %12, align 8
  %63 = getelementptr inbounds %struct.fs, %struct.fs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = icmp sgt i64 %60, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %39
  %69 = load i32, i32* @EFBIG, align 4
  store i32 %69, i32* %5, align 4
  br label %346

70:                                               ; preds = %39
  %71 = load %struct.uio*, %struct.uio** %7, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %16, align 8
  %74 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %11, align 8
  %75 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %15, align 8
  %77 = load i32, i32* @IO_EXT, align 4
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @IO_SYNC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load i32, i32* @IO_SYNC, align 4
  %84 = load i32, i32* %19, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %82, %70
  store i32 0, i32* %18, align 4
  br label %87

87:                                               ; preds = %254, %86
  %88 = load %struct.uio*, %struct.uio** %7, align 8
  %89 = getelementptr inbounds %struct.uio, %struct.uio* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %260

92:                                               ; preds = %87
  %93 = load %struct.fs*, %struct.fs** %12, align 8
  %94 = load %struct.uio*, %struct.uio** %7, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @lblkno(%struct.fs* %93, i64 %96)
  store i32 %97, i32* %14, align 4
  %98 = load %struct.fs*, %struct.fs** %12, align 8
  %99 = load %struct.uio*, %struct.uio** %7, align 8
  %100 = getelementptr inbounds %struct.uio, %struct.uio* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @blkoff(%struct.fs* %98, i64 %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.fs*, %struct.fs** %12, align 8
  %104 = getelementptr inbounds %struct.fs, %struct.fs* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %21, align 4
  %108 = load %struct.uio*, %struct.uio** %7, align 8
  %109 = getelementptr inbounds %struct.uio, %struct.uio* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %92
  %115 = load %struct.uio*, %struct.uio** %7, align 8
  %116 = getelementptr inbounds %struct.uio, %struct.uio* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %114, %92
  %120 = load %struct.fs*, %struct.fs** %12, align 8
  %121 = getelementptr inbounds %struct.fs, %struct.fs* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %21, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* @BA_CLRBUF, align 4
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %134

129:                                              ; preds = %119
  %130 = load i32, i32* @BA_CLRBUF, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %19, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %129, %125
  %135 = load %struct.vnode*, %struct.vnode** %6, align 8
  %136 = load %struct.uio*, %struct.uio** %7, align 8
  %137 = getelementptr inbounds %struct.uio, %struct.uio* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %21, align 4
  %140 = load %struct.ucred*, %struct.ucred** %9, align 8
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @UFS_BALLOC(%struct.vnode* %135, i64 %138, i32 %139, %struct.ucred* %140, i32 %141, %struct.buf** %13)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %260

146:                                              ; preds = %134
  %147 = load %struct.buf*, %struct.buf** %13, align 8
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @B_CACHE, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %146
  %154 = load %struct.fs*, %struct.fs** %12, align 8
  %155 = getelementptr inbounds %struct.fs, %struct.fs* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load %struct.buf*, %struct.buf** %13, align 8
  %161 = call i32 @vfs_bio_clrbuf(%struct.buf* %160)
  br label %162

162:                                              ; preds = %159, %153, %146
  %163 = load %struct.uio*, %struct.uio** %7, align 8
  %164 = getelementptr inbounds %struct.uio, %struct.uio* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %11, align 8
  %170 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %168, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %162
  %174 = load %struct.uio*, %struct.uio** %7, align 8
  %175 = getelementptr inbounds %struct.uio, %struct.uio* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %21, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %176, %178
  %180 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %11, align 8
  %181 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %173, %162
  %183 = load %struct.fs*, %struct.fs** %12, align 8
  %184 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %11, align 8
  %185 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @sblksize(%struct.fs* %183, i64 %186, i32 %187)
  %189 = load %struct.buf*, %struct.buf** %13, align 8
  %190 = getelementptr inbounds %struct.buf, %struct.buf* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %188, %191
  store i32 %192, i32* %20, align 4
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %21, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %182
  %197 = load i32, i32* %20, align 4
  store i32 %197, i32* %21, align 4
  br label %198

198:                                              ; preds = %196, %182
  %199 = load %struct.buf*, %struct.buf** %13, align 8
  %200 = getelementptr inbounds %struct.buf, %struct.buf* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i32, i32* %21, align 4
  %207 = load %struct.uio*, %struct.uio** %7, align 8
  %208 = call i32 @uiomove(i8* %205, i32 %206, %struct.uio* %207)
  store i32 %208, i32* %18, align 4
  %209 = load %struct.buf*, %struct.buf** %13, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @vfs_bio_set_flags(%struct.buf* %209, i32 %210)
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @IO_SYNC, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %198
  %217 = load %struct.buf*, %struct.buf** %13, align 8
  %218 = call i32 @bwrite(%struct.buf* %217)
  br label %247

219:                                              ; preds = %198
  %220 = call i64 (...) @vm_page_count_severe()
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %240, label %222

222:                                              ; preds = %219
  %223 = call i64 (...) @buf_dirty_count_severe()
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %240, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %226, %227
  %229 = load %struct.fs*, %struct.fs** %12, align 8
  %230 = getelementptr inbounds %struct.fs, %struct.fs* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %228, %231
  br i1 %232, label %240, label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @IO_ASYNC, align 4
  %236 = load i32, i32* @IO_DIRECT, align 4
  %237 = or i32 %235, %236
  %238 = and i32 %234, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %233, %225, %222, %219
  %241 = load %struct.buf*, %struct.buf** %13, align 8
  %242 = call i32 @bawrite(%struct.buf* %241)
  br label %246

243:                                              ; preds = %233
  %244 = load %struct.buf*, %struct.buf** %13, align 8
  %245 = call i32 @bdwrite(%struct.buf* %244)
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246, %216
  %248 = load i32, i32* %18, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %21, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250, %247
  br label %260

254:                                              ; preds = %250
  %255 = load i32, i32* @IN_CHANGE, align 4
  %256 = load %struct.inode*, %struct.inode** %10, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %87

260:                                              ; preds = %253, %145, %87
  %261 = load %struct.inode*, %struct.inode** %10, align 8
  %262 = getelementptr inbounds %struct.inode, %struct.inode* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ISUID, align 4
  %265 = load i32, i32* @ISGID, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %298

269:                                              ; preds = %260
  %270 = load i64, i64* %16, align 8
  %271 = load %struct.uio*, %struct.uio** %7, align 8
  %272 = getelementptr inbounds %struct.uio, %struct.uio* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp sgt i64 %270, %273
  br i1 %274, label %275, label %298

275:                                              ; preds = %269
  %276 = load %struct.ucred*, %struct.ucred** %9, align 8
  %277 = icmp ne %struct.ucred* %276, null
  br i1 %277, label %278, label %298

278:                                              ; preds = %275
  %279 = load %struct.ucred*, %struct.ucred** %9, align 8
  %280 = load i32, i32* @PRIV_VFS_RETAINSUGID, align 4
  %281 = call i64 @priv_check_cred(%struct.ucred* %279, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %297

283:                                              ; preds = %278
  %284 = load i32, i32* @ISUID, align 4
  %285 = load i32, i32* @ISGID, align 4
  %286 = or i32 %284, %285
  %287 = xor i32 %286, -1
  %288 = load %struct.inode*, %struct.inode** %10, align 8
  %289 = getelementptr inbounds %struct.inode, %struct.inode* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load %struct.inode*, %struct.inode** %10, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %11, align 8
  %296 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 8
  br label %297

297:                                              ; preds = %283, %278
  br label %298

298:                                              ; preds = %297, %275, %269, %260
  %299 = load i32, i32* %18, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %329

301:                                              ; preds = %298
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @IO_UNIT, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %328

306:                                              ; preds = %301
  %307 = load %struct.vnode*, %struct.vnode** %6, align 8
  %308 = load i64, i64* %15, align 8
  %309 = load i32, i32* @IO_EXT, align 4
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @IO_SYNC, align 4
  %312 = and i32 %310, %311
  %313 = or i32 %309, %312
  %314 = load %struct.ucred*, %struct.ucred** %9, align 8
  %315 = call i32 @ffs_truncate(%struct.vnode* %307, i64 %308, i32 %313, %struct.ucred* %314)
  %316 = load i64, i64* %16, align 8
  %317 = load %struct.uio*, %struct.uio** %7, align 8
  %318 = getelementptr inbounds %struct.uio, %struct.uio* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = sub nsw i64 %316, %319
  %321 = load %struct.uio*, %struct.uio** %7, align 8
  %322 = getelementptr inbounds %struct.uio, %struct.uio* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = sub nsw i64 %323, %320
  store i64 %324, i64* %322, align 8
  %325 = load i64, i64* %16, align 8
  %326 = load %struct.uio*, %struct.uio** %7, align 8
  %327 = getelementptr inbounds %struct.uio, %struct.uio* %326, i32 0, i32 2
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %306, %301
  br label %344

329:                                              ; preds = %298
  %330 = load i64, i64* %16, align 8
  %331 = load %struct.uio*, %struct.uio** %7, align 8
  %332 = getelementptr inbounds %struct.uio, %struct.uio* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = icmp sgt i64 %330, %333
  br i1 %334, label %335, label %343

335:                                              ; preds = %329
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* @IO_SYNC, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = load %struct.vnode*, %struct.vnode** %6, align 8
  %342 = call i32 @ffs_update(%struct.vnode* %341, i32 1)
  store i32 %342, i32* %18, align 4
  br label %343

343:                                              ; preds = %340, %335, %329
  br label %344

344:                                              ; preds = %343, %328
  %345 = load i32, i32* %18, align 4
  store i32 %345, i32* %5, align 4
  br label %346

346:                                              ; preds = %344, %68
  %347 = load i32, i32* %5, align 4
  ret i32 %347
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local %struct.fs* @ITOFS(%struct.inode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @lblkno(%struct.fs*, i64) #1

declare dso_local i32 @blkoff(%struct.fs*, i64) #1

declare dso_local i32 @UFS_BALLOC(%struct.vnode*, i64, i32, %struct.ucred*, i32, %struct.buf**) #1

declare dso_local i32 @vfs_bio_clrbuf(%struct.buf*) #1

declare dso_local i32 @sblksize(%struct.fs*, i64, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @vfs_bio_set_flags(%struct.buf*, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i64 @vm_page_count_severe(...) #1

declare dso_local i64 @buf_dirty_count_severe(...) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @ffs_truncate(%struct.vnode*, i64, i32, %struct.ucred*) #1

declare dso_local i32 @ffs_update(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
