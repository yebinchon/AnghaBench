; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { %struct.TYPE_9__*, %struct.vnode*, %struct.vattr* }
%struct.TYPE_9__ = type { i64 }
%struct.vnode = type { i64, i32, %struct.TYPE_8__*, %struct.devfs_dirent* }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.devfs_dirent = type { i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_7__, %struct.devfs_dirent* }
%struct.vattr = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_7__, i64 }
%struct.TYPE_11__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@VNON = common dso_local global i64 0, align 8
@VNOVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@PRIV_VFS_CHOWN = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @devfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.devfs_dirent*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %12 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %12, i32 0, i32 2
  %14 = load %struct.vattr*, %struct.vattr** %13, align 8
  store %struct.vattr* %14, %struct.vattr** %5, align 8
  %15 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %15, i32 0, i32 1
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %6, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %7, align 8
  %19 = load %struct.vattr*, %struct.vattr** %5, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VNON, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %78, label %24

24:                                               ; preds = %1
  %25 = load %struct.vattr*, %struct.vattr** %5, align 8
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VNOVAL, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %78, label %30

30:                                               ; preds = %24
  %31 = load %struct.vattr*, %struct.vattr** %5, align 8
  %32 = getelementptr inbounds %struct.vattr, %struct.vattr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VNOVAL, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %78, label %36

36:                                               ; preds = %30
  %37 = load %struct.vattr*, %struct.vattr** %5, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VNOVAL, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %78, label %42

42:                                               ; preds = %36
  %43 = load %struct.vattr*, %struct.vattr** %5, align 8
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VNOVAL, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %78, label %48

48:                                               ; preds = %42
  %49 = load %struct.vattr*, %struct.vattr** %5, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VNOVAL, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.vattr*, %struct.vattr** %5, align 8
  %56 = getelementptr inbounds %struct.vattr, %struct.vattr* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.vattr*, %struct.vattr** %5, align 8
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VNOVAL, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %59
  %66 = load %struct.vattr*, %struct.vattr** %5, align 8
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @VNOVAL, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.vattr*, %struct.vattr** %5, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VNOVAL, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %65, %59, %54, %42, %36, %30, %24, %1
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %2, align 4
  br label %332

80:                                               ; preds = %72
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = call i32 @devfs_populate_vp(%struct.vnode* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %332

87:                                               ; preds = %80
  %88 = load %struct.vnode*, %struct.vnode** %6, align 8
  %89 = getelementptr inbounds %struct.vnode, %struct.vnode* %88, i32 0, i32 3
  %90 = load %struct.devfs_dirent*, %struct.devfs_dirent** %89, align 8
  store %struct.devfs_dirent* %90, %struct.devfs_dirent** %4, align 8
  %91 = load %struct.vnode*, %struct.vnode** %6, align 8
  %92 = getelementptr inbounds %struct.vnode, %struct.vnode* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VDIR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %98 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %97, i32 0, i32 5
  %99 = load %struct.devfs_dirent*, %struct.devfs_dirent** %98, align 8
  store %struct.devfs_dirent* %99, %struct.devfs_dirent** %4, align 8
  br label %100

100:                                              ; preds = %96, %87
  store i32 0, i32* %8, align 4
  %101 = load %struct.vattr*, %struct.vattr** %5, align 8
  %102 = getelementptr inbounds %struct.vattr, %struct.vattr* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @VNOVAL, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %109 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %10, align 8
  br label %115

111:                                              ; preds = %100
  %112 = load %struct.vattr*, %struct.vattr** %5, align 8
  %113 = getelementptr inbounds %struct.vattr, %struct.vattr* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.vattr*, %struct.vattr** %5, align 8
  %117 = getelementptr inbounds %struct.vattr, %struct.vattr* %116, i32 0, i32 9
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @VNOVAL, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp eq i64 %118, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %124 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %11, align 8
  br label %130

126:                                              ; preds = %115
  %127 = load %struct.vattr*, %struct.vattr** %5, align 8
  %128 = getelementptr inbounds %struct.vattr, %struct.vattr* %127, i32 0, i32 9
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %11, align 8
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %133 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %139 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %186

142:                                              ; preds = %136, %130
  %143 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %144 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %149 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %171, label %152

152:                                              ; preds = %142
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %155 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %171, label %158

158:                                              ; preds = %152
  %159 = load i64, i64* %11, align 8
  %160 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %161 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %159, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %167 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %166, i32 0, i32 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = call i32 @groupmember(i64 %165, %struct.TYPE_9__* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %164, %152, %142
  %172 = load %struct.thread*, %struct.thread** %7, align 8
  %173 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %174 = call i32 @priv_check(%struct.thread* %172, i32 %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %324

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %164, %158
  %180 = load i64, i64* %10, align 8
  %181 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %182 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %185 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  store i32 1, i32* %8, align 4
  br label %186

186:                                              ; preds = %179, %136
  %187 = load %struct.vattr*, %struct.vattr** %5, align 8
  %188 = getelementptr inbounds %struct.vattr, %struct.vattr* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @VNOVAL, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp ne i64 %189, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %186
  %194 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %195 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %194, i32 0, i32 0
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %200 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %198, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %193
  %204 = load %struct.thread*, %struct.thread** %7, align 8
  %205 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %206 = call i32 @priv_check(%struct.thread* %204, i32 %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %324

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %210, %193
  %212 = load %struct.vattr*, %struct.vattr** %5, align 8
  %213 = getelementptr inbounds %struct.vattr, %struct.vattr* %212, i32 0, i32 10
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %216 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %215, i32 0, i32 2
  store i64 %214, i64* %216, align 8
  store i32 1, i32* %8, align 4
  br label %217

217:                                              ; preds = %211, %186
  %218 = load %struct.vattr*, %struct.vattr** %5, align 8
  %219 = getelementptr inbounds %struct.vattr, %struct.vattr* %218, i32 0, i32 12
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @VNOVAL, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %231, label %224

224:                                              ; preds = %217
  %225 = load %struct.vattr*, %struct.vattr** %5, align 8
  %226 = getelementptr inbounds %struct.vattr, %struct.vattr* %225, i32 0, i32 11
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @VNOVAL, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %303

231:                                              ; preds = %224, %217
  %232 = load %struct.vnode*, %struct.vnode** %6, align 8
  %233 = load %struct.vattr*, %struct.vattr** %5, align 8
  %234 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %235 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %234, i32 0, i32 0
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = load %struct.thread*, %struct.thread** %7, align 8
  %238 = call i32 @vn_utimes_perm(%struct.vnode* %232, %struct.vattr* %233, %struct.TYPE_9__* %236, %struct.thread* %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  br label %324

242:                                              ; preds = %231
  %243 = load %struct.vattr*, %struct.vattr** %5, align 8
  %244 = getelementptr inbounds %struct.vattr, %struct.vattr* %243, i32 0, i32 12
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @VNOVAL, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %272

249:                                              ; preds = %242
  %250 = load %struct.vnode*, %struct.vnode** %6, align 8
  %251 = getelementptr inbounds %struct.vnode, %struct.vnode* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @VCHR, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %264

255:                                              ; preds = %249
  %256 = load %struct.vnode*, %struct.vnode** %6, align 8
  %257 = getelementptr inbounds %struct.vnode, %struct.vnode* %256, i32 0, i32 2
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load %struct.vattr*, %struct.vattr** %5, align 8
  %261 = getelementptr inbounds %struct.vattr, %struct.vattr* %260, i32 0, i32 12
  %262 = bitcast %struct.TYPE_7__* %259 to i8*
  %263 = bitcast %struct.TYPE_7__* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %262, i8* align 4 %263, i64 4, i1 false)
  br label %271

264:                                              ; preds = %249
  %265 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %266 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %265, i32 0, i32 4
  %267 = load %struct.vattr*, %struct.vattr** %5, align 8
  %268 = getelementptr inbounds %struct.vattr, %struct.vattr* %267, i32 0, i32 12
  %269 = bitcast %struct.TYPE_7__* %266 to i8*
  %270 = bitcast %struct.TYPE_7__* %268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %269, i8* align 4 %270, i64 4, i1 false)
  br label %271

271:                                              ; preds = %264, %255
  br label %272

272:                                              ; preds = %271, %242
  %273 = load %struct.vattr*, %struct.vattr** %5, align 8
  %274 = getelementptr inbounds %struct.vattr, %struct.vattr* %273, i32 0, i32 11
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @VNOVAL, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %302

279:                                              ; preds = %272
  %280 = load %struct.vnode*, %struct.vnode** %6, align 8
  %281 = getelementptr inbounds %struct.vnode, %struct.vnode* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @VCHR, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %279
  %286 = load %struct.vnode*, %struct.vnode** %6, align 8
  %287 = getelementptr inbounds %struct.vnode, %struct.vnode* %286, i32 0, i32 2
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  %290 = load %struct.vattr*, %struct.vattr** %5, align 8
  %291 = getelementptr inbounds %struct.vattr, %struct.vattr* %290, i32 0, i32 11
  %292 = bitcast %struct.TYPE_10__* %289 to i8*
  %293 = bitcast %struct.TYPE_10__* %291 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %292, i8* align 8 %293, i64 4, i1 false)
  br label %301

294:                                              ; preds = %279
  %295 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %296 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %295, i32 0, i32 3
  %297 = load %struct.vattr*, %struct.vattr** %5, align 8
  %298 = getelementptr inbounds %struct.vattr, %struct.vattr* %297, i32 0, i32 11
  %299 = bitcast %struct.TYPE_10__* %296 to i8*
  %300 = bitcast %struct.TYPE_10__* %298 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %299, i8* align 8 %300, i64 4, i1 false)
  br label %301

301:                                              ; preds = %294, %285
  br label %302

302:                                              ; preds = %301, %272
  store i32 1, i32* %8, align 4
  br label %303

303:                                              ; preds = %302, %224
  %304 = load i32, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %323

306:                                              ; preds = %303
  %307 = load %struct.vnode*, %struct.vnode** %6, align 8
  %308 = getelementptr inbounds %struct.vnode, %struct.vnode* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @VCHR, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %306
  %313 = load %struct.vnode*, %struct.vnode** %6, align 8
  %314 = getelementptr inbounds %struct.vnode, %struct.vnode* %313, i32 0, i32 2
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = call i32 @vfs_timestamp(%struct.TYPE_10__* %316)
  br label %322

318:                                              ; preds = %306
  %319 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %320 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %319, i32 0, i32 3
  %321 = call i32 @vfs_timestamp(%struct.TYPE_10__* %320)
  br label %322

322:                                              ; preds = %318, %312
  br label %323

323:                                              ; preds = %322, %303
  br label %324

324:                                              ; preds = %323, %241, %209, %177
  %325 = load %struct.vnode*, %struct.vnode** %6, align 8
  %326 = getelementptr inbounds %struct.vnode, %struct.vnode* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = call %struct.TYPE_11__* @VFSTODEVFS(i32 %327)
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = call i32 @sx_xunlock(i32* %329)
  %331 = load i32, i32* %9, align 4
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %324, %85, %78
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @devfs_populate_vp(%struct.vnode*) #1

declare dso_local i32 @groupmember(i64, %struct.TYPE_9__*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @vn_utimes_perm(%struct.vnode*, %struct.vattr*, %struct.TYPE_9__*, %struct.thread*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfs_timestamp(%struct.TYPE_10__*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local %struct.TYPE_11__* @VFSTODEVFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
