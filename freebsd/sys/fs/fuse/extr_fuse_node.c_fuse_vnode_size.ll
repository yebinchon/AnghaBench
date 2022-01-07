; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.fuse_vnode_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FN_SIZECHANGE = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_vnode_size(%struct.vnode* %0, i64* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.fuse_vnode_data*, align 8
  %10 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load %struct.vnode*, %struct.vnode** %5, align 8
  %12 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %11)
  store %struct.fuse_vnode_data* %12, %struct.fuse_vnode_data** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %9, align 8
  %14 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FN_SIZECHANGE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %4
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = call i32* @VTOVA(%struct.vnode* %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %9, align 8
  %25 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VNOVAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23, %19
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = load %struct.ucred*, %struct.ucred** %7, align 8
  %33 = load %struct.thread*, %struct.thread** %8, align 8
  %34 = call i32 @fuse_internal_do_getattr(%struct.vnode* %31, i32* null, %struct.ucred* %32, %struct.thread* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %30, %23, %4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %9, align 8
  %40 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local i32* @VTOVA(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_do_getattr(%struct.vnode*, i32*, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
