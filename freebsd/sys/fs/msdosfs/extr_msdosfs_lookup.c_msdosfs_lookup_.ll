; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_msdosfs_lookup_.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_msdosfs_lookup_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i8*, i32, i32, i32, i32 }
%struct.mbnambuf = type { i32 }
%struct.denode = type { i32, i32, i32, i32, i32, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i32, i64, i32 }
%struct.buf = type { i64 }
%struct.direntry = type { i64*, i32, i32, i32 }
%struct.deget_dotdot = type { i32, i32 }
%struct.winentry = type { i32 }

@VV_ROOT = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@MSDOSFSROOT = common dso_local global i32 0, align 4
@MSDOSFSROOT_OFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSDOSFSMNT_SHORTNAME = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@RENAME = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@SLOT_EMPTY = common dso_local global i64 0, align 8
@SLOT_DELETED = common dso_local global i64 0, align 8
@ATTR_WIN95 = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@msdosfs_deget_dotdot = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode**, %struct.componentname*, i32*)* @msdosfs_lookup_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_lookup_(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode**, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mbnambuf, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.vnode*, align 8
  %23 = alloca %struct.denode*, align 8
  %24 = alloca %struct.denode*, align 8
  %25 = alloca %struct.msdosfsmount*, align 8
  %26 = alloca %struct.buf*, align 8
  %27 = alloca %struct.direntry*, align 8
  %28 = alloca %struct.deget_dotdot, align 4
  %29 = alloca [12 x i8], align 1
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vnode** %1, %struct.vnode*** %7, align 8
  store %struct.componentname* %2, %struct.componentname** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store %struct.buf* null, %struct.buf** %26, align 8
  store %struct.direntry* null, %struct.direntry** %27, align 8
  %38 = load %struct.componentname*, %struct.componentname** %8, align 8
  %39 = getelementptr inbounds %struct.componentname, %struct.componentname* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %30, align 4
  %41 = load %struct.componentname*, %struct.componentname** %8, align 8
  %42 = getelementptr inbounds %struct.componentname, %struct.componentname* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %31, align 4
  store i32 1, i32* %34, align 4
  store i32 -1, i32* %35, align 4
  store i32 1, i32* %37, align 4
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = call %struct.denode* @VTODE(%struct.vnode* %44)
  store %struct.denode* %45, %struct.denode** %23, align 8
  %46 = load %struct.denode*, %struct.denode** %23, align 8
  %47 = getelementptr inbounds %struct.denode, %struct.denode* %46, i32 0, i32 6
  %48 = load %struct.msdosfsmount*, %struct.msdosfsmount** %47, align 8
  store %struct.msdosfsmount* %48, %struct.msdosfsmount** %25, align 8
  br label %49

49:                                               ; preds = %631, %4
  %50 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %51 = icmp ne %struct.vnode** %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* null, %struct.vnode** %53, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.vnode*, %struct.vnode** %6, align 8
  %56 = getelementptr inbounds %struct.vnode, %struct.vnode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VV_ROOT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %54
  %62 = load %struct.componentname*, %struct.componentname** %8, align 8
  %63 = getelementptr inbounds %struct.componentname, %struct.componentname* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 46
  br i1 %68, label %69, label %92

69:                                               ; preds = %61
  %70 = load %struct.componentname*, %struct.componentname** %8, align 8
  %71 = getelementptr inbounds %struct.componentname, %struct.componentname* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = load %struct.componentname*, %struct.componentname** %8, align 8
  %76 = getelementptr inbounds %struct.componentname, %struct.componentname* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.componentname*, %struct.componentname** %8, align 8
  %81 = getelementptr inbounds %struct.componentname, %struct.componentname* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %92

87:                                               ; preds = %79, %69
  %88 = load i32, i32* @ATTR_DIRECTORY, align 4
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* @MSDOSFSROOT, align 4
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* @MSDOSFSROOT, align 4
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* @MSDOSFSROOT_OFS, align 4
  store i32 %91, i32* %17, align 4
  br label %450

92:                                               ; preds = %79, %74, %61, %54
  %93 = load %struct.componentname*, %struct.componentname** %8, align 8
  %94 = getelementptr inbounds %struct.componentname, %struct.componentname* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [12 x i8], [12 x i8]* %29, i64 0, i64 0
  %97 = load %struct.componentname*, %struct.componentname** %8, align 8
  %98 = getelementptr inbounds %struct.componentname, %struct.componentname* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %101 = call i32 @unix2dosfn(i8* %95, i8* %96, i32 %99, i32 0, %struct.msdosfsmount* %100)
  switch i32 %101, label %125 [
    i32 0, label %102
    i32 1, label %104
    i32 2, label %105
    i32 3, label %115
  ]

102:                                              ; preds = %92
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %5, align 4
  br label %677

104:                                              ; preds = %92
  br label %125

105:                                              ; preds = %92
  %106 = load %struct.componentname*, %struct.componentname** %8, align 8
  %107 = getelementptr inbounds %struct.componentname, %struct.componentname* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.componentname*, %struct.componentname** %8, align 8
  %110 = getelementptr inbounds %struct.componentname, %struct.componentname* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %113 = call i32 @winSlotCnt(i8* %108, i32 %111, %struct.msdosfsmount* %112)
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %34, align 4
  br label %125

115:                                              ; preds = %92
  store i32 0, i32* %37, align 4
  %116 = load %struct.componentname*, %struct.componentname** %8, align 8
  %117 = getelementptr inbounds %struct.componentname, %struct.componentname* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.componentname*, %struct.componentname** %8, align 8
  %120 = getelementptr inbounds %struct.componentname, %struct.componentname* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %123 = call i32 @winSlotCnt(i8* %118, i32 %121, %struct.msdosfsmount* %122)
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %34, align 4
  br label %125

125:                                              ; preds = %92, %115, %105, %104
  %126 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %127 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @MSDOSFSMNT_SHORTNAME, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 1, i32* %34, align 4
  store i32 1, i32* %37, align 4
  br label %133

133:                                              ; preds = %132, %125
  %134 = load %struct.componentname*, %struct.componentname** %8, align 8
  %135 = getelementptr inbounds %struct.componentname, %struct.componentname* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.componentname*, %struct.componentname** %8, align 8
  %138 = getelementptr inbounds %struct.componentname, %struct.componentname* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @winLenFixup(i8* %136, i32 %139)
  store i32 %140, i32* %32, align 4
  %141 = load i32, i32* %34, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* @CREATE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %31, align 4
  %147 = load i32, i32* @RENAME, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145, %133
  %150 = load i32, i32* %30, align 4
  %151 = load i32, i32* @ISLASTCN, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %154, %149, %145
  store %struct.denode* null, %struct.denode** %24, align 8
  %156 = call i32 @mbnambuf_init(%struct.mbnambuf* %10)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %157

157:                                              ; preds = %328, %155
  %158 = load %struct.denode*, %struct.denode** %23, align 8
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @pcbmap(%struct.denode* %158, i32 %159, i32* %11, i32* %16, i32* %19)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @E2BIG, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %331

168:                                              ; preds = %163
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %5, align 4
  br label %677

170:                                              ; preds = %157
  %171 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %172 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* @NOCRED, align 4
  %177 = call i32 @bread(i32 %173, i32 %174, i32 %175, i32 %176, %struct.buf** %26)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %5, align 4
  br label %677

182:                                              ; preds = %170
  store i32 0, i32* %17, align 4
  br label %183

183:                                              ; preds = %316, %182
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %19, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %325

187:                                              ; preds = %183
  %188 = load %struct.buf*, %struct.buf** %26, align 8
  %189 = getelementptr inbounds %struct.buf, %struct.buf* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %190, %192
  %194 = inttoptr i64 %193 to %struct.direntry*
  store %struct.direntry* %194, %struct.direntry** %27, align 8
  %195 = load %struct.direntry*, %struct.direntry** %27, align 8
  %196 = getelementptr inbounds %struct.direntry, %struct.direntry* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SLOT_EMPTY, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %210, label %202

202:                                              ; preds = %187
  %203 = load %struct.direntry*, %struct.direntry** %27, align 8
  %204 = getelementptr inbounds %struct.direntry, %struct.direntry* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SLOT_DELETED, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %202, %187
  store i32 -1, i32* %35, align 4
  %211 = call i32 @mbnambuf_init(%struct.mbnambuf* %10)
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %34, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* %18, align 4
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %215, %210
  %220 = load %struct.direntry*, %struct.direntry** %27, align 8
  %221 = getelementptr inbounds %struct.direntry, %struct.direntry* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SLOT_EMPTY, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load %struct.buf*, %struct.buf** %26, align 8
  %229 = call i32 @brelse(%struct.buf* %228)
  br label %332

230:                                              ; preds = %219
  br label %315

231:                                              ; preds = %202
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %34, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i32 0, i32* %13, align 4
  br label %236

236:                                              ; preds = %235, %231
  %237 = load %struct.direntry*, %struct.direntry** %27, align 8
  %238 = getelementptr inbounds %struct.direntry, %struct.direntry* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @ATTR_WIN95, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %256

242:                                              ; preds = %236
  %243 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %244 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @MSDOSFSMNT_SHORTNAME, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %316

250:                                              ; preds = %242
  %251 = load %struct.direntry*, %struct.direntry** %27, align 8
  %252 = bitcast %struct.direntry* %251 to %struct.winentry*
  %253 = load i32, i32* %35, align 4
  %254 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %255 = call i32 @win2unixfn(%struct.mbnambuf* %10, %struct.winentry* %252, i32 %253, %struct.msdosfsmount* %254)
  store i32 %255, i32* %35, align 4
  br label %316

256:                                              ; preds = %236
  %257 = load %struct.componentname*, %struct.componentname** %8, align 8
  %258 = getelementptr inbounds %struct.componentname, %struct.componentname* %257, i32 0, i32 2
  %259 = load i8*, i8** %258, align 8
  %260 = load i32, i32* %32, align 4
  %261 = load i32, i32* %35, align 4
  %262 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %263 = call i32 @winChkName(%struct.mbnambuf* %10, i8* %259, i32 %260, i32 %261, %struct.msdosfsmount* %262)
  store i32 %263, i32* %35, align 4
  %264 = load i32, i32* %35, align 4
  %265 = icmp eq i32 %264, -2
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  store i32 -1, i32* %35, align 4
  br label %316

267:                                              ; preds = %256
  %268 = load %struct.direntry*, %struct.direntry** %27, align 8
  %269 = getelementptr inbounds %struct.direntry, %struct.direntry* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @ATTR_VOLUME, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  store i32 -1, i32* %35, align 4
  br label %316

275:                                              ; preds = %267
  %276 = load i32, i32* %35, align 4
  %277 = load %struct.direntry*, %struct.direntry** %27, align 8
  %278 = getelementptr inbounds %struct.direntry, %struct.direntry* %277, i32 0, i32 0
  %279 = load i64*, i64** %278, align 8
  %280 = call i32 @winChksum(i64* %279)
  %281 = icmp eq i32 %276, %280
  %282 = zext i1 %281 to i32
  store i32 %282, i32* %36, align 4
  %283 = load i32, i32* %36, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %275
  %286 = load i32, i32* %37, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %285
  %289 = getelementptr inbounds [12 x i8], [12 x i8]* %29, i64 0, i64 0
  %290 = load %struct.direntry*, %struct.direntry** %27, align 8
  %291 = getelementptr inbounds %struct.direntry, %struct.direntry* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = call i64 @bcmp(i8* %289, i64* %292, i32 11)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %288, %285
  store i32 -1, i32* %35, align 4
  br label %316

296:                                              ; preds = %288, %275
  %297 = load i32, i32* %18, align 4
  %298 = load %struct.denode*, %struct.denode** %23, align 8
  %299 = getelementptr inbounds %struct.denode, %struct.denode* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %36, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %296
  %303 = load i32, i32* %31, align 4
  %304 = load i32, i32* @RENAME, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i32, i32* %34, align 4
  %308 = sub nsw i32 %307, 1
  %309 = load %struct.denode*, %struct.denode** %23, align 8
  %310 = getelementptr inbounds %struct.denode, %struct.denode* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  br label %314

311:                                              ; preds = %302, %296
  %312 = load %struct.denode*, %struct.denode** %23, align 8
  %313 = getelementptr inbounds %struct.denode, %struct.denode* %312, i32 0, i32 2
  store i32 0, i32* %313, align 8
  br label %314

314:                                              ; preds = %311, %306
  br label %399

315:                                              ; preds = %230
  br label %316

316:                                              ; preds = %315, %295, %274, %266, %250, %249
  %317 = load i32, i32* %17, align 4
  %318 = sext i32 %317 to i64
  %319 = add i64 %318, 24
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %18, align 4
  %322 = sext i32 %321 to i64
  %323 = add i64 %322, 24
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %18, align 4
  br label %183

325:                                              ; preds = %183
  %326 = load %struct.buf*, %struct.buf** %26, align 8
  %327 = call i32 @brelse(%struct.buf* %326)
  br label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %15, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %15, align 4
  br label %157

331:                                              ; preds = %167
  br label %332

332:                                              ; preds = %331, %227
  %333 = load i32, i32* %13, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %332
  store i32 1, i32* %13, align 4
  %336 = load i32, i32* %18, align 4
  store i32 %336, i32* %14, align 4
  br label %337

337:                                              ; preds = %335, %332
  %338 = load i32, i32* %34, align 4
  %339 = load i32, i32* %13, align 4
  %340 = icmp sgt i32 %338, %339
  br i1 %340, label %341, label %351

341:                                              ; preds = %337
  %342 = load i32, i32* %34, align 4
  %343 = load i32, i32* %13, align 4
  %344 = sub nsw i32 %342, %343
  %345 = sext i32 %344 to i64
  %346 = mul i64 24, %345
  %347 = load i32, i32* %14, align 4
  %348 = sext i32 %347 to i64
  %349 = add i64 %348, %346
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %14, align 4
  br label %351

351:                                              ; preds = %341, %337
  %352 = load i32, i32* %31, align 4
  %353 = load i32, i32* @CREATE, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %359, label %355

355:                                              ; preds = %351
  %356 = load i32, i32* %31, align 4
  %357 = load i32, i32* @RENAME, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %397

359:                                              ; preds = %355, %351
  %360 = load i32, i32* %30, align 4
  %361 = load i32, i32* @ISLASTCN, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %397

364:                                              ; preds = %359
  %365 = load %struct.denode*, %struct.denode** %23, align 8
  %366 = getelementptr inbounds %struct.denode, %struct.denode* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %397

369:                                              ; preds = %364
  %370 = load %struct.vnode*, %struct.vnode** %6, align 8
  %371 = load i32, i32* @VWRITE, align 4
  %372 = load %struct.componentname*, %struct.componentname** %8, align 8
  %373 = getelementptr inbounds %struct.componentname, %struct.componentname* %372, i32 0, i32 6
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.componentname*, %struct.componentname** %8, align 8
  %376 = getelementptr inbounds %struct.componentname, %struct.componentname* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @VOP_ACCESS(%struct.vnode* %370, i32 %371, i32 %374, i32 %377)
  store i32 %378, i32* %12, align 4
  %379 = load i32, i32* %12, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %369
  %382 = load i32, i32* %12, align 4
  store i32 %382, i32* %5, align 4
  br label %677

383:                                              ; preds = %369
  %384 = load i32, i32* %14, align 4
  %385 = load %struct.denode*, %struct.denode** %23, align 8
  %386 = getelementptr inbounds %struct.denode, %struct.denode* %385, i32 0, i32 1
  store i32 %384, i32* %386, align 4
  %387 = load i32, i32* %34, align 4
  %388 = sub nsw i32 %387, 1
  %389 = load %struct.denode*, %struct.denode** %23, align 8
  %390 = getelementptr inbounds %struct.denode, %struct.denode* %389, i32 0, i32 2
  store i32 %388, i32* %390, align 8
  %391 = load i32, i32* @SAVENAME, align 4
  %392 = load %struct.componentname*, %struct.componentname** %8, align 8
  %393 = getelementptr inbounds %struct.componentname, %struct.componentname* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 8
  %396 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %396, i32* %5, align 4
  br label %677

397:                                              ; preds = %364, %359, %355
  %398 = load i32, i32* @ENOENT, align 4
  store i32 %398, i32* %5, align 4
  br label %677

399:                                              ; preds = %314
  %400 = load %struct.direntry*, %struct.direntry** %27, align 8
  %401 = getelementptr inbounds %struct.direntry, %struct.direntry* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @ATTR_DIRECTORY, align 4
  %404 = and i32 %402, %403
  store i32 %404, i32* %20, align 4
  %405 = load %struct.direntry*, %struct.direntry** %27, align 8
  %406 = getelementptr inbounds %struct.direntry, %struct.direntry* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @getushort(i32 %407)
  store i32 %408, i32* %21, align 4
  %409 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %410 = call i64 @FAT32(%struct.msdosfsmount* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %428

412:                                              ; preds = %399
  %413 = load %struct.direntry*, %struct.direntry** %27, align 8
  %414 = getelementptr inbounds %struct.direntry, %struct.direntry* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @getushort(i32 %415)
  %417 = shl i32 %416, 16
  %418 = load i32, i32* %21, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %21, align 4
  %420 = load i32, i32* %21, align 4
  %421 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %422 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %420, %423
  br i1 %424, label %425, label %427

425:                                              ; preds = %412
  %426 = load i32, i32* @MSDOSFSROOT, align 4
  store i32 %426, i32* %21, align 4
  br label %427

427:                                              ; preds = %425, %412
  br label %428

428:                                              ; preds = %427, %399
  %429 = load i32, i32* %20, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %440

431:                                              ; preds = %428
  %432 = load i32, i32* %21, align 4
  store i32 %432, i32* %16, align 4
  %433 = load i32, i32* %16, align 4
  %434 = load i32, i32* @MSDOSFSROOT, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %431
  %437 = load i32, i32* @MSDOSFSROOT_OFS, align 4
  store i32 %437, i32* %17, align 4
  br label %439

438:                                              ; preds = %431
  store i32 0, i32* %17, align 4
  br label %439

439:                                              ; preds = %438, %436
  br label %447

440:                                              ; preds = %428
  %441 = load i32, i32* %16, align 4
  %442 = load i32, i32* @MSDOSFSROOT, align 4
  %443 = icmp eq i32 %441, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %440
  %445 = load i32, i32* %18, align 4
  store i32 %445, i32* %17, align 4
  br label %446

446:                                              ; preds = %444, %440
  br label %447

447:                                              ; preds = %446, %439
  %448 = load %struct.buf*, %struct.buf** %26, align 8
  %449 = call i32 @brelse(%struct.buf* %448)
  store %struct.buf* null, %struct.buf** %26, align 8
  br label %450

450:                                              ; preds = %447, %87
  %451 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %452 = call i64 @FAT32(%struct.msdosfsmount* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %462

454:                                              ; preds = %450
  %455 = load i32, i32* %21, align 4
  %456 = load i32, i32* @MSDOSFSROOT, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %454
  %459 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %460 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  store i32 %461, i32* %21, align 4
  br label %462

462:                                              ; preds = %458, %454, %450
  %463 = load i32*, i32** %9, align 8
  %464 = icmp ne i32* %463, null
  br i1 %464, label %465, label %475

465:                                              ; preds = %462
  %466 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %467 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  %469 = trunc i64 %468 to i32
  %470 = load i32, i32* %21, align 4
  %471 = mul nsw i32 %469, %470
  %472 = load i32, i32* %17, align 4
  %473 = add nsw i32 %471, %472
  %474 = load i32*, i32** %9, align 8
  store i32 %473, i32* %474, align 4
  store i32 0, i32* %5, align 4
  br label %677

475:                                              ; preds = %462
  %476 = load i32, i32* %31, align 4
  %477 = load i32, i32* @DELETE, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %531

479:                                              ; preds = %475
  %480 = load i32, i32* %30, align 4
  %481 = load i32, i32* @ISLASTCN, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %531

484:                                              ; preds = %479
  %485 = load i32, i32* %17, align 4
  %486 = load i32, i32* @MSDOSFSROOT_OFS, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %490

488:                                              ; preds = %484
  %489 = load i32, i32* @EBUSY, align 4
  store i32 %489, i32* %5, align 4
  br label %677

490:                                              ; preds = %484
  %491 = load %struct.vnode*, %struct.vnode** %6, align 8
  %492 = load i32, i32* @VWRITE, align 4
  %493 = load %struct.componentname*, %struct.componentname** %8, align 8
  %494 = getelementptr inbounds %struct.componentname, %struct.componentname* %493, i32 0, i32 6
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.componentname*, %struct.componentname** %8, align 8
  %497 = getelementptr inbounds %struct.componentname, %struct.componentname* %496, i32 0, i32 5
  %498 = load i32, i32* %497, align 8
  %499 = call i32 @VOP_ACCESS(%struct.vnode* %491, i32 %492, i32 %495, i32 %498)
  store i32 %499, i32* %12, align 4
  %500 = load i32, i32* %12, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %504

502:                                              ; preds = %490
  %503 = load i32, i32* %12, align 4
  store i32 %503, i32* %5, align 4
  br label %677

504:                                              ; preds = %490
  %505 = load %struct.denode*, %struct.denode** %23, align 8
  %506 = getelementptr inbounds %struct.denode, %struct.denode* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* %21, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %518

510:                                              ; preds = %504
  %511 = load i32, i32* %20, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %518

513:                                              ; preds = %510
  %514 = load %struct.vnode*, %struct.vnode** %6, align 8
  %515 = call i32 @VREF(%struct.vnode* %514)
  %516 = load %struct.vnode*, %struct.vnode** %6, align 8
  %517 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %516, %struct.vnode** %517, align 8
  store i32 0, i32* %5, align 4
  br label %677

518:                                              ; preds = %510, %504
  %519 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %520 = load i32, i32* %16, align 4
  %521 = load i32, i32* %17, align 4
  %522 = call i32 @deget(%struct.msdosfsmount* %519, i32 %520, i32 %521, %struct.denode** %24)
  store i32 %522, i32* %12, align 4
  %523 = load i32, i32* %12, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %518
  %526 = load i32, i32* %12, align 4
  store i32 %526, i32* %5, align 4
  br label %677

527:                                              ; preds = %518
  %528 = load %struct.denode*, %struct.denode** %24, align 8
  %529 = call %struct.vnode* @DETOV(%struct.denode* %528)
  %530 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %529, %struct.vnode** %530, align 8
  store i32 0, i32* %5, align 4
  br label %677

531:                                              ; preds = %479, %475
  %532 = load i32, i32* %31, align 4
  %533 = load i32, i32* @RENAME, align 4
  %534 = icmp eq i32 %532, %533
  br i1 %534, label %535, label %588

535:                                              ; preds = %531
  %536 = load i32, i32* %30, align 4
  %537 = load i32, i32* @ISLASTCN, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %588

540:                                              ; preds = %535
  %541 = load i32, i32* %17, align 4
  %542 = load i32, i32* @MSDOSFSROOT_OFS, align 4
  %543 = icmp eq i32 %541, %542
  br i1 %543, label %544, label %546

544:                                              ; preds = %540
  %545 = load i32, i32* @EBUSY, align 4
  store i32 %545, i32* %5, align 4
  br label %677

546:                                              ; preds = %540
  %547 = load %struct.vnode*, %struct.vnode** %6, align 8
  %548 = load i32, i32* @VWRITE, align 4
  %549 = load %struct.componentname*, %struct.componentname** %8, align 8
  %550 = getelementptr inbounds %struct.componentname, %struct.componentname* %549, i32 0, i32 6
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.componentname*, %struct.componentname** %8, align 8
  %553 = getelementptr inbounds %struct.componentname, %struct.componentname* %552, i32 0, i32 5
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @VOP_ACCESS(%struct.vnode* %547, i32 %548, i32 %551, i32 %554)
  store i32 %555, i32* %12, align 4
  %556 = load i32, i32* %12, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %560

558:                                              ; preds = %546
  %559 = load i32, i32* %12, align 4
  store i32 %559, i32* %5, align 4
  br label %677

560:                                              ; preds = %546
  %561 = load %struct.denode*, %struct.denode** %23, align 8
  %562 = getelementptr inbounds %struct.denode, %struct.denode* %561, i32 0, i32 4
  %563 = load i32, i32* %562, align 8
  %564 = load i32, i32* %21, align 4
  %565 = icmp eq i32 %563, %564
  br i1 %565, label %566, label %571

566:                                              ; preds = %560
  %567 = load i32, i32* %20, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %571

569:                                              ; preds = %566
  %570 = load i32, i32* @EISDIR, align 4
  store i32 %570, i32* %5, align 4
  br label %677

571:                                              ; preds = %566, %560
  %572 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %573 = load i32, i32* %16, align 4
  %574 = load i32, i32* %17, align 4
  %575 = call i32 @deget(%struct.msdosfsmount* %572, i32 %573, i32 %574, %struct.denode** %24)
  store i32 %575, i32* %12, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %571
  %578 = load i32, i32* %12, align 4
  store i32 %578, i32* %5, align 4
  br label %677

579:                                              ; preds = %571
  %580 = load %struct.denode*, %struct.denode** %24, align 8
  %581 = call %struct.vnode* @DETOV(%struct.denode* %580)
  %582 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %581, %struct.vnode** %582, align 8
  %583 = load i32, i32* @SAVENAME, align 4
  %584 = load %struct.componentname*, %struct.componentname** %8, align 8
  %585 = getelementptr inbounds %struct.componentname, %struct.componentname* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = or i32 %586, %583
  store i32 %587, i32* %585, align 8
  store i32 0, i32* %5, align 4
  br label %677

588:                                              ; preds = %535, %531
  %589 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %589, %struct.vnode** %22, align 8
  %590 = load i32, i32* %30, align 4
  %591 = load i32, i32* @ISDOTDOT, align 4
  %592 = and i32 %590, %591
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %636

594:                                              ; preds = %588
  %595 = load i32, i32* %16, align 4
  %596 = getelementptr inbounds %struct.deget_dotdot, %struct.deget_dotdot* %28, i32 0, i32 0
  store i32 %595, i32* %596, align 4
  %597 = load i32, i32* %17, align 4
  %598 = getelementptr inbounds %struct.deget_dotdot, %struct.deget_dotdot* %28, i32 0, i32 1
  store i32 %597, i32* %598, align 4
  %599 = load %struct.vnode*, %struct.vnode** %6, align 8
  %600 = load i32, i32* @msdosfs_deget_dotdot, align 4
  %601 = load %struct.componentname*, %struct.componentname** %8, align 8
  %602 = getelementptr inbounds %struct.componentname, %struct.componentname* %601, i32 0, i32 4
  %603 = load i32, i32* %602, align 4
  %604 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %605 = call i32 @vn_vget_ino_gen(%struct.vnode* %599, i32 %600, %struct.deget_dotdot* %28, i32 %603, %struct.vnode** %604)
  store i32 %605, i32* %12, align 4
  %606 = load i32, i32* %12, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %611

608:                                              ; preds = %594
  %609 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* null, %struct.vnode** %609, align 8
  %610 = load i32, i32* %12, align 4
  store i32 %610, i32* %5, align 4
  br label %677

611:                                              ; preds = %594
  %612 = load %struct.vnode*, %struct.vnode** %22, align 8
  %613 = load %struct.componentname*, %struct.componentname** %8, align 8
  %614 = call i32 @msdosfs_lookup_(%struct.vnode* %612, %struct.vnode** null, %struct.componentname* %613, i32* %33)
  store i32 %614, i32* %12, align 4
  %615 = load i32, i32* %12, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %623

617:                                              ; preds = %611
  %618 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %619 = load %struct.vnode*, %struct.vnode** %618, align 8
  %620 = call i32 @vput(%struct.vnode* %619)
  %621 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* null, %struct.vnode** %621, align 8
  %622 = load i32, i32* %12, align 4
  store i32 %622, i32* %5, align 4
  br label %677

623:                                              ; preds = %611
  %624 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %625 = load %struct.vnode*, %struct.vnode** %624, align 8
  %626 = call %struct.denode* @VTODE(%struct.vnode* %625)
  %627 = getelementptr inbounds %struct.denode, %struct.denode* %626, i32 0, i32 5
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* %33, align 4
  %630 = icmp ne i32 %628, %629
  br i1 %630, label %631, label %635

631:                                              ; preds = %623
  %632 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %633 = load %struct.vnode*, %struct.vnode** %632, align 8
  %634 = call i32 @vput(%struct.vnode* %633)
  br label %49

635:                                              ; preds = %623
  br label %663

636:                                              ; preds = %588
  %637 = load %struct.denode*, %struct.denode** %23, align 8
  %638 = getelementptr inbounds %struct.denode, %struct.denode* %637, i32 0, i32 4
  %639 = load i32, i32* %638, align 8
  %640 = load i32, i32* %21, align 4
  %641 = icmp eq i32 %639, %640
  br i1 %641, label %642, label %650

642:                                              ; preds = %636
  %643 = load i32, i32* %20, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %650

645:                                              ; preds = %642
  %646 = load %struct.vnode*, %struct.vnode** %6, align 8
  %647 = call i32 @VREF(%struct.vnode* %646)
  %648 = load %struct.vnode*, %struct.vnode** %6, align 8
  %649 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %648, %struct.vnode** %649, align 8
  br label %662

650:                                              ; preds = %642, %636
  %651 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %652 = load i32, i32* %16, align 4
  %653 = load i32, i32* %17, align 4
  %654 = call i32 @deget(%struct.msdosfsmount* %651, i32 %652, i32 %653, %struct.denode** %24)
  store i32 %654, i32* %12, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %658

656:                                              ; preds = %650
  %657 = load i32, i32* %12, align 4
  store i32 %657, i32* %5, align 4
  br label %677

658:                                              ; preds = %650
  %659 = load %struct.denode*, %struct.denode** %24, align 8
  %660 = call %struct.vnode* @DETOV(%struct.denode* %659)
  %661 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %660, %struct.vnode** %661, align 8
  br label %662

662:                                              ; preds = %658, %645
  br label %663

663:                                              ; preds = %662, %635
  %664 = load %struct.componentname*, %struct.componentname** %8, align 8
  %665 = getelementptr inbounds %struct.componentname, %struct.componentname* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = load i32, i32* @MAKEENTRY, align 4
  %668 = and i32 %666, %667
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %676

670:                                              ; preds = %663
  %671 = load %struct.vnode*, %struct.vnode** %6, align 8
  %672 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %673 = load %struct.vnode*, %struct.vnode** %672, align 8
  %674 = load %struct.componentname*, %struct.componentname** %8, align 8
  %675 = call i32 @cache_enter(%struct.vnode* %671, %struct.vnode* %673, %struct.componentname* %674)
  br label %676

676:                                              ; preds = %670, %663
  store i32 0, i32* %5, align 4
  br label %677

677:                                              ; preds = %676, %656, %617, %608, %579, %577, %569, %558, %544, %527, %525, %513, %502, %488, %465, %397, %383, %381, %180, %168, %102
  %678 = load i32, i32* %5, align 4
  ret i32 %678
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @unix2dosfn(i8*, i8*, i32, i32, %struct.msdosfsmount*) #1

declare dso_local i32 @winSlotCnt(i8*, i32, %struct.msdosfsmount*) #1

declare dso_local i32 @winLenFixup(i8*, i32) #1

declare dso_local i32 @mbnambuf_init(%struct.mbnambuf*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @win2unixfn(%struct.mbnambuf*, %struct.winentry*, i32, %struct.msdosfsmount*) #1

declare dso_local i32 @winChkName(%struct.mbnambuf*, i8*, i32, i32, %struct.msdosfsmount*) #1

declare dso_local i32 @winChksum(i64*) #1

declare dso_local i64 @bcmp(i8*, i64*, i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @getushort(i32) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i32, i32, %struct.denode**) #1

declare dso_local %struct.vnode* @DETOV(%struct.denode*) #1

declare dso_local i32 @vn_vget_ino_gen(%struct.vnode*, i32, %struct.deget_dotdot*, i32, %struct.vnode**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @cache_enter(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
