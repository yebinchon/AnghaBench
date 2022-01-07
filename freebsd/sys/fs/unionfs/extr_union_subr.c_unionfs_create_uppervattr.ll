; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_create_uppervattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_create_uppervattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unionfs_mount = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unionfs_create_uppervattr(%struct.unionfs_mount* %0, %struct.vnode* %1, %struct.vattr* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.unionfs_mount*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vattr*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vattr, align 4
  store %struct.unionfs_mount* %0, %struct.unionfs_mount** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store %struct.vattr* %2, %struct.vattr** %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.vnode*, %struct.vnode** %8, align 8
  %15 = load %struct.ucred*, %struct.ucred** %10, align 8
  %16 = call i32 @VOP_GETATTR(%struct.vnode* %14, %struct.vattr* %13, %struct.ucred* %15)
  store i32 %16, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %26

20:                                               ; preds = %5
  %21 = load %struct.unionfs_mount*, %struct.unionfs_mount** %7, align 8
  %22 = load %struct.vattr*, %struct.vattr** %9, align 8
  %23 = load %struct.thread*, %struct.thread** %11, align 8
  %24 = call i32 @unionfs_create_uppervattr_core(%struct.unionfs_mount* %21, %struct.vattr* %13, %struct.vattr* %22, %struct.thread* %23)
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @unionfs_create_uppervattr_core(%struct.unionfs_mount*, %struct.vattr*, %struct.vattr*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
