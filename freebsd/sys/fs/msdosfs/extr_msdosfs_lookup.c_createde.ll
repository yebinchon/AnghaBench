; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_createde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_createde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i64, i64, i64, i32, i64, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i64, i64, i32 }
%struct.componentname = type { i32, i64 }
%struct.direntry = type { i32 }
%struct.buf = type { i32 }
%struct.winentry = type { i32 }

@DE_CLEAR = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@MSDOSFSROOT = common dso_local global i64 0, align 8
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@MSDOSFSROOT_OFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createde(%struct.denode* %0, %struct.denode* %1, %struct.denode** %2, %struct.componentname* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.denode*, align 8
  %7 = alloca %struct.denode*, align 8
  %8 = alloca %struct.denode**, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.direntry*, align 8
  %14 = alloca %struct.msdosfsmount*, align 8
  %15 = alloca %struct.buf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.denode* %0, %struct.denode** %6, align 8
  store %struct.denode* %1, %struct.denode** %7, align 8
  store %struct.denode** %2, %struct.denode*** %8, align 8
  store %struct.componentname* %3, %struct.componentname** %9, align 8
  %22 = load %struct.denode*, %struct.denode** %7, align 8
  %23 = getelementptr inbounds %struct.denode, %struct.denode* %22, i32 0, i32 5
  %24 = load %struct.msdosfsmount*, %struct.msdosfsmount** %23, align 8
  store %struct.msdosfsmount* %24, %struct.msdosfsmount** %14, align 8
  %25 = load %struct.denode*, %struct.denode** %7, align 8
  %26 = getelementptr inbounds %struct.denode, %struct.denode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.denode*, %struct.denode** %7, align 8
  %29 = getelementptr inbounds %struct.denode, %struct.denode* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %4
  %33 = load %struct.denode*, %struct.denode** %7, align 8
  %34 = getelementptr inbounds %struct.denode, %struct.denode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 4
  %37 = load %struct.denode*, %struct.denode** %7, align 8
  %38 = getelementptr inbounds %struct.denode, %struct.denode* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  store i64 %40, i64* %12, align 8
  %41 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @de_clcount(%struct.msdosfsmount* %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load %struct.denode*, %struct.denode** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* @DE_CLEAR, align 4
  %47 = call i32 @extendfile(%struct.denode* %44, i64 %45, i32 0, i32 0, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %32
  %51 = load %struct.denode*, %struct.denode** %7, align 8
  %52 = load %struct.denode*, %struct.denode** %7, align 8
  %53 = getelementptr inbounds %struct.denode, %struct.denode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @NOCRED, align 4
  %56 = call i32 @detrunc(%struct.denode* %51, i64 %54, i32 0, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %271

58:                                               ; preds = %32
  %59 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i64 @de_cn2off(%struct.msdosfsmount* %59, i64 %60)
  %62 = load %struct.denode*, %struct.denode** %7, align 8
  %63 = getelementptr inbounds %struct.denode, %struct.denode* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %58, %4
  %67 = load %struct.denode*, %struct.denode** %7, align 8
  %68 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %69 = load %struct.denode*, %struct.denode** %7, align 8
  %70 = getelementptr inbounds %struct.denode, %struct.denode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @de_cluster(%struct.msdosfsmount* %68, i64 %71)
  %73 = call i32 @pcbmap(%struct.denode* %67, i32 %72, i32* %16, i64* %11, i32* %17)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %271

78:                                               ; preds = %66
  %79 = load %struct.denode*, %struct.denode** %7, align 8
  %80 = getelementptr inbounds %struct.denode, %struct.denode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @MSDOSFSROOT, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %87 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %93 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @NOCRED, align 4
  %98 = call i32 @bread(i32 %94, i32 %95, i32 %96, i32 %97, %struct.buf** %15)
  store i32 %98, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.buf*, %struct.buf** %15, align 8
  %102 = call i32 @brelse(%struct.buf* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %271

104:                                              ; preds = %91
  %105 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %106 = load %struct.buf*, %struct.buf** %15, align 8
  %107 = load %struct.denode*, %struct.denode** %7, align 8
  %108 = getelementptr inbounds %struct.denode, %struct.denode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call %struct.direntry* @bptoep(%struct.msdosfsmount* %105, %struct.buf* %106, i64 %109)
  store %struct.direntry* %110, %struct.direntry** %13, align 8
  %111 = load %struct.direntry*, %struct.direntry** %13, align 8
  %112 = load %struct.denode*, %struct.denode** %6, align 8
  %113 = call i32 @DE_EXTERNALIZE(%struct.direntry* %111, %struct.denode* %112)
  %114 = load %struct.denode*, %struct.denode** %7, align 8
  %115 = getelementptr inbounds %struct.denode, %struct.denode* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %216

118:                                              ; preds = %104
  %119 = load %struct.direntry*, %struct.direntry** %13, align 8
  %120 = getelementptr inbounds %struct.direntry, %struct.direntry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @winChksum(i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load %struct.componentname*, %struct.componentname** %9, align 8
  %124 = getelementptr inbounds %struct.componentname, %struct.componentname* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %19, align 8
  %127 = load %struct.componentname*, %struct.componentname** %9, align 8
  %128 = getelementptr inbounds %struct.componentname, %struct.componentname* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %130

130:                                              ; preds = %214, %118
  %131 = load %struct.denode*, %struct.denode** %7, align 8
  %132 = getelementptr inbounds %struct.denode, %struct.denode* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %215

136:                                              ; preds = %130
  %137 = load %struct.denode*, %struct.denode** %7, align 8
  %138 = getelementptr inbounds %struct.denode, %struct.denode* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %141 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = and i64 %139, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %195, label %145

145:                                              ; preds = %136
  %146 = load %struct.denode*, %struct.denode** %7, align 8
  %147 = call i32 @DETOV(%struct.denode* %146)
  %148 = call i64 @DOINGASYNC(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.buf*, %struct.buf** %15, align 8
  %152 = call i32 @bdwrite(%struct.buf* %151)
  br label %160

153:                                              ; preds = %145
  %154 = load %struct.buf*, %struct.buf** %15, align 8
  %155 = call i32 @bwrite(%struct.buf* %154)
  store i32 %155, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %5, align 4
  br label %271

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %150
  %161 = load %struct.denode*, %struct.denode** %7, align 8
  %162 = getelementptr inbounds %struct.denode, %struct.denode* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %163, 4
  store i64 %164, i64* %162, align 8
  %165 = load %struct.denode*, %struct.denode** %7, align 8
  %166 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %167 = load %struct.denode*, %struct.denode** %7, align 8
  %168 = getelementptr inbounds %struct.denode, %struct.denode* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @de_cluster(%struct.msdosfsmount* %166, i64 %169)
  %171 = call i32 @pcbmap(%struct.denode* %165, i32 %170, i32* %16, i64* null, i32* %17)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %160
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %5, align 4
  br label %271

176:                                              ; preds = %160
  %177 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %178 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* @NOCRED, align 4
  %183 = call i32 @bread(i32 %179, i32 %180, i32 %181, i32 %182, %struct.buf** %15)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %5, align 4
  br label %271

188:                                              ; preds = %176
  %189 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %190 = load %struct.buf*, %struct.buf** %15, align 8
  %191 = load %struct.denode*, %struct.denode** %7, align 8
  %192 = getelementptr inbounds %struct.denode, %struct.denode* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call %struct.direntry* @bptoep(%struct.msdosfsmount* %189, %struct.buf* %190, i64 %193)
  store %struct.direntry* %194, %struct.direntry** %13, align 8
  br label %202

195:                                              ; preds = %136
  %196 = load %struct.direntry*, %struct.direntry** %13, align 8
  %197 = getelementptr inbounds %struct.direntry, %struct.direntry* %196, i32 -1
  store %struct.direntry* %197, %struct.direntry** %13, align 8
  %198 = load %struct.denode*, %struct.denode** %7, align 8
  %199 = getelementptr inbounds %struct.denode, %struct.denode* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = sub i64 %200, 4
  store i64 %201, i64* %199, align 8
  br label %202

202:                                              ; preds = %195, %188
  %203 = load i32*, i32** %19, align 8
  %204 = load i32, i32* %20, align 4
  %205 = load %struct.direntry*, %struct.direntry** %13, align 8
  %206 = bitcast %struct.direntry* %205 to %struct.winentry*
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %21, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %211 = call i32 @unix2winfn(i32* %203, i32 %204, %struct.winentry* %206, i32 %207, i32 %209, %struct.msdosfsmount* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %202
  br label %215

214:                                              ; preds = %202
  br label %130

215:                                              ; preds = %213, %130
  br label %216

216:                                              ; preds = %215, %104
  %217 = load %struct.denode*, %struct.denode** %7, align 8
  %218 = call i32 @DETOV(%struct.denode* %217)
  %219 = call i64 @DOINGASYNC(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.buf*, %struct.buf** %15, align 8
  %223 = call i32 @bdwrite(%struct.buf* %222)
  br label %231

224:                                              ; preds = %216
  %225 = load %struct.buf*, %struct.buf** %15, align 8
  %226 = call i32 @bwrite(%struct.buf* %225)
  store i32 %226, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %5, align 4
  br label %271

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230, %221
  %232 = load %struct.denode**, %struct.denode*** %8, align 8
  %233 = icmp ne %struct.denode** %232, null
  br i1 %233, label %234, label %270

234:                                              ; preds = %231
  %235 = load %struct.denode*, %struct.denode** %6, align 8
  %236 = getelementptr inbounds %struct.denode, %struct.denode* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @ATTR_DIRECTORY, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %264

241:                                              ; preds = %234
  %242 = load %struct.denode*, %struct.denode** %6, align 8
  %243 = getelementptr inbounds %struct.denode, %struct.denode* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %11, align 8
  %245 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %246 = call i64 @FAT32(%struct.msdosfsmount* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %241
  %249 = load i64, i64* %11, align 8
  %250 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %251 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = load i64, i64* @MSDOSFSROOT, align 8
  store i64 %255, i64* %11, align 8
  br label %256

256:                                              ; preds = %254, %248, %241
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* @MSDOSFSROOT, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i64, i64* @MSDOSFSROOT_OFS, align 8
  store i64 %261, i64* %12, align 8
  br label %263

262:                                              ; preds = %256
  store i64 0, i64* %12, align 8
  br label %263

263:                                              ; preds = %262, %260
  br label %264

264:                                              ; preds = %263, %234
  %265 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %266 = load i64, i64* %11, align 8
  %267 = load i64, i64* %12, align 8
  %268 = load %struct.denode**, %struct.denode*** %8, align 8
  %269 = call i32 @deget(%struct.msdosfsmount* %265, i64 %266, i64 %267, %struct.denode** %268)
  store i32 %269, i32* %5, align 4
  br label %271

270:                                              ; preds = %231
  store i32 0, i32* %5, align 4
  br label %271

271:                                              ; preds = %270, %264, %228, %186, %174, %157, %100, %76, %50
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i64 @de_clcount(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @extendfile(%struct.denode*, i64, i32, i32, i32) #1

declare dso_local i32 @detrunc(%struct.denode*, i64, i32, i32) #1

declare dso_local i64 @de_cn2off(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @de_cluster(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local %struct.direntry* @bptoep(%struct.msdosfsmount*, %struct.buf*, i64) #1

declare dso_local i32 @DE_EXTERNALIZE(%struct.direntry*, %struct.denode*) #1

declare dso_local i32 @winChksum(i32) #1

declare dso_local i64 @DOINGASYNC(i32) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @unix2winfn(i32*, i32, %struct.winentry*, i32, i32, %struct.msdosfsmount*) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i64, i64, %struct.denode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
