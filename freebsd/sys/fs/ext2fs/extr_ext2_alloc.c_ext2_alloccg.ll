; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_alloccg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_alloccg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.ext2mount*, %struct.m_ext2fs* }
%struct.ext2mount = type { i32 }
%struct.m_ext2fs = type { i32, %struct.TYPE_2__*, i32*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buf = type { i64 }

@NOCRED = common dso_local global i32 0, align 4
@EXT2F_ROCOMPAT_GDT_CSUM = common dso_local global i32 0, align 4
@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32)* @ext2_alloccg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_alloccg(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_ext2fs*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca %struct.ext2mount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
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
  store %struct.ext2mount* %27, %struct.ext2mount** %12, align 8
  %28 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %29 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i64 @e2fs_gd_get_nbfree(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %314

37:                                               ; preds = %4
  %38 = load %struct.ext2mount*, %struct.ext2mount** %12, align 8
  %39 = call i32 @EXT2_UNLOCK(%struct.ext2mount* %38)
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %44 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %45 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @e2fs_gd_get_b_bitmap(i32* %49)
  %51 = call i32 @fsbtodb(%struct.m_ext2fs* %43, i32 %50)
  %52 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %53 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @NOCRED, align 4
  %57 = call i32 @bread(i32 %42, i32 %51, i32 %55, i32 %56, %struct.buf** %11)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %37
  br label %309

61:                                               ; preds = %37
  %62 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %63 = load i32, i32* @EXT2F_ROCOMPAT_GDT_CSUM, align 4
  %64 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %68 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %69 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66, %61
  %72 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.buf*, %struct.buf** %11, align 8
  %75 = call i32 @ext2_cg_block_bitmap_init(%struct.m_ext2fs* %72, i32 %73, %struct.buf* %74)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %309

79:                                               ; preds = %71
  %80 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.buf*, %struct.buf** %11, align 8
  %83 = call i32 @ext2_gd_b_bitmap_csum_set(%struct.m_ext2fs* %80, i32 %81, %struct.buf* %82)
  br label %84

84:                                               ; preds = %79, %66
  %85 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.buf*, %struct.buf** %11, align 8
  %88 = call i32 @ext2_gd_b_bitmap_csum_verify(%struct.m_ext2fs* %85, i32 %86, %struct.buf* %87)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %309

92:                                               ; preds = %84
  %93 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %94 = load %struct.buf*, %struct.buf** %11, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @ext2_b_bitmap_validate(%struct.m_ext2fs* %93, %struct.buf* %94, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %309

100:                                              ; preds = %92
  %101 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %102 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i64 @e2fs_gd_get_nbfree(i32* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %309

110:                                              ; preds = %100
  %111 = load %struct.buf*, %struct.buf** %11, align 8
  %112 = getelementptr inbounds %struct.buf, %struct.buf* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %21, align 8
  %115 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @dtog(%struct.m_ext2fs* %115, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %110
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @dtogd(%struct.m_ext2fs* %125, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i8*, i8** %21, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i64 @isclr(i8* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %13, align 4
  br label %254

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %121
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @dtogd(%struct.m_ext2fs* %139, i32 %140)
  %142 = load i32, i32* @NBBY, align 4
  %143 = sdiv i32 %141, %142
  store i32 %143, i32* %20, align 4
  br label %145

144:                                              ; preds = %135
  store i32 0, i32* %20, align 4
  br label %145

145:                                              ; preds = %144, %138
  %146 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %147 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NBBY, align 4
  %152 = call i32 @howmany(i32 %150, i32 %151)
  %153 = load i32, i32* %20, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %243, %145
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %156 = load i32, i32* %20, align 4
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %237, %155
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %240

161:                                              ; preds = %157
  %162 = load i8*, i8** %21, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  br label %237

170:                                              ; preds = %161
  %171 = load i32, i32* %15, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %170
  %174 = load i8*, i8** %21, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = call i32 @fls(i8 signext %178)
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* @NBBY, align 4
  %181 = load i32, i32* %16, align 4
  %182 = sub nsw i32 %180, %181
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @NBBY, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %14, align 4
  br label %231

188:                                              ; preds = %170
  %189 = load i8*, i8** %21, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load i32, i32* @NBBY, align 4
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %15, align 4
  br label %230

200:                                              ; preds = %188
  %201 = load i8*, i8** %21, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = call i32 @ffs(i8 signext %205)
  %207 = sub nsw i32 %206, 1
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp sge i32 %211, 8
  br i1 %212, label %213, label %215

213:                                              ; preds = %200
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %13, align 4
  br label %254

215:                                              ; preds = %200
  %216 = load i8*, i8** %21, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = call i32 @fls(i8 signext %220)
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* @NBBY, align 4
  %223 = load i32, i32* %16, align 4
  %224 = sub nsw i32 %222, %223
  store i32 %224, i32* %15, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* @NBBY, align 4
  %227 = mul nsw i32 %225, %226
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %227, %228
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %215, %196
  br label %231

231:                                              ; preds = %230, %173
  %232 = load i32, i32* %15, align 4
  %233 = icmp sge i32 %232, 8
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %13, align 4
  br label %254

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %236, %169
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %17, align 4
  br label %157

240:                                              ; preds = %157
  %241 = load i32, i32* %20, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = load i32, i32* %20, align 4
  store i32 %244, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %155

245:                                              ; preds = %240
  %246 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %247 = load i8*, i8** %21, align 8
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @ext2_mapsearch(%struct.m_ext2fs* %246, i8* %247, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %309

253:                                              ; preds = %245
  br label %254

254:                                              ; preds = %253, %234, %213, %132
  %255 = load i8*, i8** %21, align 8
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @setbit(i8* %255, i32 %256)
  %258 = load %struct.ext2mount*, %struct.ext2mount** %12, align 8
  %259 = call i32 @EXT2_LOCK(%struct.ext2mount* %258)
  %260 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %261 = load i8*, i8** %21, align 8
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @ext2_clusteracct(%struct.m_ext2fs* %260, i8* %261, i32 %262, i32 %263, i32 -1)
  %265 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %266 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %266, align 8
  %269 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %270 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %276 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = call i64 @e2fs_gd_get_nbfree(i32* %280)
  %282 = sub nsw i64 %281, 1
  %283 = call i32 @e2fs_gd_set_nbfree(i32* %274, i64 %282)
  %284 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %285 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %284, i32 0, i32 0
  store i32 1, i32* %285, align 8
  %286 = load %struct.ext2mount*, %struct.ext2mount** %12, align 8
  %287 = call i32 @EXT2_UNLOCK(%struct.ext2mount* %286)
  %288 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %289 = load i32, i32* %7, align 4
  %290 = load %struct.buf*, %struct.buf** %11, align 8
  %291 = call i32 @ext2_gd_b_bitmap_csum_set(%struct.m_ext2fs* %288, i32 %289, %struct.buf* %290)
  %292 = load %struct.buf*, %struct.buf** %11, align 8
  %293 = call i32 @bdwrite(%struct.buf* %292)
  %294 = load i32, i32* %7, align 4
  %295 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %296 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %295, i32 0, i32 1
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %294, %299
  %301 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  %302 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %301, i32 0, i32 1
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %300, %305
  %307 = load i32, i32* %13, align 4
  %308 = add nsw i32 %306, %307
  store i32 %308, i32* %5, align 4
  br label %314

309:                                              ; preds = %252, %109, %99, %91, %78, %60
  %310 = load %struct.buf*, %struct.buf** %11, align 8
  %311 = call i32 @brelse(%struct.buf* %310)
  %312 = load %struct.ext2mount*, %struct.ext2mount** %12, align 8
  %313 = call i32 @EXT2_LOCK(%struct.ext2mount* %312)
  store i32 0, i32* %5, align 4
  br label %314

314:                                              ; preds = %309, %254, %36
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i64 @e2fs_gd_get_nbfree(i32*) #1

declare dso_local i32 @EXT2_UNLOCK(%struct.ext2mount*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @e2fs_gd_get_b_bitmap(i32*) #1

declare dso_local i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_cg_block_bitmap_init(%struct.m_ext2fs*, i32, %struct.buf*) #1

declare dso_local i32 @ext2_gd_b_bitmap_csum_set(%struct.m_ext2fs*, i32, %struct.buf*) #1

declare dso_local i32 @ext2_gd_b_bitmap_csum_verify(%struct.m_ext2fs*, i32, %struct.buf*) #1

declare dso_local i32 @ext2_b_bitmap_validate(%struct.m_ext2fs*, %struct.buf*, i32) #1

declare dso_local i32 @dtog(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @dtogd(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @isclr(i8*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @fls(i8 signext) #1

declare dso_local i32 @ffs(i8 signext) #1

declare dso_local i32 @ext2_mapsearch(%struct.m_ext2fs*, i8*, i32) #1

declare dso_local i32 @setbit(i8*, i32) #1

declare dso_local i32 @EXT2_LOCK(%struct.ext2mount*) #1

declare dso_local i32 @ext2_clusteracct(%struct.m_ext2fs*, i8*, i32, i32, i32) #1

declare dso_local i32 @e2fs_gd_set_nbfree(i32*, i64) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
