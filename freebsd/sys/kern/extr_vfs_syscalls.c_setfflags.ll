; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_setfflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_setfflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i64 }
%struct.mount = type { i32 }
%struct.vattr = type { i64 }

@VNOVAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@PRIV_VFS_CHFLAGS_DEV = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.vnode*, i64)* @setfflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setfflags(%struct.thread* %0, %struct.vnode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vattr, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @VNOVAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VCHR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VBLK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22, %16
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = load i32, i32* @PRIV_VFS_CHFLAGS_DEV, align 4
  %31 = call i32 @priv_check(%struct.thread* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = load i32, i32* @V_WAIT, align 4
  %40 = load i32, i32* @PCATCH, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @vn_start_write(%struct.vnode* %38, %struct.mount** %8, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %65

46:                                               ; preds = %37
  %47 = call i32 @VATTR_NULL(%struct.vattr* %9)
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.vnode*, %struct.vnode** %6, align 8
  %51 = load i32, i32* @LK_EXCLUSIVE, align 4
  %52 = load i32, i32* @LK_RETRY, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @vn_lock(%struct.vnode* %50, i32 %53)
  %55 = load %struct.vnode*, %struct.vnode** %6, align 8
  %56 = load %struct.thread*, %struct.thread** %5, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @VOP_SETATTR(%struct.vnode* %55, %struct.vattr* %9, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.vnode*, %struct.vnode** %6, align 8
  %61 = call i32 @VOP_UNLOCK(%struct.vnode* %60, i32 0)
  %62 = load %struct.mount*, %struct.mount** %8, align 8
  %63 = call i32 @vn_finished_write(%struct.mount* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %46, %44, %34, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
