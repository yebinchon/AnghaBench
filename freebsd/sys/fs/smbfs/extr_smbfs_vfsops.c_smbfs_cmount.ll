; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_cmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_cmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }
%struct.smbfs_args = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@SMBFS_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"mount version mismatch: kernel=%d, mount=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SMBFS_MOUNT_SOFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"nosoft\00", align 1
@SMBFS_MOUNT_INTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"nointr\00", align 1
@SMBFS_MOUNT_STRONG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"nostrong\00", align 1
@SMBFS_MOUNT_HAVE_NLS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"nohave_nls\00", align 1
@SMBFS_MOUNT_NO_LONG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"nolong\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rootpath\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"file_mode\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"dir_mode\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"caseopt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mntarg*, i8*, i32)* @smbfs_cmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_cmount(%struct.mntarg* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smbfs_args, align 8
  %9 = alloca i32, align 4
  store %struct.mntarg* %0, %struct.mntarg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @copyin(i8* %10, %struct.smbfs_args* %8, i32 40)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %93

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SMBFS_VERSION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i64, i64* @SMBFS_VERSION, align 8
  %23 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %93

27:                                               ; preds = %16
  %28 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %29 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.mntarg* @mount_argf(%struct.mntarg* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store %struct.mntarg* %31, %struct.mntarg** %5, align 8
  %32 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %33 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SMBFS_MOUNT_SOFT, align 4
  %36 = and i32 %34, %35
  %37 = call %struct.mntarg* @mount_argb(%struct.mntarg* %32, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.mntarg* %37, %struct.mntarg** %5, align 8
  %38 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %39 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SMBFS_MOUNT_INTR, align 4
  %42 = and i32 %40, %41
  %43 = call %struct.mntarg* @mount_argb(%struct.mntarg* %38, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.mntarg* %43, %struct.mntarg** %5, align 8
  %44 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %45 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SMBFS_MOUNT_STRONG, align 4
  %48 = and i32 %46, %47
  %49 = call %struct.mntarg* @mount_argb(%struct.mntarg* %44, i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store %struct.mntarg* %49, %struct.mntarg** %5, align 8
  %50 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %51 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SMBFS_MOUNT_HAVE_NLS, align 4
  %54 = and i32 %52, %53
  %55 = call %struct.mntarg* @mount_argb(%struct.mntarg* %50, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store %struct.mntarg* %55, %struct.mntarg** %5, align 8
  %56 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %57 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SMBFS_MOUNT_NO_LONG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call %struct.mntarg* @mount_argb(%struct.mntarg* %56, i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store %struct.mntarg* %64, %struct.mntarg** %5, align 8
  %65 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %66 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.mntarg* @mount_arg(%struct.mntarg* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %67, i32 -1)
  store %struct.mntarg* %68, %struct.mntarg** %5, align 8
  %69 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %70 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.mntarg* @mount_argf(%struct.mntarg* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store %struct.mntarg* %72, %struct.mntarg** %5, align 8
  %73 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %74 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.mntarg* @mount_argf(%struct.mntarg* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  store %struct.mntarg* %76, %struct.mntarg** %5, align 8
  %77 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %78 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.mntarg* @mount_argf(%struct.mntarg* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store %struct.mntarg* %80, %struct.mntarg** %5, align 8
  %81 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %82 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.mntarg* @mount_argf(%struct.mntarg* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store %struct.mntarg* %84, %struct.mntarg** %5, align 8
  %85 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %86 = getelementptr inbounds %struct.smbfs_args, %struct.smbfs_args* %8, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.mntarg* @mount_argf(%struct.mntarg* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  store %struct.mntarg* %88, %struct.mntarg** %5, align 8
  %89 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @kernel_mount(%struct.mntarg* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %27, %21, %14
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @copyin(i8*, %struct.smbfs_args*, i32) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local %struct.mntarg* @mount_argf(%struct.mntarg*, i8*, i8*, i32) #1

declare dso_local %struct.mntarg* @mount_argb(%struct.mntarg*, i32, i8*) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, i32, i32) #1

declare dso_local i32 @kernel_mount(%struct.mntarg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
