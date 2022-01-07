; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vop_read_args = type { i32, %struct.ucred*, %struct.uio*, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.uio = type { i32 }
%struct.vnode = type { i32 }
%struct.TYPE_6__ = type { i32 }

@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@FN_DIRECTIO = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @fuse_vnop_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32, align 4
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  %9 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %9, i32 0, i32 3
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %12, i32 0, i32 2
  %14 = load %struct.uio*, %struct.uio** %13, align 8
  store %struct.uio* %14, %struct.uio** %5, align 8
  %15 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %18, i32 0, i32 1
  %20 = load %struct.ucred*, %struct.ucred** %19, align 8
  store %struct.ucred* %20, %struct.ucred** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = call i64 @fuse_isdeadfs(%struct.vnode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %1
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call %struct.TYPE_6__* @VTOFUD(%struct.vnode* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FN_DIRECTIO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @IO_DIRECT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = load %struct.uio*, %struct.uio** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ucred*, %struct.ucred** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @fuse_io_dispatch(%struct.vnode* %44, %struct.uio* %45, i32 %46, %struct.ucred* %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %29
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local %struct.TYPE_6__* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @fuse_io_dispatch(%struct.vnode*, %struct.uio*, i32, %struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
