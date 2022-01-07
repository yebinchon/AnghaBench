; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_doiods.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_doiods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.ucred = type { i32 }
%struct.nfsnode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfscllayout = type { i32, i64 }
%struct.nfscldevinfo = type { i32 }
%struct.nfsclflayout = type { i64, i64, i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.mbuf = type { i32 }
%struct.nfsclwritedsdorpc = type { i64, i64, i32, i32 }

@nfscl_enablecallb = common dso_local global i64 0, align 8
@nfs_numnfscbd = common dso_local global i64 0, align 8
@NNOLAYOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSWRITE = common dso_local global i32 0, align 4
@NWRITEOPENED = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_RW = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_READ = common dso_local global i32 0, align 4
@NFSLY_FLEXFILE = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSREAD = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NFSFL_FLEXFILE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"clrpcio\00", align 1
@NFSLY_WRITTEN = common dso_local global i32 0, align 4
@NFSERR_OPENMODE = common dso_local global i32 0, align 4
@NFSSTA_OPENMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_doiods(i32 %0, %struct.uio* %1, i32* %2, i32* %3, i32 %4, i32 %5, %struct.ucred* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uio*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ucred*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.nfsnode*, align 8
  %19 = alloca %struct.nfsmount*, align 8
  %20 = alloca %struct.nfscllayout*, align 8
  %21 = alloca %struct.nfscldevinfo*, align 8
  %22 = alloca %struct.nfsclflayout*, align 8
  %23 = alloca %struct.mbuf*, align 8
  %24 = alloca %struct.nfsclwritedsdorpc*, align 8
  %25 = alloca %struct.nfsclwritedsdorpc*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.ucred*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store %struct.uio* %1, %struct.uio** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.ucred* %6, %struct.ucred** %16, align 8
  store i32* %7, i32** %17, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.nfsnode* @VTONFS(i32 %47)
  store %struct.nfsnode* %48, %struct.nfsnode** %18, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @vnode_mount(i32 %49)
  %51 = call %struct.nfsmount* @VFSTONFS(i32 %50)
  store %struct.nfsmount* %51, %struct.nfsmount** %19, align 8
  store i8* null, i8** %43, align 8
  store i64 0, i64* %44, align 8
  store i64 0, i64* %45, align 8
  store i64 0, i64* %46, align 8
  %52 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %53 = call i32 @NFSHASPNFS(%struct.nfsmount* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %8
  %56 = load i64, i64* @nfscl_enablecallb, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @nfs_numnfscbd, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %63 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NNOLAYOUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61, %58, %55, %8
  %69 = load i32, i32* @EIO, align 4
  store i32 %69, i32* %9, align 4
  br label %589

70:                                               ; preds = %61
  %71 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %72 = call i64 @nfscl_getref(%struct.nfsmount* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @EIO, align 4
  store i32 %75, i32* %9, align 4
  br label %589

76:                                               ; preds = %70
  %77 = load %struct.ucred*, %struct.ucred** %16, align 8
  %78 = call %struct.ucred* @NFSNEWCRED(%struct.ucred* %77)
  store %struct.ucred* %78, %struct.ucred** %27, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %81 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %86 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.ucred*, %struct.ucred** %27, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = call i32 @nfscl_getstateid(i32 %79, i32 %84, i32 %89, i32 %90, i32 1, %struct.ucred* %91, i32* %92, i32* %26, i8** %41)
  store i32 %93, i32* %34, align 4
  %94 = load i32, i32* %34, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %76
  %97 = load %struct.ucred*, %struct.ucred** %27, align 8
  %98 = call i32 @NFSFREECRED(%struct.ucred* %97)
  %99 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %100 = call i32 @nfscl_relref(%struct.nfsmount* %99)
  %101 = load i32, i32* %34, align 4
  store i32 %101, i32* %9, align 4
  br label %589

102:                                              ; preds = %76
  %103 = load %struct.uio*, %struct.uio** %11, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %30, align 8
  %106 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %107 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %110 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %115 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %30, align 8
  %120 = call %struct.nfscllayout* @nfscl_getlayout(i32 %108, i32 %113, i32 %118, i64 %119, %struct.nfsclflayout** %22, i32* %39)
  store %struct.nfscllayout* %120, %struct.nfscllayout** %20, align 8
  %121 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %122 = icmp eq %struct.nfscllayout* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %102
  %124 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %125 = icmp eq %struct.nfsclflayout* %124, null
  br i1 %125, label %126, label %201

126:                                              ; preds = %123, %102
  %127 = load i32, i32* %39, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.ucred*, %struct.ucred** %27, align 8
  %131 = call i32 @NFSFREECRED(%struct.ucred* %130)
  %132 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %133 = call i32 @nfscl_relref(%struct.nfsmount* %132)
  %134 = load i32, i32* @EIO, align 4
  store i32 %134, i32* %9, align 4
  br label %589

135:                                              ; preds = %126
  %136 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %137 = icmp ne %struct.nfscllayout* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %140 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %141 = icmp eq %struct.nfsclflayout* %140, null
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = call i32 @nfscl_rellayout(%struct.nfscllayout* %139, i32 %143)
  store %struct.nfscllayout* null, %struct.nfscllayout** %20, align 8
  br label %145

145:                                              ; preds = %138, %135
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @NFSV4OPEN_ACCESSWRITE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %151 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NWRITEOPENED, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149, %145
  %157 = load i32, i32* @NFSLAYOUTIOMODE_RW, align 4
  store i32 %157, i32* %37, align 4
  br label %160

158:                                              ; preds = %149
  %159 = load i32, i32* @NFSLAYOUTIOMODE_READ, align 4
  store i32 %159, i32* %37, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %164 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %37, align 4
  %167 = load i64, i64* %30, align 8
  %168 = load %struct.ucred*, %struct.ucred** %27, align 8
  %169 = load i32*, i32** %17, align 8
  %170 = call i32 @nfsrpc_getlayout(%struct.nfsmount* %161, i32 %162, %struct.TYPE_6__* %165, i32 %166, i32* null, i32* %26, i64 %167, %struct.nfscllayout** %20, %struct.ucred* %168, i32* %169)
  store i32 %170, i32* %34, align 4
  %171 = load i32, i32* %34, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %200

173:                                              ; preds = %160
  %174 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %175 = call i32 @NFSLOCKNODE(%struct.nfsnode* %174)
  %176 = load i32, i32* @NNOLAYOUT, align 4
  %177 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %178 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %182 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %181)
  %183 = load i8*, i8** %41, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %173
  %186 = load i8*, i8** %41, align 8
  %187 = call i32 @nfscl_lockderef(i8* %186)
  br label %188

188:                                              ; preds = %185, %173
  %189 = load %struct.ucred*, %struct.ucred** %27, align 8
  %190 = call i32 @NFSFREECRED(%struct.ucred* %189)
  %191 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %192 = icmp ne %struct.nfscllayout* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %195 = call i32 @nfscl_rellayout(%struct.nfscllayout* %194, i32 0)
  br label %196

196:                                              ; preds = %193, %188
  %197 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %198 = call i32 @nfscl_relref(%struct.nfsmount* %197)
  %199 = load i32, i32* %34, align 4
  store i32 %199, i32* %9, align 4
  br label %589

200:                                              ; preds = %160
  br label %201

201:                                              ; preds = %200, %123
  store i32 0, i32* %33, align 4
  %202 = load %struct.uio*, %struct.uio** %11, align 8
  %203 = getelementptr inbounds %struct.uio, %struct.uio* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %29, align 8
  br label %205

205:                                              ; preds = %574, %201
  %206 = load i64, i64* %29, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i32, i32* %34, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %33, align 4
  %213 = icmp eq i32 %212, 0
  br label %214

214:                                              ; preds = %211, %208, %205
  %215 = phi i1 [ false, %208 ], [ false, %205 ], [ %213, %211 ]
  br i1 %215, label %216, label %575

216:                                              ; preds = %214
  %217 = load %struct.uio*, %struct.uio** %11, align 8
  %218 = getelementptr inbounds %struct.uio, %struct.uio* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %30, align 8
  %220 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %221 = load i64, i64* %30, align 8
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @nfscl_findlayoutforio(%struct.nfscllayout* %220, i64 %221, i32 %222, %struct.nfsclflayout** %22)
  store i32 %223, i32* %34, align 4
  %224 = load i32, i32* %34, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %574

226:                                              ; preds = %216
  %227 = load %struct.uio*, %struct.uio** %11, align 8
  %228 = getelementptr inbounds %struct.uio, %struct.uio* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %32, align 8
  store i64 %229, i64* %31, align 8
  %230 = load i64, i64* %32, align 8
  %231 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %232 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %235 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = sub nsw i64 %233, %236
  %238 = icmp sgt i64 %230, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %226
  %240 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %241 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %244 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = sub nsw i64 %242, %245
  store i64 %246, i64* %32, align 8
  br label %247

247:                                              ; preds = %239, %226
  store %struct.mbuf* null, %struct.mbuf** %23, align 8
  store %struct.nfsclwritedsdorpc* null, %struct.nfsclwritedsdorpc** %24, align 8
  store %struct.nfsclwritedsdorpc* null, %struct.nfsclwritedsdorpc** %25, align 8
  store i32 0, i32* %35, align 4
  store i32 1, i32* %38, align 4
  %248 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %249 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @NFSLY_FLEXFILE, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %304

254:                                              ; preds = %247
  %255 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %256 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %38, align 4
  %258 = icmp sgt i32 %257, 1
  br i1 %258, label %259, label %304

259:                                              ; preds = %254
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* @NFSV4OPEN_ACCESSREAD, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = call i32 (...) @arc4random()
  %265 = load i32, i32* %38, align 4
  %266 = srem i32 %264, %265
  store i32 %266, i32* %35, align 4
  %267 = load i32, i32* %35, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %38, align 4
  br label %303

269:                                              ; preds = %259
  %270 = load i32, i32* %15, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %292

272:                                              ; preds = %269
  %273 = load %struct.uio*, %struct.uio** %11, align 8
  %274 = getelementptr inbounds %struct.uio, %struct.uio* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %45, align 8
  %276 = load %struct.uio*, %struct.uio** %11, align 8
  %277 = getelementptr inbounds %struct.uio, %struct.uio* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %46, align 8
  %279 = load %struct.uio*, %struct.uio** %11, align 8
  %280 = getelementptr inbounds %struct.uio, %struct.uio* %279, i32 0, i32 1
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  store i8* %283, i8** %43, align 8
  %284 = load %struct.uio*, %struct.uio** %11, align 8
  %285 = getelementptr inbounds %struct.uio, %struct.uio* %284, i32 0, i32 1
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %44, align 8
  %289 = load %struct.uio*, %struct.uio** %11, align 8
  %290 = load i64, i64* %29, align 8
  %291 = call %struct.mbuf* @nfsm_uiombuflist(%struct.uio* %289, i64 %290, i32* null, i32* null)
  store %struct.mbuf* %291, %struct.mbuf** %23, align 8
  br label %292

292:                                              ; preds = %272, %269
  %293 = load i32, i32* %38, align 4
  %294 = sub nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = mul i64 24, %295
  %297 = trunc i64 %296 to i32
  %298 = load i32, i32* @M_TEMP, align 4
  %299 = load i32, i32* @M_WAITOK, align 4
  %300 = load i32, i32* @M_ZERO, align 4
  %301 = or i32 %299, %300
  %302 = call %struct.nfsclwritedsdorpc* @malloc(i32 %297, i32 %298, i32 %301)
  store %struct.nfsclwritedsdorpc* %302, %struct.nfsclwritedsdorpc** %24, align 8
  store %struct.nfsclwritedsdorpc* %302, %struct.nfsclwritedsdorpc** %25, align 8
  br label %303

303:                                              ; preds = %292, %263
  br label %304

304:                                              ; preds = %303, %254, %247
  %305 = load i32, i32* %35, align 4
  store i32 %305, i32* %36, align 4
  br label %306

306:                                              ; preds = %407, %304
  %307 = load i32, i32* %36, align 4
  %308 = load i32, i32* %38, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load i32, i32* %34, align 4
  %312 = icmp eq i32 %311, 0
  br label %313

313:                                              ; preds = %310, %306
  %314 = phi i1 [ false, %306 ], [ %312, %310 ]
  br i1 %314, label %315, label %410

315:                                              ; preds = %313
  %316 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %317 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @NFSLY_FLEXFILE, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %344

322:                                              ; preds = %315
  %323 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %324 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %323, i32 0, i32 6
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = load i32, i32* %36, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  store i32* %330, i32** %42, align 8
  %331 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %332 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** %42, align 8
  %335 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %336 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %335, i32 0, i32 6
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = load i32, i32* %36, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call %struct.nfscldevinfo* @nfscl_getdevinfo(i32 %333, i32* %334, i32 %342)
  store %struct.nfscldevinfo* %343, %struct.nfscldevinfo** %21, align 8
  br label %356

344:                                              ; preds = %315
  %345 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %346 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %345, i32 0, i32 5
  %347 = load i32*, i32** %346, align 8
  store i32* %347, i32** %42, align 8
  %348 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %349 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %42, align 8
  %352 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %353 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = call %struct.nfscldevinfo* @nfscl_getdevinfo(i32 %350, i32* %351, i32 %354)
  store %struct.nfscldevinfo* %355, %struct.nfscldevinfo** %21, align 8
  br label %356

356:                                              ; preds = %344, %322
  %357 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %21, align 8
  %358 = icmp ne %struct.nfscldevinfo* %357, null
  br i1 %358, label %359, label %402

359:                                              ; preds = %356
  %360 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %361 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @NFSFL_FLEXFILE, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %384

366:                                              ; preds = %359
  %367 = load i32, i32* %10, align 4
  %368 = load %struct.uio*, %struct.uio** %11, align 8
  %369 = load i32*, i32** %12, align 8
  %370 = load i32*, i32** %13, align 8
  %371 = load i32, i32* %14, align 4
  %372 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %21, align 8
  %373 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %374 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %375 = load i64, i64* %30, align 8
  %376 = load i64, i64* %32, align 8
  %377 = load i32, i32* %36, align 4
  %378 = load i32, i32* %15, align 4
  %379 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %380 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %381 = load %struct.ucred*, %struct.ucred** %27, align 8
  %382 = load i32*, i32** %17, align 8
  %383 = call i32 @nfscl_dofflayoutio(i32 %367, %struct.uio* %368, i32* %369, i32* %370, i32* %33, i32* %26, i32 %371, %struct.nfscldevinfo* %372, %struct.nfscllayout* %373, %struct.nfsclflayout* %374, i64 %375, i64 %376, i32 %377, i32 %378, %struct.mbuf* %379, %struct.nfsclwritedsdorpc* %380, %struct.ucred* %381, i32* %382)
  store i32 %383, i32* %34, align 4
  br label %399

384:                                              ; preds = %359
  %385 = load i32, i32* %10, align 4
  %386 = load %struct.uio*, %struct.uio** %11, align 8
  %387 = load i32*, i32** %12, align 8
  %388 = load i32*, i32** %13, align 8
  %389 = load i32, i32* %14, align 4
  %390 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %21, align 8
  %391 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %392 = load %struct.nfsclflayout*, %struct.nfsclflayout** %22, align 8
  %393 = load i64, i64* %30, align 8
  %394 = load i64, i64* %32, align 8
  %395 = load i32, i32* %15, align 4
  %396 = load %struct.ucred*, %struct.ucred** %27, align 8
  %397 = load i32*, i32** %17, align 8
  %398 = call i32 @nfscl_doflayoutio(i32 %385, %struct.uio* %386, i32* %387, i32* %388, i32* %33, i32* %26, i32 %389, %struct.nfscldevinfo* %390, %struct.nfscllayout* %391, %struct.nfsclflayout* %392, i64 %393, i64 %394, i32 %395, %struct.ucred* %396, i32* %397)
  store i32 %398, i32* %34, align 4
  br label %399

399:                                              ; preds = %384, %366
  %400 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %21, align 8
  %401 = call i32 @nfscl_reldevinfo(%struct.nfscldevinfo* %400)
  br label %404

402:                                              ; preds = %356
  %403 = load i32, i32* @EIO, align 4
  store i32 %403, i32* %34, align 4
  br label %404

404:                                              ; preds = %402, %399
  %405 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %406 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %405, i32 1
  store %struct.nfsclwritedsdorpc* %406, %struct.nfsclwritedsdorpc** %25, align 8
  br label %407

407:                                              ; preds = %404
  %408 = load i32, i32* %36, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %36, align 4
  br label %306

410:                                              ; preds = %313
  %411 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %412 = icmp ne %struct.mbuf* %411, null
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %415 = call i32 @m_freem(%struct.mbuf* %414)
  br label %416

416:                                              ; preds = %413, %410
  %417 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %24, align 8
  store %struct.nfsclwritedsdorpc* %417, %struct.nfsclwritedsdorpc** %25, align 8
  %418 = load i32, i32* @hz, align 4
  %419 = sdiv i32 %418, 50
  store i32 %419, i32* %40, align 4
  %420 = load i32, i32* %40, align 4
  %421 = icmp slt i32 %420, 1
  br i1 %421, label %422, label %423

422:                                              ; preds = %416
  store i32 1, i32* %40, align 4
  br label %423

423:                                              ; preds = %422, %416
  %424 = load i32, i32* %35, align 4
  store i32 %424, i32* %36, align 4
  br label %425

425:                                              ; preds = %467, %423
  %426 = load i32, i32* %36, align 4
  %427 = load i32, i32* %38, align 4
  %428 = sub nsw i32 %427, 1
  %429 = icmp slt i32 %426, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %425
  %431 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %432 = icmp ne %struct.nfsclwritedsdorpc* %431, null
  br label %433

433:                                              ; preds = %430, %425
  %434 = phi i1 [ false, %425 ], [ %432, %430 ]
  br i1 %434, label %435, label %472

435:                                              ; preds = %433
  br label %436

436:                                              ; preds = %448, %435
  %437 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %438 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %436
  %442 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %443 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %444, 0
  br label %446

446:                                              ; preds = %441, %436
  %447 = phi i1 [ false, %436 ], [ %445, %441 ]
  br i1 %447, label %448, label %454

448:                                              ; preds = %446
  %449 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %450 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %449, i32 0, i32 3
  %451 = load i32, i32* @PVFS, align 4
  %452 = load i32, i32* %40, align 4
  %453 = call i32 @tsleep(i32* %450, i32 %451, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %452)
  br label %436

454:                                              ; preds = %446
  %455 = load i32, i32* %34, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %466

457:                                              ; preds = %454
  %458 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %459 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

462:                                              ; preds = %457
  %463 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %464 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  store i32 %465, i32* %34, align 4
  br label %466

466:                                              ; preds = %462, %457, %454
  br label %467

467:                                              ; preds = %466
  %468 = load i32, i32* %36, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %36, align 4
  %470 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %25, align 8
  %471 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %470, i32 1
  store %struct.nfsclwritedsdorpc* %471, %struct.nfsclwritedsdorpc** %25, align 8
  br label %425

472:                                              ; preds = %433
  %473 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %24, align 8
  %474 = load i32, i32* @M_TEMP, align 4
  %475 = call i32 @free(%struct.nfsclwritedsdorpc* %473, i32 %474)
  %476 = load i32, i32* %34, align 4
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %513

478:                                              ; preds = %472
  %479 = load i32, i32* %38, align 4
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %481, label %496

481:                                              ; preds = %478
  %482 = load i32, i32* %14, align 4
  %483 = load i32, i32* @NFSV4OPEN_ACCESSWRITE, align 4
  %484 = icmp eq i32 %482, %483
  br i1 %484, label %485, label %496

485:                                              ; preds = %481
  %486 = load i32, i32* %15, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %496

488:                                              ; preds = %485
  %489 = call i32 (...) @NFSLOCKCLSTATE()
  %490 = load i32, i32* @NFSLY_WRITTEN, align 4
  %491 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %492 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = or i32 %493, %490
  store i32 %494, i32* %492, align 8
  %495 = call i32 (...) @NFSUNLOCKCLSTATE()
  br label %496

496:                                              ; preds = %488, %485, %481, %478
  %497 = load i64, i64* %30, align 8
  %498 = load i64, i64* %32, align 8
  %499 = add nsw i64 %497, %498
  %500 = sub nsw i64 %499, 1
  store i64 %500, i64* %28, align 8
  %501 = call i32 (...) @NFSLOCKCLSTATE()
  %502 = load i64, i64* %28, align 8
  %503 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %504 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = icmp sgt i64 %502, %505
  br i1 %506, label %507, label %511

507:                                              ; preds = %496
  %508 = load i64, i64* %28, align 8
  %509 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %510 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %509, i32 0, i32 1
  store i64 %508, i64* %510, align 8
  br label %511

511:                                              ; preds = %507, %496
  %512 = call i32 (...) @NFSUNLOCKCLSTATE()
  br label %534

513:                                              ; preds = %472
  %514 = load i32, i32* %34, align 4
  %515 = load i32, i32* @NFSERR_OPENMODE, align 4
  %516 = icmp eq i32 %514, %515
  br i1 %516, label %517, label %531

517:                                              ; preds = %513
  %518 = load i32, i32* %14, align 4
  %519 = load i32, i32* @NFSV4OPEN_ACCESSREAD, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %531

521:                                              ; preds = %517
  %522 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %523 = call i32 @NFSLOCKMNT(%struct.nfsmount* %522)
  %524 = load i32, i32* @NFSSTA_OPENMODE, align 4
  %525 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %526 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = or i32 %527, %524
  store i32 %528, i32* %526, align 4
  %529 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %530 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %529)
  br label %533

531:                                              ; preds = %517, %513
  %532 = load i32, i32* @EIO, align 4
  store i32 %532, i32* %34, align 4
  br label %533

533:                                              ; preds = %531, %521
  br label %534

534:                                              ; preds = %533, %511
  %535 = load i32, i32* %34, align 4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %545

537:                                              ; preds = %534
  %538 = load i64, i64* %31, align 8
  %539 = load %struct.uio*, %struct.uio** %11, align 8
  %540 = getelementptr inbounds %struct.uio, %struct.uio* %539, i32 0, i32 2
  %541 = load i64, i64* %540, align 8
  %542 = sub nsw i64 %538, %541
  %543 = load i64, i64* %29, align 8
  %544 = sub nsw i64 %543, %542
  store i64 %544, i64* %29, align 8
  br label %573

545:                                              ; preds = %534
  %546 = load i32, i32* %38, align 4
  %547 = icmp sgt i32 %546, 1
  br i1 %547, label %548, label %572

548:                                              ; preds = %545
  %549 = load i32, i32* %14, align 4
  %550 = load i32, i32* @NFSV4OPEN_ACCESSWRITE, align 4
  %551 = icmp eq i32 %549, %550
  br i1 %551, label %552, label %572

552:                                              ; preds = %548
  %553 = load i32, i32* %15, align 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %572

555:                                              ; preds = %552
  %556 = load i64, i64* %45, align 8
  %557 = load %struct.uio*, %struct.uio** %11, align 8
  %558 = getelementptr inbounds %struct.uio, %struct.uio* %557, i32 0, i32 0
  store i64 %556, i64* %558, align 8
  %559 = load i64, i64* %46, align 8
  %560 = load %struct.uio*, %struct.uio** %11, align 8
  %561 = getelementptr inbounds %struct.uio, %struct.uio* %560, i32 0, i32 2
  store i64 %559, i64* %561, align 8
  %562 = load i8*, i8** %43, align 8
  %563 = load %struct.uio*, %struct.uio** %11, align 8
  %564 = getelementptr inbounds %struct.uio, %struct.uio* %563, i32 0, i32 1
  %565 = load %struct.TYPE_5__*, %struct.TYPE_5__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %565, i32 0, i32 1
  store i8* %562, i8** %566, align 8
  %567 = load i64, i64* %44, align 8
  %568 = load %struct.uio*, %struct.uio** %11, align 8
  %569 = getelementptr inbounds %struct.uio, %struct.uio* %568, i32 0, i32 1
  %570 = load %struct.TYPE_5__*, %struct.TYPE_5__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %570, i32 0, i32 0
  store i64 %567, i64* %571, align 8
  br label %572

572:                                              ; preds = %555, %552, %548, %545
  br label %573

573:                                              ; preds = %572, %537
  br label %574

574:                                              ; preds = %573, %216
  br label %205

575:                                              ; preds = %214
  %576 = load i8*, i8** %41, align 8
  %577 = icmp ne i8* %576, null
  br i1 %577, label %578, label %581

578:                                              ; preds = %575
  %579 = load i8*, i8** %41, align 8
  %580 = call i32 @nfscl_lockderef(i8* %579)
  br label %581

581:                                              ; preds = %578, %575
  %582 = load %struct.ucred*, %struct.ucred** %27, align 8
  %583 = call i32 @NFSFREECRED(%struct.ucred* %582)
  %584 = load %struct.nfscllayout*, %struct.nfscllayout** %20, align 8
  %585 = call i32 @nfscl_rellayout(%struct.nfscllayout* %584, i32 0)
  %586 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %587 = call i32 @nfscl_relref(%struct.nfsmount* %586)
  %588 = load i32, i32* %34, align 4
  store i32 %588, i32* %9, align 4
  br label %589

589:                                              ; preds = %581, %196, %129, %96, %74, %68
  %590 = load i32, i32* %9, align 4
  ret i32 %590
}

declare dso_local %struct.nfsnode* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @vnode_mount(i32) #1

declare dso_local i32 @NFSHASPNFS(%struct.nfsmount*) #1

declare dso_local i64 @nfscl_getref(%struct.nfsmount*) #1

declare dso_local %struct.ucred* @NFSNEWCRED(%struct.ucred*) #1

declare dso_local i32 @nfscl_getstateid(i32, i32, i32, i32, i32, %struct.ucred*, i32*, i32*, i8**) #1

declare dso_local i32 @NFSFREECRED(%struct.ucred*) #1

declare dso_local i32 @nfscl_relref(%struct.nfsmount*) #1

declare dso_local %struct.nfscllayout* @nfscl_getlayout(i32, i32, i32, i64, %struct.nfsclflayout**, i32*) #1

declare dso_local i32 @nfscl_rellayout(%struct.nfscllayout*, i32) #1

declare dso_local i32 @nfsrpc_getlayout(%struct.nfsmount*, i32, %struct.TYPE_6__*, i32, i32*, i32*, i64, %struct.nfscllayout**, %struct.ucred*, i32*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfscl_lockderef(i8*) #1

declare dso_local i32 @nfscl_findlayoutforio(%struct.nfscllayout*, i64, i32, %struct.nfsclflayout**) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local %struct.mbuf* @nfsm_uiombuflist(%struct.uio*, i64, i32*, i32*) #1

declare dso_local %struct.nfsclwritedsdorpc* @malloc(i32, i32, i32) #1

declare dso_local %struct.nfscldevinfo* @nfscl_getdevinfo(i32, i32*, i32) #1

declare dso_local i32 @nfscl_dofflayoutio(i32, %struct.uio*, i32*, i32*, i32*, i32*, i32, %struct.nfscldevinfo*, %struct.nfscllayout*, %struct.nfsclflayout*, i64, i64, i32, i32, %struct.mbuf*, %struct.nfsclwritedsdorpc*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfscl_doflayoutio(i32, %struct.uio*, i32*, i32*, i32*, i32*, i32, %struct.nfscldevinfo*, %struct.nfscllayout*, %struct.nfsclflayout*, i64, i64, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @nfscl_reldevinfo(%struct.nfscldevinfo*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.nfsclwritedsdorpc*, i32) #1

declare dso_local i32 @NFSLOCKCLSTATE(...) #1

declare dso_local i32 @NFSUNLOCKCLSTATE(...) #1

declare dso_local i32 @NFSLOCKMNT(%struct.nfsmount*) #1

declare dso_local i32 @NFSUNLOCKMNT(%struct.nfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
