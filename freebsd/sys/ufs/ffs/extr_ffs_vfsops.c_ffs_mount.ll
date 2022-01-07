; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32, i32, i32 }
%struct.vnode = type { i64 }
%struct.ufsmount = type { i32, i32, %struct.fs*, %struct.vnode* }
%struct.fs = type { i64, i64, i64, i8*, i32, i32, i64*, i32, i8* }
%struct.nameidata = type { %struct.vnode* }

@curthread = common dso_local global %struct.thread* null, align 8
@ffs_opts = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@uma_inode = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"FFS inode\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"FFS1 dinode\00", align 1
@uma_ufs1 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"FFS2 dinode\00", align 1
@uma_ufs2 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"groupquota\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"userquota\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"untrusted\00", align 1
@MNT_UNTRUSTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"acls\00", align 1
@MNT_ACLS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@MNT_SNAPSHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"fsckpid\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MNT_UPDATE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Checker enable: Must be read-only\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"nfsv4acls\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"\22acls\22 and \22nfsv4acls\22 options are mutually exclusive\00", align 1
@MNT_NFS4ACLS = common dso_local global i32 0, align 4
@WRITECLOSE = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [47 x i8] c"WARNING: %s Update error: blocks %jd files %d\0A\00", align 1
@FS_UNCLEAN = common dso_local global i32 0, align 4
@FS_NEEDSFSCK = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_RELOAD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"Active checker, cannot upgrade to write\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_PERM = common dso_local global i32 0, align 4
@FS_SUJ = common dso_local global i32 0, align 4
@FS_DOSOFTDEP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"WARNING: %s was not properly dismounted\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"R/W mount of %s denied. %s.%s\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Filesystem is not clean - run fsck\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [47 x i8] c" Forced mount will invalidate journal contents\00", align 1
@EPERM = common dso_local global i32 0, align 4
@MNT_ASYNC = common dso_local global i32 0, align 4
@time_second = common dso_local global i8* null, align 8
@FS_ACLS = common dso_local global i32 0, align 4
@FS_NFS4ACLS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"Active checker already running on %s\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"soft updates enabled on read-only file system\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Checker activation failed on %s\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@MBF_NOWAIT = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [40 x i8] c"WARNING: %s: Checker activation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @ffs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.ufsmount*, align 8
  %7 = alloca %struct.fs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nameidata, align 8
  %16 = alloca i8*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.ufsmount* null, %struct.ufsmount** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %5, align 8
  %18 = load %struct.mount*, %struct.mount** %3, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ffs_opts, align 4
  %22 = call i64 @vfs_filteropt(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %896

26:                                               ; preds = %1
  %27 = load i32*, i32** @uma_inode, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %31 = call i8* @uma_zcreate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %30, i32 0)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @uma_inode, align 8
  %33 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %34 = call i8* @uma_zcreate(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %33, i32 0)
  store i8* %34, i8** @uma_ufs1, align 8
  %35 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %36 = call i8* @uma_zcreate(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %35, i32 0)
  store i8* %36, i8** @uma_ufs2, align 8
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.mount*, %struct.mount** %3, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vfs_deleteopt(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.mount*, %struct.mount** %3, align 8
  %43 = getelementptr inbounds %struct.mount, %struct.mount* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vfs_deleteopt(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.mount*, %struct.mount** %3, align 8
  %47 = getelementptr inbounds %struct.mount, %struct.mount* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @vfs_getopts(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  store i8* %49, i8** %16, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %896

54:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  %55 = load %struct.mount*, %struct.mount** %3, align 8
  %56 = getelementptr inbounds %struct.mount, %struct.mount* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @vfs_getopt(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @MNT_UNTRUSTED, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.mount*, %struct.mount** %3, align 8
  %66 = getelementptr inbounds %struct.mount, %struct.mount* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @vfs_getopt(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @MNT_ACLS, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.mount*, %struct.mount** %3, align 8
  %76 = getelementptr inbounds %struct.mount, %struct.mount* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @vfs_getopt(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* null)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load i32, i32* @MNT_SNAPSHOT, align 4
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load %struct.mount*, %struct.mount** %3, align 8
  %85 = getelementptr inbounds %struct.mount, %struct.mount* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @vfs_deleteopt(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %88 = load %struct.mount*, %struct.mount** %3, align 8
  %89 = getelementptr inbounds %struct.mount, %struct.mount* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vfs_deleteopt(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %92

92:                                               ; preds = %80, %74
  %93 = load %struct.mount*, %struct.mount** %3, align 8
  %94 = getelementptr inbounds %struct.mount, %struct.mount* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @vfs_getopt(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* null)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %154

98:                                               ; preds = %92
  %99 = load %struct.mount*, %struct.mount** %3, align 8
  %100 = getelementptr inbounds %struct.mount, %struct.mount* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vfs_scanopt(i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %8)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %154

104:                                              ; preds = %98
  %105 = load %struct.mount*, %struct.mount** %3, align 8
  %106 = getelementptr inbounds %struct.mount, %struct.mount* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @vfs_deleteopt(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %109 = load %struct.mount*, %struct.mount** %3, align 8
  %110 = getelementptr inbounds %struct.mount, %struct.mount* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @vfs_deleteopt(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %113 = load %struct.mount*, %struct.mount** %3, align 8
  %114 = getelementptr inbounds %struct.mount, %struct.mount* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MNT_UPDATE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %104
  %120 = load %struct.mount*, %struct.mount** %3, align 8
  %121 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %120)
  %122 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %121, i32 0, i32 2
  %123 = load %struct.fs*, %struct.fs** %122, align 8
  %124 = getelementptr inbounds %struct.fs, %struct.fs* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %119
  %128 = load %struct.mount*, %struct.mount** %3, align 8
  %129 = getelementptr inbounds %struct.mount, %struct.mount* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @vfs_flagopt(i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 0)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.mount*, %struct.mount** %3, align 8
  %135 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %2, align 4
  br label %896

137:                                              ; preds = %127, %119
  br label %149

138:                                              ; preds = %104
  %139 = load %struct.mount*, %struct.mount** %3, align 8
  %140 = getelementptr inbounds %struct.mount, %struct.mount* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @vfs_flagopt(i32 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 0)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.mount*, %struct.mount** %3, align 8
  %146 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %2, align 4
  br label %896

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %137
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 -1, i32* %8, align 4
  br label %153

153:                                              ; preds = %152, %149
  br label %154

154:                                              ; preds = %153, %98, %92
  %155 = load %struct.mount*, %struct.mount** %3, align 8
  %156 = getelementptr inbounds %struct.mount, %struct.mount* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @vfs_getopt(i32 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @MNT_ACLS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.mount*, %struct.mount** %3, align 8
  %167 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %166, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  store i32 %168, i32* %2, align 4
  br label %896

169:                                              ; preds = %160
  %170 = load i32, i32* @MNT_NFS4ACLS, align 4
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %169, %154
  %174 = load %struct.mount*, %struct.mount** %3, align 8
  %175 = call i32 @MNT_ILOCK(%struct.mount* %174)
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.mount*, %struct.mount** %3, align 8
  %178 = getelementptr inbounds %struct.mount, %struct.mount* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.mount*, %struct.mount** %3, align 8
  %182 = call i32 @MNT_IUNLOCK(%struct.mount* %181)
  %183 = load %struct.mount*, %struct.mount** %3, align 8
  %184 = getelementptr inbounds %struct.mount, %struct.mount* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @MNT_UPDATE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %730

189:                                              ; preds = %173
  %190 = load %struct.mount*, %struct.mount** %3, align 8
  %191 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %190)
  store %struct.ufsmount* %191, %struct.ufsmount** %6, align 8
  %192 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %193 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %192, i32 0, i32 2
  %194 = load %struct.fs*, %struct.fs** %193, align 8
  store %struct.fs* %194, %struct.fs** %7, align 8
  %195 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %196 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %195, i32 0, i32 3
  %197 = load %struct.vnode*, %struct.vnode** %196, align 8
  store %struct.vnode* %197, %struct.vnode** %4, align 8
  %198 = load i32, i32* %8, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %227

200:                                              ; preds = %189
  %201 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %202 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %200
  %206 = load %struct.mount*, %struct.mount** %3, align 8
  %207 = load i32, i32* @WRITECLOSE, align 4
  %208 = load %struct.thread*, %struct.thread** %5, align 8
  %209 = call i32 @ffs_flushfiles(%struct.mount* %206, i32 %207, %struct.thread* %208)
  store i32 %209, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %205
  %212 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %213 = load i32, i32* @MNT_WAIT, align 4
  %214 = call i32 @ffs_sbupdate(%struct.ufsmount* %212, i32 %213, i32 0)
  store i32 %214, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211, %205
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %2, align 4
  br label %896

218:                                              ; preds = %211
  %219 = call i32 (...) @g_topology_lock()
  %220 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %221 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @g_access(i32 %222, i32 0, i32 -1, i32 0)
  store i32 %223, i32* %9, align 4
  %224 = call i32 (...) @g_topology_unlock()
  %225 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %226 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %225, i32 0, i32 0
  store i32 0, i32* %226, align 8
  br label %227

227:                                              ; preds = %218, %200, %189
  %228 = load %struct.fs*, %struct.fs** %7, align 8
  %229 = getelementptr inbounds %struct.fs, %struct.fs* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %362

232:                                              ; preds = %227
  %233 = load %struct.mount*, %struct.mount** %3, align 8
  %234 = getelementptr inbounds %struct.mount, %struct.mount* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @vfs_flagopt(i32 %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 0)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %362

238:                                              ; preds = %232
  %239 = load i32, i32* @V_WAIT, align 4
  %240 = call i32 @vn_start_write(i32* null, %struct.mount** %3, i32 %239)
  store i32 %240, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %2, align 4
  br label %896

244:                                              ; preds = %238
  %245 = load %struct.mount*, %struct.mount** %3, align 8
  %246 = call i32 @vfs_write_suspend_umnt(%struct.mount* %245)
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load i32, i32* %9, align 4
  store i32 %250, i32* %2, align 4
  br label %896

251:                                              ; preds = %244
  %252 = load i32, i32* @WRITECLOSE, align 4
  store i32 %252, i32* %11, align 4
  %253 = load %struct.mount*, %struct.mount** %3, align 8
  %254 = getelementptr inbounds %struct.mount, %struct.mount* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @MNT_FORCE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load i32, i32* @FORCECLOSE, align 4
  %261 = load i32, i32* %11, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %11, align 4
  br label %263

263:                                              ; preds = %259, %251
  %264 = load %struct.mount*, %struct.mount** %3, align 8
  %265 = call i64 @MOUNTEDSOFTDEP(%struct.mount* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load %struct.mount*, %struct.mount** %3, align 8
  %269 = load i32, i32* %11, align 4
  %270 = load %struct.thread*, %struct.thread** %5, align 8
  %271 = call i32 @softdep_flushfiles(%struct.mount* %268, i32 %269, %struct.thread* %270)
  store i32 %271, i32* %9, align 4
  br label %277

272:                                              ; preds = %263
  %273 = load %struct.mount*, %struct.mount** %3, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.thread*, %struct.thread** %5, align 8
  %276 = call i32 @ffs_flushfiles(%struct.mount* %273, i32 %274, %struct.thread* %275)
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %272, %267
  %278 = load i32, i32* %9, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load %struct.mount*, %struct.mount** %3, align 8
  %282 = call i32 @vfs_write_resume(%struct.mount* %281, i32 0)
  %283 = load i32, i32* %9, align 4
  store i32 %283, i32* %2, align 4
  br label %896

284:                                              ; preds = %277
  %285 = load %struct.fs*, %struct.fs** %7, align 8
  %286 = getelementptr inbounds %struct.fs, %struct.fs* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %284
  %290 = load %struct.fs*, %struct.fs** %7, align 8
  %291 = getelementptr inbounds %struct.fs, %struct.fs* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %310

294:                                              ; preds = %289, %284
  %295 = load %struct.fs*, %struct.fs** %7, align 8
  %296 = getelementptr inbounds %struct.fs, %struct.fs* %295, i32 0, i32 3
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.fs*, %struct.fs** %7, align 8
  %299 = getelementptr inbounds %struct.fs, %struct.fs* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = load %struct.fs*, %struct.fs** %7, align 8
  %303 = getelementptr inbounds %struct.fs, %struct.fs* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* %297, i32 %301, i64 %304)
  %306 = load %struct.fs*, %struct.fs** %7, align 8
  %307 = getelementptr inbounds %struct.fs, %struct.fs* %306, i32 0, i32 1
  store i64 0, i64* %307, align 8
  %308 = load %struct.fs*, %struct.fs** %7, align 8
  %309 = getelementptr inbounds %struct.fs, %struct.fs* %308, i32 0, i32 2
  store i64 0, i64* %309, align 8
  br label %310

310:                                              ; preds = %294, %289
  %311 = load %struct.fs*, %struct.fs** %7, align 8
  %312 = getelementptr inbounds %struct.fs, %struct.fs* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @FS_UNCLEAN, align 4
  %315 = load i32, i32* @FS_NEEDSFSCK, align 4
  %316 = or i32 %314, %315
  %317 = and i32 %313, %316
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %310
  %320 = load %struct.fs*, %struct.fs** %7, align 8
  %321 = getelementptr inbounds %struct.fs, %struct.fs* %320, i32 0, i32 5
  store i32 1, i32* %321, align 4
  br label %322

322:                                              ; preds = %319, %310
  %323 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %324 = load i32, i32* @MNT_WAIT, align 4
  %325 = call i32 @ffs_sbupdate(%struct.ufsmount* %323, i32 %324, i32 0)
  store i32 %325, i32* %9, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %322
  %328 = load %struct.fs*, %struct.fs** %7, align 8
  %329 = getelementptr inbounds %struct.fs, %struct.fs* %328, i32 0, i32 0
  store i64 0, i64* %329, align 8
  %330 = load %struct.fs*, %struct.fs** %7, align 8
  %331 = getelementptr inbounds %struct.fs, %struct.fs* %330, i32 0, i32 5
  store i32 0, i32* %331, align 4
  %332 = load %struct.mount*, %struct.mount** %3, align 8
  %333 = call i32 @vfs_write_resume(%struct.mount* %332, i32 0)
  %334 = load i32, i32* %9, align 4
  store i32 %334, i32* %2, align 4
  br label %896

335:                                              ; preds = %322
  %336 = load %struct.mount*, %struct.mount** %3, align 8
  %337 = call i64 @MOUNTEDSOFTDEP(%struct.mount* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %335
  %340 = load %struct.mount*, %struct.mount** %3, align 8
  %341 = call i32 @softdep_unmount(%struct.mount* %340)
  br label %342

342:                                              ; preds = %339, %335
  %343 = call i32 (...) @g_topology_lock()
  %344 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %345 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @g_access(i32 %346, i32 0, i32 -1, i32 -1)
  %348 = call i32 (...) @g_topology_unlock()
  %349 = load %struct.fs*, %struct.fs** %7, align 8
  %350 = getelementptr inbounds %struct.fs, %struct.fs* %349, i32 0, i32 0
  store i64 1, i64* %350, align 8
  %351 = load %struct.mount*, %struct.mount** %3, align 8
  %352 = call i32 @MNT_ILOCK(%struct.mount* %351)
  %353 = load i32, i32* @MNT_RDONLY, align 4
  %354 = load %struct.mount*, %struct.mount** %3, align 8
  %355 = getelementptr inbounds %struct.mount, %struct.mount* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 4
  %358 = load %struct.mount*, %struct.mount** %3, align 8
  %359 = call i32 @MNT_IUNLOCK(%struct.mount* %358)
  %360 = load %struct.mount*, %struct.mount** %3, align 8
  %361 = call i32 @vfs_write_resume(%struct.mount* %360, i32 0)
  br label %362

362:                                              ; preds = %342, %232, %227
  %363 = load %struct.mount*, %struct.mount** %3, align 8
  %364 = getelementptr inbounds %struct.mount, %struct.mount* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @MNT_RELOAD, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %362
  %370 = load %struct.mount*, %struct.mount** %3, align 8
  %371 = load %struct.thread*, %struct.thread** %5, align 8
  %372 = call i32 @ffs_reload(%struct.mount* %370, %struct.thread* %371, i32 0)
  store i32 %372, i32* %9, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = load i32, i32* %9, align 4
  store i32 %375, i32* %2, align 4
  br label %896

376:                                              ; preds = %369, %362
  %377 = load %struct.fs*, %struct.fs** %7, align 8
  %378 = getelementptr inbounds %struct.fs, %struct.fs* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %607

381:                                              ; preds = %376
  %382 = load %struct.mount*, %struct.mount** %3, align 8
  %383 = getelementptr inbounds %struct.mount, %struct.mount* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i64 @vfs_flagopt(i32 %384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 0)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %607, label %387

387:                                              ; preds = %381
  %388 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %389 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %387
  %393 = load %struct.mount*, %struct.mount** %3, align 8
  %394 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %393, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %395 = load i32, i32* @EINVAL, align 4
  store i32 %395, i32* %2, align 4
  br label %896

396:                                              ; preds = %387
  %397 = load %struct.vnode*, %struct.vnode** %4, align 8
  %398 = load i32, i32* @LK_EXCLUSIVE, align 4
  %399 = load i32, i32* @LK_RETRY, align 4
  %400 = or i32 %398, %399
  %401 = call i32 @vn_lock(%struct.vnode* %397, i32 %400)
  %402 = load %struct.vnode*, %struct.vnode** %4, align 8
  %403 = load i32, i32* @VREAD, align 4
  %404 = load i32, i32* @VWRITE, align 4
  %405 = or i32 %403, %404
  %406 = load %struct.thread*, %struct.thread** %5, align 8
  %407 = getelementptr inbounds %struct.thread, %struct.thread* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.thread*, %struct.thread** %5, align 8
  %410 = call i32 @VOP_ACCESS(%struct.vnode* %402, i32 %405, i32 %408, %struct.thread* %409)
  store i32 %410, i32* %9, align 4
  %411 = load i32, i32* %9, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %396
  %414 = load %struct.thread*, %struct.thread** %5, align 8
  %415 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %416 = call i32 @priv_check(%struct.thread* %414, i32 %415)
  store i32 %416, i32* %9, align 4
  br label %417

417:                                              ; preds = %413, %396
  %418 = load i32, i32* %9, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %417
  %421 = load %struct.vnode*, %struct.vnode** %4, align 8
  %422 = call i32 @VOP_UNLOCK(%struct.vnode* %421, i32 0)
  %423 = load i32, i32* %9, align 4
  store i32 %423, i32* %2, align 4
  br label %896

424:                                              ; preds = %417
  %425 = load %struct.vnode*, %struct.vnode** %4, align 8
  %426 = call i32 @VOP_UNLOCK(%struct.vnode* %425, i32 0)
  %427 = load i32, i32* @FS_UNCLEAN, align 4
  %428 = xor i32 %427, -1
  %429 = load %struct.fs*, %struct.fs** %7, align 8
  %430 = getelementptr inbounds %struct.fs, %struct.fs* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = and i32 %431, %428
  store i32 %432, i32* %430, align 8
  %433 = load %struct.fs*, %struct.fs** %7, align 8
  %434 = getelementptr inbounds %struct.fs, %struct.fs* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %486

437:                                              ; preds = %424
  %438 = load i32, i32* @FS_UNCLEAN, align 4
  %439 = load %struct.fs*, %struct.fs** %7, align 8
  %440 = getelementptr inbounds %struct.fs, %struct.fs* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = or i32 %441, %438
  store i32 %442, i32* %440, align 8
  %443 = load %struct.mount*, %struct.mount** %3, align 8
  %444 = getelementptr inbounds %struct.mount, %struct.mount* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @MNT_FORCE, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %465, label %449

449:                                              ; preds = %437
  %450 = load %struct.fs*, %struct.fs** %7, align 8
  %451 = getelementptr inbounds %struct.fs, %struct.fs* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* @FS_SUJ, align 4
  %454 = load i32, i32* @FS_NEEDSFSCK, align 4
  %455 = or i32 %453, %454
  %456 = and i32 %452, %455
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %470

458:                                              ; preds = %449
  %459 = load %struct.fs*, %struct.fs** %7, align 8
  %460 = getelementptr inbounds %struct.fs, %struct.fs* %459, i32 0, i32 4
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @FS_DOSOFTDEP, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %458, %437
  %466 = load %struct.fs*, %struct.fs** %7, align 8
  %467 = getelementptr inbounds %struct.fs, %struct.fs* %466, i32 0, i32 3
  %468 = load i8*, i8** %467, align 8
  %469 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %468)
  br label %485

470:                                              ; preds = %458, %449
  %471 = load %struct.mount*, %struct.mount** %3, align 8
  %472 = load %struct.fs*, %struct.fs** %7, align 8
  %473 = getelementptr inbounds %struct.fs, %struct.fs* %472, i32 0, i32 3
  %474 = load i8*, i8** %473, align 8
  %475 = load %struct.fs*, %struct.fs** %7, align 8
  %476 = getelementptr inbounds %struct.fs, %struct.fs* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @FS_SUJ, align 4
  %479 = and i32 %477, %478
  %480 = icmp eq i32 %479, 0
  %481 = zext i1 %480 to i64
  %482 = select i1 %480, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0)
  %483 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %471, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %474, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %482)
  %484 = load i32, i32* @EPERM, align 4
  store i32 %484, i32* %2, align 4
  br label %896

485:                                              ; preds = %465
  br label %486

486:                                              ; preds = %485, %424
  %487 = call i32 (...) @g_topology_lock()
  %488 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %489 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @g_access(i32 %490, i32 0, i32 1, i32 1)
  store i32 %491, i32* %9, align 4
  %492 = call i32 (...) @g_topology_unlock()
  %493 = load i32, i32* %9, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %486
  %496 = load i32, i32* %9, align 4
  store i32 %496, i32* %2, align 4
  br label %896

497:                                              ; preds = %486
  %498 = load i32, i32* @V_WAIT, align 4
  %499 = call i32 @vn_start_write(i32* null, %struct.mount** %3, i32 %498)
  store i32 %499, i32* %9, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %497
  %502 = load i32, i32* %9, align 4
  store i32 %502, i32* %2, align 4
  br label %896

503:                                              ; preds = %497
  %504 = load %struct.mount*, %struct.mount** %3, align 8
  %505 = call i32 @vfs_write_suspend_umnt(%struct.mount* %504)
  store i32 %505, i32* %9, align 4
  %506 = load i32, i32* %9, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %503
  %509 = load i32, i32* %9, align 4
  store i32 %509, i32* %2, align 4
  br label %896

510:                                              ; preds = %503
  %511 = load %struct.fs*, %struct.fs** %7, align 8
  %512 = getelementptr inbounds %struct.fs, %struct.fs* %511, i32 0, i32 0
  store i64 0, i64* %512, align 8
  %513 = load %struct.mount*, %struct.mount** %3, align 8
  %514 = call i32 @MNT_ILOCK(%struct.mount* %513)
  %515 = load i32, i32* @MNT_RDONLY, align 4
  store i32 %515, i32* %13, align 4
  %516 = load %struct.mount*, %struct.mount** %3, align 8
  %517 = call i64 @MOUNTEDSOFTDEP(%struct.mount* %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %530

519:                                              ; preds = %510
  %520 = load %struct.mount*, %struct.mount** %3, align 8
  %521 = getelementptr inbounds %struct.mount, %struct.mount* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* @MNT_ASYNC, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %519
  %527 = load i32, i32* @MNT_ASYNC, align 4
  %528 = load i32, i32* %13, align 4
  %529 = or i32 %528, %527
  store i32 %529, i32* %13, align 4
  br label %530

530:                                              ; preds = %526, %519, %510
  %531 = load i32, i32* %13, align 4
  %532 = xor i32 %531, -1
  %533 = load %struct.mount*, %struct.mount** %3, align 8
  %534 = getelementptr inbounds %struct.mount, %struct.mount* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = and i32 %535, %532
  store i32 %536, i32* %534, align 4
  %537 = load %struct.mount*, %struct.mount** %3, align 8
  %538 = call i32 @MNT_IUNLOCK(%struct.mount* %537)
  %539 = load i8*, i8** @time_second, align 8
  %540 = load %struct.fs*, %struct.fs** %7, align 8
  %541 = getelementptr inbounds %struct.fs, %struct.fs* %540, i32 0, i32 8
  store i8* %539, i8** %541, align 8
  %542 = load %struct.fs*, %struct.fs** %7, align 8
  %543 = getelementptr inbounds %struct.fs, %struct.fs* %542, i32 0, i32 4
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @FS_DOSOFTDEP, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %572

548:                                              ; preds = %530
  %549 = load %struct.vnode*, %struct.vnode** %4, align 8
  %550 = load %struct.mount*, %struct.mount** %3, align 8
  %551 = load %struct.fs*, %struct.fs** %7, align 8
  %552 = load %struct.thread*, %struct.thread** %5, align 8
  %553 = getelementptr inbounds %struct.thread, %struct.thread* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @softdep_mount(%struct.vnode* %549, %struct.mount* %550, %struct.fs* %551, i32 %554)
  store i32 %555, i32* %9, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %572

557:                                              ; preds = %548
  %558 = load %struct.fs*, %struct.fs** %7, align 8
  %559 = getelementptr inbounds %struct.fs, %struct.fs* %558, i32 0, i32 0
  store i64 1, i64* %559, align 8
  %560 = load %struct.mount*, %struct.mount** %3, align 8
  %561 = call i32 @MNT_ILOCK(%struct.mount* %560)
  %562 = load i32, i32* %13, align 4
  %563 = load %struct.mount*, %struct.mount** %3, align 8
  %564 = getelementptr inbounds %struct.mount, %struct.mount* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = or i32 %565, %562
  store i32 %566, i32* %564, align 4
  %567 = load %struct.mount*, %struct.mount** %3, align 8
  %568 = call i32 @MNT_IUNLOCK(%struct.mount* %567)
  %569 = load %struct.mount*, %struct.mount** %3, align 8
  %570 = call i32 @vfs_write_resume(%struct.mount* %569, i32 0)
  %571 = load i32, i32* %9, align 4
  store i32 %571, i32* %2, align 4
  br label %896

572:                                              ; preds = %548, %530
  %573 = load %struct.fs*, %struct.fs** %7, align 8
  %574 = getelementptr inbounds %struct.fs, %struct.fs* %573, i32 0, i32 5
  store i32 0, i32* %574, align 4
  %575 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %576 = load i32, i32* @MNT_WAIT, align 4
  %577 = call i32 @ffs_sbupdate(%struct.ufsmount* %575, i32 %576, i32 0)
  store i32 %577, i32* %9, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %594

579:                                              ; preds = %572
  %580 = load %struct.fs*, %struct.fs** %7, align 8
  %581 = getelementptr inbounds %struct.fs, %struct.fs* %580, i32 0, i32 0
  store i64 1, i64* %581, align 8
  %582 = load %struct.mount*, %struct.mount** %3, align 8
  %583 = call i32 @MNT_ILOCK(%struct.mount* %582)
  %584 = load i32, i32* %13, align 4
  %585 = load %struct.mount*, %struct.mount** %3, align 8
  %586 = getelementptr inbounds %struct.mount, %struct.mount* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = or i32 %587, %584
  store i32 %588, i32* %586, align 4
  %589 = load %struct.mount*, %struct.mount** %3, align 8
  %590 = call i32 @MNT_IUNLOCK(%struct.mount* %589)
  %591 = load %struct.mount*, %struct.mount** %3, align 8
  %592 = call i32 @vfs_write_resume(%struct.mount* %591, i32 0)
  %593 = load i32, i32* %9, align 4
  store i32 %593, i32* %2, align 4
  br label %896

594:                                              ; preds = %572
  %595 = load %struct.fs*, %struct.fs** %7, align 8
  %596 = getelementptr inbounds %struct.fs, %struct.fs* %595, i32 0, i32 6
  %597 = load i64*, i64** %596, align 8
  %598 = getelementptr inbounds i64, i64* %597, i64 0
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %594
  %602 = load %struct.mount*, %struct.mount** %3, align 8
  %603 = call i32 @ffs_snapshot_mount(%struct.mount* %602)
  br label %604

604:                                              ; preds = %601, %594
  %605 = load %struct.mount*, %struct.mount** %3, align 8
  %606 = call i32 @vfs_write_resume(%struct.mount* %605, i32 0)
  br label %607

607:                                              ; preds = %604, %381, %376
  %608 = load %struct.mount*, %struct.mount** %3, align 8
  %609 = call i64 @MOUNTEDSOFTDEP(%struct.mount* %608)
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %611, label %622

611:                                              ; preds = %607
  %612 = load %struct.mount*, %struct.mount** %3, align 8
  %613 = call i32 @MNT_ILOCK(%struct.mount* %612)
  %614 = load i32, i32* @MNT_ASYNC, align 4
  %615 = xor i32 %614, -1
  %616 = load %struct.mount*, %struct.mount** %3, align 8
  %617 = getelementptr inbounds %struct.mount, %struct.mount* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 4
  %619 = and i32 %618, %615
  store i32 %619, i32* %617, align 4
  %620 = load %struct.mount*, %struct.mount** %3, align 8
  %621 = call i32 @MNT_IUNLOCK(%struct.mount* %620)
  br label %622

622:                                              ; preds = %611, %607
  %623 = load %struct.fs*, %struct.fs** %7, align 8
  %624 = getelementptr inbounds %struct.fs, %struct.fs* %623, i32 0, i32 4
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* @FS_ACLS, align 4
  %627 = and i32 %625, %626
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %639

629:                                              ; preds = %622
  %630 = load %struct.mount*, %struct.mount** %3, align 8
  %631 = call i32 @MNT_ILOCK(%struct.mount* %630)
  %632 = load i32, i32* @MNT_ACLS, align 4
  %633 = load %struct.mount*, %struct.mount** %3, align 8
  %634 = getelementptr inbounds %struct.mount, %struct.mount* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 4
  %636 = or i32 %635, %632
  store i32 %636, i32* %634, align 4
  %637 = load %struct.mount*, %struct.mount** %3, align 8
  %638 = call i32 @MNT_IUNLOCK(%struct.mount* %637)
  br label %639

639:                                              ; preds = %629, %622
  %640 = load %struct.fs*, %struct.fs** %7, align 8
  %641 = getelementptr inbounds %struct.fs, %struct.fs* %640, i32 0, i32 4
  %642 = load i32, i32* %641, align 8
  %643 = load i32, i32* @FS_NFS4ACLS, align 4
  %644 = and i32 %642, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %656

646:                                              ; preds = %639
  %647 = load %struct.mount*, %struct.mount** %3, align 8
  %648 = call i32 @MNT_ILOCK(%struct.mount* %647)
  %649 = load i32, i32* @MNT_NFS4ACLS, align 4
  %650 = load %struct.mount*, %struct.mount** %3, align 8
  %651 = getelementptr inbounds %struct.mount, %struct.mount* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 4
  %653 = or i32 %652, %649
  store i32 %653, i32* %651, align 4
  %654 = load %struct.mount*, %struct.mount** %3, align 8
  %655 = call i32 @MNT_IUNLOCK(%struct.mount* %654)
  br label %656

656:                                              ; preds = %646, %639
  %657 = load i32, i32* %8, align 4
  %658 = icmp sgt i32 %657, 0
  br i1 %658, label %659, label %716

659:                                              ; preds = %656
  %660 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %661 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %671

664:                                              ; preds = %659
  %665 = load %struct.mount*, %struct.mount** %3, align 8
  %666 = load %struct.fs*, %struct.fs** %7, align 8
  %667 = getelementptr inbounds %struct.fs, %struct.fs* %666, i32 0, i32 3
  %668 = load i8*, i8** %667, align 8
  %669 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %665, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i8* %668)
  %670 = load i32, i32* @EINVAL, align 4
  store i32 %670, i32* %2, align 4
  br label %896

671:                                              ; preds = %659
  %672 = load %struct.mount*, %struct.mount** %3, align 8
  %673 = call i64 @MOUNTEDSOFTDEP(%struct.mount* %672)
  %674 = icmp eq i64 %673, 0
  %675 = zext i1 %674 to i32
  %676 = call i32 @KASSERT(i32 %675, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0))
  %677 = call i32 (...) @g_topology_lock()
  %678 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %679 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %678, i32 0, i32 1
  %680 = load i32, i32* %679, align 4
  %681 = call i32 @g_access(i32 %680, i32 0, i32 1, i32 0)
  store i32 %681, i32* %9, align 4
  %682 = call i32 (...) @g_topology_unlock()
  %683 = load i32, i32* %9, align 4
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %692

685:                                              ; preds = %671
  %686 = load %struct.mount*, %struct.mount** %3, align 8
  %687 = load %struct.fs*, %struct.fs** %7, align 8
  %688 = getelementptr inbounds %struct.fs, %struct.fs* %687, i32 0, i32 3
  %689 = load i8*, i8** %688, align 8
  %690 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %686, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i8* %689)
  %691 = load i32, i32* %9, align 4
  store i32 %691, i32* %2, align 4
  br label %896

692:                                              ; preds = %671
  %693 = load i32, i32* %8, align 4
  %694 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %695 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %694, i32 0, i32 0
  store i32 %693, i32* %695, align 8
  %696 = load %struct.fs*, %struct.fs** %7, align 8
  %697 = getelementptr inbounds %struct.fs, %struct.fs* %696, i32 0, i32 6
  %698 = load i64*, i64** %697, align 8
  %699 = getelementptr inbounds i64, i64* %698, i64 0
  %700 = load i64, i64* %699, align 8
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %705

702:                                              ; preds = %692
  %703 = load %struct.mount*, %struct.mount** %3, align 8
  %704 = call i32 @ffs_snapshot_mount(%struct.mount* %703)
  br label %705

705:                                              ; preds = %702, %692
  %706 = load i8*, i8** @time_second, align 8
  %707 = load %struct.fs*, %struct.fs** %7, align 8
  %708 = getelementptr inbounds %struct.fs, %struct.fs* %707, i32 0, i32 8
  store i8* %706, i8** %708, align 8
  %709 = load %struct.fs*, %struct.fs** %7, align 8
  %710 = getelementptr inbounds %struct.fs, %struct.fs* %709, i32 0, i32 7
  store i32 1, i32* %710, align 8
  %711 = load %struct.fs*, %struct.fs** %7, align 8
  %712 = getelementptr inbounds %struct.fs, %struct.fs* %711, i32 0, i32 5
  store i32 0, i32* %712, align 4
  %713 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %714 = load i32, i32* @MNT_WAIT, align 4
  %715 = call i32 @ffs_sbupdate(%struct.ufsmount* %713, i32 %714, i32 0)
  br label %716

716:                                              ; preds = %705, %656
  %717 = load %struct.mount*, %struct.mount** %3, align 8
  %718 = getelementptr inbounds %struct.mount, %struct.mount* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 4
  %720 = load i32, i32* @MNT_SNAPSHOT, align 4
  %721 = and i32 %719, %720
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %727

723:                                              ; preds = %716
  %724 = load %struct.mount*, %struct.mount** %3, align 8
  %725 = load i8*, i8** %16, align 8
  %726 = call i32 @ffs_snapshot(%struct.mount* %724, i8* %725)
  store i32 %726, i32* %2, align 4
  br label %896

727:                                              ; preds = %716
  %728 = load %struct.mount*, %struct.mount** %3, align 8
  %729 = call i32 @vfs_unbusy(%struct.mount* %728)
  br label %730

730:                                              ; preds = %727, %173
  %731 = load i32, i32* @LOOKUP, align 4
  %732 = load i32, i32* @FOLLOW, align 4
  %733 = load i32, i32* @LOCKLEAF, align 4
  %734 = or i32 %732, %733
  %735 = load i32, i32* @UIO_SYSSPACE, align 4
  %736 = load i8*, i8** %16, align 8
  %737 = load %struct.thread*, %struct.thread** %5, align 8
  %738 = call i32 @NDINIT(%struct.nameidata* %15, i32 %731, i32 %734, i32 %735, i8* %736, %struct.thread* %737)
  %739 = call i32 @namei(%struct.nameidata* %15)
  store i32 %739, i32* %9, align 4
  %740 = load %struct.mount*, %struct.mount** %3, align 8
  %741 = getelementptr inbounds %struct.mount, %struct.mount* %740, i32 0, i32 0
  %742 = load i32, i32* %741, align 4
  %743 = load i32, i32* @MNT_UPDATE, align 4
  %744 = and i32 %742, %743
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %754

746:                                              ; preds = %730
  %747 = load %struct.mount*, %struct.mount** %3, align 8
  %748 = load i32, i32* @MBF_NOWAIT, align 4
  %749 = call i32 @vfs_busy(%struct.mount* %747, i32 %748)
  store i32 %749, i32* %10, align 4
  %750 = load i32, i32* %10, align 4
  %751 = icmp eq i32 %750, 0
  %752 = zext i1 %751 to i32
  %753 = call i32 @MPASS(i32 %752)
  br label %754

754:                                              ; preds = %746, %730
  %755 = load i32, i32* %9, align 4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %759

757:                                              ; preds = %754
  %758 = load i32, i32* %9, align 4
  store i32 %758, i32* %2, align 4
  br label %896

759:                                              ; preds = %754
  %760 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %761 = call i32 @NDFREE(%struct.nameidata* %15, i32 %760)
  %762 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %763 = load %struct.vnode*, %struct.vnode** %762, align 8
  store %struct.vnode* %763, %struct.vnode** %4, align 8
  %764 = load %struct.vnode*, %struct.vnode** %4, align 8
  %765 = call i32 @vn_isdisk(%struct.vnode* %764, i32* %9)
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %771, label %767

767:                                              ; preds = %759
  %768 = load %struct.vnode*, %struct.vnode** %4, align 8
  %769 = call i32 @vput(%struct.vnode* %768)
  %770 = load i32, i32* %9, align 4
  store i32 %770, i32* %2, align 4
  br label %896

771:                                              ; preds = %759
  %772 = load i32, i32* @VREAD, align 4
  store i32 %772, i32* %14, align 4
  %773 = load %struct.mount*, %struct.mount** %3, align 8
  %774 = getelementptr inbounds %struct.mount, %struct.mount* %773, i32 0, i32 0
  %775 = load i32, i32* %774, align 4
  %776 = load i32, i32* @MNT_RDONLY, align 4
  %777 = and i32 %775, %776
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %783

779:                                              ; preds = %771
  %780 = load i32, i32* @VWRITE, align 4
  %781 = load i32, i32* %14, align 4
  %782 = or i32 %781, %780
  store i32 %782, i32* %14, align 4
  br label %783

783:                                              ; preds = %779, %771
  %784 = load %struct.vnode*, %struct.vnode** %4, align 8
  %785 = load i32, i32* %14, align 4
  %786 = load %struct.thread*, %struct.thread** %5, align 8
  %787 = getelementptr inbounds %struct.thread, %struct.thread* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 4
  %789 = load %struct.thread*, %struct.thread** %5, align 8
  %790 = call i32 @VOP_ACCESS(%struct.vnode* %784, i32 %785, i32 %788, %struct.thread* %789)
  store i32 %790, i32* %9, align 4
  %791 = load i32, i32* %9, align 4
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %797

793:                                              ; preds = %783
  %794 = load %struct.thread*, %struct.thread** %5, align 8
  %795 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %796 = call i32 @priv_check(%struct.thread* %794, i32 %795)
  store i32 %796, i32* %9, align 4
  br label %797

797:                                              ; preds = %793, %783
  %798 = load i32, i32* %9, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %804

800:                                              ; preds = %797
  %801 = load %struct.vnode*, %struct.vnode** %4, align 8
  %802 = call i32 @vput(%struct.vnode* %801)
  %803 = load i32, i32* %9, align 4
  store i32 %803, i32* %2, align 4
  br label %896

804:                                              ; preds = %797
  %805 = load %struct.mount*, %struct.mount** %3, align 8
  %806 = getelementptr inbounds %struct.mount, %struct.mount* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 4
  %808 = load i32, i32* @MNT_UPDATE, align 4
  %809 = and i32 %807, %808
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %831

811:                                              ; preds = %804
  %812 = load %struct.vnode*, %struct.vnode** %4, align 8
  %813 = getelementptr inbounds %struct.vnode, %struct.vnode* %812, i32 0, i32 0
  %814 = load i64, i64* %813, align 8
  %815 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %816 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %815, i32 0, i32 3
  %817 = load %struct.vnode*, %struct.vnode** %816, align 8
  %818 = getelementptr inbounds %struct.vnode, %struct.vnode* %817, i32 0, i32 0
  %819 = load i64, i64* %818, align 8
  %820 = icmp ne i64 %814, %819
  br i1 %820, label %821, label %823

821:                                              ; preds = %811
  %822 = load i32, i32* @EINVAL, align 4
  store i32 %822, i32* %9, align 4
  br label %823

823:                                              ; preds = %821, %811
  %824 = load %struct.vnode*, %struct.vnode** %4, align 8
  %825 = call i32 @vput(%struct.vnode* %824)
  %826 = load i32, i32* %9, align 4
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %828, label %830

828:                                              ; preds = %823
  %829 = load i32, i32* %9, align 4
  store i32 %829, i32* %2, align 4
  br label %896

830:                                              ; preds = %823
  br label %892

831:                                              ; preds = %804
  %832 = load %struct.vnode*, %struct.vnode** %4, align 8
  %833 = load %struct.mount*, %struct.mount** %3, align 8
  %834 = load %struct.thread*, %struct.thread** %5, align 8
  %835 = call i32 @ffs_mountfs(%struct.vnode* %832, %struct.mount* %833, %struct.thread* %834)
  store i32 %835, i32* %9, align 4
  %836 = icmp ne i32 %835, 0
  br i1 %836, label %837, label %841

837:                                              ; preds = %831
  %838 = load %struct.vnode*, %struct.vnode** %4, align 8
  %839 = call i32 @vrele(%struct.vnode* %838)
  %840 = load i32, i32* %9, align 4
  store i32 %840, i32* %2, align 4
  br label %896

841:                                              ; preds = %831
  %842 = load i32, i32* %8, align 4
  %843 = icmp sgt i32 %842, 0
  br i1 %843, label %844, label %891

844:                                              ; preds = %841
  %845 = load %struct.mount*, %struct.mount** %3, align 8
  %846 = call i64 @MOUNTEDSOFTDEP(%struct.mount* %845)
  %847 = icmp eq i64 %846, 0
  %848 = zext i1 %847 to i32
  %849 = call i32 @KASSERT(i32 %848, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0))
  %850 = load %struct.mount*, %struct.mount** %3, align 8
  %851 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %850)
  store %struct.ufsmount* %851, %struct.ufsmount** %6, align 8
  %852 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %853 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %852, i32 0, i32 2
  %854 = load %struct.fs*, %struct.fs** %853, align 8
  store %struct.fs* %854, %struct.fs** %7, align 8
  %855 = call i32 (...) @g_topology_lock()
  %856 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %857 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %856, i32 0, i32 1
  %858 = load i32, i32* %857, align 4
  %859 = call i32 @g_access(i32 %858, i32 0, i32 1, i32 0)
  store i32 %859, i32* %9, align 4
  %860 = call i32 (...) @g_topology_unlock()
  %861 = load i32, i32* %9, align 4
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %868

863:                                              ; preds = %844
  %864 = load %struct.fs*, %struct.fs** %7, align 8
  %865 = getelementptr inbounds %struct.fs, %struct.fs* %864, i32 0, i32 3
  %866 = load i8*, i8** %865, align 8
  %867 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* %866)
  br label %890

868:                                              ; preds = %844
  %869 = load i32, i32* %8, align 4
  %870 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %871 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %870, i32 0, i32 0
  store i32 %869, i32* %871, align 8
  %872 = load %struct.fs*, %struct.fs** %7, align 8
  %873 = getelementptr inbounds %struct.fs, %struct.fs* %872, i32 0, i32 6
  %874 = load i64*, i64** %873, align 8
  %875 = getelementptr inbounds i64, i64* %874, i64 0
  %876 = load i64, i64* %875, align 8
  %877 = icmp ne i64 %876, 0
  br i1 %877, label %878, label %881

878:                                              ; preds = %868
  %879 = load %struct.mount*, %struct.mount** %3, align 8
  %880 = call i32 @ffs_snapshot_mount(%struct.mount* %879)
  br label %881

881:                                              ; preds = %878, %868
  %882 = load i8*, i8** @time_second, align 8
  %883 = load %struct.fs*, %struct.fs** %7, align 8
  %884 = getelementptr inbounds %struct.fs, %struct.fs* %883, i32 0, i32 8
  store i8* %882, i8** %884, align 8
  %885 = load %struct.fs*, %struct.fs** %7, align 8
  %886 = getelementptr inbounds %struct.fs, %struct.fs* %885, i32 0, i32 5
  store i32 0, i32* %886, align 4
  %887 = load %struct.ufsmount*, %struct.ufsmount** %6, align 8
  %888 = load i32, i32* @MNT_WAIT, align 4
  %889 = call i32 @ffs_sbupdate(%struct.ufsmount* %887, i32 %888, i32 0)
  br label %890

890:                                              ; preds = %881, %863
  br label %891

891:                                              ; preds = %890, %841
  br label %892

892:                                              ; preds = %891, %830
  %893 = load %struct.mount*, %struct.mount** %3, align 8
  %894 = load i8*, i8** %16, align 8
  %895 = call i32 @vfs_mountedfrom(%struct.mount* %893, i8* %894)
  store i32 0, i32* %2, align 4
  br label %896

896:                                              ; preds = %892, %837, %828, %800, %767, %757, %723, %685, %664, %579, %557, %508, %501, %495, %470, %420, %392, %374, %327, %280, %249, %242, %216, %165, %144, %133, %52, %24
  %897 = load i32, i32* %2, align 4
  ret i32 %897
}

declare dso_local i64 @vfs_filteropt(i32, i32) #1

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @vfs_deleteopt(i32, i8*) #1

declare dso_local i8* @vfs_getopts(i32, i8*, i32*) #1

declare dso_local i64 @vfs_getopt(i32, i8*, i32*, i32*) #1

declare dso_local i32 @vfs_scanopt(i32, i8*, i8*, i32*) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

declare dso_local i64 @vfs_flagopt(i32, i8*, i32*, i32) #1

declare dso_local i32 @vfs_mount_error(%struct.mount*, i8*, ...) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @ffs_flushfiles(%struct.mount*, i32, %struct.thread*) #1

declare dso_local i32 @ffs_sbupdate(%struct.ufsmount*, i32, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(i32, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @vfs_write_suspend_umnt(%struct.mount*) #1

declare dso_local i64 @MOUNTEDSOFTDEP(%struct.mount*) #1

declare dso_local i32 @softdep_flushfiles(%struct.mount*, i32, %struct.thread*) #1

declare dso_local i32 @vfs_write_resume(%struct.mount*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @softdep_unmount(%struct.mount*) #1

declare dso_local i32 @ffs_reload(%struct.mount*, %struct.thread*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @softdep_mount(%struct.vnode*, %struct.mount*, %struct.fs*, i32) #1

declare dso_local i32 @ffs_snapshot_mount(%struct.mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ffs_snapshot(%struct.mount*, i8*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_isdisk(%struct.vnode*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @ffs_mountfs(%struct.vnode*, %struct.mount*, %struct.thread*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
