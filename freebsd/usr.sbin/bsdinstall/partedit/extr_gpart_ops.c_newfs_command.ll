; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_gpart_ops.c_newfs_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_gpart_ops.c_newfs_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [12 x i8] c"freebsd-ufs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"UFS1\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"UFS Version 1\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"Use version 1 of the UFS file system instead of version 2 (not recommended)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"SU\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Softupdates\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Enable softupdates (default)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SUJ\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Softupdates journaling\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"Enable file system journaling (default - turn off for SSDs)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"TRIM\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Enable SSD TRIM support\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Enable TRIM support, useful on solid-state drives\00", align 1
@__const.newfs_command.items = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i32 0, i32 0), i32 0, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 1, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i32 0, i32 0), i32 1, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0), i32 0, i64 0, i8* null }], align 16
@.str.13 = private unnamed_addr constant [12 x i8] c"UFS Options\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FLAG_CHECK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"newfs \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"-O1 \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"-U \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-j \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-t \00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"freebsd-zfs\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"fletcher4\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"checksum algorithm: fletcher4\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"Use fletcher4 for data integrity checking. (default)\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"fletcher2\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"checksum algorithm: fletcher2\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"Use fletcher2 for data integrity checking. (not recommended)\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"checksum algorithm: sha256\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"Use sha256 for data integrity checking. (not recommended)\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"Update atimes for files\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Disable atime update\00", align 1
@__const.newfs_command.items.33 = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i32 0, i32 0), i32 1, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0), i32 0, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i32 0, i32 0), i32 0, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i32 0, i64 0, i8* null }], align 16
@.str.34 = private unnamed_addr constant [12 x i8] c"ZFS Options\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"zpool create -f -m none \00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"BSDINSTALL_TMPBOOT\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"%s/zfs\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [32 x i8] c"%s -o cachefile=%s/zpool.cache \00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"-O checksum=fletcher4 \00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"-O checksum=fletcher2 \00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"-O checksum=sha256 \00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"-O atime=off \00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"fat32\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"efi\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"ms-basic-data\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"FAT32\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"FAT Type 32\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"Create a FAT32 filesystem (default)\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"FAT16\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"FAT Type 16\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Create a FAT16 filesystem\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"FAT12\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"FAT Type 12\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"Create a FAT12 filesystem\00", align 1
@__const.newfs_command.items.55 = private unnamed_addr constant [3 x %struct.TYPE_4__] [%struct.TYPE_4__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i32 1, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i32 0, i64 0, i8* null }, %struct.TYPE_4__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0), i32 0, i64 0, i8* null }], align 16
@.str.56 = private unnamed_addr constant [12 x i8] c"FAT Options\00", align 1
@FLAG_RADIO = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [13 x i8] c"newfs_msdos \00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"-F 32 -c 1\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"-F 16 \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"-F 12 \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"No configurable options exist for this filesystem.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @newfs_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newfs_command(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.TYPE_4__], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x %struct.TYPE_4__], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [3 x %struct.TYPE_4__], align 16
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %3
  %22 = bitcast [4 x %struct.TYPE_4__]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.newfs_command.items to i8*), i64 192, i1 false)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %27 = call i64 @nitems(%struct.TYPE_4__* %26)
  %28 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %29 = load i32, i32* @FLAG_CHECK, align 4
  %30 = call i32 @dlg_checklist(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 0, i32 0, i64 %27, %struct.TYPE_4__* %28, i32* null, i32 %29, i32* %7)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %310

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %100, %35
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %41 = call i64 @nitems(%struct.TYPE_4__* %40)
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 16
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %100

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcat(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %99

63:                                               ; preds = %52
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strcat(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %98

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcat(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %97

85:                                               ; preds = %74
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %8, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @strcat(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %85
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %71
  br label %99

99:                                               ; preds = %98, %60
  br label %100

100:                                              ; preds = %99, %51
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %38

103:                                              ; preds = %38
  br label %310

104:                                              ; preds = %3
  %105 = load i8*, i8** %4, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %216

108:                                              ; preds = %104
  %109 = bitcast [4 x %struct.TYPE_4__]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %109, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.newfs_command.items.33 to i8*), i64 192, i1 false)
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 0
  %114 = call i64 @nitems(%struct.TYPE_4__* %113)
  %115 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 0
  %116 = load i32, i32* @FLAG_CHECK, align 4
  %117 = call i32 @dlg_checklist(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 0, i32 0, i64 %114, %struct.TYPE_4__* %115, i32* null, i32 %116, i32* %10)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %310

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0))
  %125 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = load i32, i32* @MAXPATHLEN, align 4
  %129 = zext i32 %128 to i64
  %130 = call i8* @llvm.stacksave()
  store i8* %130, i8** %13, align 8
  %131 = alloca i8, i64 %129, align 16
  store i64 %129, i64* %14, align 8
  %132 = trunc i64 %129 to i32
  %133 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %134 = call i32 @snprintf(i8* %131, i32 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* @S_IRWXU, align 4
  %136 = load i32, i32* @S_IRGRP, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @S_IXGRP, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @S_IROTH, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @S_IXOTH, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @mkdir(i8* %131, i32 %143)
  %145 = load i8*, i8** %5, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @sprintf(i8* %145, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i8* %146, i8* %131)
  %148 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %148)
  br label %149

149:                                              ; preds = %127, %122
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %212, %149
  %151 = load i32, i32* %10, align 4
  %152 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 0
  %153 = call i64 @nitems(%struct.TYPE_4__* %152)
  %154 = trunc i64 %153 to i32
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %215

156:                                              ; preds = %150
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 16
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %212

164:                                              ; preds = %156
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 5
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @strcat(i8* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  br label %211

175:                                              ; preds = %164
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 5
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i8*, i8** %5, align 8
  %185 = call i32 @strcat(i8* %184, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0))
  br label %210

186:                                              ; preds = %175
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @strcmp(i8* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = load i8*, i8** %5, align 8
  %196 = call i32 @strcat(i8* %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0))
  br label %209

197:                                              ; preds = %186
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %11, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 5
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  %206 = load i8*, i8** %5, align 8
  %207 = call i32 @strcat(i8* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %197
  br label %209

209:                                              ; preds = %208, %194
  br label %210

210:                                              ; preds = %209, %183
  br label %211

211:                                              ; preds = %210, %172
  br label %212

212:                                              ; preds = %211, %163
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %150

215:                                              ; preds = %150
  br label %309

216:                                              ; preds = %104
  %217 = load i8*, i8** %4, align 8
  %218 = call i64 @strcmp(i8* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %216
  %221 = load i8*, i8** %4, align 8
  %222 = call i64 @strcmp(i8* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load i8*, i8** %4, align 8
  %226 = call i64 @strcmp(i8* %225, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %299

228:                                              ; preds = %224, %220, %216
  %229 = bitcast [3 x %struct.TYPE_4__]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %229, i8* align 16 bitcast ([3 x %struct.TYPE_4__]* @__const.newfs_command.items.55 to i8*), i64 144, i1 false)
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %16, i64 0, i64 0
  %234 = call i64 @nitems(%struct.TYPE_4__* %233)
  %235 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %16, i64 0, i64 0
  %236 = load i32, i32* @FLAG_RADIO, align 4
  %237 = call i32 @dlg_checklist(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 0, i32 0, i64 %234, %struct.TYPE_4__* %235, i32* null, i32 %236, i32* %15)
  store i32 %237, i32* %17, align 4
  %238 = load i32, i32* %17, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  br label %310

241:                                              ; preds = %232
  br label %242

242:                                              ; preds = %241, %228
  %243 = load i8*, i8** %5, align 8
  %244 = call i32 @strcpy(i8* %243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %245

245:                                              ; preds = %295, %242
  %246 = load i32, i32* %15, align 4
  %247 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %16, i64 0, i64 0
  %248 = call i64 @nitems(%struct.TYPE_4__* %247)
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %251, label %298

251:                                              ; preds = %245
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %16, i64 0, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 16
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  br label %295

259:                                              ; preds = %251
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %16, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 5
  %264 = load i8*, i8** %263, align 8
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load i8*, i8** %5, align 8
  %269 = call i32 @strcat(i8* %268, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0))
  br label %294

270:                                              ; preds = %259
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %16, i64 0, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 5
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @strcmp(i8* %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %270
  %279 = load i8*, i8** %5, align 8
  %280 = call i32 @strcat(i8* %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0))
  br label %293

281:                                              ; preds = %270
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %16, i64 0, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 5
  %286 = load i8*, i8** %285, align 8
  %287 = call i64 @strcmp(i8* %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = load i8*, i8** %5, align 8
  %291 = call i32 @strcat(i8* %290, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %281
  br label %293

293:                                              ; preds = %292, %278
  br label %294

294:                                              ; preds = %293, %267
  br label %295

295:                                              ; preds = %294, %258
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %15, align 4
  br label %245

298:                                              ; preds = %245
  br label %308

299:                                              ; preds = %224
  %300 = load i32, i32* %6, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* @TRUE, align 4
  %304 = call i32 @dialog_msgbox(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i64 0, i64 0), i32 0, i32 0, i32 %303)
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i8*, i8** %5, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  store i8 0, i8* %307, align 1
  br label %308

308:                                              ; preds = %305, %298
  br label %309

309:                                              ; preds = %308, %215
  br label %310

310:                                              ; preds = %33, %120, %240, %309, %103
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dlg_checklist(i8*, i8*, i32, i32, i32, i64, %struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i64 @nitems(%struct.TYPE_4__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @dialog_msgbox(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
