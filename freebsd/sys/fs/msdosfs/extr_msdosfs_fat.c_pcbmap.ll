; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_pcbmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_pcbmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i64, i32, i64, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i64, i32, i64, i32 }
%struct.buf = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"pcbmap: extra call\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pcbmap\00", align 1
@MSDOSFSROOT = common dso_local global i64 0, align 8
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CLUST_RSRVD = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FC_LASTMAP = common dso_local global i32 0, align 4
@FC_LASTFC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcbmap(%struct.denode* %0, i64 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.denode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.buf*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.msdosfsmount*, align 8
  %22 = alloca i64, align 8
  store %struct.denode* %0, %struct.denode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %15, align 8
  store %struct.buf* null, %struct.buf** %19, align 8
  store i64 -1, i64* %20, align 8
  %23 = load %struct.denode*, %struct.denode** %7, align 8
  %24 = getelementptr inbounds %struct.denode, %struct.denode* %23, i32 0, i32 3
  %25 = load %struct.msdosfsmount*, %struct.msdosfsmount** %24, align 8
  store %struct.msdosfsmount* %25, %struct.msdosfsmount** %21, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %5
  %29 = load i64*, i64** %10, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br label %34

34:                                               ; preds = %31, %28, %5
  %35 = phi i1 [ true, %28 ], [ true, %5 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.denode*, %struct.denode** %7, align 8
  %39 = call i32 @DETOV(%struct.denode* %38)
  %40 = call i32 @ASSERT_VOP_ELOCKED(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.denode*, %struct.denode** %7, align 8
  %42 = getelementptr inbounds %struct.denode, %struct.denode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @MSDOSFSROOT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %116

47:                                               ; preds = %34
  %48 = load %struct.denode*, %struct.denode** %7, align 8
  %49 = getelementptr inbounds %struct.denode, %struct.denode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATTR_DIRECTORY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %47
  %55 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @de_cn2off(%struct.msdosfsmount* %55, i64 %56)
  %58 = load %struct.denode*, %struct.denode** %7, align 8
  %59 = getelementptr inbounds %struct.denode, %struct.denode* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load i64*, i64** %10, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %67 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %68 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @de_bn2cn(%struct.msdosfsmount* %66, i32 %69)
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32, i32* @E2BIG, align 4
  store i32 %73, i32* %6, align 4
  br label %291

74:                                               ; preds = %54
  %75 = load i64*, i64** %9, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %79 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @de_cn2bn(%struct.msdosfsmount* %81, i64 %82)
  %84 = add nsw i64 %80, %83
  %85 = load i64*, i64** %9, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %74
  %87 = load i64*, i64** %10, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* @MSDOSFSROOT, align 8
  %91 = load i64*, i64** %10, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %11, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %97 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.denode*, %struct.denode** %7, align 8
  %100 = getelementptr inbounds %struct.denode, %struct.denode* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @de_cn2off(%struct.msdosfsmount* %102, i64 %103)
  %105 = sub nsw i64 %101, %104
  %106 = call i32 @min(i32 %98, i64 %105)
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %95, %92
  store i32 0, i32* %6, align 4
  br label %291

109:                                              ; preds = %47
  %110 = load i64*, i64** %10, align 8
  %111 = icmp ne i64* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64*, i64** %10, align 8
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* @E2BIG, align 4
  store i32 %115, i32* %6, align 4
  br label %291

116:                                              ; preds = %34
  %117 = load i32*, i32** %11, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %121 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %11, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %116
  store i64 0, i64* %13, align 8
  %125 = load %struct.denode*, %struct.denode** %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @fc_lookup(%struct.denode* %125, i64 %126, i64* %13, i64* %14)
  br label %128

128:                                              ; preds = %236, %124
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %239

132:                                              ; preds = %128
  %133 = load i64, i64* %14, align 8
  %134 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %135 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = xor i64 %136, -1
  %138 = or i64 %133, %137
  %139 = load i64, i64* @CLUST_RSRVD, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %271

142:                                              ; preds = %132
  %143 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i64 @FATOFS(%struct.msdosfsmount* %143, i64 %144)
  store i64 %145, i64* %16, align 8
  %146 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @fatblock(%struct.msdosfsmount* %146, i64 %147, i64* %17, i64* %22, i64* %18)
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %20, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %172

152:                                              ; preds = %142
  %153 = load %struct.buf*, %struct.buf** %19, align 8
  %154 = icmp ne %struct.buf* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.buf*, %struct.buf** %19, align 8
  %157 = call i32 @brelse(%struct.buf* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %160 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %17, align 8
  %163 = load i64, i64* %22, align 8
  %164 = load i32, i32* @NOCRED, align 4
  %165 = call i32 @bread(i32 %161, i64 %162, i64 %163, i32 %164, %struct.buf** %19)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %6, align 4
  br label %291

170:                                              ; preds = %158
  %171 = load i64, i64* %17, align 8
  store i64 %171, i64* %20, align 8
  br label %172

172:                                              ; preds = %170, %142
  %173 = load i64, i64* %14, align 8
  store i64 %173, i64* %15, align 8
  %174 = load i64, i64* %18, align 8
  %175 = load i64, i64* %22, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load %struct.buf*, %struct.buf** %19, align 8
  %179 = icmp ne %struct.buf* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.buf*, %struct.buf** %19, align 8
  %182 = call i32 @brelse(%struct.buf* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* @EIO, align 4
  store i32 %184, i32* %6, align 4
  br label %291

185:                                              ; preds = %172
  %186 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %187 = call i64 @FAT32(%struct.msdosfsmount* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load %struct.buf*, %struct.buf** %19, align 8
  %191 = getelementptr inbounds %struct.buf, %struct.buf* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %18, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i64 @getulong(i64 %194)
  store i64 %195, i64* %14, align 8
  br label %203

196:                                              ; preds = %185
  %197 = load %struct.buf*, %struct.buf** %19, align 8
  %198 = getelementptr inbounds %struct.buf, %struct.buf* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %18, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i64 @getushort(i64 %201)
  store i64 %202, i64* %14, align 8
  br label %203

203:                                              ; preds = %196, %189
  %204 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %205 = call i64 @FAT12(%struct.msdosfsmount* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load i64, i64* %15, align 8
  %209 = and i64 %208, 1
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load i64, i64* %14, align 8
  %213 = ashr i64 %212, 4
  store i64 %213, i64* %14, align 8
  br label %214

214:                                              ; preds = %211, %207, %203
  %215 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %216 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %14, align 8
  %219 = and i64 %218, %217
  store i64 %219, i64* %14, align 8
  %220 = load i64, i64* %14, align 8
  %221 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %222 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = xor i64 %223, -1
  %225 = or i64 %220, %224
  %226 = load i64, i64* @CLUST_RSRVD, align 8
  %227 = icmp sge i64 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %214
  %229 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %230 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = xor i64 %231, -1
  %233 = load i64, i64* %14, align 8
  %234 = or i64 %233, %232
  store i64 %234, i64* %14, align 8
  br label %235

235:                                              ; preds = %228, %214
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %13, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %13, align 8
  br label %128

239:                                              ; preds = %128
  %240 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %241 = load i64, i64* %14, align 8
  %242 = call i32 @MSDOSFSEOF(%struct.msdosfsmount* %240, i64 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %270, label %244

244:                                              ; preds = %239
  %245 = load %struct.buf*, %struct.buf** %19, align 8
  %246 = icmp ne %struct.buf* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load %struct.buf*, %struct.buf** %19, align 8
  %249 = call i32 @brelse(%struct.buf* %248)
  br label %250

250:                                              ; preds = %247, %244
  %251 = load i64*, i64** %9, align 8
  %252 = icmp ne i64* %251, null
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %255 = load i64, i64* %14, align 8
  %256 = call i64 @cntobn(%struct.msdosfsmount* %254, i64 %255)
  %257 = load i64*, i64** %9, align 8
  store i64 %256, i64* %257, align 8
  br label %258

258:                                              ; preds = %253, %250
  %259 = load i64*, i64** %10, align 8
  %260 = icmp ne i64* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i64, i64* %14, align 8
  %263 = load i64*, i64** %10, align 8
  store i64 %262, i64* %263, align 8
  br label %264

264:                                              ; preds = %261, %258
  %265 = load %struct.denode*, %struct.denode** %7, align 8
  %266 = load i32, i32* @FC_LASTMAP, align 4
  %267 = load i64, i64* %13, align 8
  %268 = load i64, i64* %14, align 8
  %269 = call i32 @fc_setcache(%struct.denode* %265, i32 %266, i64 %267, i64 %268)
  store i32 0, i32* %6, align 4
  br label %291

270:                                              ; preds = %239
  br label %271

271:                                              ; preds = %270, %141
  %272 = load i64*, i64** %10, align 8
  %273 = icmp ne i64* %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i64, i64* %13, align 8
  %276 = load i64*, i64** %10, align 8
  store i64 %275, i64* %276, align 8
  br label %277

277:                                              ; preds = %274, %271
  %278 = load %struct.buf*, %struct.buf** %19, align 8
  %279 = icmp ne %struct.buf* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load %struct.buf*, %struct.buf** %19, align 8
  %282 = call i32 @brelse(%struct.buf* %281)
  br label %283

283:                                              ; preds = %280, %277
  %284 = load %struct.denode*, %struct.denode** %7, align 8
  %285 = load i32, i32* @FC_LASTFC, align 4
  %286 = load i64, i64* %13, align 8
  %287 = sub nsw i64 %286, 1
  %288 = load i64, i64* %15, align 8
  %289 = call i32 @fc_setcache(%struct.denode* %284, i32 %285, i64 %287, i64 %288)
  %290 = load i32, i32* @E2BIG, align 4
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %283, %264, %183, %168, %114, %108, %72
  %292 = load i32, i32* %6, align 4
  ret i32 %292
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(i32, i8*) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

declare dso_local i64 @de_cn2off(%struct.msdosfsmount*, i64) #1

declare dso_local i64 @de_bn2cn(%struct.msdosfsmount*, i32) #1

declare dso_local i64 @de_cn2bn(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @fc_lookup(%struct.denode*, i64, i64*, i64*) #1

declare dso_local i64 @FATOFS(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bread(i32, i64, i64, i32, %struct.buf**) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i64 @getulong(i64) #1

declare dso_local i64 @getushort(i64) #1

declare dso_local i64 @FAT12(%struct.msdosfsmount*) #1

declare dso_local i32 @MSDOSFSEOF(%struct.msdosfsmount*, i64) #1

declare dso_local i64 @cntobn(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @fc_setcache(%struct.denode*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
