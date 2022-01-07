; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext2_bmaparray.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext2_bmaparray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vnode = type { i32, %struct.mount* }
%struct.mount = type { i32 }
%struct.inode = type { i64*, i64*, i32 }
%struct.buf = type { i32, i64, i8*, i32, i32, i32 }
%struct.ext2mount = type { i64, i32 }
%struct.indir = type { i64, i64 }

@EXT2_NIADDR = common dso_local global i32 0, align 4
@EXT2_NDADDR = common dso_local global i64 0, align 8
@B_CACHE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@SF_SNAPSHOT = common dso_local global i32 0, align 4
@curproc = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_bmaparray(%struct.vnode* %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca %struct.ext2mount*, align 8
  %15 = alloca %struct.mount*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.indir*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %28 = load i32, i32* @EXT2_NIADDR, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca %struct.indir, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  store i32 0, i32* %23, align 4
  store %struct.indir* null, %struct.indir** %18, align 8
  %33 = load %struct.vnode*, %struct.vnode** %7, align 8
  %34 = call %struct.inode* @VTOI(%struct.vnode* %33)
  store %struct.inode* %34, %struct.inode** %12, align 8
  %35 = load %struct.vnode*, %struct.vnode** %7, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 1
  %37 = load %struct.mount*, %struct.mount** %36, align 8
  store %struct.mount* %37, %struct.mount** %15, align 8
  %38 = load %struct.mount*, %struct.mount** %15, align 8
  %39 = call %struct.ext2mount* @VFSTOEXT2(%struct.mount* %38)
  store %struct.ext2mount* %39, %struct.ext2mount** %14, align 8
  %40 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %41 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @EXT2_BLOCK_SIZE(i32 %42)
  store i32 %43, i32* %24, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %5
  %47 = load %struct.mount*, %struct.mount** %15, align 8
  %48 = getelementptr inbounds %struct.mount, %struct.mount* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %24, align 4
  %51 = sdiv i32 %49, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %23, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %5
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %11, align 8
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %54
  store %struct.indir* %32, %struct.indir** %18, align 8
  store i32* %22, i32** %25, align 8
  %60 = load %struct.vnode*, %struct.vnode** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.indir*, %struct.indir** %18, align 8
  %63 = load i32*, i32** %25, align 8
  %64 = call i32 @ext2_getlbns(%struct.vnode* %60, i64 %61, %struct.indir* %62, i32* %63)
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %21, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %425

69:                                               ; preds = %59
  %70 = load i32*, i32** %25, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %180

74:                                               ; preds = %69
  %75 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %76 = load %struct.inode*, %struct.inode** %12, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @blkptrtodb(%struct.ext2mount* %75, i64 %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i64*, i64** %9, align 8
  store i64 -1, i64* %89, align 8
  br label %179

90:                                               ; preds = %74
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %178

93:                                               ; preds = %90
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* %27, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %126, %93
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @EXT2_NDADDR, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %108 = load %struct.inode*, %struct.inode** %12, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.inode*, %struct.inode** %12, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @is_sequential(%struct.ext2mount* %107, i64 %114, i64 %120)
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %106, %101, %97
  %124 = phi i1 [ false, %101 ], [ false, %97 ], [ %122, %106 ]
  br i1 %124, label %125, label %132

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %8, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %8, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %97

132:                                              ; preds = %123
  %133 = load i64, i64* %27, align 8
  store i64 %133, i64* %8, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %177

136:                                              ; preds = %132
  %137 = load i64, i64* %8, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %136
  %140 = load i64, i64* %8, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* %8, align 8
  br label %142

142:                                              ; preds = %170, %139
  %143 = load i64, i64* %8, align 8
  %144 = icmp uge i64 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %142
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %23, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %152 = load %struct.inode*, %struct.inode** %12, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.inode*, %struct.inode** %12, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = add i64 %161, 1
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @is_sequential(%struct.ext2mount* %151, i64 %157, i64 %164)
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %150, %145, %142
  %168 = phi i1 [ false, %145 ], [ false, %142 ], [ %166, %150 ]
  br i1 %168, label %169, label %176

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %8, align 8
  %172 = add i64 %171, -1
  store i64 %172, i64* %8, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %142

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %136, %132
  br label %178

178:                                              ; preds = %177, %90
  br label %179

179:                                              ; preds = %178, %88
  store i32 0, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %425

180:                                              ; preds = %69
  %181 = load %struct.inode*, %struct.inode** %12, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load %struct.indir*, %struct.indir** %18, align 8
  %185 = getelementptr inbounds %struct.indir, %struct.indir* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %19, align 8
  store %struct.buf* null, %struct.buf** %13, align 8
  %189 = load %struct.indir*, %struct.indir** %18, align 8
  %190 = getelementptr inbounds %struct.indir, %struct.indir* %189, i32 1
  store %struct.indir* %190, %struct.indir** %18, align 8
  br label %191

191:                                              ; preds = %386, %180
  %192 = load i32, i32* %22, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %22, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %389

195:                                              ; preds = %191
  %196 = load %struct.indir*, %struct.indir** %18, align 8
  %197 = getelementptr inbounds %struct.indir, %struct.indir* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %20, align 8
  %199 = load i64, i64* %19, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.vnode*, %struct.vnode** %7, align 8
  %203 = getelementptr inbounds %struct.vnode, %struct.vnode* %202, i32 0, i32 0
  %204 = load i64, i64* %20, align 8
  %205 = call i32 @incore(i32* %203, i64 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %201, %195
  %208 = load i64, i64* %20, align 8
  %209 = load i64, i64* %8, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207, %201
  br label %389

212:                                              ; preds = %207
  %213 = load %struct.buf*, %struct.buf** %13, align 8
  %214 = icmp ne %struct.buf* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.buf*, %struct.buf** %13, align 8
  %217 = call i32 @bqrelse(%struct.buf* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load %struct.vnode*, %struct.vnode** %7, align 8
  %220 = load i64, i64* %20, align 8
  %221 = load i32, i32* %24, align 4
  %222 = call %struct.buf* @getblk(%struct.vnode* %219, i64 %220, i32 %221, i32 0, i32 0, i32 0)
  store %struct.buf* %222, %struct.buf** %13, align 8
  %223 = load %struct.buf*, %struct.buf** %13, align 8
  %224 = getelementptr inbounds %struct.buf, %struct.buf* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @B_CACHE, align 4
  %227 = and i32 %225, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %274

229:                                              ; preds = %218
  %230 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %231 = load i64, i64* %19, align 8
  %232 = call i8* @blkptrtodb(%struct.ext2mount* %230, i64 %231)
  %233 = load %struct.buf*, %struct.buf** %13, align 8
  %234 = getelementptr inbounds %struct.buf, %struct.buf* %233, i32 0, i32 2
  store i8* %232, i8** %234, align 8
  %235 = load i32, i32* @BIO_READ, align 4
  %236 = load %struct.buf*, %struct.buf** %13, align 8
  %237 = getelementptr inbounds %struct.buf, %struct.buf* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* @B_INVAL, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.buf*, %struct.buf** %13, align 8
  %241 = getelementptr inbounds %struct.buf, %struct.buf* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, %239
  store i32 %243, i32* %241, align 8
  %244 = load i32, i32* @BIO_ERROR, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.buf*, %struct.buf** %13, align 8
  %247 = getelementptr inbounds %struct.buf, %struct.buf* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = load %struct.buf*, %struct.buf** %13, align 8
  %251 = call i32 @vfs_busy_pages(%struct.buf* %250, i32 0)
  %252 = load %struct.buf*, %struct.buf** %13, align 8
  %253 = getelementptr inbounds %struct.buf, %struct.buf* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @dbtob(i8* %254)
  %256 = load %struct.buf*, %struct.buf** %13, align 8
  %257 = getelementptr inbounds %struct.buf, %struct.buf* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 8
  %258 = load %struct.buf*, %struct.buf** %13, align 8
  %259 = call i32 @bstrategy(%struct.buf* %258)
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  %265 = load %struct.buf*, %struct.buf** %13, align 8
  %266 = call i32 @bufwait(%struct.buf* %265)
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %229
  %270 = load %struct.buf*, %struct.buf** %13, align 8
  %271 = call i32 @brelse(%struct.buf* %270)
  %272 = load i32, i32* %21, align 4
  store i32 %272, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %425

273:                                              ; preds = %229
  br label %274

274:                                              ; preds = %273, %218
  %275 = load %struct.buf*, %struct.buf** %13, align 8
  %276 = getelementptr inbounds %struct.buf, %struct.buf* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to i64*
  %279 = load %struct.indir*, %struct.indir** %18, align 8
  %280 = getelementptr inbounds %struct.indir, %struct.indir* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i64, i64* %278, i64 %281
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %19, align 8
  %284 = load i32, i32* %22, align 4
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %385

286:                                              ; preds = %274
  %287 = load i64, i64* %19, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %385

289:                                              ; preds = %286
  %290 = load i32*, i32** %10, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %385

292:                                              ; preds = %289
  %293 = load %struct.indir*, %struct.indir** %18, align 8
  %294 = getelementptr inbounds %struct.indir, %struct.indir* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %8, align 8
  br label %297

297:                                              ; preds = %329, %292
  %298 = load i64, i64* %8, align 8
  %299 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %300 = call i64 @MNINDIR(%struct.ext2mount* %299)
  %301 = icmp ult i64 %298, %300
  br i1 %301, label %302, label %326

302:                                              ; preds = %297
  %303 = load i32*, i32** %10, align 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %23, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %326

307:                                              ; preds = %302
  %308 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %309 = load %struct.buf*, %struct.buf** %13, align 8
  %310 = getelementptr inbounds %struct.buf, %struct.buf* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = inttoptr i64 %311 to i64*
  %313 = load i64, i64* %8, align 8
  %314 = sub i64 %313, 1
  %315 = getelementptr inbounds i64, i64* %312, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.buf*, %struct.buf** %13, align 8
  %318 = getelementptr inbounds %struct.buf, %struct.buf* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = inttoptr i64 %319 to i64*
  %321 = load i64, i64* %8, align 8
  %322 = getelementptr inbounds i64, i64* %320, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = call i64 @is_sequential(%struct.ext2mount* %308, i64 %316, i64 %323)
  %325 = icmp ne i64 %324, 0
  br label %326

326:                                              ; preds = %307, %302, %297
  %327 = phi i1 [ false, %302 ], [ false, %297 ], [ %325, %307 ]
  br i1 %327, label %328, label %335

328:                                              ; preds = %326
  br label %329

329:                                              ; preds = %328
  %330 = load i64, i64* %8, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %8, align 8
  %332 = load i32*, i32** %10, align 8
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %332, align 4
  br label %297

335:                                              ; preds = %326
  %336 = load %struct.indir*, %struct.indir** %18, align 8
  %337 = getelementptr inbounds %struct.indir, %struct.indir* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %8, align 8
  %339 = load i32*, i32** %11, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %384

341:                                              ; preds = %335
  %342 = load i64, i64* %8, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %384

344:                                              ; preds = %341
  %345 = load i64, i64* %8, align 8
  %346 = add i64 %345, -1
  store i64 %346, i64* %8, align 8
  br label %347

347:                                              ; preds = %377, %344
  %348 = load i64, i64* %8, align 8
  %349 = icmp uge i64 %348, 0
  br i1 %349, label %350, label %374

350:                                              ; preds = %347
  %351 = load i32*, i32** %11, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %23, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %374

355:                                              ; preds = %350
  %356 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %357 = load %struct.buf*, %struct.buf** %13, align 8
  %358 = getelementptr inbounds %struct.buf, %struct.buf* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = inttoptr i64 %359 to i64*
  %361 = load i64, i64* %8, align 8
  %362 = getelementptr inbounds i64, i64* %360, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.buf*, %struct.buf** %13, align 8
  %365 = getelementptr inbounds %struct.buf, %struct.buf* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = inttoptr i64 %366 to i64*
  %368 = load i64, i64* %8, align 8
  %369 = add i64 %368, 1
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = call i64 @is_sequential(%struct.ext2mount* %356, i64 %363, i64 %371)
  %373 = icmp ne i64 %372, 0
  br label %374

374:                                              ; preds = %355, %350, %347
  %375 = phi i1 [ false, %350 ], [ false, %347 ], [ %373, %355 ]
  br i1 %375, label %376, label %383

376:                                              ; preds = %374
  br label %377

377:                                              ; preds = %376
  %378 = load i64, i64* %8, align 8
  %379 = add i64 %378, -1
  store i64 %379, i64* %8, align 8
  %380 = load i32*, i32** %11, align 8
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %380, align 4
  br label %347

383:                                              ; preds = %374
  br label %384

384:                                              ; preds = %383, %341, %335
  br label %385

385:                                              ; preds = %384, %289, %286, %274
  br label %386

386:                                              ; preds = %385
  %387 = load %struct.indir*, %struct.indir** %18, align 8
  %388 = getelementptr inbounds %struct.indir, %struct.indir* %387, i32 1
  store %struct.indir* %388, %struct.indir** %18, align 8
  br label %191

389:                                              ; preds = %211, %191
  %390 = load %struct.buf*, %struct.buf** %13, align 8
  %391 = icmp ne %struct.buf* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load %struct.buf*, %struct.buf** %13, align 8
  %394 = call i32 @bqrelse(%struct.buf* %393)
  br label %395

395:                                              ; preds = %392, %389
  %396 = load %struct.inode*, %struct.inode** %12, align 8
  %397 = getelementptr inbounds %struct.inode, %struct.inode* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @SF_SNAPSHOT, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %413

402:                                              ; preds = %395
  %403 = load i64, i64* %19, align 8
  %404 = icmp ugt i64 %403, 0
  br i1 %404, label %405, label %413

405:                                              ; preds = %402
  %406 = load i64, i64* %19, align 8
  %407 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %408 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp ult i64 %406, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %405
  %412 = load i64*, i64** %9, align 8
  store i64 -1, i64* %412, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %425

413:                                              ; preds = %405, %402, %395
  %414 = load %struct.ext2mount*, %struct.ext2mount** %14, align 8
  %415 = load i64, i64* %19, align 8
  %416 = call i8* @blkptrtodb(%struct.ext2mount* %414, i64 %415)
  %417 = ptrtoint i8* %416 to i64
  %418 = load i64*, i64** %9, align 8
  store i64 %417, i64* %418, align 8
  %419 = load i64*, i64** %9, align 8
  %420 = load i64, i64* %419, align 8
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %413
  %423 = load i64*, i64** %9, align 8
  store i64 -1, i64* %423, align 8
  br label %424

424:                                              ; preds = %422, %413
  store i32 0, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %425

425:                                              ; preds = %424, %411, %269, %179, %67
  %426 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %426)
  %427 = load i32, i32* %6, align 4
  ret i32 %427
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #2

declare dso_local %struct.ext2mount* @VFSTOEXT2(%struct.mount*) #2

declare dso_local i32 @EXT2_BLOCK_SIZE(i32) #2

declare dso_local i32 @ext2_getlbns(%struct.vnode*, i64, %struct.indir*, i32*) #2

declare dso_local i8* @blkptrtodb(%struct.ext2mount*, i64) #2

declare dso_local i64 @is_sequential(%struct.ext2mount*, i64, i64) #2

declare dso_local i32 @incore(i32*, i64) #2

declare dso_local i32 @bqrelse(%struct.buf*) #2

declare dso_local %struct.buf* @getblk(%struct.vnode*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @vfs_busy_pages(%struct.buf*, i32) #2

declare dso_local i32 @dbtob(i8*) #2

declare dso_local i32 @bstrategy(%struct.buf*) #2

declare dso_local i32 @bufwait(%struct.buf*) #2

declare dso_local i32 @brelse(%struct.buf*) #2

declare dso_local i64 @MNINDIR(%struct.ext2mount*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
