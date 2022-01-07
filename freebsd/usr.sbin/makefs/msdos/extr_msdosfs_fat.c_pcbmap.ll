; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_pcbmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_pcbmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i64, i32, i64, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i64, i32, i64, i32 }
%struct.buf = type { i64 }

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
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.denode*, %struct.denode** %7, align 8
  %39 = getelementptr inbounds %struct.denode, %struct.denode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @MSDOSFSROOT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %34
  %45 = load %struct.denode*, %struct.denode** %7, align 8
  %46 = getelementptr inbounds %struct.denode, %struct.denode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ATTR_DIRECTORY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %44
  %52 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @de_cn2off(%struct.msdosfsmount* %52, i64 %53)
  %55 = load %struct.denode*, %struct.denode** %7, align 8
  %56 = getelementptr inbounds %struct.denode, %struct.denode* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load i64*, i64** %10, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %64 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %65 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @de_bn2cn(%struct.msdosfsmount* %63, i32 %66)
  %68 = load i64*, i64** %10, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* @E2BIG, align 4
  store i32 %70, i32* %6, align 4
  br label %290

71:                                               ; preds = %51
  %72 = load i64*, i64** %9, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %76 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @de_cn2bn(%struct.msdosfsmount* %78, i64 %79)
  %81 = add nsw i64 %77, %80
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %74, %71
  %84 = load i64*, i64** %10, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* @MSDOSFSROOT, align 8
  %88 = load i64*, i64** %10, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32*, i32** %11, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %94 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.denode*, %struct.denode** %7, align 8
  %97 = getelementptr inbounds %struct.denode, %struct.denode* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @de_cn2off(%struct.msdosfsmount* %99, i64 %100)
  %102 = sub nsw i64 %98, %101
  %103 = call i32 @MIN(i32 %95, i64 %102)
  %104 = load i32*, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %92, %89
  store i32 0, i32* %6, align 4
  br label %290

106:                                              ; preds = %44
  %107 = load i64*, i64** %10, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64*, i64** %10, align 8
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32, i32* @E2BIG, align 4
  store i32 %112, i32* %6, align 4
  br label %290

113:                                              ; preds = %34
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %118 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %113
  store i64 0, i64* %13, align 8
  %122 = load %struct.denode*, %struct.denode** %7, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @fc_lookup(%struct.denode* %122, i64 %123, i64* %13, i64* %14)
  br label %125

125:                                              ; preds = %235, %121
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %238

129:                                              ; preds = %125
  %130 = load i64, i64* %14, align 8
  %131 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %132 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = xor i64 %133, -1
  %135 = or i64 %130, %134
  %136 = load i64, i64* @CLUST_RSRVD, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %270

139:                                              ; preds = %129
  %140 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %141 = load i64, i64* %14, align 8
  %142 = call i64 @FATOFS(%struct.msdosfsmount* %140, i64 %141)
  store i64 %142, i64* %16, align 8
  %143 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %144 = load i64, i64* %16, align 8
  %145 = call i32 @fatblock(%struct.msdosfsmount* %143, i64 %144, i64* %17, i64* %22, i64* %18)
  %146 = load i64, i64* %17, align 8
  %147 = load i64, i64* %20, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %139
  %150 = load %struct.buf*, %struct.buf** %19, align 8
  %151 = icmp ne %struct.buf* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.buf*, %struct.buf** %19, align 8
  %154 = call i32 @brelse(%struct.buf* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %157 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %22, align 8
  %161 = load i32, i32* @NOCRED, align 4
  %162 = call i32 @bread(i32 %158, i64 %159, i64 %160, i32 %161, %struct.buf** %19)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %155
  %166 = load %struct.buf*, %struct.buf** %19, align 8
  %167 = call i32 @brelse(%struct.buf* %166)
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %6, align 4
  br label %290

169:                                              ; preds = %155
  %170 = load i64, i64* %17, align 8
  store i64 %170, i64* %20, align 8
  br label %171

171:                                              ; preds = %169, %139
  %172 = load i64, i64* %14, align 8
  store i64 %172, i64* %15, align 8
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* %22, align 8
  %175 = icmp sge i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.buf*, %struct.buf** %19, align 8
  %178 = icmp ne %struct.buf* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.buf*, %struct.buf** %19, align 8
  %181 = call i32 @brelse(%struct.buf* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* @EIO, align 4
  store i32 %183, i32* %6, align 4
  br label %290

184:                                              ; preds = %171
  %185 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %186 = call i64 @FAT32(%struct.msdosfsmount* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load %struct.buf*, %struct.buf** %19, align 8
  %190 = getelementptr inbounds %struct.buf, %struct.buf* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %18, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i64 @getulong(i64 %193)
  store i64 %194, i64* %14, align 8
  br label %202

195:                                              ; preds = %184
  %196 = load %struct.buf*, %struct.buf** %19, align 8
  %197 = getelementptr inbounds %struct.buf, %struct.buf* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %18, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i64 @getushort(i64 %200)
  store i64 %201, i64* %14, align 8
  br label %202

202:                                              ; preds = %195, %188
  %203 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %204 = call i64 @FAT12(%struct.msdosfsmount* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load i64, i64* %15, align 8
  %208 = and i64 %207, 1
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i64, i64* %14, align 8
  %212 = ashr i64 %211, 4
  store i64 %212, i64* %14, align 8
  br label %213

213:                                              ; preds = %210, %206, %202
  %214 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %215 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %14, align 8
  %218 = and i64 %217, %216
  store i64 %218, i64* %14, align 8
  %219 = load i64, i64* %14, align 8
  %220 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %221 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = xor i64 %222, -1
  %224 = or i64 %219, %223
  %225 = load i64, i64* @CLUST_RSRVD, align 8
  %226 = icmp sge i64 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %213
  %228 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %229 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = xor i64 %230, -1
  %232 = load i64, i64* %14, align 8
  %233 = or i64 %232, %231
  store i64 %233, i64* %14, align 8
  br label %234

234:                                              ; preds = %227, %213
  br label %235

235:                                              ; preds = %234
  %236 = load i64, i64* %13, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %13, align 8
  br label %125

238:                                              ; preds = %125
  %239 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %240 = load i64, i64* %14, align 8
  %241 = call i32 @MSDOSFSEOF(%struct.msdosfsmount* %239, i64 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %269, label %243

243:                                              ; preds = %238
  %244 = load %struct.buf*, %struct.buf** %19, align 8
  %245 = icmp ne %struct.buf* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load %struct.buf*, %struct.buf** %19, align 8
  %248 = call i32 @brelse(%struct.buf* %247)
  br label %249

249:                                              ; preds = %246, %243
  %250 = load i64*, i64** %9, align 8
  %251 = icmp ne i64* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load %struct.msdosfsmount*, %struct.msdosfsmount** %21, align 8
  %254 = load i64, i64* %14, align 8
  %255 = call i64 @cntobn(%struct.msdosfsmount* %253, i64 %254)
  %256 = load i64*, i64** %9, align 8
  store i64 %255, i64* %256, align 8
  br label %257

257:                                              ; preds = %252, %249
  %258 = load i64*, i64** %10, align 8
  %259 = icmp ne i64* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i64, i64* %14, align 8
  %262 = load i64*, i64** %10, align 8
  store i64 %261, i64* %262, align 8
  br label %263

263:                                              ; preds = %260, %257
  %264 = load %struct.denode*, %struct.denode** %7, align 8
  %265 = load i32, i32* @FC_LASTMAP, align 4
  %266 = load i64, i64* %13, align 8
  %267 = load i64, i64* %14, align 8
  %268 = call i32 @fc_setcache(%struct.denode* %264, i32 %265, i64 %266, i64 %267)
  store i32 0, i32* %6, align 4
  br label %290

269:                                              ; preds = %238
  br label %270

270:                                              ; preds = %269, %138
  %271 = load i64*, i64** %10, align 8
  %272 = icmp ne i64* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i64, i64* %13, align 8
  %275 = load i64*, i64** %10, align 8
  store i64 %274, i64* %275, align 8
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.buf*, %struct.buf** %19, align 8
  %278 = icmp ne %struct.buf* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.buf*, %struct.buf** %19, align 8
  %281 = call i32 @brelse(%struct.buf* %280)
  br label %282

282:                                              ; preds = %279, %276
  %283 = load %struct.denode*, %struct.denode** %7, align 8
  %284 = load i32, i32* @FC_LASTFC, align 4
  %285 = load i64, i64* %13, align 8
  %286 = sub nsw i64 %285, 1
  %287 = load i64, i64* %15, align 8
  %288 = call i32 @fc_setcache(%struct.denode* %283, i32 %284, i64 %286, i64 %287)
  %289 = load i32, i32* @E2BIG, align 4
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %282, %263, %182, %165, %111, %105, %69
  %291 = load i32, i32* %6, align 4
  ret i32 %291
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @de_cn2off(%struct.msdosfsmount*, i64) #1

declare dso_local i64 @de_bn2cn(%struct.msdosfsmount*, i32) #1

declare dso_local i64 @de_cn2bn(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @MIN(i32, i64) #1

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
