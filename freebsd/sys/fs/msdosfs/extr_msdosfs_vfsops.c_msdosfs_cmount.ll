; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_cmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_cmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }
%struct.msdosfs_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.export_args = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dirmask\00", align 1
@MSDOSFSMNT_SHORTNAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"noshortname\00", align 1
@MSDOSFSMNT_LONGNAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"nolongname\00", align 1
@MSDOSFSMNT_NOWIN95 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"nowin95\00", align 1
@MSDOSFSMNT_KICONV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"nokiconv\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cs_win\00", align 1
@MAXCSLEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"cs_dos\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"cs_local\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mntarg*, i8*, i32)* @msdosfs_cmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_cmount(%struct.mntarg* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msdosfs_args, align 4
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
  br label %94

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @copyin(i8* %16, %struct.msdosfs_args* %8, i32 40)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %94

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 9
  %24 = call i32 @vfs_oexport_conv(i32* %23, %struct.export_args* %9)
  %25 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %26 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  store %struct.mntarg* %29, %struct.mntarg** %5, align 8
  %30 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %31 = call %struct.mntarg* @mount_arg(%struct.mntarg* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.export_args* %9, i32 4)
  store %struct.mntarg* %31, %struct.mntarg** %5, align 8
  %32 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %33 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.mntarg* @mount_argf(%struct.mntarg* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store %struct.mntarg* %35, %struct.mntarg** %5, align 8
  %36 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %37 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.mntarg* @mount_argf(%struct.mntarg* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  store %struct.mntarg* %39, %struct.mntarg** %5, align 8
  %40 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %41 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.mntarg* @mount_argf(%struct.mntarg* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  store %struct.mntarg* %43, %struct.mntarg** %5, align 8
  %44 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %45 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.mntarg* @mount_argf(%struct.mntarg* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  store %struct.mntarg* %47, %struct.mntarg** %5, align 8
  %48 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %49 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MSDOSFSMNT_SHORTNAME, align 4
  %52 = and i32 %50, %51
  %53 = call %struct.mntarg* @mount_argb(%struct.mntarg* %48, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store %struct.mntarg* %53, %struct.mntarg** %5, align 8
  %54 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %55 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MSDOSFSMNT_LONGNAME, align 4
  %58 = and i32 %56, %57
  %59 = call %struct.mntarg* @mount_argb(%struct.mntarg* %54, i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store %struct.mntarg* %59, %struct.mntarg** %5, align 8
  %60 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %61 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MSDOSFSMNT_NOWIN95, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call %struct.mntarg* @mount_argb(%struct.mntarg* %60, i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store %struct.mntarg* %68, %struct.mntarg** %5, align 8
  %69 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %70 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MSDOSFSMNT_KICONV, align 4
  %73 = and i32 %71, %72
  %74 = call %struct.mntarg* @mount_argb(%struct.mntarg* %69, i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store %struct.mntarg* %74, %struct.mntarg** %5, align 8
  %75 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %76 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MAXCSLEN, align 4
  %79 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %77, i32 %78)
  store %struct.mntarg* %79, %struct.mntarg** %5, align 8
  %80 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %81 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MAXCSLEN, align 4
  %84 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %82, i32 %83)
  store %struct.mntarg* %84, %struct.mntarg** %5, align 8
  %85 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %86 = getelementptr inbounds %struct.msdosfs_args, %struct.msdosfs_args* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MAXCSLEN, align 4
  %89 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %87, i32 %88)
  store %struct.mntarg* %89, %struct.mntarg** %5, align 8
  %90 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @kernel_mount(%struct.mntarg* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %22, %20, %13
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @copyin(i8*, %struct.msdosfs_args*, i32) #1

declare dso_local i32 @vfs_oexport_conv(i32*, %struct.export_args*) #1

declare dso_local %struct.mntarg* @mount_argsu(%struct.mntarg*, i8*, i32, i32) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, %struct.export_args*, i32) #1

declare dso_local %struct.mntarg* @mount_argf(%struct.mntarg*, i8*, i8*, i32) #1

declare dso_local %struct.mntarg* @mount_argb(%struct.mntarg*, i32, i8*) #1

declare dso_local i32 @kernel_mount(%struct.mntarg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
