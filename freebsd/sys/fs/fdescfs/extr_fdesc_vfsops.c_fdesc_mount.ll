; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vfsops.c_fdesc_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vfsops.c_fdesc_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, %struct.fdescmount*, i32 }
%struct.fdescmount = type { %struct.vnode*, i32 }
%struct.vnode = type { i32, i32 }

@MNT_UPDATE = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@M_FDESCMNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"linrdlnk\00", align 1
@FMNT_LINRDLNKF = common dso_local global i32 0, align 4
@Froot = common dso_local global i32 0, align 4
@FD_ROOT = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fdescfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @fdesc_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.fdescmount*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MNT_UPDATE, align 4
  %11 = load i32, i32* @MNT_ROOTFS, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %16, i32* %2, align 4
  br label %69

17:                                               ; preds = %1
  %18 = load i32, i32* @M_FDESCMNT, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call %struct.fdescmount* @malloc(i32 16, i32 %18, i32 %19)
  store %struct.fdescmount* %20, %struct.fdescmount** %4, align 8
  %21 = load %struct.fdescmount*, %struct.fdescmount** %4, align 8
  %22 = load %struct.mount*, %struct.mount** %3, align 8
  %23 = getelementptr inbounds %struct.mount, %struct.mount* %22, i32 0, i32 1
  store %struct.fdescmount* %21, %struct.fdescmount** %23, align 8
  %24 = load %struct.fdescmount*, %struct.fdescmount** %4, align 8
  %25 = getelementptr inbounds %struct.fdescmount, %struct.fdescmount* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.mount*, %struct.mount** %3, align 8
  %27 = getelementptr inbounds %struct.mount, %struct.mount* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @vfs_getopt(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load i32, i32* @FMNT_LINRDLNKF, align 4
  %33 = load %struct.fdescmount*, %struct.fdescmount** %4, align 8
  %34 = getelementptr inbounds %struct.fdescmount, %struct.fdescmount* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %17
  %38 = load i32, i32* @Froot, align 4
  %39 = load i32, i32* @FD_ROOT, align 4
  %40 = load %struct.mount*, %struct.mount** %3, align 8
  %41 = call i32 @fdesc_allocvp(i32 %38, i32 -1, i32 %39, %struct.mount* %40, %struct.vnode** %5)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.fdescmount*, %struct.fdescmount** %4, align 8
  %46 = load i32, i32* @M_FDESCMNT, align 4
  %47 = call i32 @free(%struct.fdescmount* %45, i32 %46)
  %48 = load %struct.mount*, %struct.mount** %3, align 8
  %49 = getelementptr inbounds %struct.mount, %struct.mount* %48, i32 0, i32 1
  store %struct.fdescmount* null, %struct.fdescmount** %49, align 8
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %69

51:                                               ; preds = %37
  %52 = load i32, i32* @VDIR, align 4
  %53 = load %struct.vnode*, %struct.vnode** %5, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @VV_ROOT, align 4
  %56 = load %struct.vnode*, %struct.vnode** %5, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.vnode*, %struct.vnode** %5, align 8
  %61 = load %struct.fdescmount*, %struct.fdescmount** %4, align 8
  %62 = getelementptr inbounds %struct.fdescmount, %struct.fdescmount* %61, i32 0, i32 0
  store %struct.vnode* %60, %struct.vnode** %62, align 8
  %63 = load %struct.vnode*, %struct.vnode** %5, align 8
  %64 = call i32 @VOP_UNLOCK(%struct.vnode* %63, i32 0)
  %65 = load %struct.mount*, %struct.mount** %3, align 8
  %66 = call i32 @vfs_getnewfsid(%struct.mount* %65)
  %67 = load %struct.mount*, %struct.mount** %3, align 8
  %68 = call i32 @vfs_mountedfrom(%struct.mount* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %51, %44, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.fdescmount* @malloc(i32, i32, i32) #1

declare dso_local i64 @vfs_getopt(i32, i8*, i32*, i32*) #1

declare dso_local i32 @fdesc_allocvp(i32, i32, i32, %struct.mount*, %struct.vnode**) #1

declare dso_local i32 @free(%struct.fdescmount*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_getnewfsid(%struct.mount*) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
