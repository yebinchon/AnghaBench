; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_chroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_chroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.chroot_args = type { i32 }
%struct.nameidata = type { i32 }

@PRIV_VFS_CHROOT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_chroot(%struct.thread* %0, %struct.chroot_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.chroot_args*, align 8
  %6 = alloca %struct.nameidata, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.chroot_args* %1, %struct.chroot_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load i32, i32* @PRIV_VFS_CHROOT, align 4
  %10 = call i32 @priv_check(%struct.thread* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load i32, i32* @LOOKUP, align 4
  %17 = load i32, i32* @FOLLOW, align 4
  %18 = load i32, i32* @LOCKSHARED, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LOCKLEAF, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AUDITVNODE1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @UIO_USERSPACE, align 4
  %25 = load %struct.chroot_args*, %struct.chroot_args** %5, align 8
  %26 = getelementptr inbounds %struct.chroot_args, %struct.chroot_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = call i32 @NDINIT(%struct.nameidata* %6, i32 %16, i32 %23, i32 %24, i32 %27, %struct.thread* %28)
  %30 = call i32 @namei(%struct.nameidata* %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %60

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = call i32 @change_dir(i32 %36, %struct.thread* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %56

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @VOP_UNLOCK(i32 %44, i32 0)
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pwd_chroot(%struct.thread* %46, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vrele(i32 %51)
  %53 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %54 = call i32 @NDFREE(%struct.nameidata* %6, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vput(i32 %58)
  br label %60

60:                                               ; preds = %56, %33
  %61 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %62 = call i32 @NDFREE(%struct.nameidata* %6, i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %42, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @change_dir(i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @pwd_chroot(%struct.thread*, i32) #1

declare dso_local i32 @vrele(i32) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
