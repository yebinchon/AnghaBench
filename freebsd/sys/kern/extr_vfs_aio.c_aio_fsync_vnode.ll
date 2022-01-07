; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_fsync_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_fsync_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32* }
%struct.mount = type { i32 }

@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.vnode*)* @aio_fsync_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_fsync_vnode(%struct.thread* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %7 = load %struct.vnode*, %struct.vnode** %4, align 8
  %8 = load i32, i32* @V_WAIT, align 4
  %9 = load i32, i32* @PCATCH, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @vn_start_write(%struct.vnode* %7, %struct.mount** %5, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = load i32, i32* @LK_EXCLUSIVE, align 4
  %17 = load i32, i32* @LK_RETRY, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @vn_lock(%struct.vnode* %15, i32 %18)
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @VM_OBJECT_WLOCK(i32* %27)
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @vm_object_page_clean(i32* %31, i32 0, i32 0, i32 0)
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @VM_OBJECT_WUNLOCK(i32* %35)
  br label %37

37:                                               ; preds = %24, %14
  %38 = load %struct.vnode*, %struct.vnode** %4, align 8
  %39 = load i32, i32* @MNT_WAIT, align 4
  %40 = load %struct.thread*, %struct.thread** %3, align 8
  %41 = call i32 @VOP_FSYNC(%struct.vnode* %38, i32 %39, %struct.thread* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = call i32 @VOP_UNLOCK(%struct.vnode* %42, i32 0)
  %44 = load %struct.mount*, %struct.mount** %5, align 8
  %45 = call i32 @vn_finished_write(%struct.mount* %44)
  br label %46

46:                                               ; preds = %37, %13
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_page_clean(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
