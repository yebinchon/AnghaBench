; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { %struct.ucred*, %struct.vattr*, %struct.vnode* }
%struct.ucred = type { i64, i64* }
%struct.vattr = type { i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.fuse_data = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@FSESS_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@PRIV_VFS_CHOWN = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@PRIV_VFS_STICKYFILE = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@PRIV_VFS_SETGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @fuse_vnop_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.fuse_data*, align 8
  %10 = alloca %struct.vattr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %18 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %18, i32 0, i32 2
  %20 = load %struct.vnode*, %struct.vnode** %19, align 8
  store %struct.vnode* %20, %struct.vnode** %4, align 8
  %21 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %22 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %21, i32 0, i32 1
  %23 = load %struct.vattr*, %struct.vattr** %22, align 8
  store %struct.vattr* %23, %struct.vattr** %5, align 8
  %24 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %24, i32 0, i32 0
  %26 = load %struct.ucred*, %struct.ucred** %25, align 8
  store %struct.ucred* %26, %struct.ucred** %6, align 8
  %27 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %27, %struct.thread** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = call %struct.mount* @vnode_mount(%struct.vnode* %28)
  store %struct.mount* %29, %struct.mount** %8, align 8
  %30 = load %struct.mount*, %struct.mount** %8, align 8
  %31 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %30)
  store %struct.fuse_data* %31, %struct.fuse_data** %9, align 8
  %32 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %33 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @FSESS_DEFAULT_PERMISSIONS, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load %struct.ucred*, %struct.ucred** %6, align 8
  %39 = getelementptr inbounds %struct.ucred, %struct.ucred* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.ucred*, %struct.ucred** %6, align 8
  %44 = getelementptr inbounds %struct.ucred, %struct.ucred* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %17, align 8
  br label %49

48:                                               ; preds = %1
  store i64 0, i64* %17, align 8
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.vnode*, %struct.vnode** %4, align 8
  %51 = call i64 @fuse_isdeadfs(%struct.vnode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %346

55:                                               ; preds = %49
  %56 = load %struct.vattr*, %struct.vattr** %5, align 8
  %57 = getelementptr inbounds %struct.vattr, %struct.vattr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VNOVAL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %55
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %61
  %65 = load %struct.ucred*, %struct.ucred** %6, align 8
  %66 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %67 = call i32 @priv_check_cred(%struct.ucred* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %64
  %71 = load %struct.vnode*, %struct.vnode** %4, align 8
  %72 = load %struct.ucred*, %struct.ucred** %6, align 8
  %73 = load %struct.thread*, %struct.thread** %7, align 8
  %74 = call i32 @fuse_internal_getattr(%struct.vnode* %71, %struct.vattr* %10, %struct.ucred* %72, %struct.thread* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %2, align 4
  br label %346

79:                                               ; preds = %70
  %80 = load %struct.vattr*, %struct.vattr** %5, align 8
  %81 = getelementptr inbounds %struct.vattr, %struct.vattr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %2, align 4
  br label %346

88:                                               ; preds = %79
  %89 = load i32, i32* @VADMIN, align 4
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %88
  store i32 1, i32* %16, align 4
  br label %97

93:                                               ; preds = %64
  %94 = load i32, i32* @VADMIN, align 4
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %92
  br label %102

98:                                               ; preds = %61
  %99 = load i32, i32* @VADMIN, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %98, %97
  br label %103

103:                                              ; preds = %102, %55
  %104 = load %struct.vattr*, %struct.vattr** %5, align 8
  %105 = getelementptr inbounds %struct.vattr, %struct.vattr* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VNOVAL, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %166

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.ucred*, %struct.ucred** %6, align 8
  %114 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %115 = call i32 @priv_check_cred(%struct.ucred* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %117, %112, %109
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %161

121:                                              ; preds = %118
  %122 = load %struct.vattr*, %struct.vattr** %5, align 8
  %123 = getelementptr inbounds %struct.vattr, %struct.vattr* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ucred*, %struct.ucred** %6, align 8
  %126 = call i32 @groupmember(i64 %124, %struct.ucred* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %161, label %128

128:                                              ; preds = %121
  %129 = load %struct.ucred*, %struct.ucred** %6, align 8
  %130 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %131 = call i32 @priv_check_cred(%struct.ucred* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %128
  %135 = load %struct.vnode*, %struct.vnode** %4, align 8
  %136 = load %struct.ucred*, %struct.ucred** %6, align 8
  %137 = load %struct.thread*, %struct.thread** %7, align 8
  %138 = call i32 @fuse_internal_getattr(%struct.vnode* %135, %struct.vattr* %10, %struct.ucred* %136, %struct.thread* %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %2, align 4
  br label %346

143:                                              ; preds = %134
  %144 = load %struct.vattr*, %struct.vattr** %5, align 8
  %145 = getelementptr inbounds %struct.vattr, %struct.vattr* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %146, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %2, align 4
  br label %346

152:                                              ; preds = %143
  %153 = load i32, i32* @VADMIN, align 4
  %154 = load i32, i32* %14, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %14, align 4
  br label %160

156:                                              ; preds = %128
  %157 = load i32, i32* @VADMIN, align 4
  %158 = load i32, i32* %14, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %156, %152
  br label %165

161:                                              ; preds = %121, %118
  %162 = load i32, i32* @VADMIN, align 4
  %163 = load i32, i32* %14, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %161, %160
  br label %166

166:                                              ; preds = %165, %103
  %167 = load %struct.vattr*, %struct.vattr** %5, align 8
  %168 = getelementptr inbounds %struct.vattr, %struct.vattr* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @VNOVAL, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %166
  %173 = load %struct.vnode*, %struct.vnode** %4, align 8
  %174 = getelementptr inbounds %struct.vnode, %struct.vnode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  switch i32 %175, label %185 [
    i32 130, label %176
    i32 129, label %178
    i32 128, label %178
  ]

176:                                              ; preds = %172
  %177 = load i32, i32* @EISDIR, align 4
  store i32 %177, i32* %2, align 4
  br label %346

178:                                              ; preds = %172, %172
  %179 = load %struct.mount*, %struct.mount** %8, align 8
  %180 = call i64 @vfs_isrdonly(%struct.mount* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @EROFS, align 4
  store i32 %183, i32* %2, align 4
  br label %346

184:                                              ; preds = %178
  br label %186

185:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %346

186:                                              ; preds = %184
  br label %187

187:                                              ; preds = %186, %166
  %188 = load %struct.vattr*, %struct.vattr** %5, align 8
  %189 = getelementptr inbounds %struct.vattr, %struct.vattr* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @VNOVAL, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %201, label %194

194:                                              ; preds = %187
  %195 = load %struct.vattr*, %struct.vattr** %5, align 8
  %196 = getelementptr inbounds %struct.vattr, %struct.vattr* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @VNOVAL, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %194, %187
  %202 = load %struct.vattr*, %struct.vattr** %5, align 8
  %203 = getelementptr inbounds %struct.vattr, %struct.vattr* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @VA_UTIMES_NULL, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load i32, i32* @VWRITE, align 4
  %210 = load i32, i32* %14, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %14, align 4
  br label %216

212:                                              ; preds = %201
  %213 = load i32, i32* @VADMIN, align 4
  %214 = load i32, i32* %14, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %212, %208
  br label %217

217:                                              ; preds = %216, %194
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %256

220:                                              ; preds = %217
  %221 = load %struct.vattr*, %struct.vattr** %5, align 8
  %222 = getelementptr inbounds %struct.vattr, %struct.vattr* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load i64, i64* @VNOVAL, align 8
  %225 = trunc i64 %224 to i32
  %226 = icmp ne i32 %223, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %220
  %228 = load i32, i32* @S_ISUID, align 4
  %229 = load i32, i32* @S_ISGID, align 4
  %230 = or i32 %228, %229
  %231 = xor i32 %230, -1
  %232 = load %struct.vattr*, %struct.vattr** %5, align 8
  %233 = getelementptr inbounds %struct.vattr, %struct.vattr* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, %231
  store i32 %235, i32* %233, align 4
  br label %255

236:                                              ; preds = %220
  %237 = load %struct.vnode*, %struct.vnode** %4, align 8
  %238 = load %struct.ucred*, %struct.ucred** %6, align 8
  %239 = load %struct.thread*, %struct.thread** %7, align 8
  %240 = call i32 @fuse_internal_getattr(%struct.vnode* %237, %struct.vattr* %10, %struct.ucred* %238, %struct.thread* %239)
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %2, align 4
  br label %346

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @S_ISUID, align 4
  %249 = load i32, i32* @S_ISGID, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = and i32 %247, %251
  %253 = load %struct.vattr*, %struct.vattr** %5, align 8
  %254 = getelementptr inbounds %struct.vattr, %struct.vattr* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %245, %227
  br label %256

256:                                              ; preds = %255, %217
  %257 = load %struct.vattr*, %struct.vattr** %5, align 8
  %258 = getelementptr inbounds %struct.vattr, %struct.vattr* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load i64, i64* @VNOVAL, align 8
  %261 = trunc i64 %260 to i32
  %262 = icmp ne i32 %259, %261
  br i1 %262, label %263, label %324

263:                                              ; preds = %256
  %264 = load i32, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %263
  %267 = load %struct.vnode*, %struct.vnode** %4, align 8
  %268 = getelementptr inbounds %struct.vnode, %struct.vnode* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 130
  br i1 %270, label %271, label %285

271:                                              ; preds = %266
  %272 = load %struct.vattr*, %struct.vattr** %5, align 8
  %273 = getelementptr inbounds %struct.vattr, %struct.vattr* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @S_ISTXT, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %271
  %279 = load %struct.ucred*, %struct.ucred** %6, align 8
  %280 = load i32, i32* @PRIV_VFS_STICKYFILE, align 4
  %281 = call i32 @priv_check_cred(%struct.ucred* %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @EFTYPE, align 4
  store i32 %284, i32* %2, align 4
  br label %346

285:                                              ; preds = %278, %271, %266, %263
  %286 = load i32, i32* %15, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %320

288:                                              ; preds = %285
  %289 = load %struct.vattr*, %struct.vattr** %5, align 8
  %290 = getelementptr inbounds %struct.vattr, %struct.vattr* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @S_ISGID, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %320

295:                                              ; preds = %288
  %296 = load %struct.vnode*, %struct.vnode** %4, align 8
  %297 = load %struct.ucred*, %struct.ucred** %6, align 8
  %298 = load %struct.thread*, %struct.thread** %7, align 8
  %299 = call i32 @fuse_internal_getattr(%struct.vnode* %296, %struct.vattr* %10, %struct.ucred* %297, %struct.thread* %298)
  store i32 %299, i32* %12, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = load i32, i32* %12, align 4
  store i32 %303, i32* %2, align 4
  br label %346

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.ucred*, %struct.ucred** %6, align 8
  %308 = call i32 @groupmember(i64 %306, %struct.ucred* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %319, label %310

310:                                              ; preds = %304
  %311 = load %struct.ucred*, %struct.ucred** %6, align 8
  %312 = load i32, i32* @PRIV_VFS_SETGID, align 4
  %313 = call i32 @priv_check_cred(%struct.ucred* %311, i32 %312)
  store i32 %313, i32* %12, align 4
  %314 = load i32, i32* %12, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = load i32, i32* %12, align 4
  store i32 %317, i32* %2, align 4
  br label %346

318:                                              ; preds = %310
  br label %319

319:                                              ; preds = %318, %304
  br label %320

320:                                              ; preds = %319, %288, %285
  %321 = load i32, i32* @VADMIN, align 4
  %322 = load i32, i32* %14, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %14, align 4
  br label %324

324:                                              ; preds = %320, %256
  %325 = load %struct.mount*, %struct.mount** %8, align 8
  %326 = call i64 @vfs_isrdonly(%struct.mount* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = load i32, i32* @EROFS, align 4
  store i32 %329, i32* %2, align 4
  br label %346

330:                                              ; preds = %324
  %331 = load %struct.vnode*, %struct.vnode** %4, align 8
  %332 = load i32, i32* %14, align 4
  %333 = load %struct.thread*, %struct.thread** %7, align 8
  %334 = load %struct.ucred*, %struct.ucred** %6, align 8
  %335 = call i32 @fuse_internal_access(%struct.vnode* %331, i32 %332, %struct.thread* %333, %struct.ucred* %334)
  store i32 %335, i32* %12, align 4
  %336 = load i32, i32* %12, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %330
  %339 = load i32, i32* %12, align 4
  store i32 %339, i32* %2, align 4
  br label %346

340:                                              ; preds = %330
  %341 = load %struct.vnode*, %struct.vnode** %4, align 8
  %342 = load %struct.vattr*, %struct.vattr** %5, align 8
  %343 = load %struct.thread*, %struct.thread** %7, align 8
  %344 = load %struct.ucred*, %struct.ucred** %6, align 8
  %345 = call i32 @fuse_internal_setattr(%struct.vnode* %341, %struct.vattr* %342, %struct.thread* %343, %struct.ucred* %344)
  store i32 %345, i32* %2, align 4
  br label %346

346:                                              ; preds = %340, %338, %328, %316, %302, %283, %243, %185, %182, %176, %150, %141, %86, %77, %53
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @fuse_internal_getattr(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @groupmember(i64, %struct.ucred*) #1

declare dso_local i64 @vfs_isrdonly(%struct.mount*) #1

declare dso_local i32 @fuse_internal_access(%struct.vnode*, i32, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fuse_internal_setattr(%struct.vnode*, %struct.vattr*, %struct.thread*, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
