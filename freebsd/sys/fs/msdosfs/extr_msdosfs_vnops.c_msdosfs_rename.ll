; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rename_args = type { %struct.vnode*, %struct.componentname*, %struct.componentname*, %struct.vnode*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32, i8*, i32, i32 }
%struct.vnode = type { i64 }
%struct.denode = type { i32, i32, i64, i64, i64, i64, i32, i32*, i32 }
%struct.msdosfsmount = type { i64, i64, i32, i32 }
%struct.direntry = type { i32, i32 }
%struct.buf = type { i64 }

@EXDEV = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@DE_RENAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"msdosfs_rename: lost to startdir\00", align 1
@ENOTEMPTY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@MODMASK = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"msdosfs_rename: lost from startdir\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"rename: lost dir entry\00", align 1
@MSDOSFSROOT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"msdosfs_rename(): updating .. in root directory?\00", align 1
@NOCRED = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rename_args*)* @msdosfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_rename(%struct.vop_rename_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rename_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca %struct.denode*, align 8
  %11 = alloca %struct.denode*, align 8
  %12 = alloca %struct.denode*, align 8
  %13 = alloca %struct.denode*, align 8
  %14 = alloca [12 x i32], align 16
  %15 = alloca [11 x i32], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.msdosfsmount*, align 8
  %26 = alloca %struct.direntry*, align 8
  %27 = alloca %struct.buf*, align 8
  store %struct.vop_rename_args* %0, %struct.vop_rename_args** %3, align 8
  %28 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %28, i32 0, i32 5
  %30 = load %struct.vnode*, %struct.vnode** %29, align 8
  store %struct.vnode* %30, %struct.vnode** %4, align 8
  %31 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %31, i32 0, i32 0
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  store %struct.vnode* %33, %struct.vnode** %5, align 8
  %34 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %34, i32 0, i32 4
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  store %struct.vnode* %36, %struct.vnode** %6, align 8
  %37 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %37, i32 0, i32 3
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  store %struct.vnode* %39, %struct.vnode** %7, align 8
  %40 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %41 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %40, i32 0, i32 2
  %42 = load %struct.componentname*, %struct.componentname** %41, align 8
  store %struct.componentname* %42, %struct.componentname** %8, align 8
  %43 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %43, i32 0, i32 1
  %45 = load %struct.componentname*, %struct.componentname** %44, align 8
  store %struct.componentname* %45, %struct.componentname** %9, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %46 = load %struct.vnode*, %struct.vnode** %6, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.msdosfsmount* @VFSTOMSDOSFS(i64 %48)
  store %struct.msdosfsmount* %49, %struct.msdosfsmount** %25, align 8
  %50 = load %struct.vnode*, %struct.vnode** %5, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vnode*, %struct.vnode** %4, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %1
  %58 = load %struct.vnode*, %struct.vnode** %7, align 8
  %59 = icmp ne %struct.vnode* %58, null
  br i1 %59, label %60, label %92

60:                                               ; preds = %57
  %61 = load %struct.vnode*, %struct.vnode** %5, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.vnode*, %struct.vnode** %7, align 8
  %65 = getelementptr inbounds %struct.vnode, %struct.vnode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %60, %1
  %69 = load i32, i32* @EXDEV, align 4
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %302, %153, %103, %96, %68
  %71 = load %struct.vnode*, %struct.vnode** %4, align 8
  %72 = load %struct.vnode*, %struct.vnode** %7, align 8
  %73 = icmp eq %struct.vnode* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.vnode*, %struct.vnode** %4, align 8
  %76 = call i32 @vrele(%struct.vnode* %75)
  br label %80

77:                                               ; preds = %70
  %78 = load %struct.vnode*, %struct.vnode** %4, align 8
  %79 = call i32 @vput(%struct.vnode* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.vnode*, %struct.vnode** %7, align 8
  %82 = icmp ne %struct.vnode* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.vnode*, %struct.vnode** %7, align 8
  %85 = call i32 @vput(%struct.vnode* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.vnode*, %struct.vnode** %6, align 8
  %88 = call i32 @vrele(%struct.vnode* %87)
  %89 = load %struct.vnode*, %struct.vnode** %5, align 8
  %90 = call i32 @vrele(%struct.vnode* %89)
  %91 = load i32, i32* %21, align 4
  store i32 %91, i32* %2, align 4
  br label %625

92:                                               ; preds = %60, %57
  %93 = load %struct.vnode*, %struct.vnode** %7, align 8
  %94 = load %struct.vnode*, %struct.vnode** %5, align 8
  %95 = icmp eq %struct.vnode* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %21, align 4
  br label %70

97:                                               ; preds = %92
  %98 = load %struct.vnode*, %struct.vnode** %5, align 8
  %99 = load i32, i32* @LK_EXCLUSIVE, align 4
  %100 = call i32 @vn_lock(%struct.vnode* %98, i32 %99)
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %21, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %70

104:                                              ; preds = %97
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = call %struct.denode* @VTODE(%struct.vnode* %105)
  store %struct.denode* %106, %struct.denode** %12, align 8
  %107 = load %struct.vnode*, %struct.vnode** %5, align 8
  %108 = call %struct.denode* @VTODE(%struct.vnode* %107)
  store %struct.denode* %108, %struct.denode** %10, align 8
  %109 = load %struct.denode*, %struct.denode** %10, align 8
  %110 = getelementptr inbounds %struct.denode, %struct.denode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ATTR_DIRECTORY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %165

115:                                              ; preds = %104
  %116 = load %struct.componentname*, %struct.componentname** %9, align 8
  %117 = getelementptr inbounds %struct.componentname, %struct.componentname* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.componentname*, %struct.componentname** %9, align 8
  %122 = getelementptr inbounds %struct.componentname, %struct.componentname* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 46
  br i1 %127, label %153, label %128

128:                                              ; preds = %120, %115
  %129 = load %struct.denode*, %struct.denode** %12, align 8
  %130 = load %struct.denode*, %struct.denode** %10, align 8
  %131 = icmp eq %struct.denode* %129, %130
  br i1 %131, label %153, label %132

132:                                              ; preds = %128
  %133 = load %struct.componentname*, %struct.componentname** %9, align 8
  %134 = getelementptr inbounds %struct.componentname, %struct.componentname* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ISDOTDOT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %132
  %140 = load %struct.componentname*, %struct.componentname** %8, align 8
  %141 = getelementptr inbounds %struct.componentname, %struct.componentname* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ISDOTDOT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load %struct.denode*, %struct.denode** %10, align 8
  %148 = getelementptr inbounds %struct.denode, %struct.denode* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @DE_RENAME, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146, %139, %132, %128, %120
  %154 = load %struct.vnode*, %struct.vnode** %5, align 8
  %155 = call i32 @VOP_UNLOCK(%struct.vnode* %154, i32 0)
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* %21, align 4
  br label %70

157:                                              ; preds = %146
  %158 = load i32, i32* @DE_RENAME, align 4
  %159 = load %struct.denode*, %struct.denode** %10, align 8
  %160 = getelementptr inbounds %struct.denode, %struct.denode* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %19, align 4
  br label %165

165:                                              ; preds = %157, %104
  %166 = load %struct.vnode*, %struct.vnode** %4, align 8
  %167 = call %struct.denode* @VTODE(%struct.vnode* %166)
  store %struct.denode* %167, %struct.denode** %12, align 8
  %168 = load %struct.vnode*, %struct.vnode** %7, align 8
  %169 = icmp ne %struct.vnode* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.vnode*, %struct.vnode** %7, align 8
  %172 = call %struct.denode* @VTODE(%struct.vnode* %171)
  br label %174

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi %struct.denode* [ %172, %170 ], [ null, %173 ]
  store %struct.denode* %175, %struct.denode** %11, align 8
  %176 = load %struct.denode*, %struct.denode** %12, align 8
  %177 = getelementptr inbounds %struct.denode, %struct.denode* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %17, align 8
  %179 = load %struct.denode*, %struct.denode** %12, align 8
  %180 = getelementptr inbounds %struct.denode, %struct.denode* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %18, align 4
  %182 = load %struct.vnode*, %struct.vnode** %5, align 8
  %183 = load i32, i32* @VWRITE, align 4
  %184 = load %struct.componentname*, %struct.componentname** %8, align 8
  %185 = getelementptr inbounds %struct.componentname, %struct.componentname* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.componentname*, %struct.componentname** %8, align 8
  %188 = getelementptr inbounds %struct.componentname, %struct.componentname* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @VOP_ACCESS(%struct.vnode* %182, i32 %183, i32 %186, i32 %189)
  store i32 %190, i32* %21, align 4
  %191 = load %struct.vnode*, %struct.vnode** %5, align 8
  %192 = call i32 @VOP_UNLOCK(%struct.vnode* %191, i32 0)
  %193 = load %struct.vnode*, %struct.vnode** %6, align 8
  %194 = call %struct.denode* @VTODE(%struct.vnode* %193)
  %195 = getelementptr inbounds %struct.denode, %struct.denode* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.vnode*, %struct.vnode** %4, align 8
  %198 = call %struct.denode* @VTODE(%struct.vnode* %197)
  %199 = getelementptr inbounds %struct.denode, %struct.denode* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %196, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %174
  store i32 1, i32* %20, align 4
  br label %203

203:                                              ; preds = %202, %174
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %254

206:                                              ; preds = %203
  %207 = load i32, i32* %20, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %254

209:                                              ; preds = %206
  %210 = load i32, i32* %21, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %604

213:                                              ; preds = %209
  %214 = load %struct.denode*, %struct.denode** %11, align 8
  %215 = icmp ne %struct.denode* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.vnode*, %struct.vnode** %7, align 8
  %218 = call i32 @vput(%struct.vnode* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.denode*, %struct.denode** %10, align 8
  %221 = load %struct.denode*, %struct.denode** %12, align 8
  %222 = call i32 @doscheckpath(%struct.denode* %220, %struct.denode* %221)
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* %21, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  br label %613

226:                                              ; preds = %219
  %227 = load %struct.componentname*, %struct.componentname** %8, align 8
  %228 = getelementptr inbounds %struct.componentname, %struct.componentname* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @SAVESTART, align 4
  %231 = and i32 %229, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %226
  %236 = load %struct.vnode*, %struct.vnode** %4, align 8
  %237 = load %struct.componentname*, %struct.componentname** %8, align 8
  %238 = call i64 @relookup(%struct.vnode* %236, %struct.vnode** %7, %struct.componentname* %237)
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %21, align 4
  %240 = load i32, i32* %21, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %613

243:                                              ; preds = %235
  %244 = load %struct.vnode*, %struct.vnode** %4, align 8
  %245 = call %struct.denode* @VTODE(%struct.vnode* %244)
  store %struct.denode* %245, %struct.denode** %12, align 8
  %246 = load %struct.vnode*, %struct.vnode** %7, align 8
  %247 = icmp ne %struct.vnode* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.vnode*, %struct.vnode** %7, align 8
  %250 = call %struct.denode* @VTODE(%struct.vnode* %249)
  br label %252

251:                                              ; preds = %243
  br label %252

252:                                              ; preds = %251, %248
  %253 = phi %struct.denode* [ %250, %248 ], [ null, %251 ]
  store %struct.denode* %253, %struct.denode** %11, align 8
  br label %254

254:                                              ; preds = %252, %206, %203
  %255 = load %struct.denode*, %struct.denode** %11, align 8
  %256 = icmp ne %struct.denode* %255, null
  br i1 %256, label %257, label %294

257:                                              ; preds = %254
  %258 = load %struct.denode*, %struct.denode** %11, align 8
  %259 = getelementptr inbounds %struct.denode, %struct.denode* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @ATTR_DIRECTORY, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %257
  %265 = load %struct.denode*, %struct.denode** %11, align 8
  %266 = call i32 @dosdirempty(%struct.denode* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %269, i32* %21, align 4
  br label %604

270:                                              ; preds = %264
  %271 = load i32, i32* %19, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* @ENOTDIR, align 4
  store i32 %274, i32* %21, align 4
  br label %604

275:                                              ; preds = %270
  %276 = load %struct.vnode*, %struct.vnode** %4, align 8
  %277 = call i32 @cache_purge(%struct.vnode* %276)
  br label %284

278:                                              ; preds = %257
  %279 = load i32, i32* %19, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* @EISDIR, align 4
  store i32 %282, i32* %21, align 4
  br label %604

283:                                              ; preds = %278
  br label %284

284:                                              ; preds = %283, %275
  %285 = load %struct.denode*, %struct.denode** %12, align 8
  %286 = load %struct.denode*, %struct.denode** %11, align 8
  %287 = call i32 @removede(%struct.denode* %285, %struct.denode* %286)
  store i32 %287, i32* %21, align 4
  %288 = load i32, i32* %21, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  br label %604

291:                                              ; preds = %284
  %292 = load %struct.vnode*, %struct.vnode** %7, align 8
  %293 = call i32 @vput(%struct.vnode* %292)
  store %struct.denode* null, %struct.denode** %11, align 8
  br label %294

294:                                              ; preds = %291, %254
  %295 = load %struct.vnode*, %struct.vnode** %4, align 8
  %296 = call %struct.denode* @VTODE(%struct.vnode* %295)
  %297 = load %struct.componentname*, %struct.componentname** %8, align 8
  %298 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %299 = call i32 @uniqdosname(%struct.denode* %296, %struct.componentname* %297, i32* %298)
  store i32 %299, i32* %21, align 4
  %300 = load i32, i32* %21, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  br label %70

303:                                              ; preds = %294
  %304 = load i32, i32* @MODMASK, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.componentname*, %struct.componentname** %9, align 8
  %307 = getelementptr inbounds %struct.componentname, %struct.componentname* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = and i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load i32, i32* @LOCKPARENT, align 4
  %311 = load i32, i32* @LOCKLEAF, align 4
  %312 = or i32 %310, %311
  %313 = load %struct.componentname*, %struct.componentname** %9, align 8
  %314 = getelementptr inbounds %struct.componentname, %struct.componentname* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = load %struct.componentname*, %struct.componentname** %9, align 8
  %318 = getelementptr inbounds %struct.componentname, %struct.componentname* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @SAVESTART, align 4
  %321 = and i32 %319, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %303
  %324 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %303
  %326 = load i32, i32* %20, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load %struct.vnode*, %struct.vnode** %4, align 8
  %330 = call i32 @VOP_UNLOCK(%struct.vnode* %329, i32 0)
  br label %331

331:                                              ; preds = %328, %325
  %332 = load %struct.vnode*, %struct.vnode** %6, align 8
  %333 = load %struct.componentname*, %struct.componentname** %9, align 8
  %334 = call i64 @relookup(%struct.vnode* %332, %struct.vnode** %5, %struct.componentname* %333)
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %331
  %337 = load %struct.vnode*, %struct.vnode** %6, align 8
  %338 = call i32 @vrele(%struct.vnode* %337)
  br label %339

339:                                              ; preds = %336, %331
  %340 = load %struct.vnode*, %struct.vnode** %5, align 8
  %341 = icmp eq %struct.vnode* %340, null
  br i1 %341, label %342, label %360

342:                                              ; preds = %339
  %343 = load i32, i32* %19, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %347

347:                                              ; preds = %345, %342
  %348 = load i32, i32* %20, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load %struct.vnode*, %struct.vnode** %4, align 8
  %352 = call i32 @VOP_UNLOCK(%struct.vnode* %351, i32 0)
  br label %353

353:                                              ; preds = %350, %347
  %354 = load %struct.vnode*, %struct.vnode** %4, align 8
  %355 = call i32 @vrele(%struct.vnode* %354)
  %356 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %357 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %356, i32 0, i32 0
  %358 = load %struct.vnode*, %struct.vnode** %357, align 8
  %359 = call i32 @vrele(%struct.vnode* %358)
  store i32 0, i32* %2, align 4
  br label %625

360:                                              ; preds = %339
  %361 = load %struct.vnode*, %struct.vnode** %5, align 8
  %362 = call %struct.denode* @VTODE(%struct.vnode* %361)
  store %struct.denode* %362, %struct.denode** %11, align 8
  %363 = load %struct.vnode*, %struct.vnode** %6, align 8
  %364 = call %struct.denode* @VTODE(%struct.vnode* %363)
  store %struct.denode* %364, %struct.denode** %13, align 8
  %365 = load %struct.denode*, %struct.denode** %13, align 8
  %366 = getelementptr inbounds %struct.denode, %struct.denode* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %16, align 8
  %368 = load %struct.denode*, %struct.denode** %11, align 8
  %369 = load %struct.denode*, %struct.denode** %10, align 8
  %370 = icmp ne %struct.denode* %368, %369
  br i1 %370, label %371, label %389

371:                                              ; preds = %360
  %372 = load i32, i32* %19, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  %375 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %376

376:                                              ; preds = %374, %371
  %377 = load %struct.vnode*, %struct.vnode** %5, align 8
  %378 = call i32 @VOP_UNLOCK(%struct.vnode* %377, i32 0)
  %379 = load i32, i32* %20, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %376
  %382 = load %struct.vnode*, %struct.vnode** %6, align 8
  %383 = call i32 @VOP_UNLOCK(%struct.vnode* %382, i32 0)
  br label %384

384:                                              ; preds = %381, %376
  %385 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %386 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %385, i32 0, i32 0
  %387 = load %struct.vnode*, %struct.vnode** %386, align 8
  %388 = call i32 @vrele(%struct.vnode* %387)
  store %struct.denode* null, %struct.denode** %11, align 8
  br label %513

389:                                              ; preds = %360
  %390 = load %struct.vnode*, %struct.vnode** %5, align 8
  %391 = call i32 @vrele(%struct.vnode* %390)
  store %struct.denode* null, %struct.denode** %11, align 8
  %392 = getelementptr inbounds [11 x i32], [11 x i32]* %15, i64 0, i64 0
  %393 = load %struct.denode*, %struct.denode** %10, align 8
  %394 = getelementptr inbounds %struct.denode, %struct.denode* %393, i32 0, i32 7
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @memcpy(i32* %392, i32* %395, i32 11)
  %397 = load %struct.denode*, %struct.denode** %10, align 8
  %398 = getelementptr inbounds %struct.denode, %struct.denode* %397, i32 0, i32 7
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %401 = call i32 @memcpy(i32* %399, i32* %400, i32 11)
  %402 = load i64, i64* %17, align 8
  %403 = load %struct.denode*, %struct.denode** %12, align 8
  %404 = getelementptr inbounds %struct.denode, %struct.denode* %403, i32 0, i32 2
  store i64 %402, i64* %404, align 8
  %405 = load i32, i32* %18, align 4
  %406 = load %struct.denode*, %struct.denode** %12, align 8
  %407 = getelementptr inbounds %struct.denode, %struct.denode* %406, i32 0, i32 8
  store i32 %405, i32* %407, align 8
  %408 = load %struct.denode*, %struct.denode** %10, align 8
  %409 = load %struct.denode*, %struct.denode** %12, align 8
  %410 = load %struct.componentname*, %struct.componentname** %8, align 8
  %411 = call i32 @createde(%struct.denode* %408, %struct.denode* %409, %struct.denode** null, %struct.componentname* %410)
  store i32 %411, i32* %21, align 4
  %412 = load i32, i32* %21, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %428

414:                                              ; preds = %389
  %415 = load %struct.denode*, %struct.denode** %10, align 8
  %416 = getelementptr inbounds %struct.denode, %struct.denode* %415, i32 0, i32 7
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds [11 x i32], [11 x i32]* %15, i64 0, i64 0
  %419 = call i32 @memcpy(i32* %417, i32* %418, i32 11)
  %420 = load i32, i32* %20, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %414
  %423 = load %struct.vnode*, %struct.vnode** %6, align 8
  %424 = call i32 @VOP_UNLOCK(%struct.vnode* %423, i32 0)
  br label %425

425:                                              ; preds = %422, %414
  %426 = load %struct.vnode*, %struct.vnode** %5, align 8
  %427 = call i32 @VOP_UNLOCK(%struct.vnode* %426, i32 0)
  br label %604

428:                                              ; preds = %389
  %429 = load %struct.denode*, %struct.denode** %10, align 8
  %430 = getelementptr inbounds %struct.denode, %struct.denode* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @ATTR_DIRECTORY, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %441

435:                                              ; preds = %428
  %436 = load %struct.denode*, %struct.denode** %10, align 8
  %437 = getelementptr inbounds %struct.denode, %struct.denode* %436, i32 0, i32 7
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds [11 x i32], [11 x i32]* %15, i64 0, i64 0
  %440 = call i32 @memcpy(i32* %438, i32* %439, i32 11)
  br label %441

441:                                              ; preds = %435, %428
  %442 = load %struct.denode*, %struct.denode** %10, align 8
  %443 = getelementptr inbounds %struct.denode, %struct.denode* %442, i32 0, i32 6
  %444 = load i32, i32* %443, align 8
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %443, align 8
  %446 = load i64, i64* %16, align 8
  %447 = load %struct.denode*, %struct.denode** %13, align 8
  %448 = getelementptr inbounds %struct.denode, %struct.denode* %447, i32 0, i32 2
  store i64 %446, i64* %448, align 8
  %449 = load %struct.denode*, %struct.denode** %13, align 8
  %450 = load %struct.denode*, %struct.denode** %10, align 8
  %451 = call i32 @removede(%struct.denode* %449, %struct.denode* %450)
  store i32 %451, i32* %21, align 4
  %452 = load i32, i32* %21, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %463

454:                                              ; preds = %441
  %455 = load i32, i32* %20, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load %struct.vnode*, %struct.vnode** %6, align 8
  %459 = call i32 @VOP_UNLOCK(%struct.vnode* %458, i32 0)
  br label %460

460:                                              ; preds = %457, %454
  %461 = load %struct.vnode*, %struct.vnode** %5, align 8
  %462 = call i32 @VOP_UNLOCK(%struct.vnode* %461, i32 0)
  br label %604

463:                                              ; preds = %441
  %464 = load i32, i32* %19, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %504, label %466

466:                                              ; preds = %463
  %467 = load %struct.denode*, %struct.denode** %12, align 8
  %468 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %469 = load i64, i64* %17, align 8
  %470 = call i32 @de_cluster(%struct.msdosfsmount* %468, i64 %469)
  %471 = load %struct.denode*, %struct.denode** %10, align 8
  %472 = getelementptr inbounds %struct.denode, %struct.denode* %471, i32 0, i32 4
  %473 = call i32 @pcbmap(%struct.denode* %467, i32 %470, i32 0, i64* %472, i32 0)
  store i32 %473, i32* %21, align 4
  %474 = load i32, i32* %21, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %466
  %477 = load i32, i32* %20, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %476
  %480 = load %struct.vnode*, %struct.vnode** %6, align 8
  %481 = call i32 @VOP_UNLOCK(%struct.vnode* %480, i32 0)
  br label %482

482:                                              ; preds = %479, %476
  %483 = load %struct.vnode*, %struct.vnode** %5, align 8
  %484 = call i32 @VOP_UNLOCK(%struct.vnode* %483, i32 0)
  br label %604

485:                                              ; preds = %466
  %486 = load %struct.denode*, %struct.denode** %10, align 8
  %487 = getelementptr inbounds %struct.denode, %struct.denode* %486, i32 0, i32 4
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @MSDOSFSROOT, align 8
  %490 = icmp eq i64 %488, %489
  br i1 %490, label %491, label %495

491:                                              ; preds = %485
  %492 = load i64, i64* %17, align 8
  %493 = load %struct.denode*, %struct.denode** %10, align 8
  %494 = getelementptr inbounds %struct.denode, %struct.denode* %493, i32 0, i32 5
  store i64 %492, i64* %494, align 8
  br label %503

495:                                              ; preds = %485
  %496 = load i64, i64* %17, align 8
  %497 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %498 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = and i64 %496, %499
  %501 = load %struct.denode*, %struct.denode** %10, align 8
  %502 = getelementptr inbounds %struct.denode, %struct.denode* %501, i32 0, i32 5
  store i64 %500, i64* %502, align 8
  br label %503

503:                                              ; preds = %495, %491
  br label %504

504:                                              ; preds = %503, %463
  %505 = load %struct.denode*, %struct.denode** %10, align 8
  %506 = call i32 @reinsert(%struct.denode* %505)
  %507 = load i32, i32* %20, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %504
  %510 = load %struct.vnode*, %struct.vnode** %6, align 8
  %511 = call i32 @VOP_UNLOCK(%struct.vnode* %510, i32 0)
  br label %512

512:                                              ; preds = %509, %504
  br label %513

513:                                              ; preds = %512, %384
  %514 = load i32, i32* %19, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %599

516:                                              ; preds = %513
  %517 = load i32, i32* %20, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %599

519:                                              ; preds = %516
  %520 = load %struct.denode*, %struct.denode** %10, align 8
  %521 = getelementptr inbounds %struct.denode, %struct.denode* %520, i32 0, i32 3
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %22, align 8
  %523 = load i64, i64* %22, align 8
  %524 = load i64, i64* @MSDOSFSROOT, align 8
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %526, label %528

526:                                              ; preds = %519
  %527 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %532

528:                                              ; preds = %519
  %529 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %530 = load i64, i64* %22, align 8
  %531 = call i32 @cntobn(%struct.msdosfsmount* %529, i64 %530)
  store i32 %531, i32* %24, align 4
  br label %532

532:                                              ; preds = %528, %526
  %533 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %534 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* %24, align 4
  %537 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %538 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @NOCRED, align 4
  %541 = call i32 @bread(i32 %535, i32 %536, i32 %539, i32 %540, %struct.buf** %27)
  store i32 %541, i32* %21, align 4
  %542 = load i32, i32* %21, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %547

544:                                              ; preds = %532
  %545 = load %struct.vnode*, %struct.vnode** %5, align 8
  %546 = call i32 @VOP_UNLOCK(%struct.vnode* %545, i32 0)
  br label %604

547:                                              ; preds = %532
  %548 = load %struct.buf*, %struct.buf** %27, align 8
  %549 = getelementptr inbounds %struct.buf, %struct.buf* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = inttoptr i64 %550 to %struct.direntry*
  %552 = getelementptr inbounds %struct.direntry, %struct.direntry* %551, i64 1
  store %struct.direntry* %552, %struct.direntry** %26, align 8
  %553 = load %struct.denode*, %struct.denode** %12, align 8
  %554 = getelementptr inbounds %struct.denode, %struct.denode* %553, i32 0, i32 3
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %23, align 8
  %556 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %557 = call i64 @FAT32(%struct.msdosfsmount* %556)
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %567

559:                                              ; preds = %547
  %560 = load i64, i64* %23, align 8
  %561 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %562 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %561, i32 0, i32 1
  %563 = load i64, i64* %562, align 8
  %564 = icmp eq i64 %560, %563
  br i1 %564, label %565, label %567

565:                                              ; preds = %559
  %566 = load i64, i64* @MSDOSFSROOT, align 8
  store i64 %566, i64* %23, align 8
  br label %567

567:                                              ; preds = %565, %559, %547
  %568 = load %struct.direntry*, %struct.direntry** %26, align 8
  %569 = getelementptr inbounds %struct.direntry, %struct.direntry* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load i64, i64* %23, align 8
  %572 = call i32 @putushort(i32 %570, i64 %571)
  %573 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  %574 = call i64 @FAT32(%struct.msdosfsmount* %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %583

576:                                              ; preds = %567
  %577 = load %struct.direntry*, %struct.direntry** %26, align 8
  %578 = getelementptr inbounds %struct.direntry, %struct.direntry* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = load i64, i64* %23, align 8
  %581 = ashr i64 %580, 16
  %582 = call i32 @putushort(i32 %579, i64 %581)
  br label %583

583:                                              ; preds = %576, %567
  %584 = load %struct.vnode*, %struct.vnode** %5, align 8
  %585 = call i64 @DOINGASYNC(%struct.vnode* %584)
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %590

587:                                              ; preds = %583
  %588 = load %struct.buf*, %struct.buf** %27, align 8
  %589 = call i32 @bdwrite(%struct.buf* %588)
  br label %598

590:                                              ; preds = %583
  %591 = load %struct.buf*, %struct.buf** %27, align 8
  %592 = call i32 @bwrite(%struct.buf* %591)
  store i32 %592, i32* %21, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %590
  %595 = load %struct.vnode*, %struct.vnode** %5, align 8
  %596 = call i32 @VOP_UNLOCK(%struct.vnode* %595, i32 0)
  br label %604

597:                                              ; preds = %590
  br label %598

598:                                              ; preds = %597, %587
  br label %599

599:                                              ; preds = %598, %516, %513
  %600 = load %struct.vnode*, %struct.vnode** %5, align 8
  %601 = call i32 @cache_purge(%struct.vnode* %600)
  %602 = load %struct.vnode*, %struct.vnode** %5, align 8
  %603 = call i32 @VOP_UNLOCK(%struct.vnode* %602, i32 0)
  br label %604

604:                                              ; preds = %599, %594, %544, %482, %460, %425, %290, %281, %273, %268, %212
  %605 = load %struct.denode*, %struct.denode** %11, align 8
  %606 = icmp ne %struct.denode* %605, null
  br i1 %606, label %607, label %610

607:                                              ; preds = %604
  %608 = load %struct.vnode*, %struct.vnode** %7, align 8
  %609 = call i32 @vput(%struct.vnode* %608)
  br label %610

610:                                              ; preds = %607, %604
  %611 = load %struct.vnode*, %struct.vnode** %4, align 8
  %612 = call i32 @vput(%struct.vnode* %611)
  br label %613

613:                                              ; preds = %610, %242, %225
  %614 = load i32, i32* @DE_RENAME, align 4
  %615 = xor i32 %614, -1
  %616 = load %struct.denode*, %struct.denode** %10, align 8
  %617 = getelementptr inbounds %struct.denode, %struct.denode* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 4
  %619 = and i32 %618, %615
  store i32 %619, i32* %617, align 4
  %620 = load %struct.vnode*, %struct.vnode** %6, align 8
  %621 = call i32 @vrele(%struct.vnode* %620)
  %622 = load %struct.vnode*, %struct.vnode** %5, align 8
  %623 = call i32 @vrele(%struct.vnode* %622)
  %624 = load i32, i32* %21, align 4
  store i32 %624, i32* %2, align 4
  br label %625

625:                                              ; preds = %613, %353, %86
  %626 = load i32, i32* %2, align 4
  ret i32 %626
}

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(i64) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @doscheckpath(%struct.denode*, %struct.denode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @relookup(%struct.vnode*, %struct.vnode**, %struct.componentname*) #1

declare dso_local i32 @dosdirempty(%struct.denode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @removede(%struct.denode*, %struct.denode*) #1

declare dso_local i32 @uniqdosname(%struct.denode*, %struct.componentname*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @createde(%struct.denode*, %struct.denode*, %struct.denode**, %struct.componentname*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32, i64*, i32) #1

declare dso_local i32 @de_cluster(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @reinsert(%struct.denode*) #1

declare dso_local i32 @cntobn(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @putushort(i32, i64) #1

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
