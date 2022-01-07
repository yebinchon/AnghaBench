; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhreadlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhreadlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fhreadlink_args = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }

@PRIV_VFS_GETFH = common dso_local global i32 0, align 4
@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fhreadlink(%struct.thread* %0, %struct.fhreadlink_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fhreadlink_args*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fhreadlink_args* %1, %struct.fhreadlink_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load i32, i32* @PRIV_VFS_GETFH, align 4
  %12 = call i32 @priv_check(%struct.thread* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.fhreadlink_args*, %struct.fhreadlink_args** %5, align 8
  %19 = getelementptr inbounds %struct.fhreadlink_args, %struct.fhreadlink_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IOSIZE_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %17
  %26 = load %struct.fhreadlink_args*, %struct.fhreadlink_args** %5, align 8
  %27 = getelementptr inbounds %struct.fhreadlink_args, %struct.fhreadlink_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @copyin(i32 %28, %struct.TYPE_3__* %6, i32 8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %36 = call %struct.mount* @vfs_busyfs(i32* %35)
  store %struct.mount* %36, %struct.mount** %7, align 8
  %37 = icmp eq %struct.mount* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @ESTALE, align 4
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %34
  %41 = load %struct.mount*, %struct.mount** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %43 = load i32, i32* @LK_SHARED, align 4
  %44 = call i32 @VFS_FHTOVP(%struct.mount* %41, i32* %42, i32 %43, %struct.vnode** %8)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.mount*, %struct.mount** %7, align 8
  %46 = call i32 @vfs_unbusy(%struct.mount* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %40
  %52 = load %struct.vnode*, %struct.vnode** %8, align 8
  %53 = load %struct.fhreadlink_args*, %struct.fhreadlink_args** %5, align 8
  %54 = getelementptr inbounds %struct.fhreadlink_args, %struct.fhreadlink_args* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @UIO_USERSPACE, align 4
  %57 = load %struct.fhreadlink_args*, %struct.fhreadlink_args** %5, align 8
  %58 = getelementptr inbounds %struct.fhreadlink_args, %struct.fhreadlink_args* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = call i32 @kern_readlink_vp(%struct.vnode* %52, i32 %55, i32 %56, i64 %59, %struct.thread* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.vnode*, %struct.vnode** %8, align 8
  %63 = call i32 @vput(%struct.vnode* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %51, %49, %38, %32, %23, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_3__*, i32) #1

declare dso_local %struct.mount* @vfs_busyfs(i32*) #1

declare dso_local i32 @VFS_FHTOVP(%struct.mount*, i32*, i32, %struct.vnode**) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @kern_readlink_vp(%struct.vnode*, i32, i32, i64, %struct.thread*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
