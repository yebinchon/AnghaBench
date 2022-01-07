; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_extattr_check_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_extattr_check_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.thread = type { i32 }

@NOCRED = common dso_local global %struct.ucred* null, align 8
@PRIV_VFS_EXTATTR_SYSTEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extattr_check_cred(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store %struct.thread* %3, %struct.thread** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ucred*, %struct.ucred** %9, align 8
  %13 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %14 = icmp eq %struct.ucred* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %30

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %28 [
    i32 129, label %18
    i32 128, label %22
  ]

18:                                               ; preds = %16
  %19 = load %struct.ucred*, %struct.ucred** %9, align 8
  %20 = load i32, i32* @PRIV_VFS_EXTATTR_SYSTEM, align 4
  %21 = call i32 @priv_check_cred(%struct.ucred* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load %struct.vnode*, %struct.vnode** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ucred*, %struct.ucred** %9, align 8
  %26 = load %struct.thread*, %struct.thread** %10, align 8
  %27 = call i32 @VOP_ACCESS(%struct.vnode* %23, i32 %24, %struct.ucred* %25, %struct.thread* %26)
  store i32 %27, i32* %6, align 4
  br label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @EPERM, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %22, %18, %15
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
