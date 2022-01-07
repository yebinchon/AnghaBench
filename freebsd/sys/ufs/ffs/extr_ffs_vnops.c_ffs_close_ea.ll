; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_close_ea.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_close_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ucred* }
%struct.thread = type { i32 }
%struct.inode = type { i32, i64, i64, i32*, %struct.ufs2_dinode* }
%struct.ufs2_dinode = type { i64 }
%struct.uio = type { i32, i64, %struct.thread*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ffs_close_ea commit\00", align 1
@NOCRED = common dso_local global %struct.ucred* null, align 8
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@IO_EXT = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, %struct.ucred*, %struct.thread*)* @ffs_close_ea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_close_ea(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.uio, align 8
  %12 = alloca %struct.iovec, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ufs2_dinode*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = call %struct.inode* @VTOI(%struct.vnode* %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = call i32 @ffs_lock_ea(%struct.vnode* %17)
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = call i32 @ffs_unlock_ea(%struct.vnode* %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %114

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 4
  %30 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %29, align 8
  store %struct.ufs2_dinode* %30, %struct.ufs2_dinode** %14, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %92

36:                                               ; preds = %27
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %36
  %40 = load %struct.vnode*, %struct.vnode** %6, align 8
  %41 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ucred*, %struct.ucred** %8, align 8
  %43 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %44 = icmp eq %struct.ucred* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.vnode*, %struct.vnode** %6, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.ucred*, %struct.ucred** %49, align 8
  store %struct.ucred* %50, %struct.ucred** %8, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i32* %54, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 6
  store %struct.iovec* %12, %struct.iovec** %60, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* @UIO_SYSSPACE, align 4
  %68 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @UIO_WRITE, align 4
  %70 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = load %struct.thread*, %struct.thread** %9, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 2
  store %struct.thread* %71, %struct.thread** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %14, align 8
  %77 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %51
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = load i32, i32* @IO_EXT, align 4
  %83 = load %struct.ucred*, %struct.ucred** %8, align 8
  %84 = call i32 @ffs_truncate(%struct.vnode* %81, i32 0, i32 %82, %struct.ucred* %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %80, %51
  %86 = load %struct.vnode*, %struct.vnode** %6, align 8
  %87 = load i32, i32* @IO_EXT, align 4
  %88 = load i32, i32* @IO_SYNC, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.ucred*, %struct.ucred** %8, align 8
  %91 = call i32 @ffs_extwrite(%struct.vnode* %86, %struct.uio* %11, i32 %89, %struct.ucred* %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %85, %36, %27
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @M_TEMP, align 4
  %103 = call i32 @free(i32* %101, i32 %102)
  %104 = load %struct.inode*, %struct.inode** %10, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  %106 = load %struct.inode*, %struct.inode** %10, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %98, %92
  %111 = load %struct.vnode*, %struct.vnode** %6, align 8
  %112 = call i32 @ffs_unlock_ea(%struct.vnode* %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %23
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ffs_lock_ea(%struct.vnode*) #1

declare dso_local i32 @ffs_unlock_ea(%struct.vnode*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @ffs_truncate(%struct.vnode*, i32, i32, %struct.ucred*) #1

declare dso_local i32 @ffs_extwrite(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
