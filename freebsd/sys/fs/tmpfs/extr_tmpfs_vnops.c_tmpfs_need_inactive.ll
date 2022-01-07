; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_need_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_need_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_need_inactive_args = type { %struct.vnode* }
%struct.vnode = type { i64, %struct.vm_object* }
%struct.vm_object = type { i64, i64 }
%struct.tmpfs_node = type { i64 }

@VREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_need_inactive_args*)* @tmpfs_need_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_need_inactive(%struct.vop_need_inactive_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_need_inactive_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.tmpfs_node*, align 8
  %6 = alloca %struct.vm_object*, align 8
  store %struct.vop_need_inactive_args* %0, %struct.vop_need_inactive_args** %3, align 8
  %7 = load %struct.vop_need_inactive_args*, %struct.vop_need_inactive_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_need_inactive_args, %struct.vop_need_inactive_args* %7, i32 0, i32 0
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %10)
  store %struct.tmpfs_node* %11, %struct.tmpfs_node** %5, align 8
  %12 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %13 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VREG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 1
  %26 = load %struct.vm_object*, %struct.vm_object** %25, align 8
  store %struct.vm_object* %26, %struct.vm_object** %6, align 8
  %27 = load %struct.vm_object*, %struct.vm_object** %6, align 8
  %28 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vm_object*, %struct.vm_object** %6, align 8
  %31 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %37

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %17
  store i32 0, i32* %2, align 4
  br label %38

37:                                               ; preds = %34, %16
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
