; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdvptocnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdvptocnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_vptocnp_args = type { i8*, i32*, %struct.ucred*, %struct.vnode**, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.vnode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vnode* }
%struct.vattr = type { i64, i32 }
%struct.nameidata = type { %struct.vnode* }
%struct.dirent = type { i64, i64, i8*, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@VDIR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@FREAD = common dso_local global i32 0, align 4
@VN_OPEN_NOAUDIT = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@MNT_UNION = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@DT_WHT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdvptocnp(%struct.vop_vptocnp_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_vptocnp_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.vattr, align 8
  %22 = alloca %struct.nameidata, align 8
  %23 = alloca %struct.thread*, align 8
  %24 = alloca %struct.dirent*, align 8
  %25 = alloca %struct.vnode*, align 8
  store %struct.vop_vptocnp_args* %0, %struct.vop_vptocnp_args** %3, align 8
  %26 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %26, i32 0, i32 4
  %28 = load %struct.vnode*, %struct.vnode** %27, align 8
  store %struct.vnode* %28, %struct.vnode** %4, align 8
  %29 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %29, i32 0, i32 3
  %31 = load %struct.vnode**, %struct.vnode*** %30, align 8
  store %struct.vnode** %31, %struct.vnode*** %5, align 8
  %32 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %32, i32 0, i32 2
  %34 = load %struct.ucred*, %struct.ucred** %33, align 8
  store %struct.ucred* %34, %struct.ucred** %6, align 8
  %35 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %36 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %43 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %43, %struct.thread** %23, align 8
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VDIR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %1
  %50 = load i32, i32* @ENOENT, align 4
  store i32 %50, i32* %2, align 4
  br label %319

51:                                               ; preds = %1
  %52 = load %struct.vnode*, %struct.vnode** %4, align 8
  %53 = load %struct.ucred*, %struct.ucred** %6, align 8
  %54 = call i32 @VOP_GETATTR(%struct.vnode* %52, %struct.vattr* %21, %struct.ucred* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %2, align 4
  br label %319

59:                                               ; preds = %51
  %60 = load %struct.vnode*, %struct.vnode** %4, align 8
  %61 = call i32 @VREF(%struct.vnode* %60)
  %62 = load %struct.vnode*, %struct.vnode** %4, align 8
  %63 = call i32 @VOP_ISLOCKED(%struct.vnode* %62)
  store i32 %63, i32* %16, align 4
  %64 = load %struct.vnode*, %struct.vnode** %4, align 8
  %65 = call i32 @VOP_UNLOCK(%struct.vnode* %64, i32 0)
  %66 = load i32, i32* @LOOKUP, align 4
  %67 = load i32, i32* @FOLLOW, align 4
  %68 = load i32, i32* @LOCKSHARED, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @LOCKLEAF, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @UIO_SYSSPACE, align 4
  %73 = load %struct.vnode*, %struct.vnode** %4, align 8
  %74 = load %struct.thread*, %struct.thread** %23, align 8
  %75 = call i32 @NDINIT_ATVP(%struct.nameidata* %22, i32 %66, i32 %71, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.vnode* %73, %struct.thread* %74)
  %76 = load i32, i32* @FREAD, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @VN_OPEN_NOAUDIT, align 4
  %78 = load %struct.ucred*, %struct.ucred** %6, align 8
  %79 = call i32 @vn_open_cred(%struct.nameidata* %22, i32* %15, i32 0, i32 %77, %struct.ucred* %78, i32* null)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %59
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @LK_RETRY, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @vn_lock(%struct.vnode* %83, i32 %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %2, align 4
  br label %319

89:                                               ; preds = %59
  %90 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %91 = call i32 @NDFREE(%struct.nameidata* %22, i32 %90)
  %92 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %22, i32 0, i32 0
  %93 = load %struct.vnode*, %struct.vnode** %92, align 8
  %94 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %93, %struct.vnode** %94, align 8
  store %struct.vnode* %93, %struct.vnode** %25, align 8
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = getelementptr inbounds %struct.vnode, %struct.vnode* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %99 = load %struct.vnode*, %struct.vnode** %98, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = icmp ne %struct.TYPE_2__* %97, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %89
  %104 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %105 = load %struct.vnode*, %struct.vnode** %104, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VV_ROOT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %103
  %112 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %113 = load %struct.vnode*, %struct.vnode** %112, align 8
  %114 = getelementptr inbounds %struct.vnode, %struct.vnode* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MNT_UNION, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %147

121:                                              ; preds = %111
  %122 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %123 = load %struct.vnode*, %struct.vnode** %122, align 8
  %124 = getelementptr inbounds %struct.vnode, %struct.vnode* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load %struct.vnode*, %struct.vnode** %126, align 8
  %128 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %127, %struct.vnode** %128, align 8
  %129 = load %struct.vnode*, %struct.vnode** %25, align 8
  %130 = call i32 @VREF(%struct.vnode* %129)
  %131 = load %struct.vnode*, %struct.vnode** %25, align 8
  %132 = call i32 @VOP_UNLOCK(%struct.vnode* %131, i32 0)
  %133 = load %struct.vnode*, %struct.vnode** %25, align 8
  %134 = load i32, i32* @FREAD, align 4
  %135 = load %struct.ucred*, %struct.ucred** %6, align 8
  %136 = load %struct.thread*, %struct.thread** %23, align 8
  %137 = call i32 @vn_close(%struct.vnode* %133, i32 %134, %struct.ucred* %135, %struct.thread* %136)
  %138 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %139 = load %struct.vnode*, %struct.vnode** %138, align 8
  %140 = call i32 @VREF(%struct.vnode* %139)
  %141 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %142 = load %struct.vnode*, %struct.vnode** %141, align 8
  %143 = load i32, i32* @LK_SHARED, align 4
  %144 = load i32, i32* @LK_RETRY, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @vn_lock(%struct.vnode* %142, i32 %145)
  store i32 1, i32* %18, align 4
  br label %147

147:                                              ; preds = %121, %111, %103, %89
  %148 = getelementptr inbounds %struct.vattr, %struct.vattr* %21, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %20, align 8
  %150 = load i32, i32* @DEV_BSIZE, align 4
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = getelementptr inbounds %struct.vattr, %struct.vattr* %21, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.vattr, %struct.vattr* %21, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %155, %147
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* @M_TEMP, align 4
  %161 = load i32, i32* @M_WAITOK, align 4
  %162 = call i64 @malloc(i32 %159, i32 %160, i32 %161)
  %163 = inttoptr i64 %162 to i8*
  store i8* %163, i8** %9, align 8
  %164 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %165 = load %struct.vnode*, %struct.vnode** %164, align 8
  %166 = getelementptr inbounds %struct.vnode, %struct.vnode* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @VDIR, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %158
  %171 = load i32, i32* @ENOENT, align 4
  store i32 %171, i32* %12, align 4
  br label %283

172:                                              ; preds = %158
  store i64 0, i64* %19, align 8
  store i32 0, i32* %17, align 4
  br label %173

173:                                              ; preds = %279, %172
  %174 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %175 = load %struct.vnode*, %struct.vnode** %174, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.thread*, %struct.thread** %23, align 8
  %179 = call i32 @get_next_dirent(%struct.vnode* %175, %struct.dirent** %24, i8* %176, i32 %177, i64* %19, i8** %10, i32* %17, i32* %13, %struct.thread* %178)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %283

183:                                              ; preds = %173
  %184 = load %struct.dirent*, %struct.dirent** %24, align 8
  %185 = getelementptr inbounds %struct.dirent, %struct.dirent* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DT_WHT, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %271

189:                                              ; preds = %183
  %190 = load %struct.dirent*, %struct.dirent** %24, align 8
  %191 = getelementptr inbounds %struct.dirent, %struct.dirent* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %20, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %271

195:                                              ; preds = %189
  %196 = load i32, i32* %18, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %233

198:                                              ; preds = %195
  %199 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %200 = load %struct.vnode*, %struct.vnode** %199, align 8
  %201 = call i32 @VOP_UNLOCK(%struct.vnode* %200, i32 0)
  %202 = load %struct.vnode*, %struct.vnode** %25, align 8
  %203 = load i32, i32* @LK_SHARED, align 4
  %204 = load i32, i32* @LK_RETRY, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @vn_lock(%struct.vnode* %202, i32 %205)
  %207 = load %struct.vnode*, %struct.vnode** %25, align 8
  %208 = load %struct.dirent*, %struct.dirent** %24, align 8
  %209 = getelementptr inbounds %struct.dirent, %struct.dirent* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.thread*, %struct.thread** %23, align 8
  %212 = call i64 @dirent_exists(%struct.vnode* %207, i8* %210, %struct.thread* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %198
  %215 = load i32, i32* @ENOENT, align 4
  store i32 %215, i32* %12, align 4
  %216 = load %struct.vnode*, %struct.vnode** %25, align 8
  %217 = call i32 @VOP_UNLOCK(%struct.vnode* %216, i32 0)
  %218 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %219 = load %struct.vnode*, %struct.vnode** %218, align 8
  %220 = load i32, i32* @LK_SHARED, align 4
  %221 = load i32, i32* @LK_RETRY, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @vn_lock(%struct.vnode* %219, i32 %222)
  br label %283

224:                                              ; preds = %198
  %225 = load %struct.vnode*, %struct.vnode** %25, align 8
  %226 = call i32 @VOP_UNLOCK(%struct.vnode* %225, i32 0)
  %227 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %228 = load %struct.vnode*, %struct.vnode** %227, align 8
  %229 = load i32, i32* @LK_SHARED, align 4
  %230 = load i32, i32* @LK_RETRY, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @vn_lock(%struct.vnode* %228, i32 %231)
  br label %233

233:                                              ; preds = %224, %195
  %234 = load %struct.dirent*, %struct.dirent** %24, align 8
  %235 = getelementptr inbounds %struct.dirent, %struct.dirent* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sub nsw i32 %237, %236
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* %11, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %233
  %242 = load i32, i32* @ENOMEM, align 4
  store i32 %242, i32* %12, align 4
  br label %283

243:                                              ; preds = %233
  %244 = load %struct.dirent*, %struct.dirent** %24, align 8
  %245 = getelementptr inbounds %struct.dirent, %struct.dirent* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %258

248:                                              ; preds = %243
  %249 = load %struct.dirent*, %struct.dirent** %24, align 8
  %250 = getelementptr inbounds %struct.dirent, %struct.dirent* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 46
  br i1 %255, label %256, label %258

256:                                              ; preds = %248
  %257 = load i32, i32* @ENOENT, align 4
  store i32 %257, i32* %12, align 4
  br label %270

258:                                              ; preds = %248, %243
  %259 = load %struct.dirent*, %struct.dirent** %24, align 8
  %260 = getelementptr inbounds %struct.dirent, %struct.dirent* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = load i8*, i8** %7, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load %struct.dirent*, %struct.dirent** %24, align 8
  %267 = getelementptr inbounds %struct.dirent, %struct.dirent* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @bcopy(i8* %261, i8* %265, i32 %268)
  store i32 0, i32* %12, align 4
  br label %270

270:                                              ; preds = %258, %256
  br label %283

271:                                              ; preds = %189, %183
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %17, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %13, align 4
  %277 = icmp ne i32 %276, 0
  %278 = xor i1 %277, true
  br label %279

279:                                              ; preds = %275, %272
  %280 = phi i1 [ true, %272 ], [ %278, %275 ]
  br i1 %280, label %173, label %281

281:                                              ; preds = %279
  %282 = load i32, i32* @ENOENT, align 4
  store i32 %282, i32* %12, align 4
  br label %283

283:                                              ; preds = %281, %270, %241, %214, %182, %170
  %284 = load i8*, i8** %9, align 8
  %285 = load i32, i32* @M_TEMP, align 4
  %286 = call i32 @free(i8* %284, i32 %285)
  %287 = load i32, i32* %12, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %283
  %290 = load i32, i32* %11, align 4
  %291 = load i32*, i32** %8, align 8
  store i32 %290, i32* %291, align 4
  %292 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %293 = load %struct.vnode*, %struct.vnode** %292, align 8
  %294 = call i32 @vref(%struct.vnode* %293)
  br label %295

295:                                              ; preds = %289, %283
  %296 = load i32, i32* %18, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %300 = load %struct.vnode*, %struct.vnode** %299, align 8
  %301 = call i32 @vput(%struct.vnode* %300)
  %302 = load %struct.vnode*, %struct.vnode** %25, align 8
  %303 = call i32 @vrele(%struct.vnode* %302)
  br label %312

304:                                              ; preds = %295
  %305 = load %struct.vnode*, %struct.vnode** %25, align 8
  %306 = call i32 @VOP_UNLOCK(%struct.vnode* %305, i32 0)
  %307 = load %struct.vnode*, %struct.vnode** %25, align 8
  %308 = load i32, i32* @FREAD, align 4
  %309 = load %struct.ucred*, %struct.ucred** %6, align 8
  %310 = load %struct.thread*, %struct.thread** %23, align 8
  %311 = call i32 @vn_close(%struct.vnode* %307, i32 %308, %struct.ucred* %309, %struct.thread* %310)
  br label %312

312:                                              ; preds = %304, %298
  %313 = load %struct.vnode*, %struct.vnode** %4, align 8
  %314 = load i32, i32* %16, align 4
  %315 = load i32, i32* @LK_RETRY, align 4
  %316 = or i32 %314, %315
  %317 = call i32 @vn_lock(%struct.vnode* %313, i32 %316)
  %318 = load i32, i32* %12, align 4
  store i32 %318, i32* %2, align 4
  br label %319

319:                                              ; preds = %312, %82, %57, %49
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @NDINIT_ATVP(%struct.nameidata*, i32, i32, i32, i8*, %struct.vnode*, %struct.thread*) #1

declare dso_local i32 @vn_open_cred(%struct.nameidata*, i32*, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_close(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @get_next_dirent(%struct.vnode*, %struct.dirent**, i8*, i32, i64*, i8**, i32*, i32*, %struct.thread*) #1

declare dso_local i64 @dirent_exists(%struct.vnode*, i8*, %struct.thread*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
