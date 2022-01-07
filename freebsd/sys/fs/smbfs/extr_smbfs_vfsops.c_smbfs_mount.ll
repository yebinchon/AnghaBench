; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32, %struct.TYPE_2__, i32, %struct.smbmount* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.smbmount = type { i32, i32, i32, i32, i32, %struct.smb_dev*, i32, i32*, %struct.smb_share* }
%struct.smb_dev = type { i32 }
%struct.smb_share = type { i32 }
%struct.smb_vc = type { i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.smb_cred = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MNT_UPDATE = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@smbfs_opts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid option\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"No fd option\00", align 1
@SMBM_EXEC = common dso_local global i32 0, align 4
@M_SMBFSDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid device handle %d (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"invalid device handle %d %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"caseopt\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Invalid caseopt\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Invalid uid\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Invalid gid\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"file_mode\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Invalid file_mode\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"dir_mode\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Invalid dir_mode\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"nolong\00", align 1
@SMBFS_MOUNT_NO_LONG = common dso_local global i32 0, align 4
@MNAMELEN = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"smbfs_root error: %d\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"root.v_usecount = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @smbfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.smbmount*, align 8
  %5 = alloca %struct.smb_vc*, align 8
  %6 = alloca %struct.smb_share*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.smb_dev*, align 8
  %10 = alloca %struct.smb_cred*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.smbmount* null, %struct.smbmount** %4, align 8
  store %struct.smb_share* null, %struct.smb_share** %6, align 8
  store %struct.smb_dev* null, %struct.smb_dev** %9, align 8
  %15 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %15, %struct.thread** %8, align 8
  %16 = load %struct.mount*, %struct.mount** %3, align 8
  %17 = getelementptr inbounds %struct.mount, %struct.mount* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MNT_UPDATE, align 4
  %20 = load i32, i32* @MNT_ROOTFS, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %25, i32* %2, align 4
  br label %309

26:                                               ; preds = %1
  %27 = load %struct.mount*, %struct.mount** %3, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @smbfs_opts, align 4
  %31 = call i64 @vfs_filteropt(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.mount*, %struct.mount** %3, align 8
  %35 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %2, align 4
  br label %309

37:                                               ; preds = %26
  %38 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %38, %struct.smb_cred** %10, align 8
  %39 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %40 = load %struct.thread*, %struct.thread** %8, align 8
  %41 = load %struct.thread*, %struct.thread** %8, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @smb_makescred(%struct.smb_cred* %39, %struct.thread* %40, i32 %43)
  %45 = load %struct.mount*, %struct.mount** %3, align 8
  %46 = getelementptr inbounds %struct.mount, %struct.mount* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @vfs_scanopt(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %49 = icmp ne i32 1, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load %struct.mount*, %struct.mount** %3, align 8
  %52 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %54 = call i32 @smbfs_free_scred(%struct.smb_cred* %53)
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %2, align 4
  br label %309

56:                                               ; preds = %37
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @SMBM_EXEC, align 4
  %59 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %60 = call i32 @smb_dev2share(i32 %57, i32 %58, %struct.smb_cred* %59, %struct.smb_share** %6, %struct.smb_dev** %9)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @M_SMBFSDATA, align 4
  %62 = load i32, i32* @M_WAITOK, align 4
  %63 = load i32, i32* @M_ZERO, align 4
  %64 = or i32 %62, %63
  %65 = call %struct.smbmount* @malloc(i32 56, i32 %61, i32 %64)
  store %struct.smbmount* %65, %struct.smbmount** %4, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %56
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.mount*, %struct.mount** %3, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %77 = call i32 @smbfs_free_scred(%struct.smb_cred* %76)
  %78 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %79 = load i32, i32* @M_SMBFSDATA, align 4
  %80 = call i32 @free(%struct.smbmount* %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %2, align 4
  br label %309

82:                                               ; preds = %56
  %83 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %84 = call %struct.smb_vc* @SSTOVC(%struct.smb_share* %83)
  store %struct.smb_vc* %84, %struct.smb_vc** %5, align 8
  %85 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %86 = call i32 @smb_share_unlock(%struct.smb_share* %85)
  %87 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %88 = call %struct.smb_vc* @SSTOVC(%struct.smb_share* %87)
  %89 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mount*, %struct.mount** %3, align 8
  %92 = getelementptr inbounds %struct.mount, %struct.mount* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %95 = load %struct.mount*, %struct.mount** %3, align 8
  %96 = getelementptr inbounds %struct.mount, %struct.mount* %95, i32 0, i32 3
  store %struct.smbmount* %94, %struct.smbmount** %96, align 8
  %97 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %98 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %99 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %98, i32 0, i32 8
  store %struct.smb_share* %97, %struct.smb_share** %99, align 8
  %100 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %101 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %100, i32 0, i32 7
  store i32* null, i32** %101, align 8
  %102 = load %struct.smb_dev*, %struct.smb_dev** %9, align 8
  %103 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %104 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %103, i32 0, i32 5
  store %struct.smb_dev* %102, %struct.smb_dev** %104, align 8
  %105 = load %struct.mount*, %struct.mount** %3, align 8
  %106 = getelementptr inbounds %struct.mount, %struct.mount* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %109 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %108, i32 0, i32 0
  %110 = call i32 @vfs_scanopt(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %109)
  %111 = icmp ne i32 1, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %82
  %113 = load %struct.mount*, %struct.mount** %3, align 8
  %114 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %11, align 4
  br label %279

116:                                              ; preds = %82
  %117 = load %struct.mount*, %struct.mount** %3, align 8
  %118 = getelementptr inbounds %struct.mount, %struct.mount* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @vfs_scanopt(i32 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %121 = icmp ne i32 1, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.mount*, %struct.mount** %3, align 8
  %124 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %11, align 4
  br label %279

126:                                              ; preds = %116
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %129 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mount*, %struct.mount** %3, align 8
  %131 = getelementptr inbounds %struct.mount, %struct.mount* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @vfs_scanopt(i32 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %134 = icmp ne i32 1, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load %struct.mount*, %struct.mount** %3, align 8
  %137 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  store i32 %138, i32* %11, align 4
  br label %279

139:                                              ; preds = %126
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %142 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.mount*, %struct.mount** %3, align 8
  %144 = getelementptr inbounds %struct.mount, %struct.mount* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @vfs_scanopt(i32 %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %147 = icmp ne i32 1, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load %struct.mount*, %struct.mount** %3, align 8
  %150 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %11, align 4
  br label %279

152:                                              ; preds = %139
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @S_IRWXU, align 4
  %155 = load i32, i32* @S_IRWXG, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @S_IRWXO, align 4
  %158 = or i32 %156, %157
  %159 = and i32 %153, %158
  %160 = load i32, i32* @S_IFREG, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %163 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.mount*, %struct.mount** %3, align 8
  %165 = getelementptr inbounds %struct.mount, %struct.mount* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @vfs_scanopt(i32 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %168 = icmp ne i32 1, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %152
  %170 = load %struct.mount*, %struct.mount** %3, align 8
  %171 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %172 = load i32, i32* @EINVAL, align 4
  store i32 %172, i32* %11, align 4
  br label %279

173:                                              ; preds = %152
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @S_IRWXU, align 4
  %176 = load i32, i32* @S_IRWXG, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @S_IRWXO, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %174, %179
  %181 = load i32, i32* @S_IFDIR, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %184 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.mount*, %struct.mount** %3, align 8
  %186 = getelementptr inbounds %struct.mount, %struct.mount* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %189 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %188, i32 0, i32 6
  %190 = load i32, i32* @SMBFS_MOUNT_NO_LONG, align 4
  %191 = call i32 @vfs_flagopt(i32 %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32* %189, i32 %190)
  %192 = load %struct.mount*, %struct.mount** %3, align 8
  %193 = getelementptr inbounds %struct.mount, %struct.mount* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %13, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 8
  store i8* %197, i8** %14, align 8
  %198 = load i8*, i8** %13, align 8
  %199 = load i32, i32* @MNAMELEN, align 4
  %200 = call i32 @bzero(i8* %198, i32 %199)
  %201 = load i8*, i8** %13, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %13, align 8
  store i8 47, i8* %201, align 1
  %203 = load i8*, i8** %13, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %13, align 8
  store i8 47, i8* %203, align 1
  %205 = load i8*, i8** %13, align 8
  %206 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %207 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %14, align 8
  %210 = load i8*, i8** %13, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sub nsw i64 %213, 2
  %215 = trunc i64 %214 to i32
  %216 = call i32 @strncpy(i8* %205, i32 %208, i32 %215)
  %217 = call i8* @strchr(i32 %216, i32 0)
  store i8* %217, i8** %13, align 8
  %218 = load i8*, i8** %13, align 8
  %219 = load i8*, i8** %14, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 -1
  %221 = icmp ult i8* %218, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %173
  %223 = load i8*, i8** %13, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %13, align 8
  store i8 64, i8* %223, align 1
  %225 = load i8*, i8** %13, align 8
  %226 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %227 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i8*, i8** %14, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sub nsw i64 %233, 2
  %235 = trunc i64 %234 to i32
  %236 = call i32 @strncpy(i8* %225, i32 %228, i32 %235)
  %237 = call i8* @strchr(i32 %236, i32 0)
  store i8* %237, i8** %13, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 -1
  %241 = icmp ult i8* %238, %240
  br i1 %241, label %242, label %257

242:                                              ; preds = %222
  %243 = load i8*, i8** %13, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %13, align 8
  store i8 47, i8* %243, align 1
  %245 = load i8*, i8** %13, align 8
  %246 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %247 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i8*, i8** %14, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = ptrtoint i8* %249 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sub nsw i64 %253, 2
  %255 = trunc i64 %254 to i32
  %256 = call i32 @strncpy(i8* %245, i32 %248, i32 %255)
  br label %257

257:                                              ; preds = %242, %222
  br label %258

258:                                              ; preds = %257, %173
  %259 = load %struct.mount*, %struct.mount** %3, align 8
  %260 = call i32 @vfs_getnewfsid(%struct.mount* %259)
  %261 = load %struct.mount*, %struct.mount** %3, align 8
  %262 = load i32, i32* @LK_EXCLUSIVE, align 4
  %263 = call i32 @smbfs_root(%struct.mount* %261, i32 %262, %struct.vnode** %7)
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %258
  %267 = load %struct.mount*, %struct.mount** %3, align 8
  %268 = load i32, i32* %11, align 4
  %269 = call i32 (%struct.mount*, i8*, ...) @vfs_mount_error(%struct.mount* %267, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %268)
  br label %279

270:                                              ; preds = %258
  %271 = load %struct.vnode*, %struct.vnode** %7, align 8
  %272 = call i32 @VOP_UNLOCK(%struct.vnode* %271, i32 0)
  %273 = load %struct.vnode*, %struct.vnode** %7, align 8
  %274 = call i32 @vrefcnt(%struct.vnode* %273)
  %275 = call i32 @SMBVDEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %274)
  %276 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %277 = call i32 @smbfs_free_scred(%struct.smb_cred* %276)
  %278 = load i32, i32* %11, align 4
  store i32 %278, i32* %2, align 4
  br label %309

279:                                              ; preds = %266, %169, %148, %135, %122, %112
  %280 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %281 = icmp ne %struct.smb_share* %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %284 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %285 = call i32 @smb_share_put(%struct.smb_share* %283, %struct.smb_cred* %284)
  br label %286

286:                                              ; preds = %282, %279
  %287 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %288 = call i32 @smbfs_free_scred(%struct.smb_cred* %287)
  %289 = call i32 (...) @SMB_LOCK()
  %290 = load i32, i32* %11, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %286
  %293 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %294 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %293, i32 0, i32 5
  %295 = load %struct.smb_dev*, %struct.smb_dev** %294, align 8
  %296 = load %struct.smb_dev*, %struct.smb_dev** %9, align 8
  %297 = icmp eq %struct.smb_dev* %295, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %292
  %299 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %300 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %299, i32 0, i32 5
  store %struct.smb_dev* null, %struct.smb_dev** %300, align 8
  %301 = load %struct.smb_dev*, %struct.smb_dev** %9, align 8
  %302 = call i32 @sdp_trydestroy(%struct.smb_dev* %301)
  br label %303

303:                                              ; preds = %298, %292, %286
  %304 = call i32 (...) @SMB_UNLOCK()
  %305 = load %struct.smbmount*, %struct.smbmount** %4, align 8
  %306 = load i32, i32* @M_SMBFSDATA, align 4
  %307 = call i32 @free(%struct.smbmount* %305, i32 %306)
  %308 = load i32, i32* %11, align 4
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %303, %270, %68, %50, %33, %24
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i64 @vfs_filteropt(i32, i32) #1

declare dso_local i32 @vfs_mount_error(%struct.mount*, i8*, ...) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, i32) #1

declare dso_local i32 @vfs_scanopt(i32, i8*, i8*, i32*) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

declare dso_local i32 @smb_dev2share(i32, i32, %struct.smb_cred*, %struct.smb_share**, %struct.smb_dev**) #1

declare dso_local %struct.smbmount* @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @free(%struct.smbmount*, i32) #1

declare dso_local %struct.smb_vc* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_share_unlock(%struct.smb_share*) #1

declare dso_local i32 @vfs_flagopt(i32, i8*, i32*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i8* @strchr(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @vfs_getnewfsid(%struct.mount*) #1

declare dso_local i32 @smbfs_root(%struct.mount*, i32, %struct.vnode**) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @SMBVDEBUG(i8*, i32) #1

declare dso_local i32 @vrefcnt(%struct.vnode*) #1

declare dso_local i32 @smb_share_put(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local i32 @SMB_LOCK(...) #1

declare dso_local i32 @sdp_trydestroy(%struct.smb_dev*) #1

declare dso_local i32 @SMB_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
