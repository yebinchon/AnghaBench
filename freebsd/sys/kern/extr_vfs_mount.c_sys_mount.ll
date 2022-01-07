; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_sys_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_sys_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount_args = type { i32, i32, i32, i32 }
%struct.vfsconf = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.mntarg*, i32, i32)* }
%struct.mntarg = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.mntarg*, i32, i32)* }

@MNT_ROOTFS = common dso_local global i32 0, align 4
@MFSNAMELEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VFCF_SBDRY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@MNAMELEN = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"noro\00", align 1
@MNT_NOSUID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"nosuid\00", align 1
@MNT_NOEXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"noexec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_mount(%struct.thread* %0, %struct.mount_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.mount_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vfsconf*, align 8
  %8 = alloca %struct.mntarg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.mount_args* %1, %struct.mount_args** %5, align 8
  store %struct.vfsconf* null, %struct.vfsconf** %7, align 8
  store %struct.mntarg* null, %struct.mntarg** %8, align 8
  %11 = load %struct.mount_args*, %struct.mount_args** %5, align 8
  %12 = getelementptr inbounds %struct.mount_args, %struct.mount_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @AUDIT_ARG_FFLAGS(i32 %14)
  %16 = load i32, i32* @MNT_ROOTFS, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @MFSNAMELEN, align 4
  %21 = load i32, i32* @M_TEMP, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call i8* @malloc(i32 %20, i32 %21, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load %struct.mount_args*, %struct.mount_args** %5, align 8
  %25 = getelementptr inbounds %struct.mount_args, %struct.mount_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @MFSNAMELEN, align 4
  %29 = call i32 @copyinstr(i32 %26, i8* %27, i32 %28, i32* null)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @M_TEMP, align 4
  %35 = call i32 @free(i8* %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %144

37:                                               ; preds = %2
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @AUDIT_ARG_TEXT(i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = call %struct.vfsconf* @vfs_byname_kld(i8* %40, %struct.thread* %41, i32* %10)
  store %struct.vfsconf* %42, %struct.vfsconf** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @M_TEMP, align 4
  %45 = call i32 @free(i8* %43, i32 %44)
  %46 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %47 = icmp eq %struct.vfsconf* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOENT, align 4
  store i32 %49, i32* %3, align 4
  br label %144

50:                                               ; preds = %37
  %51 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %52 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @VFCF_SBDRY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %59 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.mntarg*, i32, i32)*, i32 (%struct.mntarg*, i32, i32)** %61, align 8
  %63 = icmp eq i32 (%struct.mntarg*, i32, i32)* %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %66 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VFCF_SBDRY, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %73 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (%struct.mntarg*, i32, i32)*, i32 (%struct.mntarg*, i32, i32)** %75, align 8
  %77 = icmp eq i32 (%struct.mntarg*, i32, i32)* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %71, %57
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %79, i32* %3, align 4
  br label %144

80:                                               ; preds = %71, %64
  %81 = load %struct.mntarg*, %struct.mntarg** %8, align 8
  %82 = load %struct.mount_args*, %struct.mount_args** %5, align 8
  %83 = getelementptr inbounds %struct.mount_args, %struct.mount_args* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MFSNAMELEN, align 4
  %86 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  store %struct.mntarg* %86, %struct.mntarg** %8, align 8
  %87 = load %struct.mntarg*, %struct.mntarg** %8, align 8
  %88 = load %struct.mount_args*, %struct.mount_args** %5, align 8
  %89 = getelementptr inbounds %struct.mount_args, %struct.mount_args* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MNAMELEN, align 4
  %92 = call %struct.mntarg* @mount_argsu(%struct.mntarg* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  store %struct.mntarg* %92, %struct.mntarg** %8, align 8
  %93 = load %struct.mntarg*, %struct.mntarg** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @MNT_RDONLY, align 4
  %96 = and i32 %94, %95
  %97 = call %struct.mntarg* @mount_argb(%struct.mntarg* %93, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.mntarg* %97, %struct.mntarg** %8, align 8
  %98 = load %struct.mntarg*, %struct.mntarg** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @MNT_NOSUID, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call %struct.mntarg* @mount_argb(%struct.mntarg* %98, i32 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.mntarg* %105, %struct.mntarg** %8, align 8
  %106 = load %struct.mntarg*, %struct.mntarg** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @MNT_NOEXEC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call %struct.mntarg* @mount_argb(%struct.mntarg* %106, i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.mntarg* %113, %struct.mntarg** %8, align 8
  %114 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %115 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @VFCF_SBDRY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %80
  %121 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %122 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32 (%struct.mntarg*, i32, i32)*, i32 (%struct.mntarg*, i32, i32)** %124, align 8
  %126 = load %struct.mntarg*, %struct.mntarg** %8, align 8
  %127 = load %struct.mount_args*, %struct.mount_args** %5, align 8
  %128 = getelementptr inbounds %struct.mount_args, %struct.mount_args* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 %125(%struct.mntarg* %126, i32 %129, i32 %130)
  store i32 %131, i32* %3, align 4
  br label %144

132:                                              ; preds = %80
  %133 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %134 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32 (%struct.mntarg*, i32, i32)*, i32 (%struct.mntarg*, i32, i32)** %136, align 8
  %138 = load %struct.mntarg*, %struct.mntarg** %8, align 8
  %139 = load %struct.mount_args*, %struct.mount_args** %5, align 8
  %140 = getelementptr inbounds %struct.mount_args, %struct.mount_args* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 %137(%struct.mntarg* %138, i32 %141, i32 %142)
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %132, %120, %78, %48, %32
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @AUDIT_ARG_FFLAGS(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @AUDIT_ARG_TEXT(i8*) #1

declare dso_local %struct.vfsconf* @vfs_byname_kld(i8*, %struct.thread*, i32*) #1

declare dso_local %struct.mntarg* @mount_argsu(%struct.mntarg*, i8*, i32, i32) #1

declare dso_local %struct.mntarg* @mount_argb(%struct.mntarg*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
