; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_setfown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_setfown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.vattr = type { i32, i32 }

@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfown(%struct.thread* %0, %struct.ucred* %1, %struct.vnode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.vattr, align 4
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.ucred* %1, %struct.ucred** %8, align 8
  store %struct.vnode* %2, %struct.vnode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.vnode*, %struct.vnode** %9, align 8
  %16 = load i32, i32* @V_WAIT, align 4
  %17 = load i32, i32* @PCATCH, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @vn_start_write(%struct.vnode* %15, %struct.mount** %12, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %42

23:                                               ; preds = %5
  %24 = load %struct.vnode*, %struct.vnode** %9, align 8
  %25 = load i32, i32* @LK_EXCLUSIVE, align 4
  %26 = load i32, i32* @LK_RETRY, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @vn_lock(%struct.vnode* %24, i32 %27)
  %29 = call i32 @VATTR_NULL(%struct.vattr* %13)
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.vnode*, %struct.vnode** %9, align 8
  %35 = load %struct.ucred*, %struct.ucred** %8, align 8
  %36 = call i32 @VOP_SETATTR(%struct.vnode* %34, %struct.vattr* %13, %struct.ucred* %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.vnode*, %struct.vnode** %9, align 8
  %38 = call i32 @VOP_UNLOCK(%struct.vnode* %37, i32 0)
  %39 = load %struct.mount*, %struct.mount** %12, align 8
  %40 = call i32 @vn_finished_write(%struct.mount* %39)
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %23, %21
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
