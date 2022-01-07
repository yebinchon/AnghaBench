; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32, %struct.vfsoptlist* }
%struct.vfsoptlist = type { i32 }
%struct.vnode = type { i32 }
%struct.ext2mount = type { %struct.m_ext2fs*, %struct.vnode*, i32 }
%struct.m_ext2fs = type { i32, i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nameidata = type { %struct.vnode* }

@curthread = common dso_local global %struct.thread* null, align 8
@ext2_opts = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@MAXMNTLEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@MNT_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@MNT_WAIT = common dso_local global i32 0, align 4
@WRITECLOSE = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@E2FS_ISCLEAN = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_RELOAD = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_PERM = common dso_local global i32 0, align 4
@E2FS_ERRORS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"WARNING: %s was not properly dismounted\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"WARNING: R/W mount of %s denied.  Filesystem is not clean - run fsck\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @ext2_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vfsoptlist*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.ext2mount*, align 8
  %8 = alloca %struct.m_ext2fs*, align 8
  %9 = alloca %struct.nameidata, align 8
  %10 = alloca %struct.nameidata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.ext2mount* null, %struct.ext2mount** %7, align 8
  store %struct.nameidata* %9, %struct.nameidata** %10, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %6, align 8
  %18 = load %struct.mount*, %struct.mount** %3, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 1
  %20 = load %struct.vfsoptlist*, %struct.vfsoptlist** %19, align 8
  store %struct.vfsoptlist* %20, %struct.vfsoptlist** %4, align 8
  %21 = load %struct.vfsoptlist*, %struct.vfsoptlist** %4, align 8
  %22 = load i32, i32* @ext2_opts, align 4
  %23 = call i64 @vfs_filteropt(%struct.vfsoptlist* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %2, align 4
  br label %407

27:                                               ; preds = %1
  %28 = load %struct.vfsoptlist*, %struct.vfsoptlist** %4, align 8
  %29 = call i32 @vfs_getopt(%struct.vfsoptlist* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, i32* null)
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @MAXMNTLEN, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %35, i32* %2, align 4
  br label %407

36:                                               ; preds = %27
  store i8* null, i8** %13, align 8
  %37 = load %struct.vfsoptlist*, %struct.vfsoptlist** %4, align 8
  %38 = call i32 @vfs_getopt(%struct.vfsoptlist* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %13, i32* %16)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %2, align 4
  br label %407

52:                                               ; preds = %41, %36
  %53 = load %struct.mount*, %struct.mount** %3, align 8
  %54 = getelementptr inbounds %struct.mount, %struct.mount* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MNT_UPDATE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %286

59:                                               ; preds = %52
  %60 = load %struct.mount*, %struct.mount** %3, align 8
  %61 = call %struct.ext2mount* @VFSTOEXT2(%struct.mount* %60)
  store %struct.ext2mount* %61, %struct.ext2mount** %7, align 8
  %62 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %63 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %62, i32 0, i32 0
  %64 = load %struct.m_ext2fs*, %struct.m_ext2fs** %63, align 8
  store %struct.m_ext2fs* %64, %struct.m_ext2fs** %8, align 8
  store i32 0, i32* %14, align 4
  %65 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %66 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %59
  %70 = load %struct.vfsoptlist*, %struct.vfsoptlist** %4, align 8
  %71 = call i64 @vfs_flagopt(%struct.vfsoptlist* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %135

73:                                               ; preds = %69
  %74 = load %struct.mount*, %struct.mount** %3, align 8
  %75 = load i32, i32* @MNT_WAIT, align 4
  %76 = call i32 @VFS_SYNC(%struct.mount* %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %2, align 4
  br label %407

81:                                               ; preds = %73
  %82 = load i32, i32* @WRITECLOSE, align 4
  store i32 %82, i32* %15, align 4
  %83 = load %struct.mount*, %struct.mount** %3, align 8
  %84 = getelementptr inbounds %struct.mount, %struct.mount* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MNT_FORCE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @FORCECLOSE, align 4
  %91 = load i32, i32* %15, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %89, %81
  %94 = load %struct.mount*, %struct.mount** %3, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.thread*, %struct.thread** %6, align 8
  %97 = call i32 @ext2_flushfiles(%struct.mount* %94, i32 %95, %struct.thread* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %93
  %101 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %102 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %107 = load i32, i32* @MNT_WAIT, align 4
  %108 = call i64 @ext2_cgupdate(%struct.ext2mount* %106, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load i32, i32* @E2FS_ISCLEAN, align 4
  %112 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %113 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 4
  %118 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %119 = load i32, i32* @MNT_WAIT, align 4
  %120 = call i32 @ext2_sbupdate(%struct.ext2mount* %118, i32 %119)
  br label %121

121:                                              ; preds = %110, %105, %100, %93
  %122 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %123 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.vfsoptlist*, %struct.vfsoptlist** %4, align 8
  %125 = load %struct.mount*, %struct.mount** %3, align 8
  %126 = getelementptr inbounds %struct.mount, %struct.mount* %125, i32 0, i32 0
  %127 = load i32, i32* @MNT_RDONLY, align 4
  %128 = call i64 @vfs_flagopt(%struct.vfsoptlist* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %126, i32 %127)
  %129 = call i32 (...) @g_topology_lock()
  %130 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %131 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @g_access(i32 %132, i32 0, i32 -1, i32 0)
  %134 = call i32 (...) @g_topology_unlock()
  br label %135

135:                                              ; preds = %121, %69, %59
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135
  %139 = load %struct.mount*, %struct.mount** %3, align 8
  %140 = getelementptr inbounds %struct.mount, %struct.mount* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MNT_RELOAD, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.mount*, %struct.mount** %3, align 8
  %147 = load %struct.thread*, %struct.thread** %6, align 8
  %148 = call i32 @ext2_reload(%struct.mount* %146, %struct.thread* %147)
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %145, %138, %135
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %2, align 4
  br label %407

154:                                              ; preds = %149
  %155 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %156 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %155, i32 0, i32 1
  %157 = load %struct.vnode*, %struct.vnode** %156, align 8
  store %struct.vnode* %157, %struct.vnode** %5, align 8
  %158 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %159 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %279

162:                                              ; preds = %154
  %163 = load %struct.vfsoptlist*, %struct.vfsoptlist** %4, align 8
  %164 = call i64 @vfs_flagopt(%struct.vfsoptlist* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %279, label %166

166:                                              ; preds = %162
  %167 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %168 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load %struct.vnode*, %struct.vnode** %5, align 8
  %171 = getelementptr inbounds %struct.vnode, %struct.vnode* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @ext2_check_sb_compat(%struct.TYPE_2__* %169, i32 %172, i32 0)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* @EPERM, align 4
  store i32 %176, i32* %2, align 4
  br label %407

177:                                              ; preds = %166
  %178 = load %struct.vnode*, %struct.vnode** %5, align 8
  %179 = load i32, i32* @LK_EXCLUSIVE, align 4
  %180 = load i32, i32* @LK_RETRY, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @vn_lock(%struct.vnode* %178, i32 %181)
  %183 = load %struct.vnode*, %struct.vnode** %5, align 8
  %184 = load i32, i32* @VREAD, align 4
  %185 = load i32, i32* @VWRITE, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.thread*, %struct.thread** %6, align 8
  %188 = getelementptr inbounds %struct.thread, %struct.thread* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.thread*, %struct.thread** %6, align 8
  %191 = call i32 @VOP_ACCESS(%struct.vnode* %183, i32 %186, i32 %189, %struct.thread* %190)
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %177
  %195 = load %struct.thread*, %struct.thread** %6, align 8
  %196 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %197 = call i32 @priv_check(%struct.thread* %195, i32 %196)
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %194, %177
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load %struct.vnode*, %struct.vnode** %5, align 8
  %203 = call i32 @VOP_UNLOCK(%struct.vnode* %202, i32 0)
  %204 = load i32, i32* %14, align 4
  store i32 %204, i32* %2, align 4
  br label %407

205:                                              ; preds = %198
  %206 = load %struct.vnode*, %struct.vnode** %5, align 8
  %207 = call i32 @VOP_UNLOCK(%struct.vnode* %206, i32 0)
  %208 = call i32 (...) @g_topology_lock()
  %209 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %210 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @g_access(i32 %211, i32 0, i32 1, i32 0)
  store i32 %212, i32* %14, align 4
  %213 = call i32 (...) @g_topology_unlock()
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %2, align 4
  br label %407

218:                                              ; preds = %205
  %219 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %220 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %219, i32 0, i32 2
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @E2FS_ISCLEAN, align 4
  %225 = and i32 %223, %224
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %218
  %228 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %229 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %228, i32 0, i32 2
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @E2FS_ERRORS, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %255

236:                                              ; preds = %227, %218
  %237 = load %struct.mount*, %struct.mount** %3, align 8
  %238 = getelementptr inbounds %struct.mount, %struct.mount* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @MNT_FORCE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %245 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %246)
  br label %254

248:                                              ; preds = %236
  %249 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %250 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %249, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i8* %251)
  %253 = load i32, i32* @EPERM, align 4
  store i32 %253, i32* %2, align 4
  br label %407

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254, %227
  %256 = load i32, i32* @E2FS_ISCLEAN, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %259 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %258, i32 0, i32 2
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %257
  store i32 %263, i32* %261, align 4
  %264 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %265 = load i32, i32* @MNT_WAIT, align 4
  %266 = call i64 @ext2_cgupdate(%struct.ext2mount* %264, i32 %265)
  %267 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %268 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  %269 = load %struct.mount*, %struct.mount** %3, align 8
  %270 = call i32 @MNT_ILOCK(%struct.mount* %269)
  %271 = load i32, i32* @MNT_RDONLY, align 4
  %272 = xor i32 %271, -1
  %273 = load %struct.mount*, %struct.mount** %3, align 8
  %274 = getelementptr inbounds %struct.mount, %struct.mount* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load %struct.mount*, %struct.mount** %3, align 8
  %278 = call i32 @MNT_IUNLOCK(%struct.mount* %277)
  br label %279

279:                                              ; preds = %255, %162, %154
  %280 = load %struct.vfsoptlist*, %struct.vfsoptlist** %4, align 8
  %281 = call i64 @vfs_flagopt(%struct.vfsoptlist* %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = load i32, i32* %14, align 4
  store i32 %284, i32* %2, align 4
  br label %407

285:                                              ; preds = %279
  br label %286

286:                                              ; preds = %285, %52
  %287 = load i8*, i8** %13, align 8
  %288 = icmp eq i8* %287, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = load i32, i32* @EINVAL, align 4
  store i32 %290, i32* %2, align 4
  br label %407

291:                                              ; preds = %286
  %292 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %293 = load i32, i32* @LOOKUP, align 4
  %294 = load i32, i32* @FOLLOW, align 4
  %295 = load i32, i32* @LOCKLEAF, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @UIO_SYSSPACE, align 4
  %298 = load i8*, i8** %13, align 8
  %299 = load %struct.thread*, %struct.thread** %6, align 8
  %300 = call i32 @NDINIT(%struct.nameidata* %292, i32 %293, i32 %296, i32 %297, i8* %298, %struct.thread* %299)
  %301 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %302 = call i32 @namei(%struct.nameidata* %301)
  store i32 %302, i32* %14, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %291
  %305 = load i32, i32* %14, align 4
  store i32 %305, i32* %2, align 4
  br label %407

306:                                              ; preds = %291
  %307 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %308 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %309 = call i32 @NDFREE(%struct.nameidata* %307, i32 %308)
  %310 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %311 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %310, i32 0, i32 0
  %312 = load %struct.vnode*, %struct.vnode** %311, align 8
  store %struct.vnode* %312, %struct.vnode** %5, align 8
  %313 = load %struct.vnode*, %struct.vnode** %5, align 8
  %314 = call i32 @vn_isdisk(%struct.vnode* %313, i32* %14)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %306
  %317 = load %struct.vnode*, %struct.vnode** %5, align 8
  %318 = call i32 @vput(%struct.vnode* %317)
  %319 = load i32, i32* %14, align 4
  store i32 %319, i32* %2, align 4
  br label %407

320:                                              ; preds = %306
  %321 = load i32, i32* @VREAD, align 4
  store i32 %321, i32* %11, align 4
  %322 = load %struct.mount*, %struct.mount** %3, align 8
  %323 = getelementptr inbounds %struct.mount, %struct.mount* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @MNT_RDONLY, align 4
  %326 = and i32 %324, %325
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %320
  %329 = load i32, i32* @VWRITE, align 4
  %330 = load i32, i32* %11, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %11, align 4
  br label %332

332:                                              ; preds = %328, %320
  %333 = load %struct.vnode*, %struct.vnode** %5, align 8
  %334 = load i32, i32* %11, align 4
  %335 = load %struct.thread*, %struct.thread** %6, align 8
  %336 = getelementptr inbounds %struct.thread, %struct.thread* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.thread*, %struct.thread** %6, align 8
  %339 = call i32 @VOP_ACCESS(%struct.vnode* %333, i32 %334, i32 %337, %struct.thread* %338)
  store i32 %339, i32* %14, align 4
  %340 = load i32, i32* %14, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %332
  %343 = load %struct.thread*, %struct.thread** %6, align 8
  %344 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %345 = call i32 @priv_check(%struct.thread* %343, i32 %344)
  store i32 %345, i32* %14, align 4
  br label %346

346:                                              ; preds = %342, %332
  %347 = load i32, i32* %14, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = load %struct.vnode*, %struct.vnode** %5, align 8
  %351 = call i32 @vput(%struct.vnode* %350)
  %352 = load i32, i32* %14, align 4
  store i32 %352, i32* %2, align 4
  br label %407

353:                                              ; preds = %346
  %354 = load %struct.mount*, %struct.mount** %3, align 8
  %355 = getelementptr inbounds %struct.mount, %struct.mount* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @MNT_UPDATE, align 4
  %358 = and i32 %356, %357
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %353
  %361 = load %struct.vnode*, %struct.vnode** %5, align 8
  %362 = load %struct.mount*, %struct.mount** %3, align 8
  %363 = call i32 @ext2_mountfs(%struct.vnode* %361, %struct.mount* %362)
  store i32 %363, i32* %14, align 4
  br label %378

364:                                              ; preds = %353
  %365 = load %struct.vnode*, %struct.vnode** %5, align 8
  %366 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %367 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %366, i32 0, i32 1
  %368 = load %struct.vnode*, %struct.vnode** %367, align 8
  %369 = icmp ne %struct.vnode* %365, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %364
  %371 = load %struct.vnode*, %struct.vnode** %5, align 8
  %372 = call i32 @vput(%struct.vnode* %371)
  %373 = load i32, i32* @EINVAL, align 4
  store i32 %373, i32* %2, align 4
  br label %407

374:                                              ; preds = %364
  %375 = load %struct.vnode*, %struct.vnode** %5, align 8
  %376 = call i32 @vput(%struct.vnode* %375)
  br label %377

377:                                              ; preds = %374
  br label %378

378:                                              ; preds = %377, %360
  %379 = load i32, i32* %14, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = load %struct.vnode*, %struct.vnode** %5, align 8
  %383 = call i32 @vrele(%struct.vnode* %382)
  %384 = load i32, i32* %14, align 4
  store i32 %384, i32* %2, align 4
  br label %407

385:                                              ; preds = %378
  %386 = load %struct.mount*, %struct.mount** %3, align 8
  %387 = call %struct.ext2mount* @VFSTOEXT2(%struct.mount* %386)
  store %struct.ext2mount* %387, %struct.ext2mount** %7, align 8
  %388 = load %struct.ext2mount*, %struct.ext2mount** %7, align 8
  %389 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %388, i32 0, i32 0
  %390 = load %struct.m_ext2fs*, %struct.m_ext2fs** %389, align 8
  store %struct.m_ext2fs* %390, %struct.m_ext2fs** %8, align 8
  %391 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %392 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %391, i32 0, i32 1
  %393 = load i8*, i8** %392, align 8
  %394 = load i8*, i8** %12, align 8
  %395 = load i32, i32* @MAXMNTLEN, align 4
  %396 = call i32 @strncpy(i8* %393, i8* %394, i32 %395)
  %397 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %398 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %397, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = load i32, i32* @MAXMNTLEN, align 4
  %401 = sub nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %399, i64 %402
  store i8 0, i8* %403, align 1
  %404 = load %struct.mount*, %struct.mount** %3, align 8
  %405 = load i8*, i8** %13, align 8
  %406 = call i32 @vfs_mountedfrom(%struct.mount* %404, i8* %405)
  store i32 0, i32* %2, align 4
  br label %407

407:                                              ; preds = %385, %381, %370, %349, %316, %304, %289, %283, %248, %216, %201, %175, %152, %79, %50, %34, %25
  %408 = load i32, i32* %2, align 4
  ret i32 %408
}

declare dso_local i64 @vfs_filteropt(%struct.vfsoptlist*, i32) #1

declare dso_local i32 @vfs_getopt(%struct.vfsoptlist*, i8*, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.ext2mount* @VFSTOEXT2(%struct.mount*) #1

declare dso_local i64 @vfs_flagopt(%struct.vfsoptlist*, i8*, i32*, i32) #1

declare dso_local i32 @VFS_SYNC(%struct.mount*, i32) #1

declare dso_local i32 @ext2_flushfiles(%struct.mount*, i32, %struct.thread*) #1

declare dso_local i64 @ext2_cgupdate(%struct.ext2mount*, i32) #1

declare dso_local i32 @ext2_sbupdate(%struct.ext2mount*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(i32, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @ext2_reload(%struct.mount*, %struct.thread*) #1

declare dso_local i64 @ext2_check_sb_compat(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_isdisk(%struct.vnode*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @ext2_mountfs(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
