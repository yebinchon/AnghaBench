; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_lookupx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_lookupx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, %struct.devfs_dirent*, %struct.mount* }
%struct.devfs_dirent = type { i32 }
%struct.mount = type { i32 }
%struct.vop_lookup_args = type { %struct.vnode*, %struct.vnode**, %struct.componentname* }
%struct.componentname = type { i8*, i32, i32, i32, i32, i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.devfs_mount = type { i64, i32 }
%struct.cdev = type { i32 }
%struct.TYPE_2__ = type { %struct.devfs_dirent** }

@SPECNAMELEN = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@ISLASTCN = common dso_local global i32 0, align 4
@RENAME = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@clone_drain_lock = common dso_local global i32 0, align 4
@dev_clone = common dso_local global i32 0, align 4
@DE_WHITEOUT = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lookup_args*, i32*)* @devfs_lookupx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_lookupx(%struct.vop_lookup_args* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vop_lookup_args*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.devfs_dirent*, align 8
  %11 = alloca %struct.devfs_dirent*, align 8
  %12 = alloca %struct.devfs_dirent**, align 8
  %13 = alloca %struct.devfs_mount*, align 8
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.cdev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.vop_lookup_args* %0, %struct.vop_lookup_args** %4, align 8
  store i32* %1, i32** %5, align 8
  %24 = load i32, i32* @SPECNAMELEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %20, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %21, align 8
  %29 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %4, align 8
  %30 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %29, i32 0, i32 2
  %31 = load %struct.componentname*, %struct.componentname** %30, align 8
  store %struct.componentname* %31, %struct.componentname** %6, align 8
  %32 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %4, align 8
  %33 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %32, i32 0, i32 1
  %34 = load %struct.vnode**, %struct.vnode*** %33, align 8
  store %struct.vnode** %34, %struct.vnode*** %8, align 8
  %35 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %4, align 8
  %36 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %35, i32 0, i32 0
  %37 = load %struct.vnode*, %struct.vnode** %36, align 8
  store %struct.vnode* %37, %struct.vnode** %7, align 8
  %38 = load %struct.componentname*, %struct.componentname** %6, align 8
  %39 = getelementptr inbounds %struct.componentname, %struct.componentname* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %22, align 8
  %41 = load %struct.componentname*, %struct.componentname** %6, align 8
  %42 = getelementptr inbounds %struct.componentname, %struct.componentname* %41, i32 0, i32 6
  %43 = load %struct.thread*, %struct.thread** %42, align 8
  store %struct.thread* %43, %struct.thread** %9, align 8
  %44 = load %struct.componentname*, %struct.componentname** %6, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %17, align 4
  %47 = load %struct.componentname*, %struct.componentname** %6, align 8
  %48 = getelementptr inbounds %struct.componentname, %struct.componentname* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %18, align 4
  %50 = load %struct.vnode*, %struct.vnode** %7, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 3
  %52 = load %struct.mount*, %struct.mount** %51, align 8
  store %struct.mount* %52, %struct.mount** %14, align 8
  %53 = load %struct.mount*, %struct.mount** %14, align 8
  %54 = call %struct.devfs_mount* @VFSTODEVFS(%struct.mount* %53)
  store %struct.devfs_mount* %54, %struct.devfs_mount** %13, align 8
  %55 = load %struct.vnode*, %struct.vnode** %7, align 8
  %56 = getelementptr inbounds %struct.vnode, %struct.vnode* %55, i32 0, i32 2
  %57 = load %struct.devfs_dirent*, %struct.devfs_dirent** %56, align 8
  store %struct.devfs_dirent* %57, %struct.devfs_dirent** %11, align 8
  %58 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %59 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* %58, %struct.vnode** %59, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @ISLASTCN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %2
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @RENAME, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

70:                                               ; preds = %64, %2
  %71 = load %struct.vnode*, %struct.vnode** %7, align 8
  %72 = getelementptr inbounds %struct.vnode, %struct.vnode* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VDIR, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @ENOTDIR, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

78:                                               ; preds = %70
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @ISDOTDOT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.vnode*, %struct.vnode** %7, align 8
  %85 = getelementptr inbounds %struct.vnode, %struct.vnode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @VV_ROOT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @EIO, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

92:                                               ; preds = %83, %78
  %93 = load %struct.vnode*, %struct.vnode** %7, align 8
  %94 = load i32, i32* @VEXEC, align 4
  %95 = load %struct.componentname*, %struct.componentname** %6, align 8
  %96 = getelementptr inbounds %struct.componentname, %struct.componentname* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.thread*, %struct.thread** %9, align 8
  %99 = call i32 @VOP_ACCESS(%struct.vnode* %93, i32 %94, i32 %97, %struct.thread* %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

104:                                              ; preds = %92
  %105 = load %struct.componentname*, %struct.componentname** %6, align 8
  %106 = getelementptr inbounds %struct.componentname, %struct.componentname* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load i8*, i8** %22, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 46
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @ISLASTCN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @LOOKUP, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

125:                                              ; preds = %119, %114
  %126 = load %struct.vnode*, %struct.vnode** %7, align 8
  %127 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* %126, %struct.vnode** %127, align 8
  %128 = load %struct.vnode*, %struct.vnode** %7, align 8
  %129 = call i32 @VREF(%struct.vnode* %128)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

130:                                              ; preds = %109, %104
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* @ISDOTDOT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %174

135:                                              ; preds = %130
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @ISLASTCN, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @LOOKUP, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @EINVAL, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

146:                                              ; preds = %140, %135
  %147 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %148 = call %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent* %147)
  store %struct.devfs_dirent* %148, %struct.devfs_dirent** %10, align 8
  %149 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %150 = icmp eq %struct.devfs_dirent* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @ENOENT, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

153:                                              ; preds = %146
  %154 = load %struct.vnode*, %struct.vnode** %7, align 8
  %155 = call i32 @VOP_ISLOCKED(%struct.vnode* %154)
  store i32 %155, i32* %19, align 4
  %156 = load %struct.vnode*, %struct.vnode** %7, align 8
  %157 = call i32 @VOP_UNLOCK(%struct.vnode* %156, i32 0)
  %158 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %159 = load %struct.mount*, %struct.mount** %14, align 8
  %160 = load %struct.componentname*, %struct.componentname** %6, align 8
  %161 = getelementptr inbounds %struct.componentname, %struct.componentname* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @LK_TYPE_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %166 = call i32 @devfs_allocv(%struct.devfs_dirent* %158, %struct.mount* %159, i32 %164, %struct.vnode** %165)
  store i32 %166, i32* %16, align 4
  %167 = load i32*, i32** %5, align 8
  store i32 0, i32* %167, align 4
  %168 = load %struct.vnode*, %struct.vnode** %7, align 8
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* @LK_RETRY, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @vn_lock(%struct.vnode* %168, i32 %171)
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

174:                                              ; preds = %130
  %175 = load %struct.vnode*, %struct.vnode** %7, align 8
  %176 = getelementptr inbounds %struct.vnode, %struct.vnode* %175, i32 0, i32 2
  %177 = load %struct.devfs_dirent*, %struct.devfs_dirent** %176, align 8
  store %struct.devfs_dirent* %177, %struct.devfs_dirent** %11, align 8
  %178 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %179 = load %struct.componentname*, %struct.componentname** %6, align 8
  %180 = getelementptr inbounds %struct.componentname, %struct.componentname* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.componentname*, %struct.componentname** %6, align 8
  %183 = getelementptr inbounds %struct.componentname, %struct.componentname* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call %struct.devfs_dirent* @devfs_find(%struct.devfs_dirent* %178, i8* %181, i32 %184, i32 0)
  store %struct.devfs_dirent* %185, %struct.devfs_dirent** %10, align 8
  br label %186

186:                                              ; preds = %174
  %187 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %188 = icmp eq %struct.devfs_dirent* %187, null
  br i1 %188, label %189, label %297

189:                                              ; preds = %186
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* @DELETE, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i32, i32* @ENOENT, align 4
  store i32 %194, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

195:                                              ; preds = %189
  %196 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %197 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %198 = load %struct.componentname*, %struct.componentname** %6, align 8
  %199 = call i8* @devfs_fqpn(i8* %28, %struct.devfs_mount* %196, %struct.devfs_dirent* %197, %struct.componentname* %198)
  store i8* %199, i8** %22, align 8
  %200 = load i8*, i8** %22, align 8
  %201 = icmp eq i8* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %297

203:                                              ; preds = %195
  store %struct.cdev* null, %struct.cdev** %15, align 8
  %204 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %205 = call i32 @DEVFS_DMP_HOLD(%struct.devfs_mount* %204)
  %206 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %207 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %206, i32 0, i32 1
  %208 = call i32 @sx_xunlock(i32* %207)
  %209 = call i32 @sx_slock(i32* @clone_drain_lock)
  %210 = load i32, i32* @dev_clone, align 4
  %211 = load %struct.thread*, %struct.thread** %9, align 8
  %212 = getelementptr inbounds %struct.thread, %struct.thread* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i8*, i8** %22, align 8
  %215 = load i8*, i8** %22, align 8
  %216 = call i32 @strlen(i8* %215)
  %217 = call i32 @EVENTHANDLER_INVOKE(i32 %210, i32 %213, i8* %214, i32 %216, %struct.cdev** %15)
  %218 = call i32 @sx_sunlock(i32* @clone_drain_lock)
  %219 = load %struct.cdev*, %struct.cdev** %15, align 8
  %220 = icmp eq %struct.cdev* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %203
  %222 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %223 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %222, i32 0, i32 1
  %224 = call i32 @sx_xlock(i32* %223)
  br label %252

225:                                              ; preds = %203
  %226 = load %struct.vnode*, %struct.vnode** %7, align 8
  %227 = call i64 @devfs_populate_vp(%struct.vnode* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %225
  %230 = load i32*, i32** %5, align 8
  store i32 0, i32* %230, align 4
  %231 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %232 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %231, i32 0, i32 1
  %233 = call i32 @sx_xlock(i32* %232)
  %234 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %235 = call i64 @DEVFS_DMP_DROP(%struct.devfs_mount* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %229
  %238 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %239 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %238, i32 0, i32 1
  %240 = call i32 @sx_xunlock(i32* %239)
  %241 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %242 = call i32 @devfs_unmount_final(%struct.devfs_mount* %241)
  br label %247

243:                                              ; preds = %229
  %244 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %245 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %244, i32 0, i32 1
  %246 = call i32 @sx_xunlock(i32* %245)
  br label %247

247:                                              ; preds = %243, %237
  %248 = load %struct.cdev*, %struct.cdev** %15, align 8
  %249 = call i32 @dev_rel(%struct.cdev* %248)
  %250 = load i32, i32* @ENOENT, align 4
  store i32 %250, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

251:                                              ; preds = %225
  br label %252

252:                                              ; preds = %251, %221
  %253 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %254 = call i64 @DEVFS_DMP_DROP(%struct.devfs_mount* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %252
  %257 = load i32*, i32** %5, align 8
  store i32 0, i32* %257, align 4
  %258 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %259 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %258, i32 0, i32 1
  %260 = call i32 @sx_xunlock(i32* %259)
  %261 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %262 = call i32 @devfs_unmount_final(%struct.devfs_mount* %261)
  %263 = load %struct.cdev*, %struct.cdev** %15, align 8
  %264 = icmp ne %struct.cdev* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %256
  %266 = load %struct.cdev*, %struct.cdev** %15, align 8
  %267 = call i32 @dev_rel(%struct.cdev* %266)
  br label %268

268:                                              ; preds = %265, %256
  %269 = load i32, i32* @ENOENT, align 4
  store i32 %269, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

270:                                              ; preds = %252
  %271 = load %struct.cdev*, %struct.cdev** %15, align 8
  %272 = icmp eq %struct.cdev* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  br label %297

274:                                              ; preds = %270
  %275 = call i32 (...) @dev_lock()
  %276 = load %struct.cdev*, %struct.cdev** %15, align 8
  %277 = call %struct.TYPE_2__* @cdev2priv(%struct.cdev* %276)
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %278, align 8
  %280 = load %struct.devfs_mount*, %struct.devfs_mount** %13, align 8
  %281 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.devfs_dirent*, %struct.devfs_dirent** %279, i64 %282
  store %struct.devfs_dirent** %283, %struct.devfs_dirent*** %12, align 8
  %284 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %12, align 8
  %285 = icmp ne %struct.devfs_dirent** %284, null
  br i1 %285, label %286, label %293

286:                                              ; preds = %274
  %287 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %12, align 8
  %288 = load %struct.devfs_dirent*, %struct.devfs_dirent** %287, align 8
  %289 = icmp ne %struct.devfs_dirent* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %12, align 8
  %292 = load %struct.devfs_dirent*, %struct.devfs_dirent** %291, align 8
  store %struct.devfs_dirent* %292, %struct.devfs_dirent** %10, align 8
  br label %293

293:                                              ; preds = %290, %286, %274
  %294 = call i32 (...) @dev_unlock()
  %295 = load %struct.cdev*, %struct.cdev** %15, align 8
  %296 = call i32 @dev_rel(%struct.cdev* %295)
  br label %297

297:                                              ; preds = %293, %273, %202, %186
  %298 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %299 = icmp eq %struct.devfs_dirent* %298, null
  br i1 %299, label %307, label %300

300:                                              ; preds = %297
  %301 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %302 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @DE_WHITEOUT, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %336

307:                                              ; preds = %300, %297
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* @CREATE, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %315, label %311

311:                                              ; preds = %307
  %312 = load i32, i32* %18, align 4
  %313 = load i32, i32* @RENAME, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %334

315:                                              ; preds = %311, %307
  %316 = load i32, i32* %17, align 4
  %317 = load i32, i32* @LOCKPARENT, align 4
  %318 = load i32, i32* @WANTPARENT, align 4
  %319 = or i32 %317, %318
  %320 = and i32 %316, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %334

322:                                              ; preds = %315
  %323 = load i32, i32* %17, align 4
  %324 = load i32, i32* @ISLASTCN, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %322
  %328 = load i32, i32* @SAVENAME, align 4
  %329 = load %struct.componentname*, %struct.componentname** %6, align 8
  %330 = getelementptr inbounds %struct.componentname, %struct.componentname* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %328
  store i32 %332, i32* %330, align 8
  %333 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %333, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

334:                                              ; preds = %322, %315, %311
  %335 = load i32, i32* @ENOENT, align 4
  store i32 %335, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

336:                                              ; preds = %300
  %337 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %338 = load %struct.thread*, %struct.thread** %9, align 8
  %339 = call i64 @devfs_prison_check(%struct.devfs_dirent* %337, %struct.thread* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i32, i32* @ENOENT, align 4
  store i32 %342, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

343:                                              ; preds = %336
  %344 = load %struct.componentname*, %struct.componentname** %6, align 8
  %345 = getelementptr inbounds %struct.componentname, %struct.componentname* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @DELETE, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %377

349:                                              ; preds = %343
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* @ISLASTCN, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %377

354:                                              ; preds = %349
  %355 = load %struct.vnode*, %struct.vnode** %7, align 8
  %356 = load i32, i32* @VWRITE, align 4
  %357 = load %struct.componentname*, %struct.componentname** %6, align 8
  %358 = getelementptr inbounds %struct.componentname, %struct.componentname* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.thread*, %struct.thread** %9, align 8
  %361 = call i32 @VOP_ACCESS(%struct.vnode* %355, i32 %356, i32 %359, %struct.thread* %360)
  store i32 %361, i32* %16, align 4
  %362 = load i32, i32* %16, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %354
  %365 = load i32, i32* %16, align 4
  store i32 %365, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

366:                                              ; preds = %354
  %367 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %368 = load %struct.vnode*, %struct.vnode** %367, align 8
  %369 = load %struct.vnode*, %struct.vnode** %7, align 8
  %370 = icmp eq %struct.vnode* %368, %369
  br i1 %370, label %371, label %376

371:                                              ; preds = %366
  %372 = load %struct.vnode*, %struct.vnode** %7, align 8
  %373 = call i32 @VREF(%struct.vnode* %372)
  %374 = load %struct.vnode*, %struct.vnode** %7, align 8
  %375 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* %374, %struct.vnode** %375, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

376:                                              ; preds = %366
  br label %377

377:                                              ; preds = %376, %349, %343
  %378 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %379 = load %struct.mount*, %struct.mount** %14, align 8
  %380 = load %struct.componentname*, %struct.componentname** %6, align 8
  %381 = getelementptr inbounds %struct.componentname, %struct.componentname* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @LK_TYPE_MASK, align 4
  %384 = and i32 %382, %383
  %385 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %386 = call i32 @devfs_allocv(%struct.devfs_dirent* %378, %struct.mount* %379, i32 %384, %struct.vnode** %385)
  store i32 %386, i32* %16, align 4
  %387 = load i32*, i32** %5, align 8
  store i32 0, i32* %387, align 4
  %388 = load i32, i32* %16, align 4
  store i32 %388, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %389

389:                                              ; preds = %377, %371, %364, %341, %334, %327, %268, %247, %193, %153, %151, %144, %125, %123, %102, %90, %76, %68
  %390 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %390)
  %391 = load i32, i32* %3, align 4
  ret i32 %391
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.devfs_mount* @VFSTODEVFS(%struct.mount*) #2

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #2

declare dso_local i32 @VREF(%struct.vnode*) #2

declare dso_local %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent*) #2

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #2

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @devfs_allocv(%struct.devfs_dirent*, %struct.mount*, i32, %struct.vnode**) #2

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #2

declare dso_local %struct.devfs_dirent* @devfs_find(%struct.devfs_dirent*, i8*, i32, i32) #2

declare dso_local i8* @devfs_fqpn(i8*, %struct.devfs_mount*, %struct.devfs_dirent*, %struct.componentname*) #2

declare dso_local i32 @DEVFS_DMP_HOLD(%struct.devfs_mount*) #2

declare dso_local i32 @sx_xunlock(i32*) #2

declare dso_local i32 @sx_slock(i32*) #2

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, i32, i8*, i32, %struct.cdev**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sx_sunlock(i32*) #2

declare dso_local i32 @sx_xlock(i32*) #2

declare dso_local i64 @devfs_populate_vp(%struct.vnode*) #2

declare dso_local i64 @DEVFS_DMP_DROP(%struct.devfs_mount*) #2

declare dso_local i32 @devfs_unmount_final(%struct.devfs_mount*) #2

declare dso_local i32 @dev_rel(%struct.cdev*) #2

declare dso_local i32 @dev_lock(...) #2

declare dso_local %struct.TYPE_2__* @cdev2priv(%struct.cdev*) #2

declare dso_local i32 @dev_unlock(...) #2

declare dso_local i64 @devfs_prison_check(%struct.devfs_dirent*, %struct.thread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
