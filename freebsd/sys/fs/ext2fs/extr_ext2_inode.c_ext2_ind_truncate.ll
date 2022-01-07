; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_ind_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_ind_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.bufobj }
%struct.bufobj = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.inode = type { i64, i32, i64*, i64*, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64, i64, i64 }
%struct.buf = type { i64, i32, i64 }

@EXT2_NIADDR = common dso_local global i32 0, align 4
@EXT2_NDADDR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@BA_CLRBUF = common dso_local global i32 0, align 4
@B_CLUSTEROK = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@SINGLE = common dso_local global i64 0, align 8
@DOUBLE = common dso_local global i64 0, align 8
@TRIPLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ext2_truncate: newspace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i64, i32, %struct.ucred*, %struct.thread*)* @ext2_ind_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_ind_truncate(%struct.vnode* %0, i64 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.m_ext2fs*, align 8
  %23 = alloca %struct.buf*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %38 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %38, %struct.vnode** %12, align 8
  %39 = load i32, i32* @EXT2_NIADDR, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %17, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %18, align 8
  %43 = load i32, i32* @EXT2_NIADDR, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %19, align 8
  %46 = load i32, i32* @EXT2_NDADDR, align 4
  %47 = load i32, i32* @EXT2_NIADDR, align 4
  %48 = add nsw i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = alloca i64, i64 %49, align 16
  store i64 %49, i64* %20, align 8
  %51 = load i32, i32* @EXT2_NDADDR, align 4
  %52 = load i32, i32* @EXT2_NIADDR, align 4
  %53 = add nsw i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = alloca i64, i64 %54, align 16
  store i64 %54, i64* %21, align 8
  store i32 0, i32* %29, align 4
  %56 = load %struct.vnode*, %struct.vnode** %12, align 8
  %57 = call %struct.inode* @VTOI(%struct.vnode* %56)
  store %struct.inode* %57, %struct.inode** %14, align 8
  %58 = load %struct.inode*, %struct.inode** %14, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 5
  %60 = load %struct.m_ext2fs*, %struct.m_ext2fs** %59, align 8
  store %struct.m_ext2fs* %60, %struct.m_ext2fs** %22, align 8
  %61 = load %struct.inode*, %struct.inode** %14, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %33, align 8
  %64 = load i64, i64* %33, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %157

67:                                               ; preds = %5
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.inode*, %struct.inode** %14, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 5
  %71 = load %struct.m_ext2fs*, %struct.m_ext2fs** %70, align 8
  %72 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %68, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @EFBIG, align 4
  store i32 %76, i32* %6, align 4
  store i32 1, i32* %34, align 4
  br label %672

77:                                               ; preds = %67
  %78 = load %struct.vnode*, %struct.vnode** %12, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @vnode_pager_setsize(%struct.vnode* %78, i64 %79)
  %81 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i32 @blkoff(%struct.m_ext2fs* %81, i64 %83)
  store i32 %84, i32* %24, align 4
  %85 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %86, 1
  %88 = call i32 @lblkno(%struct.m_ext2fs* %85, i64 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* @BA_CLRBUF, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %24, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.ucred*, %struct.ucred** %10, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ext2_balloc(%struct.inode* %92, i32 %93, i32 %95, %struct.ucred* %96, %struct.buf** %23, i32 %97)
  store i32 %98, i32* %30, align 4
  %99 = load i32, i32* %30, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %77
  %102 = load %struct.vnode*, %struct.vnode** %7, align 8
  %103 = load i64, i64* %33, align 8
  %104 = call i32 @vnode_pager_setsize(%struct.vnode* %102, i64 %103)
  %105 = load i32, i32* %30, align 4
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %34, align 4
  br label %672

106:                                              ; preds = %77
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.inode*, %struct.inode** %14, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.buf*, %struct.buf** %23, align 8
  %111 = getelementptr inbounds %struct.buf, %struct.buf* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %114 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load i32, i32* @B_CLUSTEROK, align 4
  %119 = load %struct.buf*, %struct.buf** %23, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %106
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @IO_SYNC, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.buf*, %struct.buf** %23, align 8
  %130 = call i32 @bwrite(%struct.buf* %129)
  br label %142

131:                                              ; preds = %123
  %132 = load %struct.vnode*, %struct.vnode** %12, align 8
  %133 = call i64 @DOINGASYNC(%struct.vnode* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.buf*, %struct.buf** %23, align 8
  %137 = call i32 @bdwrite(%struct.buf* %136)
  br label %141

138:                                              ; preds = %131
  %139 = load %struct.buf*, %struct.buf** %23, align 8
  %140 = call i32 @bawrite(%struct.buf* %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %128
  %143 = load i32, i32* @IN_CHANGE, align 4
  %144 = load i32, i32* @IN_UPDATE, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.inode*, %struct.inode** %14, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.vnode*, %struct.vnode** %12, align 8
  %151 = load %struct.vnode*, %struct.vnode** %12, align 8
  %152 = call i64 @DOINGASYNC(%struct.vnode* %151)
  %153 = icmp ne i64 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @ext2_update(%struct.vnode* %150, i32 %155)
  store i32 %156, i32* %6, align 4
  store i32 1, i32* %34, align 4
  br label %672

157:                                              ; preds = %5
  %158 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @blkoff(%struct.m_ext2fs* %158, i64 %159)
  store i32 %160, i32* %24, align 4
  %161 = load i32, i32* %24, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i64, i64* %8, align 8
  %165 = load %struct.inode*, %struct.inode** %14, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %240

167:                                              ; preds = %157
  %168 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @lblkno(%struct.m_ext2fs* %168, i64 %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* @BA_CLRBUF, align 4
  %172 = load i32, i32* %9, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %9, align 4
  %174 = load %struct.inode*, %struct.inode** %14, align 8
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load %struct.ucred*, %struct.ucred** %10, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @ext2_balloc(%struct.inode* %174, i32 %175, i32 %176, %struct.ucred* %177, %struct.buf** %23, i32 %178)
  store i32 %179, i32* %30, align 4
  %180 = load i32, i32* %30, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %167
  %183 = load i32, i32* %30, align 4
  store i32 %183, i32* %6, align 4
  store i32 1, i32* %34, align 4
  br label %672

184:                                              ; preds = %167
  %185 = load i64, i64* %8, align 8
  %186 = load %struct.inode*, %struct.inode** %14, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %189 = load %struct.inode*, %struct.inode** %14, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i8* @blksize(%struct.m_ext2fs* %188, %struct.inode* %189, i32 %190)
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %25, align 4
  %193 = load %struct.buf*, %struct.buf** %23, align 8
  %194 = getelementptr inbounds %struct.buf, %struct.buf* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = load i32, i32* %24, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i32, i32* %25, align 4
  %201 = load i32, i32* %24, align 4
  %202 = sub nsw i32 %200, %201
  %203 = call i32 @bzero(i8* %199, i32 %202)
  %204 = load %struct.buf*, %struct.buf** %23, align 8
  %205 = load i32, i32* %25, align 4
  %206 = call i32 @allocbuf(%struct.buf* %204, i32 %205)
  %207 = load %struct.buf*, %struct.buf** %23, align 8
  %208 = getelementptr inbounds %struct.buf, %struct.buf* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %211 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %184
  %215 = load i32, i32* @B_CLUSTEROK, align 4
  %216 = load %struct.buf*, %struct.buf** %23, align 8
  %217 = getelementptr inbounds %struct.buf, %struct.buf* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %184
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @IO_SYNC, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.buf*, %struct.buf** %23, align 8
  %227 = call i32 @bwrite(%struct.buf* %226)
  br label %239

228:                                              ; preds = %220
  %229 = load %struct.vnode*, %struct.vnode** %12, align 8
  %230 = call i64 @DOINGASYNC(%struct.vnode* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load %struct.buf*, %struct.buf** %23, align 8
  %234 = call i32 @bdwrite(%struct.buf* %233)
  br label %238

235:                                              ; preds = %228
  %236 = load %struct.buf*, %struct.buf** %23, align 8
  %237 = call i32 @bawrite(%struct.buf* %236)
  br label %238

238:                                              ; preds = %235, %232
  br label %239

239:                                              ; preds = %238, %225
  br label %240

240:                                              ; preds = %239, %163
  %241 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %242 = load i64, i64* %8, align 8
  %243 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %244 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %242, %245
  %247 = sub nsw i64 %246, 1
  %248 = call i32 @lblkno(%struct.m_ext2fs* %241, i64 %247)
  %249 = sub nsw i32 %248, 1
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* @EXT2_NDADDR, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i64, i64* @SINGLE, align 8
  %254 = getelementptr inbounds i32, i32* %42, i64 %253
  store i32 %252, i32* %254, align 4
  %255 = load i64, i64* @SINGLE, align 8
  %256 = getelementptr inbounds i32, i32* %42, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %259 = call i32 @NINDIR(%struct.m_ext2fs* %258)
  %260 = sub nsw i32 %257, %259
  %261 = load i64, i64* @DOUBLE, align 8
  %262 = getelementptr inbounds i32, i32* %42, i64 %261
  store i32 %260, i32* %262, align 4
  %263 = load i64, i64* @DOUBLE, align 8
  %264 = getelementptr inbounds i32, i32* %42, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %267 = call i32 @NINDIR(%struct.m_ext2fs* %266)
  %268 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %269 = call i32 @NINDIR(%struct.m_ext2fs* %268)
  %270 = mul nsw i32 %267, %269
  %271 = sub nsw i32 %265, %270
  %272 = load i64, i64* @TRIPLE, align 8
  %273 = getelementptr inbounds i32, i32* %42, i64 %272
  store i32 %271, i32* %273, align 4
  %274 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %275 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @btodb(i64 %276)
  store i32 %277, i32* %28, align 4
  %278 = load i64, i64* @TRIPLE, align 8
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %26, align 4
  br label %280

280:                                              ; preds = %314, %240
  %281 = load i32, i32* %26, align 4
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* @SINGLE, align 8
  %284 = icmp uge i64 %282, %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %280
  %286 = load %struct.inode*, %struct.inode** %14, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 2
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %26, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* @EXT2_NDADDR, align 4
  %294 = load i32, i32* %26, align 4
  %295 = add nsw i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %50, i64 %296
  store i64 %292, i64* %297, align 8
  %298 = load i32, i32* %26, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %42, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %285
  %304 = load %struct.inode*, %struct.inode** %14, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 2
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %26, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  store i64 0, i64* %309, align 8
  %310 = load i32, i32* %26, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %42, i64 %311
  store i32 -1, i32* %312, align 4
  br label %313

313:                                              ; preds = %303, %285
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %26, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %26, align 4
  br label %280

317:                                              ; preds = %280
  store i32 0, i32* %31, align 4
  br label %318

318:                                              ; preds = %344, %317
  %319 = load i32, i32* %31, align 4
  %320 = load i32, i32* @EXT2_NDADDR, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %347

322:                                              ; preds = %318
  %323 = load %struct.inode*, %struct.inode** %14, align 8
  %324 = getelementptr inbounds %struct.inode, %struct.inode* %323, i32 0, i32 3
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %31, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* %31, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %50, i64 %331
  store i64 %329, i64* %332, align 8
  %333 = load i32, i32* %31, align 4
  %334 = load i32, i32* %13, align 4
  %335 = icmp sgt i32 %333, %334
  br i1 %335, label %336, label %343

336:                                              ; preds = %322
  %337 = load %struct.inode*, %struct.inode** %14, align 8
  %338 = getelementptr inbounds %struct.inode, %struct.inode* %337, i32 0, i32 3
  %339 = load i64*, i64** %338, align 8
  %340 = load i32, i32* %31, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, i64* %339, i64 %341
  store i64 0, i64* %342, align 8
  br label %343

343:                                              ; preds = %336, %322
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %31, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %31, align 4
  br label %318

347:                                              ; preds = %318
  %348 = load i32, i32* @IN_CHANGE, align 4
  %349 = load i32, i32* @IN_UPDATE, align 4
  %350 = or i32 %348, %349
  %351 = load %struct.inode*, %struct.inode** %14, align 8
  %352 = getelementptr inbounds %struct.inode, %struct.inode* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 8
  %355 = load %struct.vnode*, %struct.vnode** %12, align 8
  %356 = load %struct.vnode*, %struct.vnode** %12, align 8
  %357 = call i64 @DOINGASYNC(%struct.vnode* %356)
  %358 = icmp ne i64 %357, 0
  %359 = xor i1 %358, true
  %360 = zext i1 %359 to i32
  %361 = call i32 @ext2_update(%struct.vnode* %355, i32 %360)
  store i32 %361, i32* %32, align 4
  store i32 0, i32* %31, align 4
  br label %362

362:                                              ; preds = %387, %347
  %363 = load i32, i32* %31, align 4
  %364 = load i32, i32* @EXT2_NDADDR, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %390

366:                                              ; preds = %362
  %367 = load %struct.inode*, %struct.inode** %14, align 8
  %368 = getelementptr inbounds %struct.inode, %struct.inode* %367, i32 0, i32 3
  %369 = load i64*, i64** %368, align 8
  %370 = load i32, i32* %31, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %369, i64 %371
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* %31, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %55, i64 %375
  store i64 %373, i64* %376, align 8
  %377 = load i32, i32* %31, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %50, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.inode*, %struct.inode** %14, align 8
  %382 = getelementptr inbounds %struct.inode, %struct.inode* %381, i32 0, i32 3
  %383 = load i64*, i64** %382, align 8
  %384 = load i32, i32* %31, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i64, i64* %383, i64 %385
  store i64 %380, i64* %386, align 8
  br label %387

387:                                              ; preds = %366
  %388 = load i32, i32* %31, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %31, align 4
  br label %362

390:                                              ; preds = %362
  store i32 0, i32* %31, align 4
  br label %391

391:                                              ; preds = %420, %390
  %392 = load i32, i32* %31, align 4
  %393 = load i32, i32* @EXT2_NIADDR, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %423

395:                                              ; preds = %391
  %396 = load %struct.inode*, %struct.inode** %14, align 8
  %397 = getelementptr inbounds %struct.inode, %struct.inode* %396, i32 0, i32 2
  %398 = load i64*, i64** %397, align 8
  %399 = load i32, i32* %31, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i64, i64* %398, i64 %400
  %402 = load i64, i64* %401, align 8
  %403 = load i32, i32* @EXT2_NDADDR, align 4
  %404 = load i32, i32* %31, align 4
  %405 = add nsw i32 %403, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i64, i64* %55, i64 %406
  store i64 %402, i64* %407, align 8
  %408 = load i32, i32* @EXT2_NDADDR, align 4
  %409 = load i32, i32* %31, align 4
  %410 = add nsw i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i64, i64* %50, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.inode*, %struct.inode** %14, align 8
  %415 = getelementptr inbounds %struct.inode, %struct.inode* %414, i32 0, i32 2
  %416 = load i64*, i64** %415, align 8
  %417 = load i32, i32* %31, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i64, i64* %416, i64 %418
  store i64 %413, i64* %419, align 8
  br label %420

420:                                              ; preds = %395
  %421 = load i32, i32* %31, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %31, align 4
  br label %391

423:                                              ; preds = %391
  %424 = load i64, i64* %33, align 8
  %425 = load %struct.inode*, %struct.inode** %14, align 8
  %426 = getelementptr inbounds %struct.inode, %struct.inode* %425, i32 0, i32 0
  store i64 %424, i64* %426, align 8
  %427 = load %struct.vnode*, %struct.vnode** %12, align 8
  %428 = load i64, i64* %8, align 8
  %429 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %430 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = trunc i64 %431 to i32
  %433 = call i32 @vtruncbuf(%struct.vnode* %427, i64 %428, i32 %432)
  store i32 %433, i32* %30, align 4
  %434 = load i32, i32* %30, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %441

436:                                              ; preds = %423
  %437 = load i32, i32* %32, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %436
  %440 = load i32, i32* %30, align 4
  store i32 %440, i32* %32, align 4
  br label %441

441:                                              ; preds = %439, %436, %423
  %442 = load %struct.vnode*, %struct.vnode** %12, align 8
  %443 = load i64, i64* %8, align 8
  %444 = call i32 @vnode_pager_setsize(%struct.vnode* %442, i64 %443)
  %445 = load i32, i32* @EXT2_NDADDR, align 4
  %446 = sub nsw i32 0, %445
  %447 = load i64, i64* @SINGLE, align 8
  %448 = getelementptr inbounds i32, i32* %45, i64 %447
  store i32 %446, i32* %448, align 4
  %449 = load i64, i64* @SINGLE, align 8
  %450 = getelementptr inbounds i32, i32* %45, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %453 = call i32 @NINDIR(%struct.m_ext2fs* %452)
  %454 = sub nsw i32 %451, %453
  %455 = sub nsw i32 %454, 1
  %456 = load i64, i64* @DOUBLE, align 8
  %457 = getelementptr inbounds i32, i32* %45, i64 %456
  store i32 %455, i32* %457, align 4
  %458 = load i64, i64* @DOUBLE, align 8
  %459 = getelementptr inbounds i32, i32* %45, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %462 = call i32 @NINDIR(%struct.m_ext2fs* %461)
  %463 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %464 = call i32 @NINDIR(%struct.m_ext2fs* %463)
  %465 = mul nsw i32 %462, %464
  %466 = sub nsw i32 %460, %465
  %467 = sub nsw i32 %466, 1
  %468 = load i64, i64* @TRIPLE, align 8
  %469 = getelementptr inbounds i32, i32* %45, i64 %468
  store i32 %467, i32* %469, align 4
  %470 = load i64, i64* @TRIPLE, align 8
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* %26, align 4
  br label %472

472:                                              ; preds = %541, %441
  %473 = load i32, i32* %26, align 4
  %474 = sext i32 %473 to i64
  %475 = load i64, i64* @SINGLE, align 8
  %476 = icmp uge i64 %474, %475
  br i1 %476, label %477, label %544

477:                                              ; preds = %472
  %478 = load %struct.inode*, %struct.inode** %14, align 8
  %479 = getelementptr inbounds %struct.inode, %struct.inode* %478, i32 0, i32 2
  %480 = load i64*, i64** %479, align 8
  %481 = load i32, i32* %26, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i64, i64* %480, i64 %482
  %484 = load i64, i64* %483, align 8
  %485 = trunc i64 %484 to i32
  store i32 %485, i32* %15, align 4
  %486 = load i32, i32* %15, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %533

488:                                              ; preds = %477
  %489 = load %struct.inode*, %struct.inode** %14, align 8
  %490 = load i32, i32* %26, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %45, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %495 = load i32, i32* %15, align 4
  %496 = call i32 @fsbtodb(%struct.m_ext2fs* %494, i32 %495)
  %497 = load i32, i32* %26, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %42, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %26, align 4
  %502 = call i32 @ext2_indirtrunc(%struct.inode* %489, i32 %493, i32 %496, i32 %500, i32 %501, i32* %27)
  store i32 %502, i32* %30, align 4
  %503 = load i32, i32* %30, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %488
  %506 = load i32, i32* %30, align 4
  store i32 %506, i32* %32, align 4
  br label %507

507:                                              ; preds = %505, %488
  %508 = load i32, i32* %27, align 4
  %509 = load i32, i32* %29, align 4
  %510 = add nsw i32 %509, %508
  store i32 %510, i32* %29, align 4
  %511 = load i32, i32* %26, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %42, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %532

516:                                              ; preds = %507
  %517 = load %struct.inode*, %struct.inode** %14, align 8
  %518 = getelementptr inbounds %struct.inode, %struct.inode* %517, i32 0, i32 2
  %519 = load i64*, i64** %518, align 8
  %520 = load i32, i32* %26, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i64, i64* %519, i64 %521
  store i64 0, i64* %522, align 8
  %523 = load %struct.inode*, %struct.inode** %14, align 8
  %524 = load i32, i32* %15, align 4
  %525 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %526 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %525, i32 0, i32 2
  %527 = load i64, i64* %526, align 8
  %528 = call i32 @ext2_blkfree(%struct.inode* %523, i32 %524, i64 %527)
  %529 = load i32, i32* %28, align 4
  %530 = load i32, i32* %29, align 4
  %531 = add nsw i32 %530, %529
  store i32 %531, i32* %29, align 4
  br label %532

532:                                              ; preds = %516, %507
  br label %533

533:                                              ; preds = %532, %477
  %534 = load i32, i32* %26, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %42, i64 %535
  %537 = load i32, i32* %536, align 4
  %538 = icmp sge i32 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %533
  br label %644

540:                                              ; preds = %533
  br label %541

541:                                              ; preds = %540
  %542 = load i32, i32* %26, align 4
  %543 = add nsw i32 %542, -1
  store i32 %543, i32* %26, align 4
  br label %472

544:                                              ; preds = %472
  %545 = load i32, i32* @EXT2_NDADDR, align 4
  %546 = sub nsw i32 %545, 1
  store i32 %546, i32* %31, align 4
  br label %547

547:                                              ; preds = %583, %544
  %548 = load i32, i32* %31, align 4
  %549 = load i32, i32* %13, align 4
  %550 = icmp sgt i32 %548, %549
  br i1 %550, label %551, label %586

551:                                              ; preds = %547
  %552 = load %struct.inode*, %struct.inode** %14, align 8
  %553 = getelementptr inbounds %struct.inode, %struct.inode* %552, i32 0, i32 3
  %554 = load i64*, i64** %553, align 8
  %555 = load i32, i32* %31, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i64, i64* %554, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = trunc i64 %558 to i32
  store i32 %559, i32* %15, align 4
  %560 = load i32, i32* %15, align 4
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %551
  br label %583

563:                                              ; preds = %551
  %564 = load %struct.inode*, %struct.inode** %14, align 8
  %565 = getelementptr inbounds %struct.inode, %struct.inode* %564, i32 0, i32 3
  %566 = load i64*, i64** %565, align 8
  %567 = load i32, i32* %31, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i64, i64* %566, i64 %568
  store i64 0, i64* %569, align 8
  %570 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %571 = load %struct.inode*, %struct.inode** %14, align 8
  %572 = load i32, i32* %31, align 4
  %573 = call i8* @blksize(%struct.m_ext2fs* %570, %struct.inode* %571, i32 %572)
  %574 = ptrtoint i8* %573 to i64
  store i64 %574, i64* %35, align 8
  %575 = load %struct.inode*, %struct.inode** %14, align 8
  %576 = load i32, i32* %15, align 4
  %577 = load i64, i64* %35, align 8
  %578 = call i32 @ext2_blkfree(%struct.inode* %575, i32 %576, i64 %577)
  %579 = load i64, i64* %35, align 8
  %580 = call i32 @btodb(i64 %579)
  %581 = load i32, i32* %29, align 4
  %582 = add nsw i32 %581, %580
  store i32 %582, i32* %29, align 4
  br label %583

583:                                              ; preds = %563, %562
  %584 = load i32, i32* %31, align 4
  %585 = add nsw i32 %584, -1
  store i32 %585, i32* %31, align 4
  br label %547

586:                                              ; preds = %547
  %587 = load i32, i32* %13, align 4
  %588 = icmp slt i32 %587, 0
  br i1 %588, label %589, label %590

589:                                              ; preds = %586
  br label %644

590:                                              ; preds = %586
  %591 = load %struct.inode*, %struct.inode** %14, align 8
  %592 = getelementptr inbounds %struct.inode, %struct.inode* %591, i32 0, i32 3
  %593 = load i64*, i64** %592, align 8
  %594 = load i32, i32* %13, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i64, i64* %593, i64 %595
  %597 = load i64, i64* %596, align 8
  %598 = trunc i64 %597 to i32
  store i32 %598, i32* %15, align 4
  %599 = load i32, i32* %15, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %643

601:                                              ; preds = %590
  %602 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %603 = load %struct.inode*, %struct.inode** %14, align 8
  %604 = load i32, i32* %13, align 4
  %605 = call i8* @blksize(%struct.m_ext2fs* %602, %struct.inode* %603, i32 %604)
  %606 = ptrtoint i8* %605 to i64
  store i64 %606, i64* %36, align 8
  %607 = load i64, i64* %8, align 8
  %608 = load %struct.inode*, %struct.inode** %14, align 8
  %609 = getelementptr inbounds %struct.inode, %struct.inode* %608, i32 0, i32 0
  store i64 %607, i64* %609, align 8
  %610 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %611 = load %struct.inode*, %struct.inode** %14, align 8
  %612 = load i32, i32* %13, align 4
  %613 = call i8* @blksize(%struct.m_ext2fs* %610, %struct.inode* %611, i32 %612)
  %614 = ptrtoint i8* %613 to i64
  store i64 %614, i64* %37, align 8
  %615 = load i64, i64* %37, align 8
  %616 = icmp eq i64 %615, 0
  br i1 %616, label %617, label %619

617:                                              ; preds = %601
  %618 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %619

619:                                              ; preds = %617, %601
  %620 = load i64, i64* %36, align 8
  %621 = load i64, i64* %37, align 8
  %622 = sub nsw i64 %620, %621
  %623 = icmp sgt i64 %622, 0
  br i1 %623, label %624, label %642

624:                                              ; preds = %619
  %625 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  %626 = load i64, i64* %37, align 8
  %627 = call i32 @numfrags(%struct.m_ext2fs* %625, i64 %626)
  %628 = load i32, i32* %15, align 4
  %629 = add nsw i32 %628, %627
  store i32 %629, i32* %15, align 4
  %630 = load %struct.inode*, %struct.inode** %14, align 8
  %631 = load i32, i32* %15, align 4
  %632 = load i64, i64* %36, align 8
  %633 = load i64, i64* %37, align 8
  %634 = sub nsw i64 %632, %633
  %635 = call i32 @ext2_blkfree(%struct.inode* %630, i32 %631, i64 %634)
  %636 = load i64, i64* %36, align 8
  %637 = load i64, i64* %37, align 8
  %638 = sub nsw i64 %636, %637
  %639 = call i32 @btodb(i64 %638)
  %640 = load i32, i32* %29, align 4
  %641 = add nsw i32 %640, %639
  store i32 %641, i32* %29, align 4
  br label %642

642:                                              ; preds = %624, %619
  br label %643

643:                                              ; preds = %642, %590
  br label %644

644:                                              ; preds = %643, %589, %539
  %645 = load i64, i64* %8, align 8
  %646 = load %struct.inode*, %struct.inode** %14, align 8
  %647 = getelementptr inbounds %struct.inode, %struct.inode* %646, i32 0, i32 0
  store i64 %645, i64* %647, align 8
  %648 = load %struct.inode*, %struct.inode** %14, align 8
  %649 = getelementptr inbounds %struct.inode, %struct.inode* %648, i32 0, i32 4
  %650 = load i32, i32* %649, align 8
  %651 = load i32, i32* %29, align 4
  %652 = icmp sge i32 %650, %651
  br i1 %652, label %653, label %659

653:                                              ; preds = %644
  %654 = load i32, i32* %29, align 4
  %655 = load %struct.inode*, %struct.inode** %14, align 8
  %656 = getelementptr inbounds %struct.inode, %struct.inode* %655, i32 0, i32 4
  %657 = load i32, i32* %656, align 8
  %658 = sub nsw i32 %657, %654
  store i32 %658, i32* %656, align 8
  br label %662

659:                                              ; preds = %644
  %660 = load %struct.inode*, %struct.inode** %14, align 8
  %661 = getelementptr inbounds %struct.inode, %struct.inode* %660, i32 0, i32 4
  store i32 0, i32* %661, align 8
  br label %662

662:                                              ; preds = %659, %653
  %663 = load i32, i32* @IN_CHANGE, align 4
  %664 = load %struct.inode*, %struct.inode** %14, align 8
  %665 = getelementptr inbounds %struct.inode, %struct.inode* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 8
  %667 = or i32 %666, %663
  store i32 %667, i32* %665, align 8
  %668 = load %struct.vnode*, %struct.vnode** %12, align 8
  %669 = load i64, i64* %8, align 8
  %670 = call i32 @vnode_pager_setsize(%struct.vnode* %668, i64 %669)
  %671 = load i32, i32* %32, align 4
  store i32 %671, i32* %6, align 4
  store i32 1, i32* %34, align 4
  br label %672

672:                                              ; preds = %662, %182, %142, %101, %75
  %673 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %673)
  %674 = load i32, i32* %6, align 4
  ret i32 %674
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #2

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i64) #2

declare dso_local i32 @blkoff(%struct.m_ext2fs*, i64) #2

declare dso_local i32 @lblkno(%struct.m_ext2fs*, i64) #2

declare dso_local i32 @ext2_balloc(%struct.inode*, i32, i32, %struct.ucred*, %struct.buf**, i32) #2

declare dso_local i32 @bwrite(%struct.buf*) #2

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #2

declare dso_local i32 @bdwrite(%struct.buf*) #2

declare dso_local i32 @bawrite(%struct.buf*) #2

declare dso_local i32 @ext2_update(%struct.vnode*, i32) #2

declare dso_local i8* @blksize(%struct.m_ext2fs*, %struct.inode*, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @allocbuf(%struct.buf*, i32) #2

declare dso_local i32 @NINDIR(%struct.m_ext2fs*) #2

declare dso_local i32 @btodb(i64) #2

declare dso_local i32 @vtruncbuf(%struct.vnode*, i64, i32) #2

declare dso_local i32 @ext2_indirtrunc(%struct.inode*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #2

declare dso_local i32 @ext2_blkfree(%struct.inode*, i32, i64) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @numfrags(%struct.m_ext2fs*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
