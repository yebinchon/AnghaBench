; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { i32, %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i64, i64, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.vnode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfsnode = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@VNOVAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @nfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %10 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = call %struct.nfsnode* @VTONFS(%struct.vnode* %13)
  store %struct.nfsnode* %14, %struct.nfsnode** %5, align 8
  %15 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %15, %struct.thread** %6, align 8
  %16 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %16, i32 0, i32 1
  %18 = load %struct.vattr*, %struct.vattr** %17, align 8
  store %struct.vattr* %18, %struct.vattr** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %19 = load %struct.vattr*, %struct.vattr** %7, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VNOVAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %25, i32* %2, align 4
  br label %284

26:                                               ; preds = %1
  %27 = load %struct.vattr*, %struct.vattr** %7, align 8
  %28 = getelementptr inbounds %struct.vattr, %struct.vattr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VNOVAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %64, label %32

32:                                               ; preds = %26
  %33 = load %struct.vattr*, %struct.vattr** %7, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VNOVAL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %32
  %39 = load %struct.vattr*, %struct.vattr** %7, align 8
  %40 = getelementptr inbounds %struct.vattr, %struct.vattr* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VNOVAL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %64, label %44

44:                                               ; preds = %38
  %45 = load %struct.vattr*, %struct.vattr** %7, align 8
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VNOVAL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %64, label %51

51:                                               ; preds = %44
  %52 = load %struct.vattr*, %struct.vattr** %7, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VNOVAL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load %struct.vattr*, %struct.vattr** %7, align 8
  %60 = getelementptr inbounds %struct.vattr, %struct.vattr* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VNOVAL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58, %51, %44, %38, %32, %26
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MNT_RDONLY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @EROFS, align 4
  store i32 %74, i32* %2, align 4
  br label %284

75:                                               ; preds = %64, %58
  %76 = load %struct.vattr*, %struct.vattr** %7, align 8
  %77 = getelementptr inbounds %struct.vattr, %struct.vattr* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VNOVAL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %202

81:                                               ; preds = %75
  %82 = load %struct.vnode*, %struct.vnode** %4, align 8
  %83 = getelementptr inbounds %struct.vnode, %struct.vnode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %124 [
    i32 130, label %85
    i32 131, label %87
    i32 132, label %87
    i32 128, label %87
    i32 129, label %87
  ]

85:                                               ; preds = %81
  %86 = load i32, i32* @EISDIR, align 4
  store i32 %86, i32* %2, align 4
  br label %284

87:                                               ; preds = %81, %81, %81, %81
  %88 = load %struct.vattr*, %struct.vattr** %7, align 8
  %89 = getelementptr inbounds %struct.vattr, %struct.vattr* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VNOVAL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %87
  %95 = load %struct.vattr*, %struct.vattr** %7, align 8
  %96 = getelementptr inbounds %struct.vattr, %struct.vattr* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VNOVAL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %94
  %102 = load %struct.vattr*, %struct.vattr** %7, align 8
  %103 = getelementptr inbounds %struct.vattr, %struct.vattr* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VNOVAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load %struct.vattr*, %struct.vattr** %7, align 8
  %109 = getelementptr inbounds %struct.vattr, %struct.vattr* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VNOVAL, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.vattr*, %struct.vattr** %7, align 8
  %115 = getelementptr inbounds %struct.vattr, %struct.vattr* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VNOVAL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %284

120:                                              ; preds = %113, %107, %101, %94, %87
  %121 = load i64, i64* @VNOVAL, align 8
  %122 = load %struct.vattr*, %struct.vattr** %7, align 8
  %123 = getelementptr inbounds %struct.vattr, %struct.vattr* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  br label %201

124:                                              ; preds = %81
  %125 = load %struct.vnode*, %struct.vnode** %4, align 8
  %126 = getelementptr inbounds %struct.vnode, %struct.vnode* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MNT_RDONLY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* @EROFS, align 4
  store i32 %134, i32* %2, align 4
  br label %284

135:                                              ; preds = %124
  %136 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %137 = call i32 @NFSLOCKNODE(%struct.nfsnode* %136)
  %138 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %139 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  %141 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %142 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %141)
  %143 = load %struct.vnode*, %struct.vnode** %4, align 8
  %144 = load %struct.thread*, %struct.thread** %6, align 8
  %145 = load %struct.vattr*, %struct.vattr** %7, align 8
  %146 = getelementptr inbounds %struct.vattr, %struct.vattr* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @ncl_meta_setsize(%struct.vnode* %143, %struct.thread* %144, i64 %147)
  store i32 %148, i32* %8, align 4
  %149 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %150 = call i32 @NFSLOCKNODE(%struct.nfsnode* %149)
  %151 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %152 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @NMODIFIED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %135
  %158 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %159 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %9, align 8
  %161 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %162 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %161)
  %163 = load %struct.vnode*, %struct.vnode** %4, align 8
  %164 = load %struct.vattr*, %struct.vattr** %7, align 8
  %165 = getelementptr inbounds %struct.vattr, %struct.vattr* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %171

169:                                              ; preds = %157
  %170 = load i32, i32* @V_SAVE, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = phi i32 [ 0, %168 ], [ %170, %169 ]
  %173 = load %struct.thread*, %struct.thread** %6, align 8
  %174 = call i32 @ncl_vinvalbuf(%struct.vnode* %163, i32 %172, %struct.thread* %173, i32 1)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.vnode*, %struct.vnode** %4, align 8
  %179 = load i64, i64* %9, align 8
  %180 = call i32 @vnode_pager_setsize(%struct.vnode* %178, i64 %179)
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %284

182:                                              ; preds = %171
  %183 = load %struct.vnode*, %struct.vnode** %4, align 8
  %184 = call i32 @nfscl_delegmodtime(%struct.vnode* %183)
  br label %188

185:                                              ; preds = %135
  %186 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %187 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %190 = call i32 @NFSLOCKNODE(%struct.nfsnode* %189)
  %191 = load %struct.vattr*, %struct.vattr** %7, align 8
  %192 = getelementptr inbounds %struct.vattr, %struct.vattr* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %195 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %197 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  store i64 %193, i64* %198, align 8
  %199 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %200 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %199)
  br label %201

201:                                              ; preds = %188, %120
  br label %252

202:                                              ; preds = %75
  %203 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %204 = call i32 @NFSLOCKNODE(%struct.nfsnode* %203)
  %205 = load %struct.vattr*, %struct.vattr** %7, align 8
  %206 = getelementptr inbounds %struct.vattr, %struct.vattr* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @VNOVAL, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %218, label %211

211:                                              ; preds = %202
  %212 = load %struct.vattr*, %struct.vattr** %7, align 8
  %213 = getelementptr inbounds %struct.vattr, %struct.vattr* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @VNOVAL, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %248

218:                                              ; preds = %211, %202
  %219 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %220 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @NMODIFIED, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %248

225:                                              ; preds = %218
  %226 = load %struct.vnode*, %struct.vnode** %4, align 8
  %227 = getelementptr inbounds %struct.vnode, %struct.vnode* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @VREG, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %248

231:                                              ; preds = %225
  %232 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %233 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %232)
  %234 = load %struct.vnode*, %struct.vnode** %4, align 8
  %235 = load i32, i32* @V_SAVE, align 4
  %236 = load %struct.thread*, %struct.thread** %6, align 8
  %237 = call i32 @ncl_vinvalbuf(%struct.vnode* %234, i32 %235, %struct.thread* %236, i32 1)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @EINTR, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %231
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @EIO, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241, %231
  %246 = load i32, i32* %8, align 4
  store i32 %246, i32* %2, align 4
  br label %284

247:                                              ; preds = %241
  br label %251

248:                                              ; preds = %225, %218, %211
  %249 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %250 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %249)
  br label %251

251:                                              ; preds = %248, %247
  br label %252

252:                                              ; preds = %251, %201
  %253 = load %struct.vnode*, %struct.vnode** %4, align 8
  %254 = load %struct.vattr*, %struct.vattr** %7, align 8
  %255 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %256 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.thread*, %struct.thread** %6, align 8
  %259 = call i32 @nfs_setattrrpc(%struct.vnode* %253, %struct.vattr* %254, i32 %257, %struct.thread* %258)
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %8, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %252
  %263 = load %struct.vattr*, %struct.vattr** %7, align 8
  %264 = getelementptr inbounds %struct.vattr, %struct.vattr* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @VNOVAL, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %282

268:                                              ; preds = %262
  %269 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %270 = call i32 @NFSLOCKNODE(%struct.nfsnode* %269)
  %271 = load i64, i64* %9, align 8
  %272 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %273 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  store i64 %271, i64* %274, align 8
  %275 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %276 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %275, i32 0, i32 0
  store i64 %271, i64* %276, align 8
  %277 = load %struct.vnode*, %struct.vnode** %4, align 8
  %278 = load i64, i64* %9, align 8
  %279 = call i32 @vnode_pager_setsize(%struct.vnode* %277, i64 %278)
  %280 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %281 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %280)
  br label %282

282:                                              ; preds = %268, %262, %252
  %283 = load i32, i32* %8, align 4
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %282, %245, %177, %133, %119, %85, %73, %24
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @ncl_meta_setsize(%struct.vnode*, %struct.thread*, i64) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, %struct.thread*, i32) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i64) #1

declare dso_local i32 @nfscl_delegmodtime(%struct.vnode*) #1

declare dso_local i32 @nfs_setattrrpc(%struct.vnode*, %struct.vattr*, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
