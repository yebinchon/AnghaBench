; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rmdir_args = type { i32, %struct.vnode*, %struct.vnode* }
%struct.vnode = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FUSE_RMDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rmdir_args*)* @fuse_vnop_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_rmdir(%struct.vop_rmdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rmdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_rmdir_args* %0, %struct.vop_rmdir_args** %3, align 8
  %7 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %10, i32 0, i32 1
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %5, align 8
  %13 = load %struct.vnode*, %struct.vnode** %5, align 8
  %14 = call i64 @fuse_isdeadfs(%struct.vnode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = call i64 @VTOFUD(%struct.vnode* %19)
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i64 @VTOFUD(%struct.vnode* %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %35

26:                                               ; preds = %18
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = load %struct.vnode*, %struct.vnode** %5, align 8
  %29 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FUSE_RMDIR, align 4
  %33 = call i32 @fuse_internal_remove(%struct.vnode* %27, %struct.vnode* %28, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %24, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i64 @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_remove(%struct.vnode*, %struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
