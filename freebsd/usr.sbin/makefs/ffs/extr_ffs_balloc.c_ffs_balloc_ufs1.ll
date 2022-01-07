; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_balloc.c_ffs_balloc_ufs1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_balloc.c_ffs_balloc_ufs1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64*, i64*, i32, %struct.fs* }
%struct.fs = type { i32 }
%struct.buf = type { i8*, i64 }
%struct.indir = type { i64, i64 }

@UFS_NIADDR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"need to ffs_realloccg; not supported!\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"ffs_balloc: ufs_getlbns returned indirect block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, %struct.buf**)* @ffs_balloc_ufs1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_balloc_ufs1(%struct.inode* %0, i64 %1, i32 %2, %struct.buf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buf**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca %struct.buf*, align 8
  %16 = alloca %struct.fs*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buf** %3, %struct.buf*** %9, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 4
  %34 = load %struct.fs*, %struct.fs** %33, align 8
  store %struct.fs* %34, %struct.fs** %16, align 8
  %35 = load i32, i32* @UFS_NIADDR, align 4
  %36 = add nsw i32 %35, 2
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %17, align 8
  %39 = alloca %struct.indir, i64 %37, align 16
  store i64 %37, i64* %18, align 8
  %40 = load i32, i32* @UFS_NIADDR, align 4
  %41 = add nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %28, align 8
  %44 = load %struct.fs*, %struct.fs** %16, align 8
  %45 = call i32 @UFS_FSNEEDSWAP(%struct.fs* %44)
  store i32 %45, i32* %30, align 4
  %46 = load %struct.fs*, %struct.fs** %16, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @lblkno(%struct.fs* %46, i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load %struct.fs*, %struct.fs** %16, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @blkoff(%struct.fs* %49, i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.buf**, %struct.buf*** %9, align 8
  %55 = icmp ne %struct.buf** %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %4
  %57 = load %struct.buf**, %struct.buf*** %9, align 8
  store %struct.buf* null, %struct.buf** %57, align 8
  br label %58

58:                                               ; preds = %56, %4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.fs*, %struct.fs** %16, align 8
  %61 = getelementptr inbounds %struct.fs, %struct.fs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @EFBIG, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

70:                                               ; preds = %58
  %71 = load %struct.fs*, %struct.fs** %16, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @lblkno(%struct.fs* %71, i64 %74)
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @UFS_NDADDR, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %70
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %13, align 8
  %85 = load %struct.fs*, %struct.fs** %16, align 8
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @blksize(%struct.fs* %85, %struct.inode* %86, i64 %87)
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %22, align 4
  %90 = load %struct.fs*, %struct.fs** %16, align 8
  %91 = getelementptr inbounds %struct.fs, %struct.fs* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load i32, i32* %22, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 (...) @abort() #4
  unreachable

100:                                              ; preds = %94, %83
  br label %101

101:                                              ; preds = %100, %79, %70
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @UFS_NDADDR, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %251

105:                                              ; preds = %101
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %30, align 4
  %113 = call i64 @ufs_rw32(i64 %111, i32 %112)
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %105
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fs*, %struct.fs** %16, align 8
  %121 = load i64, i64* %10, align 8
  %122 = add nsw i64 %121, 1
  %123 = call i64 @lblktosize(%struct.fs* %120, i64 %122)
  %124 = icmp sge i64 %119, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %116
  %126 = load %struct.buf**, %struct.buf*** %9, align 8
  %127 = icmp ne %struct.buf** %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.fs*, %struct.fs** %16, align 8
  %134 = getelementptr inbounds %struct.fs, %struct.fs* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.buf**, %struct.buf*** %9, align 8
  %137 = call i32 @bread(i32 %131, i64 %132, i32 %135, i32* null, %struct.buf** %136)
  store i32 %137, i32* %26, align 4
  %138 = load i32, i32* %26, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %128
  %141 = load %struct.buf**, %struct.buf*** %9, align 8
  %142 = load %struct.buf*, %struct.buf** %141, align 8
  %143 = call i32 @brelse(%struct.buf* %142)
  %144 = load i32, i32* %26, align 4
  store i32 %144, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145, %125
  store i32 0, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

147:                                              ; preds = %116, %105
  %148 = load i64, i64* %13, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %187

150:                                              ; preds = %147
  %151 = load %struct.fs*, %struct.fs** %16, align 8
  %152 = load %struct.fs*, %struct.fs** %16, align 8
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @blkoff(%struct.fs* %152, i64 %155)
  %157 = call i32 @fragroundup(%struct.fs* %151, i32 %156)
  store i32 %157, i32* %22, align 4
  %158 = load %struct.fs*, %struct.fs** %16, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @fragroundup(%struct.fs* %158, i32 %159)
  store i32 %160, i32* %23, align 4
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %150
  %165 = load %struct.buf**, %struct.buf*** %9, align 8
  %166 = icmp ne %struct.buf** %165, null
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = load %struct.inode*, %struct.inode** %6, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load i32, i32* %22, align 4
  %173 = load %struct.buf**, %struct.buf*** %9, align 8
  %174 = call i32 @bread(i32 %170, i64 %171, i32 %172, i32* null, %struct.buf** %173)
  store i32 %174, i32* %26, align 4
  %175 = load i32, i32* %26, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load %struct.buf**, %struct.buf*** %9, align 8
  %179 = load %struct.buf*, %struct.buf** %178, align 8
  %180 = call i32 @brelse(%struct.buf* %179)
  %181 = load i32, i32* %26, align 4
  store i32 %181, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182, %164
  store i32 0, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

184:                                              ; preds = %150
  %185 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %186 = call i32 (...) @abort() #4
  unreachable

187:                                              ; preds = %147
  %188 = load %struct.inode*, %struct.inode** %6, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.fs*, %struct.fs** %16, align 8
  %192 = load i64, i64* %10, align 8
  %193 = add nsw i64 %192, 1
  %194 = call i64 @lblktosize(%struct.fs* %191, i64 %193)
  %195 = icmp slt i64 %190, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %187
  %197 = load %struct.fs*, %struct.fs** %16, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @fragroundup(%struct.fs* %197, i32 %198)
  store i32 %199, i32* %23, align 4
  br label %204

200:                                              ; preds = %187
  %201 = load %struct.fs*, %struct.fs** %16, align 8
  %202 = getelementptr inbounds %struct.fs, %struct.fs* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %23, align 4
  br label %204

204:                                              ; preds = %200, %196
  %205 = load %struct.inode*, %struct.inode** %6, align 8
  %206 = load i64, i64* %10, align 8
  %207 = load %struct.inode*, %struct.inode** %6, align 8
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* %10, align 8
  %210 = trunc i64 %209 to i32
  %211 = load %struct.inode*, %struct.inode** %6, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  %215 = call i64 @ffs_blkpref_ufs1(%struct.inode* %207, i64 %208, i32 %210, i64* %214)
  %216 = load i32, i32* %23, align 4
  %217 = call i32 @ffs_alloc(%struct.inode* %205, i64 %206, i64 %215, i32 %216, i64* %19)
  store i32 %217, i32* %26, align 4
  %218 = load i32, i32* %26, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %204
  %221 = load i32, i32* %26, align 4
  store i32 %221, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

222:                                              ; preds = %204
  %223 = load %struct.buf**, %struct.buf*** %9, align 8
  %224 = icmp ne %struct.buf** %223, null
  br i1 %224, label %225, label %241

225:                                              ; preds = %222
  %226 = load %struct.inode*, %struct.inode** %6, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i64, i64* %10, align 8
  %230 = load i32, i32* %23, align 4
  %231 = call %struct.buf* @getblk(i32 %228, i64 %229, i32 %230, i32 0, i32 0, i32 0)
  store %struct.buf* %231, %struct.buf** %14, align 8
  %232 = load %struct.fs*, %struct.fs** %16, align 8
  %233 = load i64, i64* %19, align 8
  %234 = call i8* @fsbtodb(%struct.fs* %232, i64 %233)
  %235 = load %struct.buf*, %struct.buf** %14, align 8
  %236 = getelementptr inbounds %struct.buf, %struct.buf* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  %237 = load %struct.buf*, %struct.buf** %14, align 8
  %238 = call i32 @clrbuf(%struct.buf* %237)
  %239 = load %struct.buf*, %struct.buf** %14, align 8
  %240 = load %struct.buf**, %struct.buf*** %9, align 8
  store %struct.buf* %239, %struct.buf** %240, align 8
  br label %241

241:                                              ; preds = %225, %222
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %19, align 8
  %244 = load i32, i32* %30, align 4
  %245 = call i64 @ufs_rw32(i64 %243, i32 %244)
  %246 = load %struct.inode*, %struct.inode** %6, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = load i64, i64* %10, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 %245, i64* %250, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

251:                                              ; preds = %101
  store i64 0, i64* %20, align 8
  %252 = load %struct.inode*, %struct.inode** %6, align 8
  %253 = load i64, i64* %10, align 8
  %254 = call i32 @ufs_getlbns(%struct.inode* %252, i64 %253, %struct.indir* %39, i32* %24)
  store i32 %254, i32* %26, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = load i32, i32* %26, align 4
  store i32 %257, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

258:                                              ; preds = %251
  %259 = load i32, i32* %24, align 4
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %263 = call i32 (...) @abort() #4
  unreachable

264:                                              ; preds = %258
  %265 = load i32, i32* %24, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %24, align 4
  %267 = load %struct.inode*, %struct.inode** %6, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 2
  %269 = load i64*, i64** %268, align 8
  %270 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 0
  %271 = getelementptr inbounds %struct.indir, %struct.indir* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 16
  %273 = getelementptr inbounds i64, i64* %269, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* %30, align 4
  %276 = call i64 @ufs_rw32(i64 %274, i32 %275)
  store i64 %276, i64* %13, align 8
  store i64* null, i64** %29, align 8
  store i64* %43, i64** %27, align 8
  %277 = load i64, i64* %13, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %333

279:                                              ; preds = %264
  %280 = load %struct.inode*, %struct.inode** %6, align 8
  %281 = load i64, i64* %10, align 8
  %282 = call i64 @ffs_blkpref_ufs1(%struct.inode* %280, i64 %281, i32 0, i64* null)
  store i64 %282, i64* %20, align 8
  %283 = load %struct.inode*, %struct.inode** %6, align 8
  %284 = load i64, i64* %10, align 8
  %285 = load i64, i64* %20, align 8
  %286 = load %struct.fs*, %struct.fs** %16, align 8
  %287 = getelementptr inbounds %struct.fs, %struct.fs* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @ffs_alloc(%struct.inode* %283, i64 %284, i64 %285, i32 %288, i64* %19)
  store i32 %289, i32* %26, align 4
  %290 = load i32, i32* %26, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %279
  %293 = load i32, i32* %26, align 4
  store i32 %293, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

294:                                              ; preds = %279
  %295 = load i64, i64* %19, align 8
  store i64 %295, i64* %13, align 8
  %296 = load i64, i64* %13, align 8
  %297 = load i64*, i64** %27, align 8
  %298 = getelementptr inbounds i64, i64* %297, i32 1
  store i64* %298, i64** %27, align 8
  store i64 %296, i64* %297, align 8
  %299 = load %struct.inode*, %struct.inode** %6, align 8
  %300 = getelementptr inbounds %struct.inode, %struct.inode* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 1
  %303 = getelementptr inbounds %struct.indir, %struct.indir* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.fs*, %struct.fs** %16, align 8
  %306 = getelementptr inbounds %struct.fs, %struct.fs* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call %struct.buf* @getblk(i32 %301, i64 %304, i32 %307, i32 0, i32 0, i32 0)
  store %struct.buf* %308, %struct.buf** %14, align 8
  %309 = load %struct.fs*, %struct.fs** %16, align 8
  %310 = load i64, i64* %13, align 8
  %311 = call i8* @fsbtodb(%struct.fs* %309, i64 %310)
  %312 = load %struct.buf*, %struct.buf** %14, align 8
  %313 = getelementptr inbounds %struct.buf, %struct.buf* %312, i32 0, i32 0
  store i8* %311, i8** %313, align 8
  %314 = load %struct.buf*, %struct.buf** %14, align 8
  %315 = call i32 @clrbuf(%struct.buf* %314)
  %316 = load %struct.buf*, %struct.buf** %14, align 8
  %317 = call i32 @bwrite(%struct.buf* %316)
  store i32 %317, i32* %26, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %294
  %320 = load i32, i32* %26, align 4
  store i32 %320, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

321:                                              ; preds = %294
  %322 = load %struct.inode*, %struct.inode** %6, align 8
  %323 = getelementptr inbounds %struct.inode, %struct.inode* %322, i32 0, i32 2
  %324 = load i64*, i64** %323, align 8
  %325 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 0
  %326 = getelementptr inbounds %struct.indir, %struct.indir* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 16
  %328 = getelementptr inbounds i64, i64* %324, i64 %327
  store i64* %328, i64** %29, align 8
  %329 = load i64, i64* %13, align 8
  %330 = load i32, i32* %30, align 4
  %331 = call i64 @ufs_rw32(i64 %329, i32 %330)
  %332 = load i64*, i64** %29, align 8
  store i64 %331, i64* %332, align 8
  br label %333

333:                                              ; preds = %321, %264
  store i32 1, i32* %25, align 4
  br label %334

334:                                              ; preds = %432, %377, %333
  %335 = load %struct.inode*, %struct.inode** %6, align 8
  %336 = getelementptr inbounds %struct.inode, %struct.inode* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %25, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 %339
  %341 = getelementptr inbounds %struct.indir, %struct.indir* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.fs*, %struct.fs** %16, align 8
  %344 = getelementptr inbounds %struct.fs, %struct.fs* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @bread(i32 %337, i64 %342, i32 %345, i32* null, %struct.buf** %14)
  store i32 %346, i32* %26, align 4
  %347 = load i32, i32* %26, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %334
  %350 = load %struct.buf*, %struct.buf** %14, align 8
  %351 = call i32 @brelse(%struct.buf* %350)
  %352 = load i32, i32* %26, align 4
  store i32 %352, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

353:                                              ; preds = %334
  %354 = load %struct.buf*, %struct.buf** %14, align 8
  %355 = getelementptr inbounds %struct.buf, %struct.buf* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = inttoptr i64 %356 to i64*
  store i64* %357, i64** %21, align 8
  %358 = load i64*, i64** %21, align 8
  %359 = load i32, i32* %25, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 %360
  %362 = getelementptr inbounds %struct.indir, %struct.indir* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 16
  %364 = getelementptr inbounds i64, i64* %358, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = load i32, i32* %30, align 4
  %367 = call i64 @ufs_rw32(i64 %365, i32 %366)
  store i64 %367, i64* %13, align 8
  %368 = load i32, i32* %25, align 4
  %369 = load i32, i32* %24, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %353
  br label %446

372:                                              ; preds = %353
  %373 = load i32, i32* %25, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %25, align 4
  %375 = load i64, i64* %13, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %372
  %378 = load %struct.buf*, %struct.buf** %14, align 8
  %379 = call i32 @brelse(%struct.buf* %378)
  br label %334

380:                                              ; preds = %372
  %381 = load i64, i64* %20, align 8
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %380
  %384 = load %struct.inode*, %struct.inode** %6, align 8
  %385 = load i64, i64* %10, align 8
  %386 = call i64 @ffs_blkpref_ufs1(%struct.inode* %384, i64 %385, i32 0, i64* null)
  store i64 %386, i64* %20, align 8
  br label %387

387:                                              ; preds = %383, %380
  %388 = load %struct.inode*, %struct.inode** %6, align 8
  %389 = load i64, i64* %10, align 8
  %390 = load i64, i64* %20, align 8
  %391 = load %struct.fs*, %struct.fs** %16, align 8
  %392 = getelementptr inbounds %struct.fs, %struct.fs* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @ffs_alloc(%struct.inode* %388, i64 %389, i64 %390, i32 %393, i64* %19)
  store i32 %394, i32* %26, align 4
  %395 = load i32, i32* %26, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %387
  %398 = load %struct.buf*, %struct.buf** %14, align 8
  %399 = call i32 @brelse(%struct.buf* %398)
  %400 = load i32, i32* %26, align 4
  store i32 %400, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

401:                                              ; preds = %387
  %402 = load i64, i64* %19, align 8
  store i64 %402, i64* %13, align 8
  %403 = load i64, i64* %13, align 8
  %404 = load i64*, i64** %27, align 8
  %405 = getelementptr inbounds i64, i64* %404, i32 1
  store i64* %405, i64** %27, align 8
  store i64 %403, i64* %404, align 8
  %406 = load %struct.inode*, %struct.inode** %6, align 8
  %407 = getelementptr inbounds %struct.inode, %struct.inode* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* %25, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 %410
  %412 = getelementptr inbounds %struct.indir, %struct.indir* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.fs*, %struct.fs** %16, align 8
  %415 = getelementptr inbounds %struct.fs, %struct.fs* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call %struct.buf* @getblk(i32 %408, i64 %413, i32 %416, i32 0, i32 0, i32 0)
  store %struct.buf* %417, %struct.buf** %15, align 8
  %418 = load %struct.fs*, %struct.fs** %16, align 8
  %419 = load i64, i64* %13, align 8
  %420 = call i8* @fsbtodb(%struct.fs* %418, i64 %419)
  %421 = load %struct.buf*, %struct.buf** %15, align 8
  %422 = getelementptr inbounds %struct.buf, %struct.buf* %421, i32 0, i32 0
  store i8* %420, i8** %422, align 8
  %423 = load %struct.buf*, %struct.buf** %15, align 8
  %424 = call i32 @clrbuf(%struct.buf* %423)
  %425 = load %struct.buf*, %struct.buf** %15, align 8
  %426 = call i32 @bwrite(%struct.buf* %425)
  store i32 %426, i32* %26, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %401
  %429 = load %struct.buf*, %struct.buf** %14, align 8
  %430 = call i32 @brelse(%struct.buf* %429)
  %431 = load i32, i32* %26, align 4
  store i32 %431, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

432:                                              ; preds = %401
  %433 = load i64, i64* %13, align 8
  %434 = load i32, i32* %30, align 4
  %435 = call i64 @ufs_rw32(i64 %433, i32 %434)
  %436 = load i64*, i64** %21, align 8
  %437 = load i32, i32* %25, align 4
  %438 = sub nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 %439
  %441 = getelementptr inbounds %struct.indir, %struct.indir* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 16
  %443 = getelementptr inbounds i64, i64* %436, i64 %442
  store i64 %435, i64* %443, align 8
  %444 = load %struct.buf*, %struct.buf** %14, align 8
  %445 = call i32 @bwrite(%struct.buf* %444)
  br label %334

446:                                              ; preds = %371
  %447 = load i64, i64* %13, align 8
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %512

449:                                              ; preds = %446
  %450 = load %struct.inode*, %struct.inode** %6, align 8
  %451 = load i64, i64* %10, align 8
  %452 = load i32, i32* %24, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 %453
  %455 = getelementptr inbounds %struct.indir, %struct.indir* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 16
  %457 = trunc i64 %456 to i32
  %458 = load i64*, i64** %21, align 8
  %459 = getelementptr inbounds i64, i64* %458, i64 0
  %460 = call i64 @ffs_blkpref_ufs1(%struct.inode* %450, i64 %451, i32 %457, i64* %459)
  store i64 %460, i64* %20, align 8
  %461 = load %struct.inode*, %struct.inode** %6, align 8
  %462 = load i64, i64* %10, align 8
  %463 = load i64, i64* %20, align 8
  %464 = load %struct.fs*, %struct.fs** %16, align 8
  %465 = getelementptr inbounds %struct.fs, %struct.fs* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @ffs_alloc(%struct.inode* %461, i64 %462, i64 %463, i32 %466, i64* %19)
  store i32 %467, i32* %26, align 4
  %468 = load i32, i32* %26, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %449
  %471 = load %struct.buf*, %struct.buf** %14, align 8
  %472 = call i32 @brelse(%struct.buf* %471)
  %473 = load i32, i32* %26, align 4
  store i32 %473, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

474:                                              ; preds = %449
  %475 = load i64, i64* %19, align 8
  store i64 %475, i64* %13, align 8
  %476 = load i64, i64* %13, align 8
  %477 = load i64*, i64** %27, align 8
  %478 = getelementptr inbounds i64, i64* %477, i32 1
  store i64* %478, i64** %27, align 8
  store i64 %476, i64* %477, align 8
  %479 = load %struct.buf**, %struct.buf*** %9, align 8
  %480 = icmp ne %struct.buf** %479, null
  br i1 %480, label %481, label %499

481:                                              ; preds = %474
  %482 = load %struct.inode*, %struct.inode** %6, align 8
  %483 = getelementptr inbounds %struct.inode, %struct.inode* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 8
  %485 = load i64, i64* %10, align 8
  %486 = load %struct.fs*, %struct.fs** %16, align 8
  %487 = getelementptr inbounds %struct.fs, %struct.fs* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = call %struct.buf* @getblk(i32 %484, i64 %485, i32 %488, i32 0, i32 0, i32 0)
  store %struct.buf* %489, %struct.buf** %15, align 8
  %490 = load %struct.fs*, %struct.fs** %16, align 8
  %491 = load i64, i64* %13, align 8
  %492 = call i8* @fsbtodb(%struct.fs* %490, i64 %491)
  %493 = load %struct.buf*, %struct.buf** %15, align 8
  %494 = getelementptr inbounds %struct.buf, %struct.buf* %493, i32 0, i32 0
  store i8* %492, i8** %494, align 8
  %495 = load %struct.buf*, %struct.buf** %15, align 8
  %496 = call i32 @clrbuf(%struct.buf* %495)
  %497 = load %struct.buf*, %struct.buf** %15, align 8
  %498 = load %struct.buf**, %struct.buf*** %9, align 8
  store %struct.buf* %497, %struct.buf** %498, align 8
  br label %499

499:                                              ; preds = %481, %474
  %500 = load i64, i64* %13, align 8
  %501 = load i32, i32* %30, align 4
  %502 = call i64 @ufs_rw32(i64 %500, i32 %501)
  %503 = load i64*, i64** %21, align 8
  %504 = load i32, i32* %24, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.indir, %struct.indir* %39, i64 %505
  %507 = getelementptr inbounds %struct.indir, %struct.indir* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 16
  %509 = getelementptr inbounds i64, i64* %503, i64 %508
  store i64 %502, i64* %509, align 8
  %510 = load %struct.buf*, %struct.buf** %14, align 8
  %511 = call i32 @bwrite(%struct.buf* %510)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

512:                                              ; preds = %446
  %513 = load %struct.buf*, %struct.buf** %14, align 8
  %514 = call i32 @brelse(%struct.buf* %513)
  %515 = load %struct.buf**, %struct.buf*** %9, align 8
  %516 = icmp ne %struct.buf** %515, null
  br i1 %516, label %517, label %535

517:                                              ; preds = %512
  %518 = load %struct.inode*, %struct.inode** %6, align 8
  %519 = getelementptr inbounds %struct.inode, %struct.inode* %518, i32 0, i32 3
  %520 = load i32, i32* %519, align 8
  %521 = load i64, i64* %10, align 8
  %522 = load %struct.fs*, %struct.fs** %16, align 8
  %523 = getelementptr inbounds %struct.fs, %struct.fs* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 4
  %525 = call i32 @bread(i32 %520, i64 %521, i32 %524, i32* null, %struct.buf** %15)
  store i32 %525, i32* %26, align 4
  %526 = load i32, i32* %26, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %532

528:                                              ; preds = %517
  %529 = load %struct.buf*, %struct.buf** %15, align 8
  %530 = call i32 @brelse(%struct.buf* %529)
  %531 = load i32, i32* %26, align 4
  store i32 %531, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

532:                                              ; preds = %517
  %533 = load %struct.buf*, %struct.buf** %15, align 8
  %534 = load %struct.buf**, %struct.buf*** %9, align 8
  store %struct.buf* %533, %struct.buf** %534, align 8
  br label %535

535:                                              ; preds = %532, %512
  store i32 0, i32* %5, align 4
  store i32 1, i32* %31, align 4
  br label %536

536:                                              ; preds = %535, %528, %499, %470, %428, %397, %349, %319, %292, %256, %242, %220, %183, %177, %146, %140, %68
  %537 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %537)
  %538 = load i32, i32* %5, align 4
  ret i32 %538
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UFS_FSNEEDSWAP(%struct.fs*) #2

declare dso_local i64 @lblkno(%struct.fs*, i64) #2

declare dso_local i32 @blkoff(%struct.fs*, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @blksize(%struct.fs*, %struct.inode*, i64) #2

declare dso_local i32 @warnx(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i64 @ufs_rw32(i64, i32) #2

declare dso_local i64 @lblktosize(%struct.fs*, i64) #2

declare dso_local i32 @bread(i32, i64, i32, i32*, %struct.buf**) #2

declare dso_local i32 @brelse(%struct.buf*) #2

declare dso_local i32 @fragroundup(%struct.fs*, i32) #2

declare dso_local i32 @ffs_alloc(%struct.inode*, i64, i64, i32, i64*) #2

declare dso_local i64 @ffs_blkpref_ufs1(%struct.inode*, i64, i32, i64*) #2

declare dso_local %struct.buf* @getblk(i32, i64, i32, i32, i32, i32) #2

declare dso_local i8* @fsbtodb(%struct.fs*, i64) #2

declare dso_local i32 @clrbuf(%struct.buf*) #2

declare dso_local i32 @ufs_getlbns(%struct.inode*, i64, %struct.indir*, i32*) #2

declare dso_local i32 @bwrite(%struct.buf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
