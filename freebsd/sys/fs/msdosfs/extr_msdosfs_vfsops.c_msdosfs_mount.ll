; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.msdosfsmount = type { i32, i32, i32, %struct.vnode*, i32 }
%struct.nameidata = type { %struct.vnode* }

@curthread = common dso_local global %struct.thread* null, align 8
@msdosfs_opts = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@MNT_WAIT = common dso_local global i32 0, align 4
@WRITECLOSE = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_PERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @msdosfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca %struct.nameidata, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.msdosfsmount* null, %struct.msdosfsmount** %6, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %5, align 8
  %13 = load %struct.mount*, %struct.mount** %3, align 8
  %14 = getelementptr inbounds %struct.mount, %struct.mount* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @msdosfs_opts, align 4
  %17 = call i64 @vfs_filteropt(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %321

21:                                               ; preds = %1
  %22 = load %struct.mount*, %struct.mount** %3, align 8
  %23 = getelementptr inbounds %struct.mount, %struct.mount* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MNT_UPDATE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %202

28:                                               ; preds = %21
  %29 = load %struct.mount*, %struct.mount** %3, align 8
  %30 = call %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount* %29)
  store %struct.msdosfsmount* %30, %struct.msdosfsmount** %6, align 8
  %31 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %32 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %111, label %37

37:                                               ; preds = %28
  %38 = load %struct.mount*, %struct.mount** %3, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @vfs_flagopt(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %111

43:                                               ; preds = %37
  %44 = load %struct.mount*, %struct.mount** %3, align 8
  %45 = load i32, i32* @MNT_WAIT, align 4
  %46 = call i32 @VFS_SYNC(%struct.mount* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %321

51:                                               ; preds = %43
  %52 = load i32, i32* @WRITECLOSE, align 4
  store i32 %52, i32* %9, align 4
  %53 = load %struct.mount*, %struct.mount** %3, align 8
  %54 = getelementptr inbounds %struct.mount, %struct.mount* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MNT_FORCE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @FORCECLOSE, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.mount*, %struct.mount** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.thread*, %struct.thread** %5, align 8
  %67 = call i32 @vflush(%struct.mount* %64, i32 0, i32 %65, %struct.thread* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %321

72:                                               ; preds = %63
  %73 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %74 = call i32 @markvoldirty(%struct.msdosfsmount* %73, i32 0)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %79 = call i32 @markvoldirty(%struct.msdosfsmount* %78, i32 1)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %321

81:                                               ; preds = %72
  %82 = call i32 (...) @g_topology_lock()
  %83 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %84 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @g_access(i32 %85, i32 0, i32 -1, i32 0)
  store i32 %86, i32* %8, align 4
  %87 = call i32 (...) @g_topology_unlock()
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %92 = call i32 @markvoldirty(%struct.msdosfsmount* %91, i32 1)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %321

94:                                               ; preds = %81
  %95 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %96 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %98 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %99 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.mount*, %struct.mount** %3, align 8
  %103 = call i32 @MNT_ILOCK(%struct.mount* %102)
  %104 = load i32, i32* @MNT_RDONLY, align 4
  %105 = load %struct.mount*, %struct.mount** %3, align 8
  %106 = getelementptr inbounds %struct.mount, %struct.mount* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.mount*, %struct.mount** %3, align 8
  %110 = call i32 @MNT_IUNLOCK(%struct.mount* %109)
  br label %201

111:                                              ; preds = %37, %28
  %112 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %113 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %200

118:                                              ; preds = %111
  %119 = load %struct.mount*, %struct.mount** %3, align 8
  %120 = getelementptr inbounds %struct.mount, %struct.mount* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @vfs_flagopt(i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %200, label %124

124:                                              ; preds = %118
  %125 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %126 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %125, i32 0, i32 3
  %127 = load %struct.vnode*, %struct.vnode** %126, align 8
  store %struct.vnode* %127, %struct.vnode** %4, align 8
  %128 = load %struct.vnode*, %struct.vnode** %4, align 8
  %129 = load i32, i32* @LK_EXCLUSIVE, align 4
  %130 = load i32, i32* @LK_RETRY, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @vn_lock(%struct.vnode* %128, i32 %131)
  %133 = load %struct.vnode*, %struct.vnode** %4, align 8
  %134 = load i32, i32* @VREAD, align 4
  %135 = load i32, i32* @VWRITE, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.thread*, %struct.thread** %5, align 8
  %138 = getelementptr inbounds %struct.thread, %struct.thread* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.thread*, %struct.thread** %5, align 8
  %141 = call i32 @VOP_ACCESS(%struct.vnode* %133, i32 %136, i32 %139, %struct.thread* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %124
  %145 = load %struct.thread*, %struct.thread** %5, align 8
  %146 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %147 = call i32 @priv_check(%struct.thread* %145, i32 %146)
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %144, %124
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.vnode*, %struct.vnode** %4, align 8
  %153 = call i32 @VOP_UNLOCK(%struct.vnode* %152, i32 0)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %321

155:                                              ; preds = %148
  %156 = load %struct.vnode*, %struct.vnode** %4, align 8
  %157 = call i32 @VOP_UNLOCK(%struct.vnode* %156, i32 0)
  %158 = call i32 (...) @g_topology_lock()
  %159 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %160 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @g_access(i32 %161, i32 0, i32 1, i32 0)
  store i32 %162, i32* %8, align 4
  %163 = call i32 (...) @g_topology_unlock()
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %155
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %2, align 4
  br label %321

168:                                              ; preds = %155
  %169 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %170 = call i32 @markvoldirty_upgrade(%struct.msdosfsmount* %169, i32 1, i32 1)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = call i32 (...) @g_topology_lock()
  %175 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %176 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @g_access(i32 %177, i32 0, i32 -1, i32 0)
  %179 = call i32 (...) @g_topology_unlock()
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %2, align 4
  br label %321

181:                                              ; preds = %168
  %182 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %183 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  %184 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %187 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.mount*, %struct.mount** %3, align 8
  %191 = call i32 @MNT_ILOCK(%struct.mount* %190)
  %192 = load i32, i32* @MNT_RDONLY, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.mount*, %struct.mount** %3, align 8
  %195 = getelementptr inbounds %struct.mount, %struct.mount* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.mount*, %struct.mount** %3, align 8
  %199 = call i32 @MNT_IUNLOCK(%struct.mount* %198)
  br label %200

200:                                              ; preds = %181, %118, %111
  br label %201

201:                                              ; preds = %200, %94
  br label %202

202:                                              ; preds = %201, %21
  %203 = load %struct.mount*, %struct.mount** %3, align 8
  %204 = getelementptr inbounds %struct.mount, %struct.mount* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @vfs_getopt(i32 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, i32* null)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @EINVAL, align 4
  store i32 %209, i32* %2, align 4
  br label %321

210:                                              ; preds = %202
  %211 = load i32, i32* @LOOKUP, align 4
  %212 = load i32, i32* @FOLLOW, align 4
  %213 = load i32, i32* @LOCKLEAF, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @UIO_SYSSPACE, align 4
  %216 = load i8*, i8** %11, align 8
  %217 = load %struct.thread*, %struct.thread** %5, align 8
  %218 = call i32 @NDINIT(%struct.nameidata* %7, i32 %211, i32 %214, i32 %215, i8* %216, %struct.thread* %217)
  %219 = call i32 @namei(%struct.nameidata* %7)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %210
  %223 = load i32, i32* %8, align 4
  store i32 %223, i32* %2, align 4
  br label %321

224:                                              ; preds = %210
  %225 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %226 = load %struct.vnode*, %struct.vnode** %225, align 8
  store %struct.vnode* %226, %struct.vnode** %4, align 8
  %227 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %228 = call i32 @NDFREE(%struct.nameidata* %7, i32 %227)
  %229 = load %struct.vnode*, %struct.vnode** %4, align 8
  %230 = call i32 @vn_isdisk(%struct.vnode* %229, i32* %8)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %224
  %233 = load %struct.vnode*, %struct.vnode** %4, align 8
  %234 = call i32 @vput(%struct.vnode* %233)
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %2, align 4
  br label %321

236:                                              ; preds = %224
  %237 = load i32, i32* @VREAD, align 4
  store i32 %237, i32* %10, align 4
  %238 = load %struct.mount*, %struct.mount** %3, align 8
  %239 = getelementptr inbounds %struct.mount, %struct.mount* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @MNT_RDONLY, align 4
  %242 = and i32 %240, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %236
  %245 = load i32, i32* @VWRITE, align 4
  %246 = load i32, i32* %10, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %10, align 4
  br label %248

248:                                              ; preds = %244, %236
  %249 = load %struct.vnode*, %struct.vnode** %4, align 8
  %250 = load i32, i32* %10, align 4
  %251 = load %struct.thread*, %struct.thread** %5, align 8
  %252 = getelementptr inbounds %struct.thread, %struct.thread* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.thread*, %struct.thread** %5, align 8
  %255 = call i32 @VOP_ACCESS(%struct.vnode* %249, i32 %250, i32 %253, %struct.thread* %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %248
  %259 = load %struct.thread*, %struct.thread** %5, align 8
  %260 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %261 = call i32 @priv_check(%struct.thread* %259, i32 %260)
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %258, %248
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = load %struct.vnode*, %struct.vnode** %4, align 8
  %267 = call i32 @vput(%struct.vnode* %266)
  %268 = load i32, i32* %8, align 4
  store i32 %268, i32* %2, align 4
  br label %321

269:                                              ; preds = %262
  %270 = load %struct.mount*, %struct.mount** %3, align 8
  %271 = getelementptr inbounds %struct.mount, %struct.mount* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @MNT_UPDATE, align 4
  %274 = and i32 %272, %273
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %269
  %277 = load %struct.vnode*, %struct.vnode** %4, align 8
  %278 = load %struct.mount*, %struct.mount** %3, align 8
  %279 = call i32 @mountmsdosfs(%struct.vnode* %277, %struct.mount* %278)
  store i32 %279, i32* %8, align 4
  br label %291

280:                                              ; preds = %269
  %281 = load %struct.vnode*, %struct.vnode** %4, align 8
  %282 = call i32 @vput(%struct.vnode* %281)
  %283 = load %struct.vnode*, %struct.vnode** %4, align 8
  %284 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %285 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %284, i32 0, i32 3
  %286 = load %struct.vnode*, %struct.vnode** %285, align 8
  %287 = icmp ne %struct.vnode* %283, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %280
  %289 = load i32, i32* @EINVAL, align 4
  store i32 %289, i32* %2, align 4
  br label %321

290:                                              ; preds = %280
  br label %291

291:                                              ; preds = %290, %276
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load %struct.vnode*, %struct.vnode** %4, align 8
  %296 = call i32 @vrele(%struct.vnode* %295)
  %297 = load i32, i32* %8, align 4
  store i32 %297, i32* %2, align 4
  br label %321

298:                                              ; preds = %291
  %299 = load %struct.mount*, %struct.mount** %3, align 8
  %300 = load %struct.thread*, %struct.thread** %5, align 8
  %301 = call i32 @update_mp(%struct.mount* %299, %struct.thread* %300)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %298
  %305 = load %struct.mount*, %struct.mount** %3, align 8
  %306 = getelementptr inbounds %struct.mount, %struct.mount* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @MNT_UPDATE, align 4
  %309 = and i32 %307, %308
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %304
  %312 = load %struct.mount*, %struct.mount** %3, align 8
  %313 = load i32, i32* @MNT_FORCE, align 4
  %314 = call i32 @msdosfs_unmount(%struct.mount* %312, i32 %313)
  br label %315

315:                                              ; preds = %311, %304
  %316 = load i32, i32* %8, align 4
  store i32 %316, i32* %2, align 4
  br label %321

317:                                              ; preds = %298
  %318 = load %struct.mount*, %struct.mount** %3, align 8
  %319 = load i8*, i8** %11, align 8
  %320 = call i32 @vfs_mountedfrom(%struct.mount* %318, i8* %319)
  store i32 0, i32* %2, align 4
  br label %321

321:                                              ; preds = %317, %315, %294, %288, %265, %232, %222, %208, %173, %166, %151, %90, %77, %70, %49, %19
  %322 = load i32, i32* %2, align 4
  ret i32 %322
}

declare dso_local i64 @vfs_filteropt(i32, i32) #1

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount*) #1

declare dso_local i64 @vfs_flagopt(i32, i8*, i32*, i32) #1

declare dso_local i32 @VFS_SYNC(%struct.mount*, i32) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, %struct.thread*) #1

declare dso_local i32 @markvoldirty(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(i32, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @markvoldirty_upgrade(%struct.msdosfsmount*, i32, i32) #1

declare dso_local i64 @vfs_getopt(i32, i8*, i8**, i32*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_isdisk(%struct.vnode*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @mountmsdosfs(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @update_mp(%struct.mount*, %struct.thread*) #1

declare dso_local i32 @msdosfs_unmount(%struct.mount*, i32) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
