; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_balloc.c_ext2_balloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_balloc.c_ext2_balloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i64*, i64, i64*, i32, %struct.ext2mount*, %struct.m_ext2fs* }
%struct.ext2mount = type { i32 }
%struct.m_ext2fs = type { i32 }
%struct.ucred = type { i32 }
%struct.buf = type { i32, i8*, i32, i32, i64 }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.indir = type { i64, i64 }

@EXT2_NIADDR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@IN_E4EXTENTS = common dso_local global i32 0, align 4
@EXT2_NDADDR = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@BA_CLRBUF = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@EXT2_NDIR_BLOCKS = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@B_CLUSTEROK = common dso_local global i32 0, align 4
@BA_SEQMASK = common dso_local global i32 0, align 4
@BA_SEQSHIFT = common dso_local global i32 0, align 4
@MNT_NOCLUSTERR = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_balloc(%struct.inode* %0, i64 %1, i32 %2, %struct.ucred* %3, %struct.buf** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.buf**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.m_ext2fs*, align 8
  %15 = alloca %struct.ext2mount*, align 8
  %16 = alloca %struct.buf*, align 8
  %17 = alloca %struct.buf*, align 8
  %18 = alloca %struct.vnode*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ucred* %3, %struct.ucred** %11, align 8
  store %struct.buf** %4, %struct.buf*** %12, align 8
  store i32 %5, i32* %13, align 4
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call %struct.vnode* @ITOV(%struct.inode* %30)
  store %struct.vnode* %31, %struct.vnode** %18, align 8
  %32 = load i32, i32* @EXT2_NIADDR, align 4
  %33 = add nsw i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %19, align 8
  %36 = alloca %struct.indir, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %37 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* null, %struct.buf** %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* @EFBIG, align 4
  store i32 %41, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

42:                                               ; preds = %6
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 7
  %45 = load %struct.m_ext2fs*, %struct.m_ext2fs** %44, align 8
  store %struct.m_ext2fs* %45, %struct.m_ext2fs** %14, align 8
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 6
  %48 = load %struct.ext2mount*, %struct.ext2mount** %47, align 8
  store %struct.ext2mount* %48, %struct.ext2mount** %15, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %55, %42
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IN_E4EXTENTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ucred*, %struct.ucred** %11, align 8
  %76 = load %struct.buf**, %struct.buf*** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @ext2_ext_balloc(%struct.inode* %72, i64 %73, i32 %74, %struct.ucred* %75, %struct.buf** %76, i32 %77)
  store i32 %78, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

79:                                               ; preds = %64
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @EXT2_NDADDR, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %194

83:                                               ; preds = %79
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %21, align 8
  %90 = load i64, i64* %21, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %83
  %93 = load %struct.vnode*, %struct.vnode** %18, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %96 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NOCRED, align 4
  %99 = call i32 @bread(%struct.vnode* %93, i64 %94, i32 %97, i32 %98, %struct.buf** %16)
  store i32 %99, i32* %27, align 4
  %100 = load i32, i32* %27, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %27, align 4
  store i32 %103, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

104:                                              ; preds = %92
  %105 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %106 = load i64, i64* %21, align 8
  %107 = call i8* @fsbtodb(%struct.m_ext2fs* %105, i64 %106)
  %108 = load %struct.buf*, %struct.buf** %16, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 1
  %115 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %116 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %114, %118
  %120 = icmp uge i64 %112, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %104
  %122 = load %struct.buf*, %struct.buf** %16, align 8
  %123 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* %122, %struct.buf** %123, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

124:                                              ; preds = %104
  br label %174

125:                                              ; preds = %83
  %126 = load %struct.ext2mount*, %struct.ext2mount** %15, align 8
  %127 = call i32 @EXT2_LOCK(%struct.ext2mount* %126)
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %9, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 2
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = call i64 @ext2_blkpref(%struct.inode* %130, i64 %131, i32 %133, i64* %137, i32 0)
  %139 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %140 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ucred*, %struct.ucred** %11, align 8
  %143 = call i32 @ext2_alloc(%struct.inode* %128, i64 %129, i64 %138, i32 %141, %struct.ucred* %142, i64* %22)
  store i32 %143, i32* %27, align 4
  %144 = load i32, i32* %27, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %125
  %147 = load i32, i32* %27, align 4
  store i32 %147, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

148:                                              ; preds = %125
  %149 = load i64, i64* %22, align 8
  %150 = load i64, i64* @UINT_MAX, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* @EFBIG, align 4
  store i32 %153, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

154:                                              ; preds = %148
  %155 = load %struct.vnode*, %struct.vnode** %18, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %158 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call %struct.buf* @getblk(%struct.vnode* %155, i64 %156, i32 %159, i32 0, i32 0, i32 0)
  store %struct.buf* %160, %struct.buf** %16, align 8
  %161 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %162 = load i64, i64* %22, align 8
  %163 = call i8* @fsbtodb(%struct.m_ext2fs* %161, i64 %162)
  %164 = load %struct.buf*, %struct.buf** %16, align 8
  %165 = getelementptr inbounds %struct.buf, %struct.buf* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @BA_CLRBUF, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %154
  %171 = load %struct.buf*, %struct.buf** %16, align 8
  %172 = call i32 @vfs_bio_clrbuf(%struct.buf* %171)
  br label %173

173:                                              ; preds = %170, %154
  br label %174

174:                                              ; preds = %173, %124
  %175 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %176 = load %struct.buf*, %struct.buf** %16, align 8
  %177 = getelementptr inbounds %struct.buf, %struct.buf* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @dbtofsb(%struct.m_ext2fs* %175, i8* %178)
  %180 = load %struct.inode*, %struct.inode** %8, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 2
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64 %179, i64* %184, align 8
  %185 = load i32, i32* @IN_CHANGE, align 4
  %186 = load i32, i32* @IN_UPDATE, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.inode*, %struct.inode** %8, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.buf*, %struct.buf** %16, align 8
  %193 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* %192, %struct.buf** %193, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

194:                                              ; preds = %79
  store i64 0, i64* %24, align 8
  %195 = load %struct.vnode*, %struct.vnode** %18, align 8
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @ext2_getlbns(%struct.vnode* %195, i64 %196, %struct.indir* %36, i32* %25)
  store i32 %197, i32* %27, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* %27, align 4
  store i32 %200, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

201:                                              ; preds = %194
  %202 = load i32, i32* %25, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %25, align 4
  %204 = load %struct.inode*, %struct.inode** %8, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 4
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 0
  %208 = getelementptr inbounds %struct.indir, %struct.indir* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 16
  %210 = getelementptr inbounds i64, i64* %206, i64 %209
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %21, align 8
  %212 = load i64, i64* %21, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %292

214:                                              ; preds = %201
  %215 = load %struct.ext2mount*, %struct.ext2mount** %15, align 8
  %216 = call i32 @EXT2_LOCK(%struct.ext2mount* %215)
  %217 = load %struct.inode*, %struct.inode** %8, align 8
  %218 = load i64, i64* %9, align 8
  %219 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 0
  %220 = getelementptr inbounds %struct.indir, %struct.indir* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 16
  %222 = load i32, i32* @EXT2_NDIR_BLOCKS, align 4
  %223 = sext i32 %222 to i64
  %224 = add i64 %221, %223
  %225 = trunc i64 %224 to i32
  %226 = load %struct.inode*, %struct.inode** %8, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 2
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 0
  %230 = call i64 @ext2_blkpref(%struct.inode* %217, i64 %218, i32 %225, i64* %229, i32 0)
  store i64 %230, i64* %24, align 8
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* %24, align 8
  %234 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %235 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.ucred*, %struct.ucred** %11, align 8
  %238 = call i32 @ext2_alloc(%struct.inode* %231, i64 %232, i64 %233, i32 %236, %struct.ucred* %237, i64* %22)
  store i32 %238, i32* %27, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %214
  %241 = load i32, i32* %27, align 4
  store i32 %241, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

242:                                              ; preds = %214
  %243 = load i64, i64* %22, align 8
  %244 = load i64, i64* @UINT_MAX, align 8
  %245 = icmp sgt i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i32, i32* @EFBIG, align 4
  store i32 %247, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

248:                                              ; preds = %242
  %249 = load i64, i64* %22, align 8
  store i64 %249, i64* %21, align 8
  %250 = load %struct.vnode*, %struct.vnode** %18, align 8
  %251 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 1
  %252 = getelementptr inbounds %struct.indir, %struct.indir* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %255 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call %struct.buf* @getblk(%struct.vnode* %250, i64 %253, i32 %256, i32 0, i32 0, i32 0)
  store %struct.buf* %257, %struct.buf** %16, align 8
  %258 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %259 = load i64, i64* %22, align 8
  %260 = call i8* @fsbtodb(%struct.m_ext2fs* %258, i64 %259)
  %261 = load %struct.buf*, %struct.buf** %16, align 8
  %262 = getelementptr inbounds %struct.buf, %struct.buf* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  %263 = load %struct.buf*, %struct.buf** %16, align 8
  %264 = call i32 @vfs_bio_clrbuf(%struct.buf* %263)
  %265 = load %struct.buf*, %struct.buf** %16, align 8
  %266 = call i32 @bwrite(%struct.buf* %265)
  store i32 %266, i32* %27, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %248
  %269 = load %struct.inode*, %struct.inode** %8, align 8
  %270 = load i64, i64* %21, align 8
  %271 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %272 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @ext2_blkfree(%struct.inode* %269, i64 %270, i32 %273)
  %275 = load i32, i32* %27, align 4
  store i32 %275, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

276:                                              ; preds = %248
  %277 = load i64, i64* %22, align 8
  %278 = load %struct.inode*, %struct.inode** %8, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 4
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 0
  %282 = getelementptr inbounds %struct.indir, %struct.indir* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 16
  %284 = getelementptr inbounds i64, i64* %280, i64 %283
  store i64 %277, i64* %284, align 8
  %285 = load i32, i32* @IN_CHANGE, align 4
  %286 = load i32, i32* @IN_UPDATE, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.inode*, %struct.inode** %8, align 8
  %289 = getelementptr inbounds %struct.inode, %struct.inode* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %276, %201
  store i32 1, i32* %26, align 4
  br label %293

293:                                              ; preds = %440, %331, %292
  %294 = load %struct.vnode*, %struct.vnode** %18, align 8
  %295 = load i32, i32* %26, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 %296
  %298 = getelementptr inbounds %struct.indir, %struct.indir* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %301 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @NOCRED, align 4
  %304 = call i32 @bread(%struct.vnode* %294, i64 %299, i32 %302, i32 %303, %struct.buf** %16)
  store i32 %304, i32* %27, align 4
  %305 = load i32, i32* %27, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %293
  %308 = load i32, i32* %27, align 4
  store i32 %308, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

309:                                              ; preds = %293
  %310 = load %struct.buf*, %struct.buf** %16, align 8
  %311 = getelementptr inbounds %struct.buf, %struct.buf* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = inttoptr i64 %312 to i64*
  store i64* %313, i64** %23, align 8
  %314 = load i64*, i64** %23, align 8
  %315 = load i32, i32* %26, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 %316
  %318 = getelementptr inbounds %struct.indir, %struct.indir* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 16
  %320 = getelementptr inbounds i64, i64* %314, i64 %319
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %21, align 8
  %322 = load i32, i32* %26, align 4
  %323 = load i32, i32* %25, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %309
  br label %441

326:                                              ; preds = %309
  %327 = load i32, i32* %26, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %26, align 4
  %329 = load i64, i64* %21, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = load %struct.buf*, %struct.buf** %16, align 8
  %333 = call i32 @bqrelse(%struct.buf* %332)
  br label %293

334:                                              ; preds = %326
  %335 = load %struct.ext2mount*, %struct.ext2mount** %15, align 8
  %336 = call i32 @EXT2_LOCK(%struct.ext2mount* %335)
  %337 = load i64, i64* %24, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %353

339:                                              ; preds = %334
  %340 = load %struct.inode*, %struct.inode** %8, align 8
  %341 = load i64, i64* %9, align 8
  %342 = load i32, i32* %26, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 %343
  %345 = getelementptr inbounds %struct.indir, %struct.indir* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 16
  %347 = trunc i64 %346 to i32
  %348 = load i64*, i64** %23, align 8
  %349 = load %struct.buf*, %struct.buf** %16, align 8
  %350 = getelementptr inbounds %struct.buf, %struct.buf* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = call i64 @ext2_blkpref(%struct.inode* %340, i64 %341, i32 %347, i64* %348, i32 %351)
  store i64 %352, i64* %24, align 8
  br label %353

353:                                              ; preds = %339, %334
  %354 = load %struct.inode*, %struct.inode** %8, align 8
  %355 = load i64, i64* %9, align 8
  %356 = load i64, i64* %24, align 8
  %357 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %358 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.ucred*, %struct.ucred** %11, align 8
  %361 = call i32 @ext2_alloc(%struct.inode* %354, i64 %355, i64 %356, i32 %359, %struct.ucred* %360, i64* %22)
  store i32 %361, i32* %27, align 4
  %362 = load i32, i32* %27, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %353
  %365 = load %struct.buf*, %struct.buf** %16, align 8
  %366 = call i32 @brelse(%struct.buf* %365)
  %367 = load i32, i32* %27, align 4
  store i32 %367, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

368:                                              ; preds = %353
  %369 = load i64, i64* %22, align 8
  %370 = load i64, i64* @UINT_MAX, align 8
  %371 = icmp sgt i64 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %368
  %373 = load i32, i32* @EFBIG, align 4
  store i32 %373, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

374:                                              ; preds = %368
  %375 = load i64, i64* %22, align 8
  store i64 %375, i64* %21, align 8
  %376 = load %struct.vnode*, %struct.vnode** %18, align 8
  %377 = load i32, i32* %26, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 %378
  %380 = getelementptr inbounds %struct.indir, %struct.indir* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %383 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call %struct.buf* @getblk(%struct.vnode* %376, i64 %381, i32 %384, i32 0, i32 0, i32 0)
  store %struct.buf* %385, %struct.buf** %17, align 8
  %386 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %387 = load i64, i64* %21, align 8
  %388 = call i8* @fsbtodb(%struct.m_ext2fs* %386, i64 %387)
  %389 = load %struct.buf*, %struct.buf** %17, align 8
  %390 = getelementptr inbounds %struct.buf, %struct.buf* %389, i32 0, i32 1
  store i8* %388, i8** %390, align 8
  %391 = load %struct.buf*, %struct.buf** %17, align 8
  %392 = call i32 @vfs_bio_clrbuf(%struct.buf* %391)
  %393 = load %struct.buf*, %struct.buf** %17, align 8
  %394 = call i32 @bwrite(%struct.buf* %393)
  store i32 %394, i32* %27, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %374
  %397 = load %struct.inode*, %struct.inode** %8, align 8
  %398 = load i64, i64* %21, align 8
  %399 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %400 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @ext2_blkfree(%struct.inode* %397, i64 %398, i32 %401)
  %403 = load %struct.buf*, %struct.buf** %16, align 8
  %404 = call i32 @brelse(%struct.buf* %403)
  %405 = load i32, i32* %27, align 4
  store i32 %405, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

406:                                              ; preds = %374
  %407 = load i64, i64* %21, align 8
  %408 = load i64*, i64** %23, align 8
  %409 = load i32, i32* %26, align 4
  %410 = sub nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 %411
  %413 = getelementptr inbounds %struct.indir, %struct.indir* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 16
  %415 = getelementptr inbounds i64, i64* %408, i64 %414
  store i64 %407, i64* %415, align 8
  %416 = load i32, i32* %13, align 4
  %417 = load i32, i32* @IO_SYNC, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %406
  %421 = load %struct.buf*, %struct.buf** %16, align 8
  %422 = call i32 @bwrite(%struct.buf* %421)
  br label %440

423:                                              ; preds = %406
  %424 = load %struct.buf*, %struct.buf** %16, align 8
  %425 = getelementptr inbounds %struct.buf, %struct.buf* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %428 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = icmp eq i32 %426, %429
  br i1 %430, label %431, label %437

431:                                              ; preds = %423
  %432 = load i32, i32* @B_CLUSTEROK, align 4
  %433 = load %struct.buf*, %struct.buf** %16, align 8
  %434 = getelementptr inbounds %struct.buf, %struct.buf* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = or i32 %435, %432
  store i32 %436, i32* %434, align 8
  br label %437

437:                                              ; preds = %431, %423
  %438 = load %struct.buf*, %struct.buf** %16, align 8
  %439 = call i32 @bdwrite(%struct.buf* %438)
  br label %440

440:                                              ; preds = %437, %420
  br label %293

441:                                              ; preds = %325
  %442 = load i64, i64* %21, align 8
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %444, label %536

444:                                              ; preds = %441
  %445 = load %struct.ext2mount*, %struct.ext2mount** %15, align 8
  %446 = call i32 @EXT2_LOCK(%struct.ext2mount* %445)
  %447 = load %struct.inode*, %struct.inode** %8, align 8
  %448 = load i64, i64* %9, align 8
  %449 = load i32, i32* %26, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 %450
  %452 = getelementptr inbounds %struct.indir, %struct.indir* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 16
  %454 = trunc i64 %453 to i32
  %455 = load i64*, i64** %23, align 8
  %456 = getelementptr inbounds i64, i64* %455, i64 0
  %457 = load %struct.buf*, %struct.buf** %16, align 8
  %458 = getelementptr inbounds %struct.buf, %struct.buf* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 4
  %460 = call i64 @ext2_blkpref(%struct.inode* %447, i64 %448, i32 %454, i64* %456, i32 %459)
  store i64 %460, i64* %24, align 8
  %461 = load %struct.inode*, %struct.inode** %8, align 8
  %462 = load i64, i64* %9, align 8
  %463 = load i64, i64* %24, align 8
  %464 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %465 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.ucred*, %struct.ucred** %11, align 8
  %468 = call i32 @ext2_alloc(%struct.inode* %461, i64 %462, i64 %463, i32 %466, %struct.ucred* %467, i64* %22)
  store i32 %468, i32* %27, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %444
  %471 = load %struct.buf*, %struct.buf** %16, align 8
  %472 = call i32 @brelse(%struct.buf* %471)
  %473 = load i32, i32* %27, align 4
  store i32 %473, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

474:                                              ; preds = %444
  %475 = load i64, i64* %22, align 8
  %476 = load i64, i64* @UINT_MAX, align 8
  %477 = icmp sgt i64 %475, %476
  br i1 %477, label %478, label %480

478:                                              ; preds = %474
  %479 = load i32, i32* @EFBIG, align 4
  store i32 %479, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

480:                                              ; preds = %474
  %481 = load i64, i64* %22, align 8
  store i64 %481, i64* %21, align 8
  %482 = load %struct.vnode*, %struct.vnode** %18, align 8
  %483 = load i64, i64* %9, align 8
  %484 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %485 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = call %struct.buf* @getblk(%struct.vnode* %482, i64 %483, i32 %486, i32 0, i32 0, i32 0)
  store %struct.buf* %487, %struct.buf** %17, align 8
  %488 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %489 = load i64, i64* %21, align 8
  %490 = call i8* @fsbtodb(%struct.m_ext2fs* %488, i64 %489)
  %491 = load %struct.buf*, %struct.buf** %17, align 8
  %492 = getelementptr inbounds %struct.buf, %struct.buf* %491, i32 0, i32 1
  store i8* %490, i8** %492, align 8
  %493 = load i32, i32* %13, align 4
  %494 = load i32, i32* @BA_CLRBUF, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %500

497:                                              ; preds = %480
  %498 = load %struct.buf*, %struct.buf** %17, align 8
  %499 = call i32 @vfs_bio_clrbuf(%struct.buf* %498)
  br label %500

500:                                              ; preds = %497, %480
  %501 = load i64, i64* %21, align 8
  %502 = load i64*, i64** %23, align 8
  %503 = load i32, i32* %26, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.indir, %struct.indir* %36, i64 %504
  %506 = getelementptr inbounds %struct.indir, %struct.indir* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 16
  %508 = getelementptr inbounds i64, i64* %502, i64 %507
  store i64 %501, i64* %508, align 8
  %509 = load i32, i32* %13, align 4
  %510 = load i32, i32* @IO_SYNC, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %500
  %514 = load %struct.buf*, %struct.buf** %16, align 8
  %515 = call i32 @bwrite(%struct.buf* %514)
  br label %533

516:                                              ; preds = %500
  %517 = load %struct.buf*, %struct.buf** %16, align 8
  %518 = getelementptr inbounds %struct.buf, %struct.buf* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %521 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %519, %522
  br i1 %523, label %524, label %530

524:                                              ; preds = %516
  %525 = load i32, i32* @B_CLUSTEROK, align 4
  %526 = load %struct.buf*, %struct.buf** %16, align 8
  %527 = getelementptr inbounds %struct.buf, %struct.buf* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  %529 = or i32 %528, %525
  store i32 %529, i32* %527, align 8
  br label %530

530:                                              ; preds = %524, %516
  %531 = load %struct.buf*, %struct.buf** %16, align 8
  %532 = call i32 @bdwrite(%struct.buf* %531)
  br label %533

533:                                              ; preds = %530, %513
  %534 = load %struct.buf*, %struct.buf** %17, align 8
  %535 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* %534, %struct.buf** %535, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

536:                                              ; preds = %441
  %537 = load %struct.buf*, %struct.buf** %16, align 8
  %538 = call i32 @brelse(%struct.buf* %537)
  %539 = load i32, i32* %13, align 4
  %540 = load i32, i32* @BA_CLRBUF, align 4
  %541 = and i32 %539, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %589

543:                                              ; preds = %536
  %544 = load i32, i32* %13, align 4
  %545 = load i32, i32* @BA_SEQMASK, align 4
  %546 = and i32 %544, %545
  %547 = load i32, i32* @BA_SEQSHIFT, align 4
  %548 = ashr i32 %546, %547
  store i32 %548, i32* %29, align 4
  %549 = load i32, i32* %29, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %573

551:                                              ; preds = %543
  %552 = load %struct.vnode*, %struct.vnode** %18, align 8
  %553 = getelementptr inbounds %struct.vnode, %struct.vnode* %552, i32 0, i32 0
  %554 = load %struct.TYPE_2__*, %struct.TYPE_2__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* @MNT_NOCLUSTERR, align 4
  %558 = and i32 %556, %557
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %573

560:                                              ; preds = %551
  %561 = load %struct.vnode*, %struct.vnode** %18, align 8
  %562 = load %struct.inode*, %struct.inode** %8, align 8
  %563 = getelementptr inbounds %struct.inode, %struct.inode* %562, i32 0, i32 3
  %564 = load i64, i64* %563, align 8
  %565 = load i64, i64* %9, align 8
  %566 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %567 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* @NOCRED, align 4
  %570 = load i32, i32* @MAXBSIZE, align 4
  %571 = load i32, i32* %29, align 4
  %572 = call i32 @cluster_read(%struct.vnode* %561, i64 %564, i64 %565, i32 %568, i32 %569, i32 %570, i32 %571, i32 0, %struct.buf** %17)
  store i32 %572, i32* %27, align 4
  br label %581

573:                                              ; preds = %551, %543
  %574 = load %struct.vnode*, %struct.vnode** %18, align 8
  %575 = load i64, i64* %9, align 8
  %576 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %577 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* @NOCRED, align 4
  %580 = call i32 @bread(%struct.vnode* %574, i64 %575, i32 %578, i32 %579, %struct.buf** %17)
  store i32 %580, i32* %27, align 4
  br label %581

581:                                              ; preds = %573, %560
  %582 = load i32, i32* %27, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %588

584:                                              ; preds = %581
  %585 = load %struct.buf*, %struct.buf** %17, align 8
  %586 = call i32 @brelse(%struct.buf* %585)
  %587 = load i32, i32* %27, align 4
  store i32 %587, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

588:                                              ; preds = %581
  br label %601

589:                                              ; preds = %536
  %590 = load %struct.vnode*, %struct.vnode** %18, align 8
  %591 = load i64, i64* %9, align 8
  %592 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %593 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = call %struct.buf* @getblk(%struct.vnode* %590, i64 %591, i32 %594, i32 0, i32 0, i32 0)
  store %struct.buf* %595, %struct.buf** %17, align 8
  %596 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %597 = load i64, i64* %21, align 8
  %598 = call i8* @fsbtodb(%struct.m_ext2fs* %596, i64 %597)
  %599 = load %struct.buf*, %struct.buf** %17, align 8
  %600 = getelementptr inbounds %struct.buf, %struct.buf* %599, i32 0, i32 1
  store i8* %598, i8** %600, align 8
  br label %601

601:                                              ; preds = %589, %588
  %602 = load %struct.buf*, %struct.buf** %17, align 8
  %603 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* %602, %struct.buf** %603, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %604

604:                                              ; preds = %601, %584, %533, %478, %470, %396, %372, %364, %307, %268, %246, %240, %199, %174, %152, %146, %121, %102, %71, %40
  %605 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %605)
  %606 = load i32, i32* %7, align 4
  ret i32 %606
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ext2_ext_balloc(%struct.inode*, i64, i32, %struct.ucred*, %struct.buf**, i32) #1

declare dso_local i32 @bread(%struct.vnode*, i64, i32, i32, %struct.buf**) #1

declare dso_local i8* @fsbtodb(%struct.m_ext2fs*, i64) #1

declare dso_local i32 @EXT2_LOCK(%struct.ext2mount*) #1

declare dso_local i32 @ext2_alloc(%struct.inode*, i64, i64, i32, %struct.ucred*, i64*) #1

declare dso_local i64 @ext2_blkpref(%struct.inode*, i64, i32, i64*, i32) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_bio_clrbuf(%struct.buf*) #1

declare dso_local i64 @dbtofsb(%struct.m_ext2fs*, i8*) #1

declare dso_local i32 @ext2_getlbns(%struct.vnode*, i64, %struct.indir*, i32*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @ext2_blkfree(%struct.inode*, i64, i32) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @cluster_read(%struct.vnode*, i64, i64, i32, i32, i32, i32, i32, %struct.buf**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
