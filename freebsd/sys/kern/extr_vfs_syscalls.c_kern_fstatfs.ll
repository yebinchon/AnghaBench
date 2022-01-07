; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fstatfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fstatfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.statfs = type { i32 }
%struct.file = type { %struct.vnode* }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }

@cap_fstatfs_rights = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fstatfs(%struct.thread* %0, i32 %1, %struct.statfs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.statfs* %2, %struct.statfs** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @AUDIT_ARG_FD(i32 %12)
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @getvnode(%struct.thread* %14, i32 %15, i32* @cap_fstatfs_rights, %struct.file** %8)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %10, align 8
  %25 = load %struct.vnode*, %struct.vnode** %10, align 8
  %26 = load i32, i32* @LK_SHARED, align 4
  %27 = load i32, i32* @LK_RETRY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @vn_lock(%struct.vnode* %25, i32 %28)
  %30 = load %struct.vnode*, %struct.vnode** %10, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load %struct.mount*, %struct.mount** %31, align 8
  store %struct.mount* %32, %struct.mount** %9, align 8
  %33 = load %struct.mount*, %struct.mount** %9, align 8
  %34 = icmp ne %struct.mount* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.mount*, %struct.mount** %9, align 8
  %37 = call i32 @vfs_ref(%struct.mount* %36)
  br label %38

38:                                               ; preds = %35, %21
  %39 = load %struct.vnode*, %struct.vnode** %10, align 8
  %40 = call i32 @VOP_UNLOCK(%struct.vnode* %39, i32 0)
  %41 = load %struct.file*, %struct.file** %8, align 8
  %42 = load %struct.thread*, %struct.thread** %5, align 8
  %43 = call i32 @fdrop(%struct.file* %41, %struct.thread* %42)
  %44 = load %struct.thread*, %struct.thread** %5, align 8
  %45 = load %struct.mount*, %struct.mount** %9, align 8
  %46 = load %struct.statfs*, %struct.statfs** %7, align 8
  %47 = call i32 @kern_do_statfs(%struct.thread* %44, %struct.mount* %45, %struct.statfs* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_ref(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @kern_do_statfs(%struct.thread*, %struct.mount*, %struct.statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
