; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.vnode*, %struct.vnode*, %struct.TYPE_3__, %struct.vnode* }
%struct.TYPE_3__ = type { i32, i8* }
%struct.vnode = type { i64, i64, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@NFSDEV_MAXMIRRORS = common dso_local global i32 0, align 4
@PNFS_FILENAME_LEN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ND_NFSV2 = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ND_NFSV4 = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"nfsvno_rename: pnfsremovesetup dsdvp=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"nfsvno_rename: pnfsremove\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_rename(%struct.nameidata* %0, %struct.nameidata* %1, i32 %2, i32 %3, %struct.ucred* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %7, align 8
  store %struct.nameidata* %1, %struct.nameidata** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %22 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca %struct.vnode*, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %26 = load i32, i32* @PNFS_FILENAME_LEN, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %30 = getelementptr inbounds %struct.vnode*, %struct.vnode** %25, i64 0
  store %struct.vnode* null, %struct.vnode** %30, align 16
  %31 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 3
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  store %struct.vnode* %33, %struct.vnode** %13, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %6
  %37 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %38 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %37, i32 0, i32 1
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  %40 = call i32 @vrele(%struct.vnode* %39)
  %41 = load %struct.vnode*, %struct.vnode** %13, align 8
  %42 = call i32 @vrele(%struct.vnode* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %18, align 4
  br label %339

44:                                               ; preds = %6
  %45 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %45, i32 0, i32 1
  %47 = load %struct.vnode*, %struct.vnode** %46, align 8
  store %struct.vnode* %47, %struct.vnode** %15, align 8
  %48 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %48, i32 0, i32 3
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  store %struct.vnode* %50, %struct.vnode** %14, align 8
  %51 = load %struct.vnode*, %struct.vnode** %14, align 8
  %52 = icmp ne %struct.vnode* %51, null
  br i1 %52, label %53, label %164

53:                                               ; preds = %44
  %54 = load %struct.vnode*, %struct.vnode** %13, align 8
  %55 = getelementptr inbounds %struct.vnode, %struct.vnode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VDIR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.vnode*, %struct.vnode** %14, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VDIR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ND_NFSV2, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @EISDIR, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @EEXIST, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %18, align 4
  br label %272

76:                                               ; preds = %59, %53
  %77 = load %struct.vnode*, %struct.vnode** %13, align 8
  %78 = getelementptr inbounds %struct.vnode, %struct.vnode* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VDIR, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load %struct.vnode*, %struct.vnode** %14, align 8
  %84 = getelementptr inbounds %struct.vnode, %struct.vnode* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VDIR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ND_NFSV2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @ENOTDIR, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @EEXIST, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %18, align 4
  br label %272

99:                                               ; preds = %82, %76
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.vnode*, %struct.vnode** %14, align 8
  %102 = getelementptr inbounds %struct.vnode, %struct.vnode* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VDIR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.vnode*, %struct.vnode** %14, align 8
  %108 = getelementptr inbounds %struct.vnode, %struct.vnode* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @ND_NFSV2, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOTEMPTY, align 4
  br label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @EXDEV, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  store i32 %121, i32* %18, align 4
  br label %272

122:                                              ; preds = %106, %100
  %123 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %124 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %130 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 46
  br i1 %136, label %161, label %137

137:                                              ; preds = %128, %122
  %138 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %139 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %163

143:                                              ; preds = %137
  %144 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %145 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 46
  br i1 %151, label %152, label %163

152:                                              ; preds = %143
  %153 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %154 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 46
  br i1 %160, label %161, label %163

161:                                              ; preds = %152, %128
  %162 = load i32, i32* @EINVAL, align 4
  store i32 %162, i32* %18, align 4
  br label %272

163:                                              ; preds = %152, %143, %137
  br label %164

164:                                              ; preds = %163, %44
  %165 = load %struct.vnode*, %struct.vnode** %13, align 8
  %166 = getelementptr inbounds %struct.vnode, %struct.vnode* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @VDIR, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = load %struct.vnode*, %struct.vnode** %13, align 8
  %172 = getelementptr inbounds %struct.vnode, %struct.vnode* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @ND_NFSV2, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i32, i32* @ENOTEMPTY, align 4
  br label %184

182:                                              ; preds = %175
  %183 = load i32, i32* @EXDEV, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  store i32 %185, i32* %18, align 4
  br label %272

186:                                              ; preds = %170, %164
  %187 = load %struct.vnode*, %struct.vnode** %13, align 8
  %188 = getelementptr inbounds %struct.vnode, %struct.vnode* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.vnode*, %struct.vnode** %15, align 8
  %191 = getelementptr inbounds %struct.vnode, %struct.vnode* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %189, %192
  br i1 %193, label %194, label %205

194:                                              ; preds = %186
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @ND_NFSV2, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* @ENOTEMPTY, align 4
  br label %203

201:                                              ; preds = %194
  %202 = load i32, i32* @EXDEV, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  store i32 %204, i32* %18, align 4
  br label %272

205:                                              ; preds = %186
  %206 = load %struct.vnode*, %struct.vnode** %13, align 8
  %207 = load %struct.vnode*, %struct.vnode** %15, align 8
  %208 = icmp eq %struct.vnode* %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @ND_NFSV2, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @ENOTEMPTY, align 4
  br label %218

216:                                              ; preds = %209
  %217 = load i32, i32* @EINVAL, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  store i32 %219, i32* %18, align 4
  br label %272

220:                                              ; preds = %205
  %221 = load %struct.vnode*, %struct.vnode** %13, align 8
  %222 = load %struct.vnode*, %struct.vnode** %14, align 8
  %223 = icmp eq %struct.vnode* %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 -1, i32* %18, align 4
  br label %272

225:                                              ; preds = %220
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @ND_NFSV4, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %254

230:                                              ; preds = %225
  %231 = load %struct.vnode*, %struct.vnode** %13, align 8
  %232 = load i32, i32* @LK_EXCLUSIVE, align 4
  %233 = call i64 @NFSVOPLOCK(%struct.vnode* %231, i32 %232)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %230
  %236 = load %struct.vnode*, %struct.vnode** %13, align 8
  %237 = load %struct.thread*, %struct.thread** %12, align 8
  %238 = call i32 @nfsrv_checkremove(%struct.vnode* %236, i32 0, %struct.thread* %237)
  store i32 %238, i32* %18, align 4
  %239 = load %struct.vnode*, %struct.vnode** %13, align 8
  %240 = call i32 @NFSVOPUNLOCK(%struct.vnode* %239, i32 0)
  br label %243

241:                                              ; preds = %230
  %242 = load i32, i32* @EPERM, align 4
  store i32 %242, i32* %18, align 4
  br label %243

243:                                              ; preds = %241, %235
  %244 = load %struct.vnode*, %struct.vnode** %14, align 8
  %245 = icmp ne %struct.vnode* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = load %struct.vnode*, %struct.vnode** %14, align 8
  %251 = load %struct.thread*, %struct.thread** %12, align 8
  %252 = call i32 @nfsrv_checkremove(%struct.vnode* %250, i32 1, %struct.thread* %251)
  store i32 %252, i32* %18, align 4
  br label %253

253:                                              ; preds = %249, %246, %243
  br label %258

254:                                              ; preds = %225
  %255 = load %struct.vnode*, %struct.vnode** %13, align 8
  %256 = load %struct.thread*, %struct.thread** %12, align 8
  %257 = call i32 @nfsd_recalldelegation(%struct.vnode* %255, %struct.thread* %256)
  br label %258

258:                                              ; preds = %254, %253
  %259 = load i32, i32* %18, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load %struct.vnode*, %struct.vnode** %14, align 8
  %263 = icmp ne %struct.vnode* %262, null
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.vnode*, %struct.vnode** %14, align 8
  %266 = load %struct.thread*, %struct.thread** %12, align 8
  %267 = call i32 @nfsrv_pnfsremovesetup(%struct.vnode* %265, %struct.thread* %266, %struct.vnode** %25, i32* %19, i8* %29, i32* %21)
  %268 = getelementptr inbounds %struct.vnode*, %struct.vnode** %25, i64 0
  %269 = load %struct.vnode*, %struct.vnode** %268, align 16
  %270 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.vnode* %269)
  br label %271

271:                                              ; preds = %264, %261, %258
  br label %272

272:                                              ; preds = %271, %224, %218, %203, %184, %161, %120, %97, %74
  %273 = load i32, i32* %18, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %293, label %275

275:                                              ; preds = %272
  %276 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %277 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %276, i32 0, i32 1
  %278 = load %struct.vnode*, %struct.vnode** %277, align 8
  %279 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %280 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %279, i32 0, i32 3
  %281 = load %struct.vnode*, %struct.vnode** %280, align 8
  %282 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %283 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %282, i32 0, i32 2
  %284 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %285 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %284, i32 0, i32 1
  %286 = load %struct.vnode*, %struct.vnode** %285, align 8
  %287 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %288 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %287, i32 0, i32 3
  %289 = load %struct.vnode*, %struct.vnode** %288, align 8
  %290 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %291 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %290, i32 0, i32 2
  %292 = call i32 @VOP_RENAME(%struct.vnode* %278, %struct.vnode* %281, %struct.TYPE_3__* %283, %struct.vnode* %286, %struct.vnode* %289, %struct.TYPE_3__* %291)
  store i32 %292, i32* %18, align 4
  br label %320

293:                                              ; preds = %272
  %294 = load %struct.vnode*, %struct.vnode** %15, align 8
  %295 = load %struct.vnode*, %struct.vnode** %14, align 8
  %296 = icmp eq %struct.vnode* %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load %struct.vnode*, %struct.vnode** %15, align 8
  %299 = call i32 @vrele(%struct.vnode* %298)
  br label %303

300:                                              ; preds = %293
  %301 = load %struct.vnode*, %struct.vnode** %15, align 8
  %302 = call i32 @vput(%struct.vnode* %301)
  br label %303

303:                                              ; preds = %300, %297
  %304 = load %struct.vnode*, %struct.vnode** %14, align 8
  %305 = icmp ne %struct.vnode* %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load %struct.vnode*, %struct.vnode** %14, align 8
  %308 = call i32 @vput(%struct.vnode* %307)
  br label %309

309:                                              ; preds = %306, %303
  %310 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %311 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %310, i32 0, i32 1
  %312 = load %struct.vnode*, %struct.vnode** %311, align 8
  %313 = call i32 @vrele(%struct.vnode* %312)
  %314 = load %struct.vnode*, %struct.vnode** %13, align 8
  %315 = call i32 @vrele(%struct.vnode* %314)
  %316 = load i32, i32* %18, align 4
  %317 = icmp eq i32 %316, -1
  br i1 %317, label %318, label %319

318:                                              ; preds = %309
  store i32 0, i32* %18, align 4
  br label %319

319:                                              ; preds = %318, %309
  br label %320

320:                                              ; preds = %319, %275
  %321 = load i32, i32* %18, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.vnode*, %struct.vnode** %25, i64 0
  %325 = load %struct.vnode*, %struct.vnode** %324, align 16
  %326 = icmp ne %struct.vnode* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %323
  %328 = load i32, i32* %19, align 4
  %329 = load %struct.thread*, %struct.thread** %12, align 8
  %330 = call i32 @nfsrv_pnfsremove(%struct.vnode** %25, i32 %328, i8* %29, i32* %21, %struct.thread* %329)
  %331 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %332

332:                                              ; preds = %327, %323, %320
  %333 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %334 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %333, i32 0, i32 0
  %335 = load %struct.vnode*, %struct.vnode** %334, align 8
  %336 = call i32 @vrele(%struct.vnode* %335)
  %337 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %338 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %337)
  br label %339

339:                                              ; preds = %332, %36
  %340 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %341 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %340, i32 0, i32 0
  %342 = load %struct.vnode*, %struct.vnode** %341, align 8
  %343 = call i32 @vrele(%struct.vnode* %342)
  %344 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %345 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %344)
  %346 = load i32, i32* %18, align 4
  %347 = call i32 @NFSEXITCODE(i32 %346)
  %348 = load i32, i32* %18, align 4
  %349 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %349)
  ret i32 %348
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vrele(%struct.vnode*) #2

declare dso_local i64 @NFSVOPLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @nfsrv_checkremove(%struct.vnode*, i32, %struct.thread*) #2

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @nfsd_recalldelegation(%struct.vnode*, %struct.thread*) #2

declare dso_local i32 @nfsrv_pnfsremovesetup(%struct.vnode*, %struct.thread*, %struct.vnode**, i32*, i8*, i32*) #2

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #2

declare dso_local i32 @VOP_RENAME(%struct.vnode*, %struct.vnode*, %struct.TYPE_3__*, %struct.vnode*, %struct.vnode*, %struct.TYPE_3__*) #2

declare dso_local i32 @vput(%struct.vnode*) #2

declare dso_local i32 @nfsrv_pnfsremove(%struct.vnode**, i32, i8*, i32*, %struct.thread*) #2

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #2

declare dso_local i32 @NFSEXITCODE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
