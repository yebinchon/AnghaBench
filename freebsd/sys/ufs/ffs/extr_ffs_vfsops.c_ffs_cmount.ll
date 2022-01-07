; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_cmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_cmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }
%struct.ufs_args = type { i32, i32 }
%struct.export_args = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mntarg*, i8*, i32)* @ffs_cmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_cmount(%struct.mntarg* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ufs_args, align 4
  %9 = alloca %struct.export_args, align 4
  %10 = alloca i32, align 4
  store %struct.mntarg* %0, %struct.mntarg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @copyin(i8* %16, %struct.ufs_args* %8, i32 8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ufs_args, %struct.ufs_args* %8, i32 0, i32 1
  %24 = call i32 @vfs_oexport_conv(i32* %23, %struct.export_args* %9)
  %25 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %26 = getelementptr inbounds %struct.ufs_args, %struct.ufs_args* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  store %struct.mntarg* %29, %struct.mntarg** %5, align 8
  %30 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %31 = call %struct.mntarg* @mount_arg(%struct.mntarg* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.export_args* %9, i32 4)
  store %struct.mntarg* %31, %struct.mntarg** %5, align 8
  %32 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @kernel_mount(%struct.mntarg* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %22, %20, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @copyin(i8*, %struct.ufs_args*, i32) #1

declare dso_local i32 @vfs_oexport_conv(i32*, %struct.export_args*) #1

declare dso_local %struct.mntarg* @mount_argsu(%struct.mntarg*, i8*, i32, i32) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, %struct.export_args*, i32) #1

declare dso_local i32 @kernel_mount(%struct.mntarg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
