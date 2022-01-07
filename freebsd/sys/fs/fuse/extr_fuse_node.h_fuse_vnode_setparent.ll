; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.h_fuse_vnode_setparent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.h_fuse_vnode_setparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@VDIR = common dso_local global i64 0, align 8
@FN_PARENT_NID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.vnode*)* @fuse_vnode_setparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_vnode_setparent(%struct.vnode* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %5 = load %struct.vnode*, %struct.vnode** %4, align 8
  %6 = icmp ne %struct.vnode* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VDIR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VDIR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i32 @VTOI(%struct.vnode* %21)
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = call %struct.TYPE_2__* @VTOFUD(%struct.vnode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @FN_PARENT_NID, align 4
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = call %struct.TYPE_2__* @VTOFUD(%struct.vnode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %40

32:                                               ; preds = %7, %2
  %33 = load i32, i32* @FN_PARENT_NID, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = call %struct.TYPE_2__* @VTOFUD(%struct.vnode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %13
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VTOI(%struct.vnode*) #1

declare dso_local %struct.TYPE_2__* @VTOFUD(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
