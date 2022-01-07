; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_clusteralloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_clusteralloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.ext2mount*, %struct.m_ext2fs* }
%struct.ext2mount = type { i32 }
%struct.m_ext2fs = type { i32*, i32, i32, %struct.TYPE_4__*, i32*, i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.buf = type { i64 }

@NOCRED = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ext2_clusteralloc: map mismatch\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ext2_clusteralloc: allocated out of group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32)* @ext2_clusteralloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_clusteralloc(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_ext2fs*, align 8
  %11 = alloca %struct.ext2mount*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load %struct.m_ext2fs*, %struct.m_ext2fs** %23, align 8
  store %struct.m_ext2fs* %24, %struct.m_ext2fs** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.ext2mount*, %struct.ext2mount** %26, align 8
  store %struct.ext2mount* %27, %struct.ext2mount** %11, align 8
  %28 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %29 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %327

38:                                               ; preds = %4
  %39 = load %struct.ext2mount*, %struct.ext2mount** %11, align 8
  %40 = call i32 @EXT2_UNLOCK(%struct.ext2mount* %39)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %45 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %46 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @e2fs_gd_get_b_bitmap(i32* %50)
  %52 = call i32 @fsbtodb(%struct.m_ext2fs* %44, i32 %51)
  %53 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %54 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @NOCRED, align 4
  %58 = call i32 @bread(i32 %43, i32 %52, i32 %56, i32 %57, %struct.buf** %12)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  br label %321

62:                                               ; preds = %38
  %63 = load %struct.buf*, %struct.buf** %12, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %13, align 8
  %67 = load %struct.ext2mount*, %struct.ext2mount** %11, align 8
  %68 = call i32 @EXT2_LOCK(%struct.ext2mount* %67)
  %69 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %70 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %69, i32 0, i32 7
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32* %79, i32** %20, align 8
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %94, %62
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %84 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load i32*, i32** %20, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %20, align 8
  %90 = load i32, i32* %88, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %97

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %81

97:                                               ; preds = %92, %81
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %100 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %97
  %104 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %105 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %104, i32 0, i32 7
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32* %115, i32** %20, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %128, %103
  %119 = load i32, i32* %17, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32*, i32** %20, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 -1
  store i32* %123, i32** %20, align 8
  %124 = load i32, i32* %122, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %131

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %17, align 4
  br label %118

131:                                              ; preds = %126, %118
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %134 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %324

139:                                              ; preds = %97
  %140 = load %struct.ext2mount*, %struct.ext2mount** %11, align 8
  %141 = call i32 @EXT2_UNLOCK(%struct.ext2mount* %140)
  %142 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @dtog(%struct.m_ext2fs* %142, i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %139
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @dtogd(%struct.m_ext2fs* %152, i32 %153)
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @NBBY, align 4
  %158 = sdiv i32 %156, %157
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @NBBY, align 4
  %161 = srem i32 %159, %160
  %162 = shl i32 1, %161
  store i32 %162, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %206, %155
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %167 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %166, i32 0, i32 3
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %165, %170
  br i1 %171, label %172, label %209

172:                                              ; preds = %164
  %173 = load i8*, i8** %13, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = load i32, i32* %14, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  store i32 0, i32* %19, align 4
  br label %191

183:                                              ; preds = %172
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %209

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190, %182
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* @NBBY, align 4
  %194 = sub nsw i32 %193, 1
  %195 = and i32 %192, %194
  %196 = load i32, i32* @NBBY, align 4
  %197 = sub nsw i32 %196, 1
  %198 = icmp ne i32 %195, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load i32, i32* %14, align 4
  %201 = shl i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %205

202:                                              ; preds = %191
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  store i32 1, i32* %14, align 4
  br label %205

205:                                              ; preds = %202, %199
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  br label %164

209:                                              ; preds = %189, %164
  %210 = load i32, i32* %16, align 4
  %211 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %212 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %211, i32 0, i32 3
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp sge i32 %210, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %321

218:                                              ; preds = %209
  store i32 1, i32* %17, align 4
  br label %219

219:                                              ; preds = %235, %218
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %219
  %224 = load i8*, i8** %13, align 8
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 %225, %226
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %227, %228
  %230 = call i32 @isclr(i8* %224, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %223
  %233 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %223
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %219

238:                                              ; preds = %219
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %19, align 4
  %241 = sub nsw i32 %239, %240
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %21, align 4
  %243 = load i32, i32* %21, align 4
  %244 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %245 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %244, i32 0, i32 3
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp sge i32 %243, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %238
  %251 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %238
  %253 = load %struct.ext2mount*, %struct.ext2mount** %11, align 8
  %254 = call i32 @EXT2_LOCK(%struct.ext2mount* %253)
  store i32 0, i32* %17, align 4
  br label %255

255:                                              ; preds = %291, %252
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %9, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %299

259:                                              ; preds = %255
  %260 = load i8*, i8** %13, align 8
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %17, align 4
  %263 = add nsw i32 %261, %262
  %264 = call i32 @setbit(i8* %260, i32 %263)
  %265 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %266 = load i8*, i8** %13, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %268, %269
  %271 = call i32 @ext2_clusteracct(%struct.m_ext2fs* %265, i8* %266, i32 %267, i32 %270, i32 -1)
  %272 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %273 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %273, align 8
  %276 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %277 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %276, i32 0, i32 4
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %283 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %282, i32 0, i32 4
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = call i64 @e2fs_gd_get_nbfree(i32* %287)
  %289 = sub nsw i64 %288, 1
  %290 = call i32 @e2fs_gd_set_nbfree(i32* %281, i64 %289)
  br label %291

291:                                              ; preds = %259
  %292 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %293 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %292, i32 0, i32 6
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %17, align 4
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %296, %294
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %17, align 4
  br label %255

299:                                              ; preds = %255
  %300 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %301 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %300, i32 0, i32 2
  store i32 1, i32* %301, align 4
  %302 = load %struct.ext2mount*, %struct.ext2mount** %11, align 8
  %303 = call i32 @EXT2_UNLOCK(%struct.ext2mount* %302)
  %304 = load %struct.buf*, %struct.buf** %12, align 8
  %305 = call i32 @bdwrite(%struct.buf* %304)
  %306 = load i32, i32* %7, align 4
  %307 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %308 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %307, i32 0, i32 3
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = mul nsw i32 %306, %311
  %313 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %314 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %313, i32 0, i32 3
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %312, %317
  %319 = load i32, i32* %21, align 4
  %320 = add nsw i32 %318, %319
  store i32 %320, i32* %5, align 4
  br label %327

321:                                              ; preds = %217, %61
  %322 = load %struct.ext2mount*, %struct.ext2mount** %11, align 8
  %323 = call i32 @EXT2_LOCK(%struct.ext2mount* %322)
  br label %324

324:                                              ; preds = %321, %131
  %325 = load %struct.buf*, %struct.buf** %12, align 8
  %326 = call i32 @brelse(%struct.buf* %325)
  store i32 0, i32* %5, align 4
  br label %327

327:                                              ; preds = %324, %299, %37
  %328 = load i32, i32* %5, align 4
  ret i32 %328
}

declare dso_local i32 @EXT2_UNLOCK(%struct.ext2mount*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @e2fs_gd_get_b_bitmap(i32*) #1

declare dso_local i32 @EXT2_LOCK(%struct.ext2mount*) #1

declare dso_local i32 @dtog(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @dtogd(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @isclr(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @setbit(i8*, i32) #1

declare dso_local i32 @ext2_clusteracct(%struct.m_ext2fs*, i8*, i32, i32, i32) #1

declare dso_local i32 @e2fs_gd_set_nbfree(i32*, i64) #1

declare dso_local i64 @e2fs_gd_get_nbfree(i32*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
