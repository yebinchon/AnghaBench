; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vfsops.c_cd9660_cmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vfsops.c_cd9660_cmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }
%struct.iso_args = type { i32, i32, i32, i32, i32, i32 }
%struct.export_args = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cs_disk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cs_local\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ssector\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ISOFSMNT_NORRIP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"norrip\00", align 1
@ISOFSMNT_GENS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"nogens\00", align 1
@ISOFSMNT_EXTATT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"noextatt\00", align 1
@ISOFSMNT_NOJOLIET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"nojoliet\00", align 1
@ISOFSMNT_BROKENJOLIET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"nobrokenjoliet\00", align 1
@ISOFSMNT_KICONV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"nokiconv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mntarg*, i8*, i32)* @cd9660_cmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_cmount(%struct.mntarg* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iso_args, align 4
  %9 = alloca %struct.export_args, align 4
  %10 = alloca i32, align 4
  store %struct.mntarg* %0, %struct.mntarg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @copyin(i8* %11, %struct.iso_args* %8, i32 24)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %85

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 5
  %19 = call i32 @vfs_oexport_conv(i32* %18, %struct.export_args* %9)
  %20 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %21 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  store %struct.mntarg* %24, %struct.mntarg** %5, align 8
  %25 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %26 = call %struct.mntarg* @mount_arg(%struct.mntarg* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.export_args* %9, i32 4)
  store %struct.mntarg* %26, %struct.mntarg** %5, align 8
  %27 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %28 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 64)
  store %struct.mntarg* %30, %struct.mntarg** %5, align 8
  %31 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %32 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 64)
  store %struct.mntarg* %34, %struct.mntarg** %5, align 8
  %35 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %36 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.mntarg* @mount_argf(%struct.mntarg* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  store %struct.mntarg* %38, %struct.mntarg** %5, align 8
  %39 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %40 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ISOFSMNT_NORRIP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call %struct.mntarg* @mount_argb(%struct.mntarg* %39, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store %struct.mntarg* %47, %struct.mntarg** %5, align 8
  %48 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %49 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ISOFSMNT_GENS, align 4
  %52 = and i32 %50, %51
  %53 = call %struct.mntarg* @mount_argb(%struct.mntarg* %48, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store %struct.mntarg* %53, %struct.mntarg** %5, align 8
  %54 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %55 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ISOFSMNT_EXTATT, align 4
  %58 = and i32 %56, %57
  %59 = call %struct.mntarg* @mount_argb(%struct.mntarg* %54, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store %struct.mntarg* %59, %struct.mntarg** %5, align 8
  %60 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %61 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ISOFSMNT_NOJOLIET, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call %struct.mntarg* @mount_argb(%struct.mntarg* %60, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store %struct.mntarg* %68, %struct.mntarg** %5, align 8
  %69 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %70 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISOFSMNT_BROKENJOLIET, align 4
  %73 = and i32 %71, %72
  %74 = call %struct.mntarg* @mount_argb(%struct.mntarg* %69, i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store %struct.mntarg* %74, %struct.mntarg** %5, align 8
  %75 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %76 = getelementptr inbounds %struct.iso_args, %struct.iso_args* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ISOFSMNT_KICONV, align 4
  %79 = and i32 %77, %78
  %80 = call %struct.mntarg* @mount_argb(%struct.mntarg* %75, i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store %struct.mntarg* %80, %struct.mntarg** %5, align 8
  %81 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @kernel_mount(%struct.mntarg* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %17, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @copyin(i8*, %struct.iso_args*, i32) #1

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
