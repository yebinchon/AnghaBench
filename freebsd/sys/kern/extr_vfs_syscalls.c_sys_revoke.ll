; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_revoke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.revoke_args = type { i32 }
%struct.vnode = type { i64, i32* }
%struct.vattr = type { i64 }
%struct.nameidata = type { %struct.vnode* }

@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4
@REVOKEALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_revoke(%struct.thread* %0, %struct.revoke_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.revoke_args*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vattr, align 8
  %8 = alloca %struct.nameidata, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.revoke_args* %1, %struct.revoke_args** %5, align 8
  %10 = load i32, i32* @LOOKUP, align 4
  %11 = load i32, i32* @FOLLOW, align 4
  %12 = load i32, i32* @LOCKLEAF, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AUDITVNODE1, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @UIO_USERSPACE, align 4
  %17 = load %struct.revoke_args*, %struct.revoke_args** %5, align 8
  %18 = getelementptr inbounds %struct.revoke_args, %struct.revoke_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = call i32 @NDINIT(%struct.nameidata* %8, i32 %10, i32 %15, i32 %16, i32 %19, %struct.thread* %20)
  %22 = call i32 @namei(%struct.nameidata* %8)
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %82

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %28 = load %struct.vnode*, %struct.vnode** %27, align 8
  store %struct.vnode* %28, %struct.vnode** %6, align 8
  %29 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %30 = call i32 @NDFREE(%struct.nameidata* %8, i32 %29)
  %31 = load %struct.vnode*, %struct.vnode** %6, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VCHR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = load %struct.vnode*, %struct.vnode** %6, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %26
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %9, align 4
  br label %78

43:                                               ; preds = %36
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @VOP_GETATTR(%struct.vnode* %44, %struct.vattr* %7, %struct.TYPE_3__* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %78

52:                                               ; preds = %43
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %64 = call i32 @priv_check(%struct.thread* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %78

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.vnode*, %struct.vnode** %6, align 8
  %71 = call i32 @vcount(%struct.vnode* %70)
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.vnode*, %struct.vnode** %6, align 8
  %75 = load i32, i32* @REVOKEALL, align 4
  %76 = call i32 @VOP_REVOKE(%struct.vnode* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %67, %51, %41
  %79 = load %struct.vnode*, %struct.vnode** %6, align 8
  %80 = call i32 @vput(%struct.vnode* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %24
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.TYPE_3__*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @vcount(%struct.vnode*) #1

declare dso_local i32 @VOP_REVOKE(%struct.vnode*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
