; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32*, %struct.mount* }
%struct.mount = type { i32 }
%struct.file = type { %struct.vnode* }

@cap_fsync_rights = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fsync(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @AUDIT_ARG_FD(i32 %13)
  %15 = load %struct.thread*, %struct.thread** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @getvnode(%struct.thread* %15, i32 %16, i32* @cap_fsync_rights, %struct.file** %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %99

22:                                               ; preds = %3
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %8, align 8
  %26 = load %struct.vnode*, %struct.vnode** %8, align 8
  %27 = load i32, i32* @V_WAIT, align 4
  %28 = load i32, i32* @PCATCH, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @vn_start_write(%struct.vnode* %26, %struct.mount** %9, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %94

34:                                               ; preds = %22
  %35 = load %struct.mount*, %struct.mount** %9, align 8
  %36 = call i64 @MNT_SHARED_WRITES(%struct.mount* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load %struct.mount*, %struct.mount** %9, align 8
  %40 = icmp eq %struct.mount* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.vnode*, %struct.vnode** %8, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 1
  %44 = load %struct.mount*, %struct.mount** %43, align 8
  %45 = call i64 @MNT_SHARED_WRITES(%struct.mount* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %34
  %48 = load i32, i32* @LK_SHARED, align 4
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %41, %38
  %50 = load i32, i32* @LK_EXCLUSIVE, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.vnode*, %struct.vnode** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @LK_RETRY, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @vn_lock(%struct.vnode* %52, i32 %55)
  %57 = load %struct.vnode*, %struct.vnode** %8, align 8
  %58 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %57)
  %59 = load %struct.vnode*, %struct.vnode** %8, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %51
  %64 = load %struct.vnode*, %struct.vnode** %8, align 8
  %65 = getelementptr inbounds %struct.vnode, %struct.vnode* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @VM_OBJECT_WLOCK(i32* %66)
  %68 = load %struct.vnode*, %struct.vnode** %8, align 8
  %69 = getelementptr inbounds %struct.vnode, %struct.vnode* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @vm_object_page_clean(i32* %70, i32 0, i32 0, i32 0)
  %72 = load %struct.vnode*, %struct.vnode** %8, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @VM_OBJECT_WUNLOCK(i32* %74)
  br label %76

76:                                               ; preds = %63, %51
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.vnode*, %struct.vnode** %8, align 8
  %81 = load i32, i32* @MNT_WAIT, align 4
  %82 = load %struct.thread*, %struct.thread** %5, align 8
  %83 = call i32 @VOP_FSYNC(%struct.vnode* %80, i32 %81, %struct.thread* %82)
  br label %88

84:                                               ; preds = %76
  %85 = load %struct.vnode*, %struct.vnode** %8, align 8
  %86 = load %struct.thread*, %struct.thread** %5, align 8
  %87 = call i32 @VOP_FDATASYNC(%struct.vnode* %85, %struct.thread* %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i32 [ %83, %79 ], [ %87, %84 ]
  store i32 %89, i32* %11, align 4
  %90 = load %struct.vnode*, %struct.vnode** %8, align 8
  %91 = call i32 @VOP_UNLOCK(%struct.vnode* %90, i32 0)
  %92 = load %struct.mount*, %struct.mount** %9, align 8
  %93 = call i32 @vn_finished_write(%struct.mount* %92)
  br label %94

94:                                               ; preds = %88, %33
  %95 = load %struct.file*, %struct.file** %10, align 8
  %96 = load %struct.thread*, %struct.thread** %5, align 8
  %97 = call i32 @fdrop(%struct.file* %95, %struct.thread* %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i64 @MNT_SHARED_WRITES(%struct.mount*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_page_clean(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_FDATASYNC(%struct.vnode*, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
