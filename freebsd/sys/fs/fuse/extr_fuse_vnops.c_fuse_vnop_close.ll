; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_close_args = type { i32, %struct.thread*, %struct.ucred*, %struct.vnode* }
%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IO_NDELAY = common dso_local global i32 0, align 4
@FN_SIZECHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_close_args*)* @fuse_vnop_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_close(%struct.vop_close_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_close_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_close_args* %0, %struct.vop_close_args** %3, align 8
  %10 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %10, i32 0, i32 3
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %13, i32 0, i32 2
  %15 = load %struct.ucred*, %struct.ucred** %14, align 8
  store %struct.ucred* %15, %struct.ucred** %5, align 8
  %16 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %19, i32 0, i32 1
  %21 = load %struct.thread*, %struct.thread** %20, align 8
  store %struct.thread* %21, %struct.thread** %7, align 8
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = call i64 @fuse_isdeadfs(%struct.vnode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

31:                                               ; preds = %1
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call i64 @vnode_isdir(%struct.vnode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %66

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IO_NDELAY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %66

42:                                               ; preds = %36
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = load %struct.ucred*, %struct.ucred** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @fuse_flush(%struct.vnode* %43, %struct.ucred* %44, i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = call %struct.TYPE_4__* @VTOFUD(%struct.vnode* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FN_SIZECHANGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load %struct.vnode*, %struct.vnode** %4, align 8
  %57 = load %struct.ucred*, %struct.ucred** %5, align 8
  %58 = load %struct.thread*, %struct.thread** %7, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fuse_vnode_savesize(%struct.vnode* %56, %struct.ucred* %57, i32 %62)
  br label %64

64:                                               ; preds = %55, %42
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %41, %35, %30
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i64 @vnode_isdir(%struct.vnode*) #1

declare dso_local i32 @fuse_flush(%struct.vnode*, %struct.ucred*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @fuse_vnode_savesize(%struct.vnode*, %struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
