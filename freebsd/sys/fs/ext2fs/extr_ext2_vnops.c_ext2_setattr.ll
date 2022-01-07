; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { %struct.ucred*, %struct.vnode*, %struct.vattr* }
%struct.ucred = type { i32 }
%struct.vnode = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.vattr = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@VNON = common dso_local global i64 0, align 8
@VNOVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SF_APPEND = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@UF_NODUMP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@PRIV_VFS_SYSFLAGS = common dso_local global i32 0, align 4
@SF_SETTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@IN_MODIFIED = common dso_local global i32 0, align 4
@IN_ACCESS = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @ext2_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %10 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %10, i32 0, i32 2
  %12 = load %struct.vattr*, %struct.vattr** %11, align 8
  store %struct.vattr* %12, %struct.vattr** %4, align 8
  %13 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %5, align 8
  %16 = load %struct.vnode*, %struct.vnode** %5, align 8
  %17 = call %struct.inode* @VTOI(%struct.vnode* %16)
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %18, i32 0, i32 0
  %20 = load %struct.ucred*, %struct.ucred** %19, align 8
  store %struct.ucred* %20, %struct.ucred** %7, align 8
  %21 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %21, %struct.thread** %8, align 8
  %22 = load %struct.vattr*, %struct.vattr** %4, align 8
  %23 = getelementptr inbounds %struct.vattr, %struct.vattr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VNON, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %70, label %27

27:                                               ; preds = %1
  %28 = load %struct.vattr*, %struct.vattr** %4, align 8
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VNOVAL, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %70, label %33

33:                                               ; preds = %27
  %34 = load %struct.vattr*, %struct.vattr** %4, align 8
  %35 = getelementptr inbounds %struct.vattr, %struct.vattr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VNOVAL, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %70, label %39

39:                                               ; preds = %33
  %40 = load %struct.vattr*, %struct.vattr** %4, align 8
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VNOVAL, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %70, label %45

45:                                               ; preds = %39
  %46 = load %struct.vattr*, %struct.vattr** %4, align 8
  %47 = getelementptr inbounds %struct.vattr, %struct.vattr* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VNOVAL, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %45
  %52 = load %struct.vattr*, %struct.vattr** %4, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VNOVAL, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = load %struct.vattr*, %struct.vattr** %4, align 8
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %58, i32 0, i32 16
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @VNOVAL, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load %struct.vattr*, %struct.vattr** %4, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VNOVAL, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %57, %51, %45, %39, %33, %27, %1
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %2, align 4
  br label %423

72:                                               ; preds = %64
  %73 = load %struct.vattr*, %struct.vattr** %4, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VNOVAL, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %179

78:                                               ; preds = %72
  %79 = load %struct.vattr*, %struct.vattr** %4, align 8
  %80 = getelementptr inbounds %struct.vattr, %struct.vattr* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SF_APPEND, align 4
  %83 = load i32, i32* @SF_IMMUTABLE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @UF_NODUMP, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %81, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %91, i32* %2, align 4
  br label %423

92:                                               ; preds = %78
  %93 = load %struct.vnode*, %struct.vnode** %5, align 8
  %94 = getelementptr inbounds %struct.vnode, %struct.vnode* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MNT_RDONLY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @EROFS, align 4
  store i32 %102, i32* %2, align 4
  br label %423

103:                                              ; preds = %92
  %104 = load %struct.vnode*, %struct.vnode** %5, align 8
  %105 = load i32, i32* @VADMIN, align 4
  %106 = load %struct.ucred*, %struct.ucred** %7, align 8
  %107 = load %struct.thread*, %struct.thread** %8, align 8
  %108 = call i32 @VOP_ACCESS(%struct.vnode* %104, i32 %105, %struct.ucred* %106, %struct.thread* %107)
  store i32 %108, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %423

112:                                              ; preds = %103
  %113 = load %struct.ucred*, %struct.ucred** %7, align 8
  %114 = load i32, i32* @PRIV_VFS_SYSFLAGS, align 4
  %115 = call i32 @priv_check_cred(%struct.ucred* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %112
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SF_IMMUTABLE, align 4
  %122 = load i32, i32* @SF_APPEND, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load %struct.ucred*, %struct.ucred** %7, align 8
  %128 = call i32 @securelevel_gt(%struct.ucred* %127, i32 0)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %2, align 4
  br label %423

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %117
  br label %158

135:                                              ; preds = %112
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SF_IMMUTABLE, align 4
  %140 = load i32, i32* @SF_APPEND, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %135
  %145 = load %struct.vattr*, %struct.vattr** %4, align 8
  %146 = getelementptr inbounds %struct.vattr, %struct.vattr* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.inode*, %struct.inode** %6, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %147, %150
  %152 = load i32, i32* @SF_SETTABLE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %144, %135
  %156 = load i32, i32* @EPERM, align 4
  store i32 %156, i32* %2, align 4
  br label %423

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %134
  %159 = load %struct.vattr*, %struct.vattr** %4, align 8
  %160 = getelementptr inbounds %struct.vattr, %struct.vattr* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.inode*, %struct.inode** %6, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @IN_CHANGE, align 4
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.inode*, %struct.inode** %6, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IMMUTABLE, align 4
  %173 = load i32, i32* @APPEND, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %423

178:                                              ; preds = %158
  br label %179

179:                                              ; preds = %178, %72
  %180 = load %struct.inode*, %struct.inode** %6, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @IMMUTABLE, align 4
  %184 = load i32, i32* @APPEND, align 4
  %185 = or i32 %183, %184
  %186 = and i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = load i32, i32* @EPERM, align 4
  store i32 %189, i32* %2, align 4
  br label %423

190:                                              ; preds = %179
  %191 = load %struct.vattr*, %struct.vattr** %4, align 8
  %192 = getelementptr inbounds %struct.vattr, %struct.vattr* %191, i32 0, i32 8
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @VNOVAL, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ne i64 %193, %195
  br i1 %196, label %204, label %197

197:                                              ; preds = %190
  %198 = load %struct.vattr*, %struct.vattr** %4, align 8
  %199 = getelementptr inbounds %struct.vattr, %struct.vattr* %198, i32 0, i32 9
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* @VNOVAL, align 4
  %202 = sext i32 %201 to i64
  %203 = icmp ne i64 %200, %202
  br i1 %203, label %204, label %230

204:                                              ; preds = %197, %190
  %205 = load %struct.vnode*, %struct.vnode** %5, align 8
  %206 = getelementptr inbounds %struct.vnode, %struct.vnode* %205, i32 0, i32 1
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @MNT_RDONLY, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = load i32, i32* @EROFS, align 4
  store i32 %214, i32* %2, align 4
  br label %423

215:                                              ; preds = %204
  %216 = load %struct.vnode*, %struct.vnode** %5, align 8
  %217 = load %struct.vattr*, %struct.vattr** %4, align 8
  %218 = getelementptr inbounds %struct.vattr, %struct.vattr* %217, i32 0, i32 8
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.vattr*, %struct.vattr** %4, align 8
  %221 = getelementptr inbounds %struct.vattr, %struct.vattr* %220, i32 0, i32 9
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.ucred*, %struct.ucred** %7, align 8
  %224 = load %struct.thread*, %struct.thread** %8, align 8
  %225 = call i32 @ext2_chown(%struct.vnode* %216, i64 %219, i64 %222, %struct.ucred* %223, %struct.thread* %224)
  store i32 %225, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %215
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %2, align 4
  br label %423

229:                                              ; preds = %215
  br label %230

230:                                              ; preds = %229, %197
  %231 = load %struct.vattr*, %struct.vattr** %4, align 8
  %232 = getelementptr inbounds %struct.vattr, %struct.vattr* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @VNOVAL, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %267

236:                                              ; preds = %230
  %237 = load %struct.vnode*, %struct.vnode** %5, align 8
  %238 = getelementptr inbounds %struct.vnode, %struct.vnode* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  switch i32 %239, label %254 [
    i32 130, label %240
    i32 129, label %242
    i32 128, label %242
  ]

240:                                              ; preds = %236
  %241 = load i32, i32* @EISDIR, align 4
  store i32 %241, i32* %2, align 4
  br label %423

242:                                              ; preds = %236, %236
  %243 = load %struct.vnode*, %struct.vnode** %5, align 8
  %244 = getelementptr inbounds %struct.vnode, %struct.vnode* %243, i32 0, i32 1
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @MNT_RDONLY, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %242
  %252 = load i32, i32* @EROFS, align 4
  store i32 %252, i32* %2, align 4
  br label %423

253:                                              ; preds = %242
  br label %255

254:                                              ; preds = %236
  br label %255

255:                                              ; preds = %254, %253
  %256 = load %struct.vnode*, %struct.vnode** %5, align 8
  %257 = load %struct.vattr*, %struct.vattr** %4, align 8
  %258 = getelementptr inbounds %struct.vattr, %struct.vattr* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.ucred*, %struct.ucred** %7, align 8
  %261 = load %struct.thread*, %struct.thread** %8, align 8
  %262 = call i32 @ext2_truncate(%struct.vnode* %256, i32 %259, i32 0, %struct.ucred* %260, %struct.thread* %261)
  store i32 %262, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %255
  %265 = load i32, i32* %9, align 4
  store i32 %265, i32* %2, align 4
  br label %423

266:                                              ; preds = %255
  br label %267

267:                                              ; preds = %266, %230
  %268 = load %struct.vattr*, %struct.vattr** %4, align 8
  %269 = getelementptr inbounds %struct.vattr, %struct.vattr* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @VNOVAL, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %281, label %274

274:                                              ; preds = %267
  %275 = load %struct.vattr*, %struct.vattr** %4, align 8
  %276 = getelementptr inbounds %struct.vattr, %struct.vattr* %275, i32 0, i32 14
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @VNOVAL, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %394

281:                                              ; preds = %274, %267
  %282 = load %struct.vnode*, %struct.vnode** %5, align 8
  %283 = getelementptr inbounds %struct.vnode, %struct.vnode* %282, i32 0, i32 1
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @MNT_RDONLY, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %281
  %291 = load i32, i32* @EROFS, align 4
  store i32 %291, i32* %2, align 4
  br label %423

292:                                              ; preds = %281
  %293 = load %struct.vnode*, %struct.vnode** %5, align 8
  %294 = load i32, i32* @VADMIN, align 4
  %295 = load %struct.ucred*, %struct.ucred** %7, align 8
  %296 = load %struct.thread*, %struct.thread** %8, align 8
  %297 = call i32 @VOP_ACCESS(%struct.vnode* %293, i32 %294, %struct.ucred* %295, %struct.thread* %296)
  store i32 %297, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %315

299:                                              ; preds = %292
  %300 = load %struct.vattr*, %struct.vattr** %4, align 8
  %301 = getelementptr inbounds %struct.vattr, %struct.vattr* %300, i32 0, i32 11
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @VA_UTIMES_NULL, align 4
  %304 = and i32 %302, %303
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %313, label %306

306:                                              ; preds = %299
  %307 = load %struct.vnode*, %struct.vnode** %5, align 8
  %308 = load i32, i32* @VWRITE, align 4
  %309 = load %struct.ucred*, %struct.ucred** %7, align 8
  %310 = load %struct.thread*, %struct.thread** %8, align 8
  %311 = call i32 @VOP_ACCESS(%struct.vnode* %307, i32 %308, %struct.ucred* %309, %struct.thread* %310)
  store i32 %311, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %306, %299
  %314 = load i32, i32* %9, align 4
  store i32 %314, i32* %2, align 4
  br label %423

315:                                              ; preds = %306, %292
  %316 = load i32, i32* @IN_CHANGE, align 4
  %317 = load i32, i32* @IN_MODIFIED, align 4
  %318 = or i32 %316, %317
  %319 = load %struct.inode*, %struct.inode** %6, align 8
  %320 = getelementptr inbounds %struct.inode, %struct.inode* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load %struct.vattr*, %struct.vattr** %4, align 8
  %324 = getelementptr inbounds %struct.vattr, %struct.vattr* %323, i32 0, i32 15
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @VNOVAL, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %348

329:                                              ; preds = %315
  %330 = load i32, i32* @IN_ACCESS, align 4
  %331 = xor i32 %330, -1
  %332 = load %struct.inode*, %struct.inode** %6, align 8
  %333 = getelementptr inbounds %struct.inode, %struct.inode* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, %331
  store i32 %335, i32* %333, align 4
  %336 = load %struct.vattr*, %struct.vattr** %4, align 8
  %337 = getelementptr inbounds %struct.vattr, %struct.vattr* %336, i32 0, i32 15
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.inode*, %struct.inode** %6, align 8
  %341 = getelementptr inbounds %struct.inode, %struct.inode* %340, i32 0, i32 2
  store i32 %339, i32* %341, align 4
  %342 = load %struct.vattr*, %struct.vattr** %4, align 8
  %343 = getelementptr inbounds %struct.vattr, %struct.vattr* %342, i32 0, i32 15
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.inode*, %struct.inode** %6, align 8
  %347 = getelementptr inbounds %struct.inode, %struct.inode* %346, i32 0, i32 7
  store i32 %345, i32* %347, align 4
  br label %348

348:                                              ; preds = %329, %315
  %349 = load %struct.vattr*, %struct.vattr** %4, align 8
  %350 = getelementptr inbounds %struct.vattr, %struct.vattr* %349, i32 0, i32 14
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @VNOVAL, align 4
  %354 = icmp ne i32 %352, %353
  br i1 %354, label %355, label %374

355:                                              ; preds = %348
  %356 = load i32, i32* @IN_UPDATE, align 4
  %357 = xor i32 %356, -1
  %358 = load %struct.inode*, %struct.inode** %6, align 8
  %359 = getelementptr inbounds %struct.inode, %struct.inode* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, %357
  store i32 %361, i32* %359, align 4
  %362 = load %struct.vattr*, %struct.vattr** %4, align 8
  %363 = getelementptr inbounds %struct.vattr, %struct.vattr* %362, i32 0, i32 14
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.inode*, %struct.inode** %6, align 8
  %367 = getelementptr inbounds %struct.inode, %struct.inode* %366, i32 0, i32 3
  store i32 %365, i32* %367, align 4
  %368 = load %struct.vattr*, %struct.vattr** %4, align 8
  %369 = getelementptr inbounds %struct.vattr, %struct.vattr* %368, i32 0, i32 14
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.inode*, %struct.inode** %6, align 8
  %373 = getelementptr inbounds %struct.inode, %struct.inode* %372, i32 0, i32 6
  store i32 %371, i32* %373, align 4
  br label %374

374:                                              ; preds = %355, %348
  %375 = load %struct.vattr*, %struct.vattr** %4, align 8
  %376 = getelementptr inbounds %struct.vattr, %struct.vattr* %375, i32 0, i32 13
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.inode*, %struct.inode** %6, align 8
  %380 = getelementptr inbounds %struct.inode, %struct.inode* %379, i32 0, i32 5
  store i32 %378, i32* %380, align 4
  %381 = load %struct.vattr*, %struct.vattr** %4, align 8
  %382 = getelementptr inbounds %struct.vattr, %struct.vattr* %381, i32 0, i32 13
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.inode*, %struct.inode** %6, align 8
  %386 = getelementptr inbounds %struct.inode, %struct.inode* %385, i32 0, i32 4
  store i32 %384, i32* %386, align 4
  %387 = load %struct.vnode*, %struct.vnode** %5, align 8
  %388 = call i32 @ext2_update(%struct.vnode* %387, i32 0)
  store i32 %388, i32* %9, align 4
  %389 = load i32, i32* %9, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %374
  %392 = load i32, i32* %9, align 4
  store i32 %392, i32* %2, align 4
  br label %423

393:                                              ; preds = %374
  br label %394

394:                                              ; preds = %393, %274
  store i32 0, i32* %9, align 4
  %395 = load %struct.vattr*, %struct.vattr** %4, align 8
  %396 = getelementptr inbounds %struct.vattr, %struct.vattr* %395, i32 0, i32 12
  %397 = load i64, i64* %396, align 8
  %398 = load i32, i32* @VNOVAL, align 4
  %399 = sext i32 %398 to i64
  %400 = icmp ne i64 %397, %399
  br i1 %400, label %401, label %421

401:                                              ; preds = %394
  %402 = load %struct.vnode*, %struct.vnode** %5, align 8
  %403 = getelementptr inbounds %struct.vnode, %struct.vnode* %402, i32 0, i32 1
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @MNT_RDONLY, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %401
  %411 = load i32, i32* @EROFS, align 4
  store i32 %411, i32* %2, align 4
  br label %423

412:                                              ; preds = %401
  %413 = load %struct.vnode*, %struct.vnode** %5, align 8
  %414 = load %struct.vattr*, %struct.vattr** %4, align 8
  %415 = getelementptr inbounds %struct.vattr, %struct.vattr* %414, i32 0, i32 12
  %416 = load i64, i64* %415, align 8
  %417 = trunc i64 %416 to i32
  %418 = load %struct.ucred*, %struct.ucred** %7, align 8
  %419 = load %struct.thread*, %struct.thread** %8, align 8
  %420 = call i32 @ext2_chmod(%struct.vnode* %413, i32 %417, %struct.ucred* %418, %struct.thread* %419)
  store i32 %420, i32* %9, align 4
  br label %421

421:                                              ; preds = %412, %394
  %422 = load i32, i32* %9, align 4
  store i32 %422, i32* %2, align 4
  br label %423

423:                                              ; preds = %421, %410, %391, %313, %290, %264, %251, %240, %227, %213, %188, %177, %155, %131, %110, %101, %90, %70
  %424 = load i32, i32* %2, align 4
  ret i32 %424
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @securelevel_gt(%struct.ucred*, i32) #1

declare dso_local i32 @ext2_chown(%struct.vnode*, i64, i64, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @ext2_truncate(%struct.vnode*, i32, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @ext2_update(%struct.vnode*, i32) #1

declare dso_local i32 @ext2_chmod(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
