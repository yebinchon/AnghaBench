; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@aio_present = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vfs.aio\00", align 1
@errno = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"/tmp/open-dir.XXXXXXXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mkdtemp\00", align 1
@PERM_DIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"chmod %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"/tmp/open-file.XXXXXXXXXXX\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mkstemp\00", align 1
@PERM_FILE = common dso_local global i32 0, align 4
@file_modes = common dso_local global i32 0, align 4
@file_modes_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"check_dup_dir\00", align 1
@dir_modes = common dso_local global i32 0, align 4
@dir_modes_count = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"check_dup_file\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"check_dup2_dir\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"check_dup2_file\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"check_fchdir\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"check_fchflags_dir\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"check_fchflags_file\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"check_fchmod_dir\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"check_fchmod_file\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"check_fchown_dir\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"check_fchown_file\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"check_flock_dir\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"check_flock_file\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"check_fpathconf_dir\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"check_fpathconf_file\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"check_fstat_dir\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"check_fstat_file\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"check_fstatfs_dir\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"check_fstatfs_file\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"check_fsync_dir\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"check_fsync_file\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"check_ftruncate_dir\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"check_ftruncate_file\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"check_futimes_dir\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"check_futimes_file\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"check_lseek_dir\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"check_lseek_file\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"check_getdents_dir\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"check_getdents_file\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"check_sendfile_dir\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"check_sendfile_file\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"check_write_dir\00", align 1
@write = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [17 x i8] c"check_write_file\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"check_writev_dir\00", align 1
@writev_wrapper = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [18 x i8] c"check_writev_file\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"check_pwrite_dir\00", align 1
@pwrite_wrapper = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [18 x i8] c"check_pwrite_file\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"check_pwritev_dir\00", align 1
@pwritev_wrapper = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [19 x i8] c"check_pwritev_file\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"check_aio_write_dir\00", align 1
@aio_write_wrapper = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [21 x i8] c"check_aio_write_file\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"check_read_dir\00", align 1
@read = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"check_read_file\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"check_readv_dir\00", align 1
@readv_wrapper = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [17 x i8] c"check_readv_file\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"check_pread_dir\00", align 1
@pread_wrapper = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [17 x i8] c"check_pread_file\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"check_preadv_dir\00", align 1
@preadv_wrapper = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [18 x i8] c"check_preadv_file\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"check_aio_read_dir\00", align 1
@aio_read_wrapper = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [20 x i8] c"check_aio_read_file\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"check_mmap_read_dir\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"check_mmap_read_file\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"check_mmap_write_dir\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"check_mmap_write_file\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"check_mmap_exec_dir\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"check_mmap_exec_file\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"check_mmap_write_private_dir\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"check_mmap_write_private_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  store i32 0, i32* @aio_present, align 4
  store i64 4, i64* %7, align 8
  %15 = call i64 @sysctlbyname(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %5, i64* %7, i32* null, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EISDIR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* @aio_present, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %0
  %24 = trunc i64 %9 to i32
  %25 = call i32 @strlcpy(i8* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32* @mkdtemp(i8* %11)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* @PERM_DIR, align 4
  %32 = call i64 @chmod(i8* %11, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %11)
  %36 = call i32 @rmdir(i8* %11)
  %37 = call i32 @exit(i32 1) #4
  unreachable

38:                                               ; preds = %30
  %39 = trunc i64 %13 to i32
  %40 = call i32 @strlcpy(i8* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = call i32 @mkstemp(i8* %14)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %46 = call i32 @rmdir(i8* %11)
  %47 = call i32 @exit(i32 1) #4
  unreachable

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* @PERM_FILE, align 4
  %52 = call i64 @chmod(i8* %14, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %56 = call i32 @unlink(i8* %14)
  %57 = call i32 @rmdir(i8* %11)
  %58 = call i32 @exit(i32 1) #4
  unreachable

59:                                               ; preds = %48
  %60 = load i32, i32* @file_modes, align 4
  %61 = load i32, i32* @file_modes_count, align 4
  %62 = call i32 @check_directory_open_modes(i8* %11, i32 %60, i32 %61)
  %63 = load i32, i32* @dir_modes, align 4
  %64 = load i32, i32* @dir_modes_count, align 4
  %65 = call i32 @check_dup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %11, i32 %63, i32 %64)
  %66 = load i32, i32* @file_modes, align 4
  %67 = load i32, i32* @file_modes_count, align 4
  %68 = call i32 @check_dup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %14, i32 %66, i32 %67)
  %69 = load i32, i32* @dir_modes, align 4
  %70 = load i32, i32* @dir_modes_count, align 4
  %71 = call i32 @check_dup2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %11, i32 %69, i32 %70)
  %72 = load i32, i32* @file_modes, align 4
  %73 = load i32, i32* @file_modes_count, align 4
  %74 = call i32 @check_dup2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %14, i32 %72, i32 %73)
  %75 = load i32, i32* @dir_modes, align 4
  %76 = load i32, i32* @dir_modes_count, align 4
  %77 = call i32 @check_fchdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %11, i32 %75, i32 %76)
  %78 = load i32, i32* @dir_modes, align 4
  %79 = load i32, i32* @dir_modes_count, align 4
  %80 = call i32 @check_fchflags(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %11, i32 %78, i32 %79)
  %81 = load i32, i32* @file_modes, align 4
  %82 = load i32, i32* @file_modes_count, align 4
  %83 = call i32 @check_fchflags(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %14, i32 %81, i32 %82)
  %84 = load i32, i32* @PERM_DIR, align 4
  %85 = load i32, i32* @dir_modes, align 4
  %86 = load i32, i32* @dir_modes_count, align 4
  %87 = call i32 @check_fchmod(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %11, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @PERM_FILE, align 4
  %89 = load i32, i32* @file_modes, align 4
  %90 = load i32, i32* @file_modes_count, align 4
  %91 = call i32 @check_fchmod(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %14, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* @dir_modes, align 4
  %93 = load i32, i32* @dir_modes_count, align 4
  %94 = call i32 @check_fchown(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %11, i32 %92, i32 %93)
  %95 = load i32, i32* @file_modes, align 4
  %96 = load i32, i32* @file_modes_count, align 4
  %97 = call i32 @check_fchown(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %14, i32 %95, i32 %96)
  %98 = load i32, i32* @dir_modes, align 4
  %99 = load i32, i32* @dir_modes_count, align 4
  %100 = call i32 @check_flock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %11, i32 %98, i32 %99)
  %101 = load i32, i32* @file_modes, align 4
  %102 = load i32, i32* @file_modes_count, align 4
  %103 = call i32 @check_flock(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %14, i32 %101, i32 %102)
  %104 = load i32, i32* @dir_modes, align 4
  %105 = load i32, i32* @dir_modes_count, align 4
  %106 = call i32 @check_fpathconf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %11, i32 %104, i32 %105)
  %107 = load i32, i32* @file_modes, align 4
  %108 = load i32, i32* @file_modes_count, align 4
  %109 = call i32 @check_fpathconf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* %14, i32 %107, i32 %108)
  %110 = load i32, i32* @dir_modes, align 4
  %111 = load i32, i32* @dir_modes_count, align 4
  %112 = call i32 @check_fstat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %11, i32 %110, i32 %111)
  %113 = load i32, i32* @file_modes, align 4
  %114 = load i32, i32* @file_modes_count, align 4
  %115 = call i32 @check_fstat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %14, i32 %113, i32 %114)
  %116 = load i32, i32* @dir_modes, align 4
  %117 = load i32, i32* @dir_modes_count, align 4
  %118 = call i32 @check_fstatfs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %11, i32 %116, i32 %117)
  %119 = load i32, i32* @file_modes, align 4
  %120 = load i32, i32* @file_modes_count, align 4
  %121 = call i32 @check_fstatfs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* %14, i32 %119, i32 %120)
  %122 = load i32, i32* @dir_modes, align 4
  %123 = load i32, i32* @dir_modes_count, align 4
  %124 = call i32 @check_fsync(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* %11, i32 %122, i32 %123)
  %125 = load i32, i32* @file_modes, align 4
  %126 = load i32, i32* @file_modes_count, align 4
  %127 = call i32 @check_fsync(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* %14, i32 %125, i32 %126)
  %128 = load i32, i32* @dir_modes, align 4
  %129 = load i32, i32* @dir_modes_count, align 4
  %130 = call i32 @check_ftruncate(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8* %11, i32 %128, i32 %129)
  %131 = load i32, i32* @file_modes, align 4
  %132 = load i32, i32* @file_modes_count, align 4
  %133 = call i32 @check_ftruncate(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* %14, i32 %131, i32 %132)
  %134 = load i32, i32* @dir_modes, align 4
  %135 = load i32, i32* @dir_modes_count, align 4
  %136 = call i32 @check_futimes(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* %11, i32 %134, i32 %135)
  %137 = load i32, i32* @file_modes, align 4
  %138 = load i32, i32* @file_modes_count, align 4
  %139 = call i32 @check_futimes(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8* %14, i32 %137, i32 %138)
  %140 = load i32, i32* @dir_modes, align 4
  %141 = load i32, i32* @dir_modes_count, align 4
  %142 = call i32 @check_lseek(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* %11, i32 %140, i32 %141)
  %143 = load i32, i32* @file_modes, align 4
  %144 = load i32, i32* @file_modes_count, align 4
  %145 = call i32 @check_lseek(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* %14, i32 %143, i32 %144)
  %146 = load i32, i32* @dir_modes, align 4
  %147 = load i32, i32* @dir_modes_count, align 4
  %148 = call i32 @check_getdents(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i8* %11, i32 1, i32 %146, i32 %147)
  %149 = load i32, i32* @file_modes, align 4
  %150 = load i32, i32* @file_modes_count, align 4
  %151 = call i32 @check_getdents(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i8* %14, i32 0, i32 %149, i32 %150)
  %152 = load i32, i32* @dir_modes, align 4
  %153 = load i32, i32* @dir_modes_count, align 4
  %154 = call i32 @check_sendfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* %11, i32 1, i32 %152, i32 %153)
  %155 = load i32, i32* @file_modes, align 4
  %156 = load i32, i32* @file_modes_count, align 4
  %157 = call i32 @check_sendfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* %14, i32 0, i32 %155, i32 %156)
  %158 = load i32, i32* @write, align 4
  %159 = load i32, i32* @dir_modes, align 4
  %160 = load i32, i32* @dir_modes_count, align 4
  %161 = call i32 @check_write(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i32 %158, i8* %11, i32 %159, i32 %160)
  %162 = load i32, i32* @write, align 4
  %163 = load i32, i32* @file_modes, align 4
  %164 = load i32, i32* @file_modes_count, align 4
  %165 = call i32 @check_write(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i32 %162, i8* %14, i32 %163, i32 %164)
  %166 = load i32, i32* @writev_wrapper, align 4
  %167 = load i32, i32* @dir_modes, align 4
  %168 = load i32, i32* @dir_modes_count, align 4
  %169 = call i32 @check_write(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i32 %166, i8* %11, i32 %167, i32 %168)
  %170 = load i32, i32* @writev_wrapper, align 4
  %171 = load i32, i32* @file_modes, align 4
  %172 = load i32, i32* @file_modes_count, align 4
  %173 = call i32 @check_write(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i32 %170, i8* %14, i32 %171, i32 %172)
  %174 = load i32, i32* @pwrite_wrapper, align 4
  %175 = load i32, i32* @dir_modes, align 4
  %176 = load i32, i32* @dir_modes_count, align 4
  %177 = call i32 @check_write(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 %174, i8* %11, i32 %175, i32 %176)
  %178 = load i32, i32* @pwrite_wrapper, align 4
  %179 = load i32, i32* @file_modes, align 4
  %180 = load i32, i32* @file_modes_count, align 4
  %181 = call i32 @check_write(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i32 %178, i8* %14, i32 %179, i32 %180)
  %182 = load i32, i32* @pwritev_wrapper, align 4
  %183 = load i32, i32* @dir_modes, align 4
  %184 = load i32, i32* @dir_modes_count, align 4
  %185 = call i32 @check_write(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i32 %182, i8* %11, i32 %183, i32 %184)
  %186 = load i32, i32* @pwritev_wrapper, align 4
  %187 = load i32, i32* @file_modes, align 4
  %188 = load i32, i32* @file_modes_count, align 4
  %189 = call i32 @check_write(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 %186, i8* %14, i32 %187, i32 %188)
  %190 = load i32, i32* @aio_present, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %59
  %193 = load i32, i32* @aio_write_wrapper, align 4
  %194 = load i32, i32* @dir_modes, align 4
  %195 = load i32, i32* @dir_modes_count, align 4
  %196 = call i32 @check_write(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32 %193, i8* %11, i32 %194, i32 %195)
  %197 = load i32, i32* @aio_write_wrapper, align 4
  %198 = load i32, i32* @file_modes, align 4
  %199 = load i32, i32* @file_modes_count, align 4
  %200 = call i32 @check_write(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i32 %197, i8* %14, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %192, %59
  %202 = load i32, i32* @read, align 4
  %203 = load i32, i32* @dir_modes, align 4
  %204 = load i32, i32* @dir_modes_count, align 4
  %205 = call i32 @check_read(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i32 %202, i8* %11, i32 %203, i32 %204)
  %206 = load i32, i32* @read, align 4
  %207 = load i32, i32* @file_modes, align 4
  %208 = load i32, i32* @file_modes_count, align 4
  %209 = call i32 @check_read(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i32 %206, i8* %14, i32 %207, i32 %208)
  %210 = load i32, i32* @readv_wrapper, align 4
  %211 = load i32, i32* @dir_modes, align 4
  %212 = load i32, i32* @dir_modes_count, align 4
  %213 = call i32 @check_read(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i32 %210, i8* %11, i32 %211, i32 %212)
  %214 = load i32, i32* @readv_wrapper, align 4
  %215 = load i32, i32* @file_modes, align 4
  %216 = load i32, i32* @file_modes_count, align 4
  %217 = call i32 @check_read(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i32 %214, i8* %14, i32 %215, i32 %216)
  %218 = load i32, i32* @pread_wrapper, align 4
  %219 = load i32, i32* @dir_modes, align 4
  %220 = load i32, i32* @dir_modes_count, align 4
  %221 = call i32 @check_read(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %218, i8* %11, i32 %219, i32 %220)
  %222 = load i32, i32* @pread_wrapper, align 4
  %223 = load i32, i32* @file_modes, align 4
  %224 = load i32, i32* @file_modes_count, align 4
  %225 = call i32 @check_read(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 %222, i8* %14, i32 %223, i32 %224)
  %226 = load i32, i32* @preadv_wrapper, align 4
  %227 = load i32, i32* @dir_modes, align 4
  %228 = load i32, i32* @dir_modes_count, align 4
  %229 = call i32 @check_read(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i32 %226, i8* %11, i32 %227, i32 %228)
  %230 = load i32, i32* @preadv_wrapper, align 4
  %231 = load i32, i32* @file_modes, align 4
  %232 = load i32, i32* @file_modes_count, align 4
  %233 = call i32 @check_read(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0), i32 %230, i8* %14, i32 %231, i32 %232)
  %234 = load i32, i32* @aio_present, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %201
  %237 = load i32, i32* @aio_read_wrapper, align 4
  %238 = load i32, i32* @dir_modes, align 4
  %239 = load i32, i32* @dir_modes_count, align 4
  %240 = call i32 @check_read(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i64 0, i64 0), i32 %237, i8* %11, i32 %238, i32 %239)
  %241 = load i32, i32* @aio_read_wrapper, align 4
  %242 = load i32, i32* @file_modes, align 4
  %243 = load i32, i32* @file_modes_count, align 4
  %244 = call i32 @check_read(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0), i32 %241, i8* %14, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %236, %201
  %246 = load i32, i32* @dir_modes, align 4
  %247 = load i32, i32* @dir_modes_count, align 4
  %248 = call i32 @check_mmap_read(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* %11, i32 1, i32 %246, i32 %247)
  %249 = load i32, i32* @file_modes, align 4
  %250 = load i32, i32* @file_modes_count, align 4
  %251 = call i32 @check_mmap_read(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0), i8* %14, i32 0, i32 %249, i32 %250)
  %252 = load i32, i32* @dir_modes, align 4
  %253 = load i32, i32* @dir_modes_count, align 4
  %254 = call i32 @check_mmap_write(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i64 0, i64 0), i8* %11, i32 %252, i32 %253)
  %255 = load i32, i32* @file_modes, align 4
  %256 = load i32, i32* @file_modes_count, align 4
  %257 = call i32 @check_mmap_write(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0), i8* %14, i32 %255, i32 %256)
  %258 = load i32, i32* @dir_modes, align 4
  %259 = load i32, i32* @dir_modes_count, align 4
  %260 = call i32 @check_mmap_exec(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i64 0, i64 0), i8* %11, i32 1, i32 %258, i32 %259)
  %261 = load i32, i32* @file_modes, align 4
  %262 = load i32, i32* @file_modes_count, align 4
  %263 = call i32 @check_mmap_exec(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0), i8* %14, i32 0, i32 %261, i32 %262)
  %264 = load i32, i32* @dir_modes, align 4
  %265 = load i32, i32* @dir_modes_count, align 4
  %266 = call i32 @check_mmap_write_private(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i64 0, i64 0), i8* %11, i32 1, i32 %264, i32 %265)
  %267 = load i32, i32* @file_modes, align 4
  %268 = load i32, i32* @file_modes_count, align 4
  %269 = call i32 @check_mmap_write_private(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i8* %14, i32 0, i32 %267, i32 %268)
  %270 = call i32 @unlink(i8* %14)
  %271 = call i32 @rmdir(i8* %11)
  %272 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32* @mkdtemp(i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @chmod(i8*, i32) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i32 @rmdir(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @check_directory_open_modes(i8*, i32, i32) #2

declare dso_local i32 @check_dup(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_dup2(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_fchdir(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_fchflags(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_fchmod(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @check_fchown(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_flock(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_fpathconf(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_fstat(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_fstatfs(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_fsync(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_ftruncate(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_futimes(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_lseek(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_getdents(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @check_sendfile(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @check_write(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @check_read(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @check_mmap_read(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @check_mmap_write(i8*, i8*, i32, i32) #2

declare dso_local i32 @check_mmap_exec(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @check_mmap_write_private(i8*, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
