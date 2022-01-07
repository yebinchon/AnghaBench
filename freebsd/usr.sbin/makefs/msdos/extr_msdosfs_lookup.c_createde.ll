; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_lookup.c_createde.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_lookup.c_createde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i64, i64, i64, i32, i64, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i64, i64, i32 }
%struct.componentname = type { i32, i64 }
%struct.direntry = type { i32 }
%struct.buf = type { i32 }
%struct.winentry = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"createde(dep %p, ddep %p, depp %p, cnp %p)\0A\00", align 1
@DE_CLEAR = common dso_local global i32 0, align 4
@MSDOSFSROOT = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4
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
  %25 = load %struct.denode*, %struct.denode** %6, align 8
  %26 = load %struct.denode*, %struct.denode** %7, align 8
  %27 = load %struct.denode**, %struct.denode*** %8, align 8
  %28 = load %struct.componentname*, %struct.componentname** %9, align 8
  %29 = bitcast %struct.componentname* %28 to i8*
  %30 = call i32 @MSDOSFS_DPRINTF(i8* %29)
  %31 = load %struct.denode*, %struct.denode** %7, align 8
  %32 = getelementptr inbounds %struct.denode, %struct.denode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.denode*, %struct.denode** %7, align 8
  %35 = getelementptr inbounds %struct.denode, %struct.denode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %4
  %39 = load %struct.denode*, %struct.denode** %7, align 8
  %40 = getelementptr inbounds %struct.denode, %struct.denode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 4
  %43 = load %struct.denode*, %struct.denode** %7, align 8
  %44 = getelementptr inbounds %struct.denode, %struct.denode* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  store i64 %46, i64* %12, align 8
  %47 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @de_clcount(%struct.msdosfsmount* %47, i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.denode*, %struct.denode** %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @DE_CLEAR, align 4
  %53 = call i32 @extendfile(%struct.denode* %50, i64 %51, i32 0, i32 0, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %38
  %57 = load %struct.denode*, %struct.denode** %7, align 8
  %58 = load %struct.denode*, %struct.denode** %7, align 8
  %59 = getelementptr inbounds %struct.denode, %struct.denode* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @detrunc(%struct.denode* %57, i64 %60, i32 0, i32* null)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %259

63:                                               ; preds = %38
  %64 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @de_cn2off(%struct.msdosfsmount* %64, i64 %65)
  %67 = load %struct.denode*, %struct.denode** %7, align 8
  %68 = getelementptr inbounds %struct.denode, %struct.denode* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %63, %4
  %72 = load %struct.denode*, %struct.denode** %7, align 8
  %73 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %74 = load %struct.denode*, %struct.denode** %7, align 8
  %75 = getelementptr inbounds %struct.denode, %struct.denode* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @de_cluster(%struct.msdosfsmount* %73, i64 %76)
  %78 = call i32 @pcbmap(%struct.denode* %72, i32 %77, i32* %16, i64* %11, i32* %17)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %259

83:                                               ; preds = %71
  %84 = load %struct.denode*, %struct.denode** %7, align 8
  %85 = getelementptr inbounds %struct.denode, %struct.denode* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @MSDOSFSROOT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %92 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = and i64 %94, %93
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %98 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @NOCRED, align 4
  %103 = call i32 @bread(i32 %99, i32 %100, i32 %101, i32 %102, %struct.buf** %15)
  store i32 %103, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.buf*, %struct.buf** %15, align 8
  %107 = call i32 @brelse(%struct.buf* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %259

109:                                              ; preds = %96
  %110 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %111 = load %struct.buf*, %struct.buf** %15, align 8
  %112 = load %struct.denode*, %struct.denode** %7, align 8
  %113 = getelementptr inbounds %struct.denode, %struct.denode* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call %struct.direntry* @bptoep(%struct.msdosfsmount* %110, %struct.buf* %111, i64 %114)
  store %struct.direntry* %115, %struct.direntry** %13, align 8
  %116 = load %struct.direntry*, %struct.direntry** %13, align 8
  %117 = load %struct.denode*, %struct.denode** %6, align 8
  %118 = call i32 @DE_EXTERNALIZE(%struct.direntry* %116, %struct.denode* %117)
  %119 = load %struct.denode*, %struct.denode** %7, align 8
  %120 = getelementptr inbounds %struct.denode, %struct.denode* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %213

123:                                              ; preds = %109
  %124 = load %struct.direntry*, %struct.direntry** %13, align 8
  %125 = getelementptr inbounds %struct.direntry, %struct.direntry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @winChksum(i32 %126)
  store i32 %127, i32* %18, align 4
  %128 = load %struct.componentname*, %struct.componentname** %9, align 8
  %129 = getelementptr inbounds %struct.componentname, %struct.componentname* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  store i32* %131, i32** %19, align 8
  %132 = load %struct.componentname*, %struct.componentname** %9, align 8
  %133 = getelementptr inbounds %struct.componentname, %struct.componentname* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %135

135:                                              ; preds = %211, %123
  %136 = load %struct.denode*, %struct.denode** %7, align 8
  %137 = getelementptr inbounds %struct.denode, %struct.denode* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, -1
  store i64 %139, i64* %137, align 8
  %140 = icmp sge i64 %139, 0
  br i1 %140, label %141, label %212

141:                                              ; preds = %135
  %142 = load %struct.denode*, %struct.denode** %7, align 8
  %143 = getelementptr inbounds %struct.denode, %struct.denode* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %146 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %144, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %193, label %150

150:                                              ; preds = %141
  %151 = load %struct.buf*, %struct.buf** %15, align 8
  %152 = call i32 @bwrite(%struct.buf* %151)
  store i32 %152, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %5, align 4
  br label %259

156:                                              ; preds = %150
  %157 = load %struct.denode*, %struct.denode** %7, align 8
  %158 = getelementptr inbounds %struct.denode, %struct.denode* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %159, 4
  store i64 %160, i64* %158, align 8
  %161 = load %struct.denode*, %struct.denode** %7, align 8
  %162 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %163 = load %struct.denode*, %struct.denode** %7, align 8
  %164 = getelementptr inbounds %struct.denode, %struct.denode* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @de_cluster(%struct.msdosfsmount* %162, i64 %165)
  %167 = call i32 @pcbmap(%struct.denode* %161, i32 %166, i32* %16, i64* null, i32* %17)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %156
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %5, align 4
  br label %259

172:                                              ; preds = %156
  %173 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %174 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @NOCRED, align 4
  %179 = call i32 @bread(i32 %175, i32 %176, i32 %177, i32 %178, %struct.buf** %15)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %172
  %183 = load %struct.buf*, %struct.buf** %15, align 8
  %184 = call i32 @brelse(%struct.buf* %183)
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %5, align 4
  br label %259

186:                                              ; preds = %172
  %187 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %188 = load %struct.buf*, %struct.buf** %15, align 8
  %189 = load %struct.denode*, %struct.denode** %7, align 8
  %190 = getelementptr inbounds %struct.denode, %struct.denode* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call %struct.direntry* @bptoep(%struct.msdosfsmount* %187, %struct.buf* %188, i64 %191)
  store %struct.direntry* %192, %struct.direntry** %13, align 8
  br label %200

193:                                              ; preds = %141
  %194 = load %struct.direntry*, %struct.direntry** %13, align 8
  %195 = getelementptr inbounds %struct.direntry, %struct.direntry* %194, i32 -1
  store %struct.direntry* %195, %struct.direntry** %13, align 8
  %196 = load %struct.denode*, %struct.denode** %7, align 8
  %197 = getelementptr inbounds %struct.denode, %struct.denode* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = sub i64 %198, 4
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %193, %186
  %201 = load i32*, i32** %19, align 8
  %202 = load i32, i32* %20, align 4
  %203 = load %struct.direntry*, %struct.direntry** %13, align 8
  %204 = bitcast %struct.direntry* %203 to %struct.winentry*
  %205 = load i32, i32* %21, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %21, align 4
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @unix2winfn(i32* %201, i32 %202, %struct.winentry* %204, i32 %205, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %200
  br label %212

211:                                              ; preds = %200
  br label %135

212:                                              ; preds = %210, %135
  br label %213

213:                                              ; preds = %212, %109
  %214 = load %struct.buf*, %struct.buf** %15, align 8
  %215 = call i32 @bwrite(%struct.buf* %214)
  store i32 %215, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %5, align 4
  br label %259

219:                                              ; preds = %213
  %220 = load %struct.denode**, %struct.denode*** %8, align 8
  %221 = icmp ne %struct.denode** %220, null
  br i1 %221, label %222, label %258

222:                                              ; preds = %219
  %223 = load %struct.denode*, %struct.denode** %6, align 8
  %224 = getelementptr inbounds %struct.denode, %struct.denode* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @ATTR_DIRECTORY, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %252

229:                                              ; preds = %222
  %230 = load %struct.denode*, %struct.denode** %6, align 8
  %231 = getelementptr inbounds %struct.denode, %struct.denode* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %11, align 8
  %233 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %234 = call i64 @FAT32(%struct.msdosfsmount* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %229
  %237 = load i64, i64* %11, align 8
  %238 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %239 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %237, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load i64, i64* @MSDOSFSROOT, align 8
  store i64 %243, i64* %11, align 8
  br label %244

244:                                              ; preds = %242, %236, %229
  %245 = load i64, i64* %11, align 8
  %246 = load i64, i64* @MSDOSFSROOT, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i64, i64* @MSDOSFSROOT_OFS, align 8
  store i64 %249, i64* %12, align 8
  br label %251

250:                                              ; preds = %244
  store i64 0, i64* %12, align 8
  br label %251

251:                                              ; preds = %250, %248
  br label %252

252:                                              ; preds = %251, %222
  %253 = load %struct.msdosfsmount*, %struct.msdosfsmount** %14, align 8
  %254 = load i64, i64* %11, align 8
  %255 = load i64, i64* %12, align 8
  %256 = load %struct.denode**, %struct.denode*** %8, align 8
  %257 = call i32 @deget(%struct.msdosfsmount* %253, i64 %254, i64 %255, %struct.denode** %256)
  store i32 %257, i32* %5, align 4
  br label %259

258:                                              ; preds = %219
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %258, %252, %217, %182, %170, %154, %105, %81, %56
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @MSDOSFS_DPRINTF(i8*) #1

declare dso_local i64 @de_clcount(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @extendfile(%struct.denode*, i64, i32, i32, i32) #1

declare dso_local i32 @detrunc(%struct.denode*, i64, i32, i32*) #1

declare dso_local i64 @de_cn2off(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @de_cluster(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local %struct.direntry* @bptoep(%struct.msdosfsmount*, %struct.buf*, i64) #1

declare dso_local i32 @DE_EXTERNALIZE(%struct.direntry*, %struct.denode*) #1

declare dso_local i32 @winChksum(i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @unix2winfn(i32*, i32, %struct.winentry*, i32, i32) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i64, i64, %struct.denode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
