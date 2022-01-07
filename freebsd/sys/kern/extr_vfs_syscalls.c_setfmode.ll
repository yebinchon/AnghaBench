; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_setfmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_setfmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.vattr = type { i32 }

@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfmode(%struct.thread* %0, %struct.ucred* %1, %struct.vnode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.vattr, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vnode*, %struct.vnode** %8, align 8
  %14 = load i32, i32* @V_WAIT, align 4
  %15 = load i32, i32* @PCATCH, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @vn_start_write(%struct.vnode* %13, %struct.mount** %10, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %40

21:                                               ; preds = %4
  %22 = load %struct.vnode*, %struct.vnode** %8, align 8
  %23 = load i32, i32* @LK_EXCLUSIVE, align 4
  %24 = load i32, i32* @LK_RETRY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @vn_lock(%struct.vnode* %22, i32 %25)
  %27 = call i32 @VATTR_NULL(%struct.vattr* %11)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ALLPERMS, align 4
  %30 = and i32 %28, %29
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.vnode*, %struct.vnode** %8, align 8
  %33 = load %struct.ucred*, %struct.ucred** %7, align 8
  %34 = call i32 @VOP_SETATTR(%struct.vnode* %32, %struct.vattr* %11, %struct.ucred* %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.vnode*, %struct.vnode** %8, align 8
  %36 = call i32 @VOP_UNLOCK(%struct.vnode* %35, i32 0)
  %37 = load %struct.mount*, %struct.mount** %10, align 8
  %38 = call i32 @vn_finished_write(%struct.mount* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %21, %19
  %41 = load i32, i32* %5, align 4
  ret i32 %41
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
