; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_getdevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_getdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nameidata = type { %struct.vnode* }
%struct.vnode = type { i64, %struct.cdev* }

@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@fuse_enforce_dev_perms = common dso_local global i64 0, align 8
@VREAD = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.thread*, %struct.cdev**)* @fuse_getdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_getdevice(i8* %0, %struct.thread* %1, %struct.cdev** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.cdev**, align 8
  %8 = alloca %struct.nameidata, align 8
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.cdev*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store %struct.cdev** %2, %struct.cdev*** %7, align 8
  store %struct.nameidata* %8, %struct.nameidata** %9, align 8
  %13 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %14 = load i32, i32* @LOOKUP, align 4
  %15 = load i32, i32* @FOLLOW, align 4
  %16 = load i32, i32* @UIO_SYSSPACE, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.thread*, %struct.thread** %6, align 8
  %19 = call i32 @NDINIT(%struct.nameidata* %13, i32 %14, i32 %15, i32 %16, i8* %17, %struct.thread* %18)
  %20 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %21 = call i32 @namei(%struct.nameidata* %20)
  store i32 %21, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %3
  %26 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %27 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %28 = call i32 @NDFREE(%struct.nameidata* %26, i32 %27)
  %29 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 0
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %10, align 8
  %32 = load %struct.vnode*, %struct.vnode** %10, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VCHR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.vnode*, %struct.vnode** %10, align 8
  %39 = call i32 @vrele(%struct.vnode* %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %4, align 4
  br label %90

41:                                               ; preds = %25
  %42 = load %struct.vnode*, %struct.vnode** %10, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 1
  %44 = load %struct.cdev*, %struct.cdev** %43, align 8
  store %struct.cdev* %44, %struct.cdev** %11, align 8
  %45 = load %struct.cdev*, %struct.cdev** %11, align 8
  %46 = call i32 @dev_ref(%struct.cdev* %45)
  %47 = load i64, i64* @fuse_enforce_dev_perms, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.vnode*, %struct.vnode** %10, align 8
  %51 = load i32, i32* @VREAD, align 4
  %52 = load i32, i32* @VWRITE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.thread*, %struct.thread** %6, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.thread*, %struct.thread** %6, align 8
  %58 = call i32 @VOP_ACCESS(%struct.vnode* %50, i32 %53, i32 %56, %struct.thread* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load %struct.vnode*, %struct.vnode** %10, align 8
  %63 = call i32 @vrele(%struct.vnode* %62)
  %64 = load %struct.cdev*, %struct.cdev** %11, align 8
  %65 = call i32 @dev_rel(%struct.cdev* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %90

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %41
  %69 = load %struct.vnode*, %struct.vnode** %10, align 8
  %70 = call i32 @vrele(%struct.vnode* %69)
  %71 = load %struct.cdev*, %struct.cdev** %11, align 8
  %72 = getelementptr inbounds %struct.cdev, %struct.cdev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.cdev*, %struct.cdev** %11, align 8
  %77 = getelementptr inbounds %struct.cdev, %struct.cdev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75, %68
  %84 = load %struct.cdev*, %struct.cdev** %11, align 8
  %85 = call i32 @dev_rel(%struct.cdev* %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %75
  %88 = load %struct.cdev*, %struct.cdev** %11, align 8
  %89 = load %struct.cdev**, %struct.cdev*** %7, align 8
  store %struct.cdev* %88, %struct.cdev** %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %83, %61, %37, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @dev_ref(%struct.cdev*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @dev_rel(%struct.cdev*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
