; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_fsync_args = type { i32, %struct.vnode* }
%struct.vnode = type { i64, %struct.bufobj }
%struct.bufobj = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MNT_WAIT = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_fsync_args*)* @ffs_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_fsync(%struct.vop_fsync_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_fsync_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.bufobj*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_fsync_args* %0, %struct.vop_fsync_args** %3, align 8
  %7 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 1
  store %struct.bufobj* %11, %struct.bufobj** %5, align 8
  br label %12

12:                                               ; preds = %64, %1
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ffs_syncvnode(%struct.vnode* %13, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %71

22:                                               ; preds = %12
  %23 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MNT_WAIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %22
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = call i64 @DOINGSOFTDEP(%struct.vnode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = call i32 @softdep_fsync(%struct.vnode* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %71

39:                                               ; preds = %32
  %40 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %41 = call i32 @BO_LOCK(%struct.bufobj* %40)
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VREG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = getelementptr inbounds %struct.vnode, %struct.vnode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VDIR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47, %39
  %54 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %55 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %60 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %53
  %65 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %66 = call i32 @BO_UNLOCK(%struct.bufobj* %65)
  br label %12

67:                                               ; preds = %58, %47
  %68 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %69 = call i32 @BO_UNLOCK(%struct.bufobj* %68)
  br label %70

70:                                               ; preds = %67, %28, %22
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %37, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ffs_syncvnode(%struct.vnode*, i32, i32) #1

declare dso_local i64 @DOINGSOFTDEP(%struct.vnode*) #1

declare dso_local i32 @softdep_fsync(%struct.vnode*) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
