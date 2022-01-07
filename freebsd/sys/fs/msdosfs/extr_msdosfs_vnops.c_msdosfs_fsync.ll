; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_fsync_args = type { i64, i32, i32 }
%struct.vnode = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vnode* }

@MNT_WAIT = common dso_local global i64 0, align 8
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_fsync_args*)* @msdosfs_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_fsync(%struct.vop_fsync_args* %0) #0 {
  %2 = alloca %struct.vop_fsync_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vop_fsync_args* %0, %struct.vop_fsync_args** %2, align 8
  %6 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %2, align 8
  %7 = call i32 @vop_stdfsync(%struct.vop_fsync_args* %6)
  %8 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MNT_WAIT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %2, align 8
  %15 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_5__* @VTODE(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %3, align 8
  %22 = load %struct.vnode*, %struct.vnode** %3, align 8
  %23 = load i32, i32* @LK_EXCLUSIVE, align 4
  %24 = load i32, i32* @LK_RETRY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @vn_lock(%struct.vnode* %22, i32 %25)
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = load i64, i64* @MNT_WAIT, align 8
  %29 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %2, align 8
  %30 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @VOP_FSYNC(%struct.vnode* %27, i64 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.vnode*, %struct.vnode** %3, align 8
  %34 = call i32 @VOP_UNLOCK(%struct.vnode* %33, i32 0)
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %2, align 8
  %38 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_5__* @VTODE(i32 %39)
  %41 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %2, align 8
  %42 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MNT_WAIT, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @deupdat(%struct.TYPE_5__* %40, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %36
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @vop_stdfsync(%struct.vop_fsync_args*) #1

declare dso_local %struct.TYPE_5__* @VTODE(i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i64, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @deupdat(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
