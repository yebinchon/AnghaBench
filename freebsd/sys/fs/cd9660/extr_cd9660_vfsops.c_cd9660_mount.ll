; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vfsops.c_cd9660_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vfsops.c_cd9660_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.nameidata = type { %struct.vnode* }
%struct.iso_mnt = type { %struct.vnode* }

@curthread = common dso_local global %struct.thread* null, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@MNT_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_PERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @cd9660_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata, align 8
  %10 = alloca %struct.iso_mnt*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.iso_mnt* null, %struct.iso_mnt** %10, align 8
  %11 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %11, %struct.thread** %5, align 8
  %12 = load %struct.mount*, %struct.mount** %3, align 8
  %13 = call i32 @MNT_ILOCK(%struct.mount* %12)
  %14 = load i32, i32* @MNT_RDONLY, align 4
  %15 = load %struct.mount*, %struct.mount** %3, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = call i32 @MNT_IUNLOCK(%struct.mount* %19)
  %21 = load %struct.mount*, %struct.mount** %3, align 8
  %22 = getelementptr inbounds %struct.mount, %struct.mount* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @vfs_getopts(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %130

29:                                               ; preds = %1
  %30 = load %struct.mount*, %struct.mount** %3, align 8
  %31 = call %struct.iso_mnt* @VFSTOISOFS(%struct.mount* %30)
  store %struct.iso_mnt* %31, %struct.iso_mnt** %10, align 8
  %32 = load %struct.mount*, %struct.mount** %3, align 8
  %33 = getelementptr inbounds %struct.mount, %struct.mount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MNT_UPDATE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.mount*, %struct.mount** %3, align 8
  %40 = getelementptr inbounds %struct.mount, %struct.mount* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @vfs_flagopt(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %130

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* @LOOKUP, align 4
  %48 = load i32, i32* @FOLLOW, align 4
  %49 = load i32, i32* @LOCKLEAF, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @UIO_SYSSPACE, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.thread*, %struct.thread** %5, align 8
  %54 = call i32 @NDINIT(%struct.nameidata* %9, i32 %47, i32 %50, i32 %51, i8* %52, %struct.thread* %53)
  %55 = call i32 @namei(%struct.nameidata* %9)
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %130

59:                                               ; preds = %46
  %60 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %61 = call i32 @NDFREE(%struct.nameidata* %9, i32 %60)
  %62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %63 = load %struct.vnode*, %struct.vnode** %62, align 8
  store %struct.vnode* %63, %struct.vnode** %4, align 8
  %64 = load %struct.vnode*, %struct.vnode** %4, align 8
  %65 = call i32 @vn_isdisk(%struct.vnode* %64, i32* %7)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = load %struct.vnode*, %struct.vnode** %4, align 8
  %69 = call i32 @vput(%struct.vnode* %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %130

71:                                               ; preds = %59
  %72 = load i32, i32* @VREAD, align 4
  store i32 %72, i32* %8, align 4
  %73 = load %struct.vnode*, %struct.vnode** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.thread*, %struct.thread** %5, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.thread*, %struct.thread** %5, align 8
  %79 = call i32 @VOP_ACCESS(%struct.vnode* %73, i32 %74, i32 %77, %struct.thread* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.thread*, %struct.thread** %5, align 8
  %84 = load i32, i32* @PRIV_VFS_MOUNT_PERM, align 4
  %85 = call i32 @priv_check(%struct.thread* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %71
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.vnode*, %struct.vnode** %4, align 8
  %91 = call i32 @vput(%struct.vnode* %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %130

93:                                               ; preds = %86
  %94 = load %struct.mount*, %struct.mount** %3, align 8
  %95 = getelementptr inbounds %struct.mount, %struct.mount* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MNT_UPDATE, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load %struct.vnode*, %struct.vnode** %4, align 8
  %102 = load %struct.mount*, %struct.mount** %3, align 8
  %103 = call i32 @iso_mountfs(%struct.vnode* %101, %struct.mount* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.vnode*, %struct.vnode** %4, align 8
  %108 = call i32 @vrele(%struct.vnode* %107)
  br label %109

109:                                              ; preds = %106, %100
  br label %121

110:                                              ; preds = %93
  %111 = load %struct.vnode*, %struct.vnode** %4, align 8
  %112 = load %struct.iso_mnt*, %struct.iso_mnt** %10, align 8
  %113 = getelementptr inbounds %struct.iso_mnt, %struct.iso_mnt* %112, i32 0, i32 0
  %114 = load %struct.vnode*, %struct.vnode** %113, align 8
  %115 = icmp ne %struct.vnode* %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %110
  %119 = load %struct.vnode*, %struct.vnode** %4, align 8
  %120 = call i32 @vput(%struct.vnode* %119)
  br label %121

121:                                              ; preds = %118, %109
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %130

126:                                              ; preds = %121
  %127 = load %struct.mount*, %struct.mount** %3, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @vfs_mountedfrom(%struct.mount* %127, i8* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %124, %89, %67, %57, %44, %27
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i8* @vfs_getopts(i32, i8*, i32*) #1

declare dso_local %struct.iso_mnt* @VFSTOISOFS(%struct.mount*) #1

declare dso_local i64 @vfs_flagopt(i32, i8*, i32*, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_isdisk(%struct.vnode*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @iso_mountfs(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
