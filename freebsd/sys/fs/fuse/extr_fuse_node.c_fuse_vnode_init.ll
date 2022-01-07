; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.fuse_vnode_data*, i32 }
%struct.fuse_vnode_data = type { i32, i32, i64 }

@FUSE_ROOT_ID = common dso_local global i64 0, align 8
@VV_ROOT = common dso_local global i32 0, align 4
@fuse_node_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.fuse_vnode_data*, i64, i32)* @fuse_vnode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_vnode_init(%struct.vnode* %0, %struct.fuse_vnode_data* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.fuse_vnode_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.fuse_vnode_data* %1, %struct.fuse_vnode_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %11 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  %12 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %13 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %12, i32 0, i32 1
  %14 = call i32 @LIST_INIT(i32* %13)
  %15 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %16 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %15, i32 0, i32 0
  %17 = call i32 @vattr_null(i32* %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @FUSE_ROOT_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* @VV_ROOT, align 4
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 1
  store %struct.fuse_vnode_data* %31, %struct.fuse_vnode_data** %33, align 8
  %34 = load i32, i32* @fuse_node_count, align 4
  %35 = call i32 @counter_u64_add(i32 %34, i32 1)
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @vattr_null(i32*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
